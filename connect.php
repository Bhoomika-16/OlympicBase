<?
    $Year=$_POST['Year'];
    $Games=$_POST['Games'];
    $Sportid=$_POST['Sportid'];
    $Gold=$_POST['Gold'];
    $Country=$_POST['Country'];
    $Silver=$_POST['Silver'];
    $Bronze=$_POST['Bronze'];

    //Database Connection
    $conn=new mysqli('localhost','root','','olympic_base');
    if($conn->connect_error){
        die('Connection Failed: '.$conn->connect_error);
    }else{
        $stmt=$conn->prepare("insert into iform(Year,Games,Sportid,Gold,Country,Silver,Country,Bronze,Country) 
        values(?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("isissssss",$Year,$Games,$Sportid,$Gold,$Country,$Silver,$Country,$Bronze,$Country);
        $stmt->execute();
        echo "Record added";
        $stmt->close();
        $conn->close();
    }

?>