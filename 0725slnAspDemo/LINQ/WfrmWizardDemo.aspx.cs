using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LINQ_WfrmWizardDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if(e.CurrentStepIndex == 1)
        {
            if(string.IsNullOrEmpty(RadioButtonList2.SelectedValue))
            {
                Wizard1.ActiveStepIndex = 1;
                e.Cancel = true;
            }
        }
        lblMessage.Text = "行程:" + RadioButtonList1.SelectedValue + "<br/>";
        lblMessage.Text += "預算:" + RadioButtonList2.SelectedValue + "<br/>";
        lblMessage.Text += "人數:大人" + WUCtlCountAdult.GetNumber + "人,小孩:" + WUCtlCountChild.GetNumber+"人" ;
    }
}