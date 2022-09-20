<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="cafemangement.views.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../assets/lib/css/bootstrap.min.css" />
    <style>
        li{
            display:inline;
            float:left;
            margin-right:25px;
            margin:0 0px 0 25px ;
           
        }
       li a{
            display:block;
            padding:19px 30px;
            text-align:center;
            color:white;
            text-decoration-line:none;


        }
        ul {
            list-style-type: none;
            margin:0px 0px 0px 0px ;
            padding: 10px 10px  10 10px ;
            overflow: hidden;
            background-color:;

        }
        li a:hover{
            background-color:white;

        }
        body{
            font-family:Arial;


        }
        img{

        }
       
    </style>
</head>
<body>
   
        
          
         
            <ul class="bg-success">
                <li><a href="login.aspx">Home</a></li>
                <li><a href="../home.aspx">About us</a></li>
                <li><a href="../locations.aspx">Locations</a></li>
                <li><a href="../con1.aspx">Contact us</a></li>
            </ul>
      <img src="../assets/images/icons8-cafe-67.png" style="float:left;margin-top:-65px;" />
    <div class="container-fluid">
    <div class="row mb-5 mt-5">
</div>
    <div class="row mt-5 pt-5">
        <div class="col-md-3">

        </div>
        <div class="col-md-3 " style="background-color:crimson;border-radius:25px;position:relative">
           <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-right:1000px;margin-top:5px;">
                    <right><img src="../assets/images/icons8-coffee-cup-64.png" /></right>
                    <right>coffee</right>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-right:1000px;margin-top:5px;">
                    </right><img src="../assets/images/icons8-bitten-sandwich-64.png"/></right>
                    <right>sandwiches</right>
                    
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-right:1000px;margin-top:5px;">
                    <right><img src="../assets/images/icons8-pizza-64.png"/></right>
                    <right>pizza</right>
                    
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-top:-270px;" >
                   <center> <img src="../assets/images/icons8-salad-64.png"/></center>
                    <center>salads</center>
                    
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-top:-180px;" >
                   <center> <img src="../assets/images/icons8-bakery-64.png"/></center>
                    <center>bakery items</center>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-top:-90px;" >
                   <center> <img src="../assets/images/icons8-milkshake-64.png"/></center>
                    <center>milkshakes</center>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-top:-270px;margin-left:291px;" >
                   <left><img src="../assets/images/5079030_beverage_coffee_cup_drink_paper_icon.png"></left>
                    <left>bevagages</left>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-top:-180px;margin-left:291px;" >
                   <left><img src="../assets/images/icons8-dessert-64.png" /></left>
                    <left>Desserts</left>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4" style="margin-top:-90px;margin-left:291px;" >
                   <left> <img src="../assets/images/icons8-burger-66.png"/></left>
                    <left>Burger</left>
                </div>
                <div class="col-md-4"></div>
            </div>
            
           



        </div>
        <div class="col-md-4" style="position:relative;">
            <div class="row" style="">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <img src="../assets/images/icons8-cafe-67.png" />
                </div>
                <div class="col-md-4"></div>
            </div>
           
    <form runat="server">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="EmailTb" runat="server">

  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="PasswordTb" runat="server">
  </div>
                    <div class="d-grid">
                    <label id="ErrMsg" class="text-danger" runat="server"></label>
                        <asp:Button ID="loginbtn" runat="server" class="btn btn-danger btn-block" Text="Login" OnClick="loginbtn_Click" /></asp>
  
                    </div>
</form>
            </div>
            <div class="col-md-2">

            </div>
        </div>
    
    </form>
</body>
</html>
