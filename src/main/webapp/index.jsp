<!DOCTYPE html>
<html>
<head>
    <title>Hello World</title>
    <style>
        body {
            background-color: orange;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            color: white;
            font-size: 32px; /* Default size */
        }
        select {
            margin-top: 20px;
            font-size: 16px;
        }
    </style>
</head>
<body>

    <h1 id="helloText">Hello, World!</h1>

    <label for="textSize">Select text size: </label>
    <select id="textSize" onchange="changeTextSize()">
        <option value="32px">Default</option>
        <option value="40px">Large</option>
        <option value="50px">Larger</option>
        <option value="60px">Huge</option>
    </select>

    <script>
        function changeTextSize() {
            var selectedSize = document.getElementById("textSize").value;
            document.getElementById("helloText").style.fontSize = selectedSize;
        }
    </script>

</body>
</html>
