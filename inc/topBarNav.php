<nav class="navbar navbar-expand-lg bg-beige   flex-column ">
<div>

                <a class="navbar-brand" href="./">
                <img src="<?php echo validate_image($_settings->info('logo')) ?>" width="150" height="150" class="d-inline-block align-top rounded-circle">
                </a>
                <button class="navbar-toggler btn btn-sm" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
</div>


<div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ">
                        <li class="nav-item"><a class="nav-link text-dark" aria-current="page" href="./">Home</a></li>
                        <li class="nav-item"><a class="nav-link text-dark" href="./?p=allproducts">All Products</a></li>
                        <li class="nav-item"><a class="nav-link text-dark" href="./?p=about">About</a></li>
                    </ul>
</div>


<div>
                      <?php if($_settings->userdata('id') > 0 && $_settings->userdata('login_type') == 2): ?>
                        <a class="text-dark  nav-link text-black" href="./?p=cart">
                            <i class="fas fa-shopping-cart"></i>
                            Cart
                            <span class="badge bg-dark text-black ms-1 rounded-pill" id="cart-count">
                              
                              <?php 
                                $count = $conn->query("SELECT SUM(quantity) as items from `cart` where client_id =".$_settings->userdata('id'))->fetch_assoc()['items'];
                                echo ($count > 0 ? $count : 0);
                              ?>
                            </span>
                        </a>
                        
                            <a href="./?p=my_account" class="text-dark  nav-link text-black"><i class="fas fa-user"></i> <b> Hi! <?php echo $_settings->userdata('firstname')?> !</b></a>
                            <a href="logout.php" class="text-dark  nav-link text-black"><i class="fa fa-sign-out-alt"></i> logout </a>
                        <?php else: ?>
                        <button class="btn  ml-2" id="login-btn" type="button"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</button>
                        
                        <?php endif; ?>
                    </div>
                    

</div>




           
        </nav>
        <div class="d-flex flex-row-reverse  ">
          <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
<i class="fa fa-question-circle aria-hidden="true"></i>
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container">
        <ul style="list-style-type:none;">

        <li><i class="fa fa-question-circle aria-hidden="true"></i> This button is help for icon identfying .</li>
        <li><i class="fas fa-shopping-cart"></i> View what item is in your cart</li>
        <li><i class="fas fa-user"></i> To See Your Pending Orders and to Manage Your Account</li>
        <li><i class="fa fa-sign-out-alt"></i> to Log-out Your Account</li>
        </ul>  
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
        
    
        </div>
<script>
  $(function(){
    $('#login-btn').click(function(){
      uni_modal("","login.php")
    })
    $('#navbarResponsive').on('show.bs.collapse', function () {
        $('#mainNav').addClass('navbar-shrink')
    })
    $('#navbarResponsive').on('hidden.bs.collapse', function () {
        if($('body').offset.top == 0)
          $('#mainNav').removeClass('navbar-shrink')
    })
  })

 
</script>