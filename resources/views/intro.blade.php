<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial;
            font-size: 17px;
        }

        #myVideo {
            height: 100vh;
            overflow: hidden;
            object-fit: cover;
            width: 100vw;
            position: absolute;
            top: 0;
            left: 0;
        }

        .content {
            position: fixed;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            color: #f1f1f1;
            width: 100%;
            padding: 20px;
        }

        #myBtn {
            position: fixed;
            bottom: 400px;
            right: 0px;
            background: rgba(0, 0, 0, 0.5);
            color: #f1f1f1;
            width: 170px;
            height: 170px;
            padding: 10px;
            font-size: 18px;
            font-weight: 490px;
            border: none;
            cursor: pointer;
        }

        #myBtn:hover {
            background: #ddd;
            color: black;
        }
    </style>
</head>

<body>

    <video autoplay muted id="myVideo">
        <source type="video/mp4" src="storage/static/video/intro.mp4">
        Your browser does not support HTML5 video.
    </video>

    <button id="myBtn" onclick="myFunction()">Skip Intro</button>

    <script>
        var video = document.getElementById("myVideo");

        video.onended = function() {
            document.location.href="{!! route('index'); !!}";
        };

        function myFunction() {
            document.location.href="{!! route('index'); !!}";
        }

    </script>

</body>

</html>