<!DOCTYPE html>
<html>
 <head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="stylesheet" href="Client/bulma.min.css"/>
  <link rel="stylesheet" href="Client/scad.css"/>
  <script src="Client/jquery-3.6.0.min.js"></script>
  <script src="Client/scad.js"></script>
 </head>
 <body><script>0</script>
  <div class="container .is-widescreen">

  <div>
   <a class="logo"><img src="Pix/logo.png" class="image" style="height:70px" /></a>
   <div class="rightBox">Gebruik: klik op een afbeelding om een stukje OpenScad-code op het clipboard te zetten<br>
   <div class="right">(C) 2021 <a href="https://marclev.net" title="Marcel V">MarcelV</a></div></div>
  </div>

  <table class="table table is-bordered table is-fullwidth">
   <?php
    $i=0;
    $Scad = glob("Db/*.scad");
    foreach($Scad as $S) {
     $PI=pathinfo($S);
     $Img = "Db/".$PI["filename"].".png";
     $ZonderExt = $PI["filename"];
     if($i==0) echo "<tr>";
     if($i==5) {echo "</tr><tr class='spacer'></tr>"; $i=0;}
     echo "<td width='16.666%'><a href='#' class='Src' data-scad='$S' title='$ZonderExt'>
      <img class='image' src='$Img' /></a>
      <div>$ZonderExt</div>
      </td>";
     $i++;
    }

    if($i<5) {
     while($i<5) {$i++; echo "<td width='16.666%'> </td>";}
     echo "</tr>";
    }
   ?>
  </table>


 <audio id="Piepje">
  <source src="Client/piep.ogg" type="audio/ogg">
  <source src="Client/piep.wav" type="audio/wav">
 </audio>

 </div>
 </body>
</html>
