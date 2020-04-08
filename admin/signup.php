<?php
$noNavbar=' ';
$pageTitle=' sign up';
include 'init.php';

?>


<?php
     if(isset($_POST['submit'])){
        $username=mysqli_real_escape_string($conn,$_POST["username"]);
        $email=mysqli_real_escape_string($conn,$_POST["email"]);
        $pass=mysqli_real_escape_string($conn,$_POST["pass"]);
        $pass1=password_hash($pass,PASSWORD_BCRYPT);
        $department=$_POST["name_departement"];

    
 


if(!empty($errors)){
    $_SESSION['errors']=$errors;
    redicrt('signup.php');
}
    else{


       
        


    $sql="INSERT INTO `employee`(`name_employee`, `email`, `password`,`id_college`) 
    VALUES ('{$username}','{$email}','{$pass1}','{$department}')";
        
        if (mysqli_query($conn, $sql) && mysqli_affected_rows($conn)>0)  {
            $_SESSION['msg']=secusse_msg_admin();
            redicrt('index.php');

            }else{
                  
                $_SESSION['msg']=error_msg_admin();
                redicrt("signup.php");
                    
             }

            }
        


}
?>

<div class="container-fluid">
    <div class="row">

<div class="signup-img">

    

</div>
  <!--sign up form -->
  <div class="card_signup">
      <header>
          <h2> Welcome </h2>
      </header>
					<?php echo msg(); ?>
                                <?php $errors=er(); ?>
                                  <?php errors_function($errors);
                             ?>
       
                <form  action='signup.php' method='POST'>
                <div class="form-group">
                    <span class="input-icons"> 
                            <i class="fa fa-user fa-2x"></i>
                    <input type="text" class="form-control" name="username" required autocomplete="off" placeholder="User Name">
                </div>
                    <div class="form-group">
                        <span class="input-icons"> 
                                <i class="fa fa-envelope fa-2x"></i></span>
                        <input type="email" class="form-control" name="email" required autocomplete="off" placeholder="E-mail">
                    </div>
                  
                    <div class="form-group">
                      <span class="input-icons"> 
                            <i class="fa fa-bookmark-o mr-3  fa-2x"></i>
                         </span>
						<select  name="name_departement" id="user_time_zone" class="form-control" size="0">
                        <option value="0">..................</option>
						<?php
                                 $query="SELECT `id_college`, `name_college` FROM `college` WHERE 1";
                                 $result=mysqli_query($conn,$query);
                                 $row1=mysqli_fetch_all($result,MYSQLI_ASSOC);
                                 foreach ($row1 as $u){
                                    echo "<option value='" . $u['id_college'] . "'>" . $u['name_college'] . "</option>";
                                }
                                ?>  
						 </select>
					</div>
				
                    <div class="form-group">
                        <span class="input-icons"> 
                                <i class="fa fa-lock fa-2x "></i></span>
                        <input type="password" class="form-control" name="pass" placeholder="password" autocomplete="new-password">
                    </div>
                <div class="link">
                
                    
                </div>
                <input class="btn btn-primary" type='submit' name='submit' value='SIGN UP'>
                <div class="link">
                Realy have account ?
                <a href=""> sign in</a>
                </div>
               
                

            </form>
            </div>
            </div>
            </div>

            <div class="signup-wave">
                <img src="layout/image/image7.png" alt="">
            </div>

              <div class="signup-wave2">
                <img src="layout/image/image7.png" alt="">
            </div>


            

<?php
include 'includes/templates/footer.php';
?>