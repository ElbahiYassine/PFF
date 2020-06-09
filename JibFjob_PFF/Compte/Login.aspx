<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JibFjob_PFF.Compte.Loginaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Connexion - JibFjob</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../icon/css/material-design-iconic-font.min.css" rel="stylesheet" />
    <link href="../Content/loginCss.css" rel="stylesheet" />
    <link href="../Content/signup.css" rel="stylesheet" />

    <style>
        .inpts
        {
            width: 100%;
            display: block;
            border: none;
            border-bottom: 1px solid #999;
            padding: 6px 30px;
            box-sizing: border-box;
            outline: none;
        }

        .head
        {
            height:150px;
        }

        .foot
        {
            width:100%;
            position:relative;
            bottom:-33px;
        }

    </style>

</head>
<body>

   <header>
        
        <a href="/Home.aspx"><img src="/img/logo.png" alt="Logo"/></a>

    </header>

    <div class="mainContent">
        <div class="main">

            <div class="head">
                <h2 class="titre">Connectez-vous à JibFjob</h2>
            </div>

            <form action="/" method="post" runat="server">

                <div class="form-group">
                    <label for="Username" style="font-size:18px">
                        <i class="zmdi zmdi-account material-icons-name"></i>
                    </label>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" class="inpts"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="Username" style="font-size:18px">
                        <i class="zmdi zmdi-lock"></i>
                    </label>
                    <asp:TextBox ID="txtMdp" runat="server" placeholder="Mot de passe" class="inpts"></asp:TextBox>
                </div>

                <div class="form-group form-button">
                    <asp:Button ID="btnCon" runat="server" Text="Connexion"  class="form-submit" />
                    <a href="www.google.com" >Oublié Mot de Passe ?</a>
                </div>
                
            </form>

            <div class="foot">
                <a href="#" class="membre">j'ai déja un Compte</a>
            </div>
            

        </div>
    </div>

    <footer>

    </footer>

</body>
</html>
