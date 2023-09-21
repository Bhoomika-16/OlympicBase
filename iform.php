<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<!--Custom Stylesheet-->
<link rel="stylesheet" href="/css/style.css">
<link href="/images/favicon.ico" rel="shortcut icon">
<title>Insertion</title>

</head>
<body>

<h2>Inserting New Results</h2>

<div class="container">
  <form action="" method="post">
    <div class="row">
      <div class="col-25">
        <label for="Year">Year</label>
      </div>
      <div class="col-75">
        <input type="number" name="Year" placeholder="Year..">
      </div>
    </div>
    <div class="row">
        <div class="col-25">
          <label for="Games">Season</label>
        </div>
        <div class="col-75">
          <select id="Games" name="Games">
            <option value="Summer">Summer</option>
            <option value="Winter">Winter</option>
          </select>
        </div>
    </div>
    <div class="row">
        <div class="col-25">
          <label for="Sportid">Sport ID</label>
        </div>
        <div class="col-75">
          <select id="Sportid" name="Sportid">
            <option value="1010">Archery(mi)</option>
            <option value="1011">Archery(wi)</option>
            <option value="1113">Athletics(mjt)</option>
            <option value="1114">Athletics(wjt)</option>
            <option value="1117">Athletics(msp)</option>
            <option value="1118">Athletics(wsp</option>
            <option value="1211">Badminton(ms)</option>
            <option value="1212">Badminton(ws)</option>
            <option value="1411">ModernPentathlon(mi)</option>
            <option value="1412">ModernPentathlon(wi)</option>
            <option value="1511">Tennis(ms)</option>
            <option value="1512">Tennis(ws)</option>
            <option value="2111">FigureSkating(ms)</option>
            <option value="2112">FigureSkating(ws)</option>
            <option value="2121">Luge(ms)</option>
            <option value="2122">Luge(ws)</option>
            <option value="2131">Skeleton(m)</option>
            <option value="2132">Skeleton(w)</option>
            <option value="2151">SkiJumping(mNHi)</option>
            <option value="2152">SkiJumping(wNHi)</option>
            <option value="2161">SpeedSkating(m500m)</option>
            <option value="2162">SpeedSkating(w500m)</option>
          </select>
        </div>
      </div>
    <div class="row">
      <div class="col-25">
        <label for="Gold">Gold Medallist Name</label>
      </div>
      <div class="col-75">
        <input type="text"  name="Gold" placeholder="Name..">
      </div>
    </div>
    <div class="row">
        <div class="col-25">
          <label for="Silver">Silver Medallist Name</label>
        </div>
        <div class="col-75">
          <input type="text" name="Silver" placeholder="Name..">
        </div>
    </div>
    <div class="row">
        <div class="col-25">
          <label for="Bronze">Bronze Medallist Name</label>
        </div>
        <div class="col-75">
          <input type="text" name="Bronze" placeholder="Name..">
        </div>
    </div>
    <div class="row">
      <input type="submit" name="submit">
    </div>
  </form>
</div>
<?php
      $db=mysqli_connect("localhost","root","","olympic_base");
      if($db==true){
        echo "connected";
      }
      if(isset($_POST['submit'])){
        echo "posted";
      $Year=htmlentities($_POST["Year"]);
      $Games=htmlentities($_POST["Games"]);
      $Sportid=htmlentities($_POST["Sportid"]);
      $Gold=htmlentities($_POST["Gold"]);
      $Silver=htmlentities($_POST["Silver"]);
      $Bronze=htmlentities($_POST["Bronze"]);
      if($Games=="Summer"){
        $sql1="INSERT INTO `summer_olympic` (Year, Sportid, Gold, Silver, Bronze) VALUES
        ('$Year', '$Sportid', '$Gold', '$Silver', '$Bronze');";
        if(mysqli_query($db, $sql1))
        echo "Inserted!";
      }
      else{
      $sql5="INSERT INTO `winter_olympic` (Year, Sportid, Gold, Silver, Bronze) VALUES
      ('$Year', '$Sportid', '$Gold', '$Silver', '$Bronze');";
      if(mysqli_query($db, $sql5))
      echo "Inserted!";
      }
    }
?>
<br>
<a href="./login.php" class="px-2">LOGOUT</a>
</body>
 <!-- footer -->
 <footer id="footer" class="text-center hdrbg">
    <a href="https://www.linkedin.com/in/bhoomika-poojari/" add target="_blank"> <i class=" foot fab fa-linkedin fa-lg"></i></a>
    <a href="https://www.linkedin.com/in/gagana-darshana/" add target="_blank"><i class=" foot fab fa-linkedin fa-lg"></i></a>
    <a href="mailto:poojaribhoomika5@gmail.com" add target="_blank"><i class=" foot fas fa-envelope fa-lg "></i></a>
    <a href="mailto:gagana.darshana@gmail.com" add target="_blank"> <i class=" foot fas fa-envelope fa-lg"></i></a>
    <p class="cp"> Built by Bhoomika.B.Poojari & Gagana <br>*This website consists of results of only selected games and it's events.</p>
  </footer>
  <!-- /footer  -->
</html>
<?php
$db->close();
?>