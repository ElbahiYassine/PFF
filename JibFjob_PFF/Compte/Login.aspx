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
    <%--<link href="../Content/signup.css" rel="stylesheet" />--%>

</head>
<body>

   <header>
        
        <a href="/Home.aspx"><img src="/img/logo.png" alt="Logo" id="logo"/></a>

    </header>

    <div class="mainContent">
        


            <form action="/" method="post" runat="server">
                   <div id="login">
           
                       <div id="soc">
                          <span>Connectez-vous avec</span>
                           <a href="#" id="fb"><img src="/img/facebookyellow.png" alt=""/></a>
                           <a href="#" id="google"><img src="/img/googleYellow.png" alt=""/></a>
                       </div>
                       <div id="loginMail">

                           <p><asp:TextBox class="input" ID="txtEmail" runat="server" placeholder="Email" ></asp:TextBox></p>
                           <p><asp:TextBox class="input" ID="txtMdp" runat="server" placeholder="Mot de passe" type="password"></asp:TextBox></p>
                           <a href="#">Oublié Mot de Passe ?</a>
                           <asp:Button ID="btnCon" runat="server" Text="Connexion"  class="button" />
               

                       </div>
                       <p id="dha">Vous n'avez pas de compte? <a href="#">S'inscrire</a></p>
                   </div>

            </form>

    </div>
    


    <footer>

    </footer>

</body>
</html>
