<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="title" content="OLYMPIC BASE">
    <meta name="description" content="The Olympic Medallists Database">
    <meta name="author" content="Bhoomika & Gagana">
    <link href="/images/favicon.ico" rel="shortcut icon">
    <title>Beijing 2008</title>

    <!--Bootstrap CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
    </script>


    <!--Font Awesome CDN-->
    <script src="https://kit.fontawesome.com/c93e5b0e53.js" crossorigin="anonymous">
    </script>
    <!--Custom Stylesheet-->
    <link rel="stylesheet" href="./css/style.css">
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #D6EEEE;
}
</style>
</head>
<body>
    <div class="container"> 
        <div class="row">
          <div class="text-center">
            <h2 class="site-title desc" style="font-size:30px;">Beijing 2008</h2>
          </div>
        </div>
    </div>
<table>
  <tr>
  <th>Sport ID</th>
  <th>Soid</th>
  <th>Gold</th>
  <th>Silver</th>
  <th>Bronze</th>
  <?php
      $conn=mysqli_connect("localhost","root","","olympic_base");
      $sql="SELECT * FROM summer_olympic";
      $result=$conn->query($sql);
      if($result->num_rows>0){
        while($row=$result->fetch_assoc()){
          if($row["Year"]==2008)
          echo "<tr><td>".$row["Sportid"]."</td><td>".$row["Soid"]."</td><td>".$row["Gold"]."</td><td>".$row["Silver"]."</td><td>".$row["Bronze"]."</td></tr>";
        }
      }
        else{
          echo "no results";
        }
      $conn->close();
    ?>
</table>

<!-- footer -->
<footer id="footer" class="text-center hdrbg">
<a href="https://olympics.com/en/olympic-games/beijing-2008" add target="_blank">https://olympics.com/en/olympic-games/beijing-2008</a><br>
    <a href="https://www.linkedin.com/in/bhoomika-poojari/" add target="_blank"> <i class=" foot fab fa-linkedin fa-lg"></i></a>
    <a href="https://www.linkedin.com/in/gagana-darshana/" add target="_blank"><i class=" foot fab fa-linkedin fa-lg"></i></a>
    <a href="mailto:poojaribhoomika5@gmail.com" add target="_blank"><i class=" foot fas fa-envelope fa-lg "></i></a>
    <a href="mailto:gagana.darshana@gmail.com" add target="_blank"> <i class=" foot fas fa-envelope fa-lg"></i></a>
    <p class="cp"> Built by Bhoomika.B.Poojari & Gagana <br>*This website consists of results of only selected games and it's events.</p>
  </footer>
  <!-- /footer  -->
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
          crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
          integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" 
          crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
          integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" 
          crossorigin="anonymous">
        </script>

</body>
</html>