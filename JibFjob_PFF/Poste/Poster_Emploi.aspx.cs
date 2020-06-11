using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JibFjob_PFF.Poste
{
    public partial class Poster_Emploi : System.Web.UI.Page
    {
        DBjobDataContext dc = new DBjobDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            var dm = from d in dc.Domaine
                    select d;
            DropDownList1.DataSource = dm;
            DropDownList1.DataTextField = "Designation";
            DropDownList1.DataValueField = "IdDomaine";
            DropDownList1.DataBind();


            var ct= from d in dc.Contrat
                    select d;
            DropDownList2.DataSource = ct;
            DropDownList2.DataTextField = "Designation";
            DropDownList2.DataValueField = "IdContrat";
            DropDownList2.DataBind();
        }
        public void reset(Control control)
        {
            foreach (Control x in control.Controls)
            {
                if (x is TextBox)
                {
                    (x as TextBox).Text = String.Empty;
                }

                if (x is DropDownList)
                {
                    (x as DropDownList).SelectedIndex = 0;
                }

                reset(x);
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Emploi ep = new Emploi();
            ep.dateCreation = DateTime.Now;
            ep.titre_Emploi = Titre_ann.Text;
            ep.descripion = Description.Text;
            ep.domain = DropDownList1.Text;
            ep.Ville = ville.Text;
            ep.nbPostes = int.Parse(nbPost.Text);
            ep.IdContrat = int.Parse(DropDownList2.SelectedValue);
            ep.Salaire_propose = float.Parse(salaire.Text);
            ep.idEntreprise = 1;
            ep.dateEcheance =DateTime.Parse( dateEch.Text);
            ep.EmploiEtat = true;
            dc.Emploi.InsertOnSubmit(ep);
            dc.SubmitChanges();

            reset(this);
        }
    }
}