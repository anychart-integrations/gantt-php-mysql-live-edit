[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
# Anygantt PHP-MySQL live edit integration

This example shows how to use Anygantt with the PHP programming language
and MySQL database.

## Running

To use this sample you must have PHP installed, if not, please,
install it as described [here](http://php.net/manual/en/faq.installation.php);
MySQL installed and running, if not, please, check out
[MySQL download page](https://dev.mysql.com/downloads/installer/) 
and follow [these instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html).

#### Version requirements
 - Required php version is **7.0.15**
 - Required MySQL version is **5.6.36** 


#### Getting started
To start this example run commands listed below.

Clone the repository from github.com:
```
$ git clone git@github.com:anychart-integrations/gantt-php-mysql-live-edit.git
```

Navigate to the repository folder:
```
$ cd gantt-php-mysql-live-edit
```

Ensure you have php-mysql being installed, run:
```
$ php -m
```

Set up MySQL database, use `-u -p` flags to provide username and password:
```
$  mysql -u USER_NAME -p < dump.sql
```

Drop `index.html`, `data.php`, `live_edit.php` and `js` and `css` folders
to a folder where you serve your .php files and your server
(e.g. Apache or Nginx) could get them.
Open browser at an appropriate url.

Run the server, gantt chart gets data on page load automatically.

## Workspace
Your workspace should look like:
```
gantt-php-mysql-live-edit/
    css/
        bootstrap-datetimepicker.min.css  # bootstrap date picker css.
    js/
        bootstrap-datetimepicker.min.js   # bootstrap date picker js.
        index.js                          # general functionality.
    data.php                              # PHP file which loads data from MySQL
    dump.sql                              # MySQL database dump
    index.html                            # HTML page that uses ajax for data manipulations.
    LICENSE
    live_edit.php                         # PHP file which performs data operations
    README.md
```

## Please note
Current demo doesn't save gantt chart connectors to simplify the demonstration and 
data base structure.


## Technologies
Language - [PHP](http://php.net)<br />
Database - [MySQL](https://www.mysql.com/)<br />

## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
[© AnyChart.com - JavaScript charts](http://www.anychart.com).
Released under the [Apache 2.0 License](https://github.com/anychart-integrations/php-mysql-template/blob/master/LICENSE).