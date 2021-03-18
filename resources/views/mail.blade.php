<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h3>User:</h3><p>{{ $text['fromUser'] }}</p>
    <div class="row"><h3>Replied to your comment:</h3><p>{{ $text['replyComment'] }}</p></div>
    <h3>Text:</h3><p>{{ $text['mess'] }}</p>
    <link href="http://laravel/announcements.php">
    <p>{{$text['data']}}</p>
</body>
</html>

