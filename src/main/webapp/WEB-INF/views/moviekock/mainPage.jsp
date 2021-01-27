<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="main.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <style type="text/css">
        .body {
            border: 2px solid blue;
            display: grid;

        }

        .ListContainer {
            border: 1px solid black;
            height: 300px;
            position: relative;
            margin-bottom: 20px;
            padding: 20px;
            float: left;
            overflow: hidden;

        }

        .listTitle {
            line-height: 30px;
            max-height: 60px;
            left: 500px;
            padding: 4px 20px 9px 0;
        }

        .leftScroll {
            border: 1px solid red;
            position: absolute;
            top: 100px;
            left: 10px;
            width: 35px;
            height: 200px;
        }

        .rightScroll {
            border: 1px solid red;
            display: flex;
            position: absolute;
            top: 100px;
            right: 10px;
            width: 35px;
            height: 200px;
        }
        
        #prev {
            font-size: 40px;
            color: black;
            margin : auto;

        }

        #next {
            font-size: 40px;
            color: black;

        }

        .movie {
            display: inline-block;
            background: lightgray;
            border-radius: 30px;
            margin-left: 30px;
            width: 200px;
            height: 280px;
        }

    </style>
</head>

<body>
    <div class="body">
        <div class="ListContainer">
            <div id="redLine" class="leftScroll">
                <i class="fas fa-chevron-circle-left" id="prev"></i>
            </div>
            <div class="listTitle">박스오피스</div>
            <div class="movie">영화1</div>
            <div class="movie">영화2</div>
            <div class="movie">영화3</div>
            <div class="movie">영화4</div>
            <div class="movie">영화5</div>
            <div class="movie">영화6</div>
            <div class="movie">영화7</div>
            <div class="movie">영화8</div>
            <div class="movie">영화9</div>
            <div class="movie">영화10</div>
            <div class="rightScroll">
                <i class="fas fa-chevron-circle-right" id="next"></i>
            </div>
        </div>  <div class="ListContainer">
            <div id="redLine" class="leftScroll">
                <i class="fas fa-chevron-circle-left" id="prev"></i>
            </div>
            <div class="listTitle">박스오피스</div>
            <div class="movie">영화1</div>
            <div class="movie">영화2</div>
            <div class="movie">영화3</div>
            <div class="movie">영화4</div>
            <div class="movie">영화5</div>
            <div class="movie">영화6</div>
            <div class="movie">영화7</div>
            <div class="movie">영화8</div>
            <div class="movie">영화9</div>
            <div class="movie">영화10</div>
            <div class="rightScroll">
                <i class="fas fa-chevron-circle-right" id="next"></i>
            </div>
        </div>
         <div class="ListContainer">
            <div id="redLine" class="leftScroll">
                <i class="fas fa-chevron-circle-left" id="prev"></i>
            </div>
            <div class="listTitle">박스오피스</div>
            <div class="movie">영화1</div>
            <div class="movie">영화2</div>
            <div class="movie">영화3</div>
            <div class="movie">영화4</div>
            <div class="movie">영화5</div>
            <div class="movie">영화6</div>
            <div class="movie">영화7</div>
            <div class="movie">영화8</div>
            <div class="movie">영화9</div>
            <div class="movie">영화10</div>
            <div class="rightScroll">
                <i class="fas fa-chevron-circle-right" id="next"></i>
            </div>
        </div>
</body>  <div class="ListContainer">
            <div id="redLine" class="leftScroll">
                <i class="fas fa-chevron-circle-left" id="prev"></i>
            </div>
            <div class="listTitle">박스오피스</div>
            <div class="movie">영화1</div>
            <div class="movie">영화2</div>
            <div class="movie">영화3</div>
            <div class="movie">영화4</div>
            <div class="movie">영화5</div>
            <div class="movie">영화6</div>
            <div class="movie">영화7</div>
            <div class="movie">영화8</div>
            <div class="movie">영화9</div>
            <div class="movie">영화10</div>
            <div class="rightScroll">
                <i class="fas fa-chevron-circle-right" id="next"></i>
            </div>
        </div>

</html>
