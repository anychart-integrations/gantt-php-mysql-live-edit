<?php
    // Connect to MySQL database
    $mysqli = new mysqli("localhost", "anygantt_user", "anygantt_pass", "anygantt_db", 18889);

    // check connection
    if ($mysqli->connect_errno) die("Connect failed: " . $mysqli->connect_error);

    switch ($_POST['action']) {
        case 'create':
            $query = 'INSERT INTO tasks (id, name, actualStart, actualEnd, parent, progressValue) VALUES (NULL, "' . $_POST['name'] . '", "' . $_POST['actualStart'] . '", "' . $_POST['actualEnd'] . '", "' . $_POST['parent'] . '", "0%")';

            if ($mysqli->query($query) === TRUE) {
                printf('{"success": "%s"}', $mysqli->insert_id);
            } else {
                printf('{"fail": "Create failed: %s"}', $mysqli->error);
            }

            break;
        case 'update':
            $query = 'UPDATE tasks SET ' . $_POST['field'] . ' = "' . $_POST['value'] . '" WHERE id = "' . $_POST['id'] . '"';

            if ($mysqli->query($query) === TRUE) {
                printf('{"success": "Update successful"}');
            } else {
                printf('{"fail": "Update failed: %s"}', $mysqli->error);
            }

            break;
        case 'delete':
            $query = 'DELETE FROM tasks WHERE id = "' . $_POST['ids'][0] . '"';
            for ($i = 1; $i < count($_POST['ids']); $i++) {
                $query = $query . ' OR id = "' . $_POST['ids'][$i] . '"';
            }
            
            if ($mysqli->query($query) === TRUE) {
                printf('{"success": "Delete successful"}');
            } else {
                printf('{"fail": "Delete failed: %s"}', $mysqli->error);
            }
            break;
    }

    $mysqli->close();
?>