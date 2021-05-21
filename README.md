## M3 Agency Test

This is a small project based on Laravel 8. It has basic Laravel authentication and give users ability to list ToDo items, add new ToDo items and mark those as completed. The app is functioning properly, however, the underlying code base is far from perfect. The task is to find and list issues with the code, give a brief explianation of the issue and propose a solution. E.g.:


| File (line)      | Issue       | Why is it a problem                | How to improve         |
| ---------------- | ----------- | ---------------------------------- | ---------------------- |
|routes/web.php:19 | unused code | Affects performence and readbility | remove unnecesary code |

You can explore funcitonality of the app by folowing "Log in" link at the top right and using email: "test@test.test" and password: "password" as credentials. 

The source code of the app is available on [github](https://github.com/m3-agency/m3-test).

To run the app locally you can use [Laravel Sail](https://laravel.com/docs/8.x/sail#introduction) or any other apache/nginx, php7.3+, mysql environment.

A database could be set up using `artisan migrate` and `artisan db:seed`. This will set up several users including one with email: "test@test.test" and password: "password". 

A sample database is also exported in .sql format in /database/m3-test.sql
