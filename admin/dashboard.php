<?php
include 'init.php';
check_login();
?>
 <div class="formBox">
      <div class="home-stats">
			<div class="container text-center">
				<h1>Dashboard</h1>
				<div class="row">
					<div class="col-md-3">
						<div class="stat st-members">
							<i class="fa fa-users"></i>
							<div class="info">
								Total employee
								<span>
								<a href="admin.php?page=Pending">
										<?php  echo checkemployee("regstatuse","employee", 1) ?>
								</a>
								</span>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stat st-pending">
							<i class="fa fa-user-plus"></i>
							<div class="info">
								Pending employee
								<span>
									<a href="admin.php?page=Pending">
										<?php  echo checkemployee("regstatuse","employee", 0)?>
									</a>
								</span>
							</div>
						</div>
					</div>
					

					<div class="col-md-3">
						<div class="stat st-items">
							<i class="fa fa-university"></i>
							<div class="info">
								Total colleges
								<span>
                                    <a href="colleges.php">
										<?php 
                                     echo total('id_college', 'colleges')?></a>
								</span>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="stat st-comments">
							<i class="fa fa-tag"></i>
							<div class="info">
								Total Department
								<span>
                                <a href="department.php"><?php
                                 echo total('id_department', 'departments')   ?></a>
								</span>
							</div>
						</div>
					</div>
	
                </div>
		</div>
    </div>
  
	
 
 
 
        
  
  
  





<?php
include 'includes/templates/footer.php';

?>
