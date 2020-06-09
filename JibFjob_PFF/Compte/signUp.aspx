<%@ Page Title="" Language="C#" MasterPageFile="~/siteLayout.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="JibFjob_PFF.Compte.signUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mainCont">

        <div class="divInfo">

            <h2 class="titre">Sign up</h2>

                <div class="form-group">
                    <label for="Username" style="font-size:18px">
                        <i class="zmdi zmdi-account material-icons-name"></i>
                    </label>
                    <input type="text" name="Username" placeholder="Username" />
                </div>

                <div class="form-group">
                    <label for="email">
                        <i class="zmdi zmdi-email"></i>
                    </label>
                    <input type="email" name="email" placeholder="Email" />
                </div>

                <div class="form-group">
                    <label for="UserType">
                        <i class="zmdi zmdi-account-box"></i>
                    </label>
                    <select name="UserType">
                        <option value="idvidual">Idvidual</option>
                        <option value="entreprise">Entreprise</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="mdp">
                        <i class="zmdi zmdi-lock"></i>
                    </label>
                    <input type="password" name="mdp" placeholder="Mot de Passe" />
                </div>

                <div class="form-group form-button">
                    <input class="form-submit" type="submit" name="btnSub" value="Submit" />
                </div>

        </div>

        <div class="divPic">

            <figure><img src="/img/signup-image.jpg" alt="sing up image"></figure>
            
        </div>

    </div>

</asp:Content>
