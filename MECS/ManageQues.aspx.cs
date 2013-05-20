using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace MECS
{
    public partial class ManageQues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DisplayMessage(string text)
        { 
            RadGRidQuestionnaire.Controls.Add(new LiteralControl(string.Format("<span style='color:red'>{0}</span>",text)));
        }
        protected void RadGRidQuestionnaire_ItemUpdated(object sender, Telerik.Web.UI.GridUpdatedEventArgs e)
        {
            
          // To get value
            //GridEditableItem item = (GridEditableItem)e.Item;
            //  string id = item.GetDataKeyValue("QuestionID").ToString();
            string sItem = getItemName(e.Item.OwnerTableView.Name);

            if (e.Exception != null)
            {
                e.KeepInEditMode = true;
                e.ExceptionHandled = true;
                DisplayMessage("Cannot be Updated.....Reason:"+e.Exception.Message);
            }
            else
            {
                //Label1.Text = sItem;
                DisplayMessage( sItem + " Is Updated....!");
            }



        }

        protected void RadGRidQuestionnaire_ItemInserted(object sender, GridInsertedEventArgs e)
        {
            string sItem=getItemName(e.Item.OwnerTableView.Name);

            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                DisplayMessage(sItem + " Cannot be Inserted... Reason: " + e.Exception.Message);
            }
            else
            {
                DisplayMessage(sItem + " Is Inserted...!");

            }


        }
        private string getItemName(string tableName)
        {
            switch(tableName)
            {

                case ("Categories"):
                    { return "Categtory"; }

                case ("Questions"):
                    {return "Question";}
                
                case ("Choices"):
                    {return "Choice for Question";}

                default:
                    {
                        return "";
                    }
            }

        }

        protected void RadGRidQuestionnaire_ItemCreated(object sender, GridItemEventArgs e)
        {
            if (e.Item is GridEditableItem && e.Item.IsInEditMode)
            {
                GridEditableItem GItem = e.Item as GridEditableItem;

                try
                {
                    if (GItem.EditManager.GetColumnEditor("QQuestionText") != null)
                    {
                        GridTextBoxColumnEditor editor = (GridTextBoxColumnEditor)GItem.EditManager.GetColumnEditor("QQuestionText");
                        editor.TextBoxControl.Width = Unit.Pixel(1000);
                    }
                }
                catch {}

                try
                {
                    if (GItem.EditManager.GetColumnEditor("Description") != null)
                    {
                        GridTextBoxColumnEditor editor = (GridTextBoxColumnEditor)GItem.EditManager.GetColumnEditor("Description");
                        editor.TextBoxControl.Width = Unit.Pixel(700);
                    }
                }
                catch { }

                    try
                {
                    if (GItem.EditManager.GetColumnEditor("cChoiceText") != null)
                    {
                        GridTextBoxColumnEditor editor = (GridTextBoxColumnEditor)GItem.EditManager.GetColumnEditor("cChoiceText");
                        editor.TextBoxControl.Width = Unit.Pixel(500);
                    }
                }
                catch { }
                

                    


                
                
            }

        }
        //will implement if need
        protected void RadGRidQuestionnaire_ItemCommand(object sender, GridCommandEventArgs e)
        {
            if (e.CommandName == RadGrid.UpdateCommandName)
            { Label1.Text = "Update!!!!"; e.Canceled = true; }

            if (e.CommandName == RadGrid.InitInsertCommandName)
            { Label1.Text="Insert !!!!";}

            if (e.CommandName == RadGrid.PerformInsertCommandName)
            { Label1.Text = "Perform Insert !!!!"; }

        }


       
       

      
    }
}