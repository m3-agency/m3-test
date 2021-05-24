## M3 Agency Test

This is a small project based on Laravel 8. It has basic Laravel authentication and gives users ability to list ToDo 
items, add new ToDo items and mark those as completed. The app is functionality complete, however, the underlying code 
base is far from perfect. The task is to find and list issues with the code, give a brief explanation of the issue and 
propose a solution. E.g.:


| File (line)      | Issue       | Why is it a problem                 | How to improve          |
| ---------------- | ----------- | ----------------------------------- | ----------------------- |
|routes/web.php:19 | unused code | Affects performance and readability | remove unnecessary code |

Note: we only look for issues with php code and database setup. Any issues with UI, UX, HTML, CSS, server setup 
can be ignored

You can explore functionality of the app by following "Log in" link at the top right and using email: "test@test.test" 
and password: "password" as credentials. 

The source code of the app is available on [github](https://github.com/m3-agency/m3-test).

To run the app locally you can use [Laravel Sail](https://laravel.com/docs/8.x/sail#introduction) or any other 
apache/nginx, php7.4+, mysql environment.

A database could be set up using `artisan migrate` and `artisan db:seed`. This will set up several users including 
one with email: "test@test.test" and password: "password". 

A sample database is also exported in .sql format in /database/m3-test.sql
