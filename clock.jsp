<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Full-Screen Background</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      height: 100vh; 
      display: flex;
      justify-content: center;
      align-items: center;
      background-image: url('background.jpeg'); 
      background-size: cover; 
      background-position: center; 
      background-repeat: no-repeat;
    }
    h1 {
      font-size: 12rem;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
      margin: 30px ;
      font-family: 'Cinzel', fantasy;
      transform: scaleY(1.7);
      transform: scaleY(1.5);
      color: #990012;
      transition: all 0.3s ease;
      cursor: pointer;
    }
    h1:hover {
      color: white;
      text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.8);
    }
    h2 {
      font-size: 3rem;
      text-align: center;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
      margin: 20px ;
      font-family: 'Cinzel', fantasy;
      color: #990012;
    }
  
  </style>
</head>
<body>
    <div id=clock>
      <h2 id="current-day"><h2>
      <h1 id="current-time"></h1>
    </div>

    <script>
        function openFullScreen() {
            // Check if the browser supports full-screen API
            if (document.documentElement.requestFullscreen) {
                document.documentElement.requestFullscreen(); // For most browsers
            } else if (document.documentElement.mozRequestFullScreen) {
                document.documentElement.mozRequestFullScreen(); // Firefox
            } else if (document.documentElement.webkitRequestFullscreen) {
                document.documentElement.webkitRequestFullscreen(); // Chrome, Safari, Opera
            } else if (document.documentElement.msRequestFullscreen) {
                document.documentElement.msRequestFullscreen(); // Internet Explorer/Edge
            }
        }
    </script>
    <script>
        function updateTime() {
          const now = new Date();

          const daysOfWeek = ['Sunday', ' Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
          const day = daysOfWeek[now.getDay()];  
          
          const month = String(now.getMonth() + 1).padStart(2, '0');  
          const date = String(now.getDate()).padStart(2, '0');  

          const hr = String(now.getHours()).padStart(2, '0');
          const min = String(now.getMinutes()).padStart(2, '0');
    
          document.getElementById('current-day').innerHTML = day + "<br>" + month + "/" + date + "<br>" ;
          document.getElementById('current-time').innerHTML =  hr + ":" + min;
        }
        updateTime();
        document.getElementById('current-time').addEventListener('click', openFullScreen);
        setInterval(updateTime, 1000);
    </script>
</body>
</html>
