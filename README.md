[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
# AnyGantt PHP-MySQL live edit integration

This example shows how to use AnyGantt with the PHP programming language
and MySQL database.

## Running

To use this sample you must have PHP installed, if not, please,
install it as described [here](http://php.net/manual/en/faq.installation.php);
MySQL installed and running, if not, please, check out
[MySQL download page](https://dev.mysql.com/downloads/installer/) 
and follow [these instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html).

#### Version requirements
 - Required PHP version is **7.0.15**
 - Required MySQL version is **5.6.36** 


#### Getting started
To start this example, run commands listed below.

Clone the repository from github.com:
```
$ git clone git@github.com:anychart-integrations/gantt-php-mysql-live-edit.git
```

Navigate to the repository folder:
```
$ cd gantt-php-mysql-live-edit
```

Ensure you have php-mysql installed:
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
Open browser at an appropriate URL.

Run the server, AnyChart gantt chart gets data on page load automatically.

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
database structure.


## Technologies
* Language - [PHP](http://php.net)
* Database - [MySQL](https://www.mysql.com/)
* Charting - [AnyChart](https://www.anychart.com)

## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
AnyGantt PHP/MySQL live edit integration sample includes two parts:
- Code of the integration sample that allows to use Javascript library (in this case, AnyChart) with PHP language and MySQL database. You can use, edit, modify it, use it with other Javascript libraries without any restrictions. It is released under [Apache 2.0 License](https://github.com/anychart-integrations/gantt-php-mysql-live-edit/blob/master/LICENSE).
- AnyChart JavaScript library. It is released under Commercial license. You can test this plugin with the trial version of AnyChart. Our trial version is not limited by time and doesn't contain any feature limitations. Check details [here](https://www.anychart.com/buy/).

If you have any questions regarding licensing - please contact us. <sales@anychart.com>

[![Analytics](https://ga-beacon.appspot.com/UA-228820-4/Integrations/gantt-php-mysql-live-edit?pixel&useReferer)](https://github.com/igrigorik/ga-beacon)