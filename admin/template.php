
<?php
/*
manage admin
Edit /delete /add /

*/
ob_start(); // Output Buffering Start


$pageTitle=' manage Admin';


include 'init.php';
check_login();

$do = isset($_GET['do']) ? $_GET['do'] : 'Manage';

		if ($do == 'Manage') {
             echo"hello";
          
		} elseif ($do == 'Add') {
			echo"hello2";

		} elseif ($do == 'Insert') {
			echo"hello3";

		} elseif ($do == 'Edit') {

		
		} elseif ($do == 'Update') {


		} elseif ($do == 'Delete') {


		} elseif ($do == 'Activate') {


        }
    ?>

    <?php
    ob_end_flush(); // Release The Output
    include $tpl.'footer.php';
    ?>