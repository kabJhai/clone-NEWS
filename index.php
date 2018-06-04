<?php
/**
 * Created by PhpStorm.
 * User: kabil
 * Date: 5/28/2018
 * Time: 11:04 AM
 */
include_once("data.php");
?>
<html>
    <head>
        <title>Automated News</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Automated News</h1>
        <ul>
        <?php
            $query = $DBcon->query("SELECT * FROM addisfortune ");
            $count = mysqli_num_rows($query);
            if($count > 0){
            while ($row = $query->fetch_assoc()) {
            ?>
                <li>
                        <h2><?php echo $row["Title"];?></h2>
                        <img src="<?php echo $row["Image"];?>"/>
                        <div><?php echo $row["Data"];?></div>
                </li>
        <?php } }?>
        </ul>

    </body>
</html>