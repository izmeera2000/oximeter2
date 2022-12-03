<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Real Time Data Display for BPM and O2</title>
  </head>
  <body onload = "table();">
  <h1>This is real time</h1>
    <script type="text/javascript">
      function table(){
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function(){
          document.getElementById("table").innerHTML = this.responseText;
        }
        xhttp.open("GET", "data.php");
        xhttp.send();
      }

      setInterval(function(){
        table();
      }, 1);
    </script>
    <div id="table">

    </div>
  </body>
</html>