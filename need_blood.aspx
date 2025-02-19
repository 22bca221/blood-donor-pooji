<%@ Page Language="C#" AutoEventWireup="true" CodeFile="need_blood.aspx.cs" Inherits="need_blood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}.container{min-width:992px!important}.container,.container-lg,.container-md,.container-sm,.container-xl{max-width:1140px}.container,.container-lg,.container-md,.container-sm{max-width:960px}.container,.container-md,.container-sm{max-width:720px}.container,.container-sm{max-width:540px}.container,.container-fluid,.container-lg,.container-md,.container-sm,.container-xl{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.col-lg-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col,.col-1,.col-10,.col-11,.col-12,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-auto,.col-lg,.col-lg-1,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-auto,.col-md,.col-md-1,.col-md-10,.col-md-11,.col-md-12,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-auto,.col-sm,.col-sm-1,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-auto{position:relative;width:100%;padding-right:15px;padding-left:15px}.mt-4,.my-4{margin-top:1.5rem!important}.mb-3,.my-3{margin-bottom:1rem!important}.h1,h1{font-size:2.5rem}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{margin-bottom:.5rem;font-weight:500;line-height:1.2}h1,h2,h3,h4,h5,h6{margin-top:0;margin-bottom:.5rem}.mb-4,.my-4{margin-bottom:1.5rem!important}.col-lg-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.font-italic{font-style:italic!important}.form-control{transition:none}.form-control{display:block;width:100%;height:calc(1.5em + .75rem + 2px);padding:.375rem .75rem;font-size:1rem;font-weight:400;line-height:1.5;color:#495057;background-color:#fff;background-clip:padding-box;border:1px solid #ced4da;border-radius:.25rem;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}select{word-wrap:normal}button,select{text-transform:none}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}textarea.form-control{height:auto}textarea{overflow:auto;resize:vertical}.btn-primary{color:#fff;background-color:#007bff;border-color:#007bff}.btn{transition:none}.btn{display:inline-block;font-weight:400;color:#212529;text-align:center;vertical-align:middle;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-color:transparent;border:1px solid transparent;padding:.375rem .75rem;font-size:1rem;line-height:1.5;border-radius:.25rem;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}button,input{overflow:visible}.col-sm-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.card{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;min-width:0;word-wrap:break-word;background-color:#fff;background-clip:border-box;border:1px solid rgba(0,0,0,.125);border-radius:.25rem}.card-img,.card-img-top{border-top-left-radius:calc(.25rem - 1px);border-top-right-radius:calc(.25rem - 1px)}.card-img,.card-img-bottom,.card-img-top{-ms-flex-negative:0;flex-shrink:0;width:100%}.card-body{-ms-flex:1 1 auto;flex:1 1 auto;min-height:1px;padding:1.25rem}.card-title{margin-bottom:.75rem}h2,h3{page-break-after:avoid}h2,h3,p{orphans:3;widows:3}.h3,h3{font-size:1.75rem}p{margin-top:0;margin-bottom:1rem}b,strong{font-weight:bolder}
        .auto-style1 {
            width: 100%;
            height: 300px;
            vertical-align: middle;
            border-style: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <?php 
  $active ='need';
  include('head.php') ?>

        <div id="page-container">
            <div class="container">
                <div id="content-wrap">
                    <div class="row">
                        <div class="col-lg-6">
                            <h1 class="mt-4 mb-3">Need Blood</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 mb-4">
                            <div class="font-italic">
                                Blood Group<span style="color:red">*</span></div>
                            <div>
                                <select class="form-control" name="blood" required="">
                                    <option disabled selected="" value="">Select</option>
    <?php
      include 'conn.php';
      $sql= "select * from blood";
      $result=mysqli_query($conn,$sql) or die("query unsuccessful.");
    while($row=mysqli_fetch_assoc($result)){
     ?>
                                    <option value=" <?php echo $row['blood_id'] ?>"> <?php echo $row['blood_group'] ?> </option>
    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 mb-4">
                            <div class="font-italic">
                                Reason, why do you need blood?<span style="color:red">*</span></div>
                            <div>
                                <textarea class="form-control" cols="20" name="address" required="" rows="1"></textarea></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 mb-4">
                            <div>
                                <input class="btn btn-primary" name="search" style="cursor:pointer" type="submit" value="Search" /></div>
                        </div>
                    </div>
                    <div class="row">
<?php if(isset($_POST['search'])){

  $bg=$_POST['blood'];
  $sql= "select * from donor_details join blood where donor_details.donor_blood=blood.blood_id AND donor_blood='{$bg}' order by rand() limit 5";
  $result=mysqli_query($conn,$sql) or die("query unsuccessful.");
    if(mysqli_num_rows($result)>0)   {
    while($row = mysqli_fetch_assoc($result)) {
      ?>

                        <div class="col-lg-4 col-sm-6 portfolio-item">
                            <br />
                            <div class="card" style="width:300px">
                                <img alt="Card image" class="auto-style1" src="image\blood_drop_logo.jpg" style="page-break-inside: avoid;" />
                                <div class="card-body">
                                    <h3 class="card-title"><?php echo $row['donor_name']; ?></h3>
                                    <p class="card-text">
                                        <b>Blood Group : <?php echo $row['blood_group']; ?></b>
                                        <br />
                                        <b>Mobile No. : </b> <?php echo $row['donor_number']; ?>
                                        <br />
                                        <b>Gender : </b><?php echo $row['donor_gender']; ?>
                                        <br />
                                        <b>Age : </b> <?php echo $row['donor_age']; ?>
                                        <br />
                                        <b>Address : </b> <?php echo $row['donor_address']; ?>
                                        <br />
                                    </p>
                                </div>
                            </div>
                        </div>

  <?php
    }
  }
    else
    {

        echo '<div class="alert alert-danger">No Donor Found For your search Blood group </div>';

    }
} ?>
                    </div>
                </div>
            </div>
<?php include 'footer.php' ?>
        </div>
    
    </div>
    </form>
</body>
</html>
