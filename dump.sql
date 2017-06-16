CREATE DATABASE IF NOT EXISTS anygantt_db;
USE anygantt_db;
DROP PROCEDURE IF EXISTS init;
DELIMITER //
CREATE PROCEDURE init ()
LANGUAGE SQL
  BEGIN
    DECLARE user_exist, data_present INT;
    SET user_exist = (SELECT EXISTS (SELECT DISTINCT user FROM mysql.user WHERE user = "anygantt_user"));
    IF user_exist = 0 THEN
      CREATE USER 'anygantt_user'@'localhost' IDENTIFIED BY 'anygantt_pass';
      GRANT ALL PRIVILEGES ON anygantt_db.* TO 'anygantt_user'@'localhost';
      FLUSH PRIVILEGES;
    END IF;
    CREATE TABLE IF NOT EXISTS tasks (
      id int(11) NOT NULL,
      name varchar(256) NOT NULL,
      actualStart timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
      actualEnd timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
      parent varchar(256) DEFAULT NULL,
      progressValue varchar(256) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    SET data_present = (SELECT COUNT(*) FROM tasks);
    IF data_present = 0 THEN
      INSERT INTO tasks (id, name, actualStart, actualEnd, parent, progressValue) VALUES
        (1, 'Test parent task', '2017-05-01 12:00:00', '2017-05-02 10:00:00', NULL, '10%'),
        (2, 'Child task 1', '2017-05-01 12:00:00', '2017-05-01 22:00:00', '1', '20%'),
        (3, 'Child task 2', '2017-05-02 00:00:00', '2017-05-02 10:00:00', '1', '10%');

       ALTER TABLE tasks
         ADD PRIMARY KEY (id);

       ALTER TABLE tasks
         MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
    END IF;
  END;//
DELIMITER ;
CALL init();
