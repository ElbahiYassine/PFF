<%@ Page Title="" Language="C#" MasterPageFile="~/siteLayout.Master" AutoEventWireup="true" CodeBehind="Poster_Emploi.aspx.cs" Inherits="JibFjob_PFF.Poste.Poster_Emploi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1 class="section-title">Poster Votre Annonce:</h1>
   <!-- Nav pills -->
          
      <section id="Post-Etape1">
         <div class="container">
               <!-- Nav pills -->
            <ul class="nav nav-pills nav-justified" role="tablist">
               <li class="nav-item">
                  <a class="nav-link active"  role="tab" aria-controls="Etape1" aria-selected="true" onclick="slide('Post-Etape1','Post-Etape2','Post-Etape3')">Etape 1</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" role="tab"  aria-controls="Etape2" aria-selected="false" onclick="slide('Post-Etape2','Post-Etape1','Post-Etape3')">Etape 2</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link"   role="tab" aria-controls="Etape3" aria-selected="false" onclick="slide('Post-Etape3','Post-Etape2','Post-Etape1')">Etape 3</a>
               </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content py-3 px-3 px-sm-0 events-tab-content">
               <div class="tab-pane fade show active" id="Etape1" role="tabpanel" aria-labelledby="Etape1-tab">
                  

                     <div class="form-group">
                       <label for="contact-person" class="label label-info">Titre d Annonce</label>

                        <asp:TextBox ID="Titre_ann" runat="server"  placeholder="Titre Annonce" class="form-control ges-form-control" required="required" autocomplete="off"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="titre annonce est obligatoire" ControlToValidate="Titre_ann"></asp:RequiredFieldValidator>
                    
                         <br />
                       
                     </div>

                     <div class="form-group">
                       <label for="Description" class="label label-info">Description:</label>
                        <asp:TextBox ID="Description" runat="server"  placeholder="Description" class="form-control ges-form-control" required="required" autocomplete="off" TextMode="MultiLine"></asp:TextBox>
                         <br />
                      </div>

                     <div class="form-group">
                         <label class="label label-info" for="domaine">Domaine:</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control ges-form-control">

                        </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="le domaine  est obligatoire" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>

                         <br />
                     </div>

                     <div class="btn-check-log text-center">
                        <a class="btn-check-login ripple-effect" onclick="slide('Post-Etape2', 'Post-Etape3', 'Post-Etape1')">SUIVANT</a>
                     </div>
                 
               </div>
               </div>
             </div>
          </section>



         <section id="Post-Etape2">
         <div class="container">
              <!-- Nav pills -->
            <ul class="nav nav-pills nav-justified" role="tablist">
               <li class="nav-item">
                  <a class="nav-link "    role="tab" aria-controls="Etape1" aria-selected="false" onclick="slide('Post-Etape1','Post-Etape2','Post-Etape3')">Etape 1</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link active"  role="tab"  aria-controls="Etape2" aria-selected="true" onclick="slide('Post-Etape2','Post-Etape1','Post-Etape3')">Etape 2</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link"   role="tab" aria-controls="Etape3" aria-selected="false" onclick="slide('Post-Etape3','Post-Etape2','Post-Etape1')">Etape 3</a>
               </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content py-3 px-3 px-sm-0 events-tab-content">
               <div class="tab-pane fade show active" id="Etape2" role="tabpanel" aria-labelledby="Etape1-tab">
                  

                     <div class="form-group">
                       <label for="nb_poste" class="label label-info">Nombre de postes :</label>

                        <asp:TextBox ID="nbPost" runat="server"  placeholder="Nombre de postes " class="form-control ges-form-control" required="required" autocomplete="off"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nbPost" ErrorMessage="Le nombre de postes demander est obligatoire" ForeColor="Red">*</asp:RequiredFieldValidator>  

                         <br />
                         <br />
                       
                     </div>

                     <div class="form-group">
                       <label for="dateEcheance" class="label label-info">Date d echeance :</label>
                        <asp:TextBox ID="dateEch" runat="server"  class="form-control ges-form-control" required="required" autocomplete="off" textmode="Date"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Date d echeance obligatoire" ControlToValidate="dateEch"></asp:RequiredFieldValidator>
                         <br />
                         <br />
                      </div>

                     <div class="form-group">
                         <label class="label label-info">Ville:</label>
                         <asp:TextBox ID="ville" runat="server"  placeholder="Ville:" class="form-control ges-form-control" required="required" autocomplete="off" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="la ville est obligatoire" ControlToValidate="ville"></asp:RequiredFieldValidator>

                         <br />
                         <br />
                     </div>

                     <div class="btn-check-log text-center">
                     <a class="btn-check-login ripple-effect" onclick="slide('Post-Etape3','Post-Etape2','Post-Etape1')"> suivant</a>
                     </div>
                 
               </div>
               </div>
             </div>
          </section>


     <section id="Post-Etape3">
         <div class="container">
           <!-- Nav pills -->
            <ul class="nav nav-pills nav-justified" role="tablist">
               <li class="nav-item">
                  <a class="nav-link "  role="tab" aria-controls="Etape1" aria-selected="false" onclick="slide('Post-Etape1','Post-Etape2','Post-Etape3')">Etape 1</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link"  role="tab"  aria-controls="Etape2" aria-selected="false" onclick="slide('Post-Etape2','Post-Etape1','Post-Etape3')">Etape 2</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link active"   role="tab" aria-controls="Etape3" aria-selected="true" onclick="slide('Post-Etape3','Post-Etape2','Post-Etape1')">Etape 3</a>
               </li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content py-3 px-3 px-sm-0 events-tab-content">
               <div class="tab-pane fade show active" id="Etape3" role="tabpanel" aria-labelledby="Etape1-tab">
                   <br />
                   <br />

                     <div class="form-group">
                       <label for="contact-person" class="label label-info">Contrat:</label>
                         <asp:DropDownList ID="DropDownList2" runat="server" class="form-control ges-form-control">
                        </asp:DropDownList>
                         <br />
                     </div>

                     <div class="form-group">
                       <label for="contact-email" class="label label-info">Salaire propose:</label>
                        <asp:TextBox ID="salaire" runat="server"  placeholder="0 Si negociable" class="form-control ges-form-control"  autocomplete="off"></asp:TextBox>
                         <br />
                         <br />
                      </div>

                   
                     <div class="btn-check-log text-center">
                        <asp:Button ID="Button1" class="btn-check-login ripple-effect" runat="server" Text="Poster"  OnClick="Button1_Click"/>
                     </div>
                   <br />
               </div>
               </div>
             </div>
          </section>


    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

    <script>
            document.getElementById('Post-Etape2').hidden = true;
            document.getElementById('Post-Etape3').hidden = true;
            function slide(id1, id2, id3) {
                    document.getElementById(id1).hidden = false;
                    document.getElementById(id2).hidden = true;
                    document.getElementById(id3).hidden=true;
            }

    </script>
</asp:Content>
