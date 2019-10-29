安装: laravel-admin
https://laravel-admin.org/docs/zh/installation
https://github.com/z-song/laravel-admin

登录: admin/admin

http://tbq-laravel.com:10080/admin
------------
jwt
  142  composer update -vvv
  143  php artisan vendor:publish --provider="Tymon\JWTAuth\Providers\LaravelServiceProvider"
  144  php artisan jwt:secret
-------------

多站点, 动静分离