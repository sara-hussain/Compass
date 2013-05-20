<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageQues.aspx.cs" Inherits="MECS.ManageQues" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Manage Questionnaire </title>

</head>
<body>

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
    
        <telerik:RadGrid ID="RadGRidQuestionnaire" runat="server" CellSpacing="0" 
            DataSourceID="LinqDSCategory" GridLines="None" 
             AutoGenerateColumns="False" AllowPaging="True" 
            onitemupdated="RadGRidQuestionnaire_ItemUpdated" 
            oniteminserted="RadGRidQuestionnaire_ItemInserted" 
            onitemcreated="RadGRidQuestionnaire_ItemCreated" >
            
            <ExportSettings>
                <Pdf Author="Rabab" Creator="Rabab" />
            </ExportSettings>
<MasterTableView 
                datakeynames="CategoryID" datasourceid="LinqDSCategory" Caption="Categories" 
                CommandItemDisplay="Top" AllowAutomaticDeletes="True" 
                AllowAutomaticInserts="True" AllowAutomaticUpdates="True">
                
    <DetailTables>
        <telerik:GridTableView runat="server" DataKeyNames="CategoryID,QuestionID" 
            DataSourceID="LinqDSQuestion" GroupLoadMode="Client" 
            CommandItemDisplay="Top" Name="Questions" Caption="Questions" 
            BackColor="#00C0C0">
            <DetailTables>
                <telerik:GridTableView runat="server" 
                    DataKeyNames="CategoryID,QuestionID,ChoiceID" DataSourceID="LinqDSChoice" 
                    Name="Choices" CommandItemDisplay="Top" Caption="Choices" 
                    BackColor="White">
                    <ParentTableRelation>
                        <telerik:GridRelationFields DetailKeyField="CategoryID" 
                            MasterKeyField="CategoryID" />
                        <telerik:GridRelationFields DetailKeyField="QuestionID" 
                            MasterKeyField="QuestionID" />
                    </ParentTableRelation>
                    <CommandItemSettings ExportToPdfText="Export to PDF" />
                    <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column" 
                        Visible="True">
                        <HeaderStyle Width="20px" />
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column" 
                        Visible="True">
                        <HeaderStyle Width="20px" />
                    </ExpandCollapseColumn>
                    <Columns>
                        <telerik:GridBoundColumn DataField="CategoryID" 
                            FilterControlAltText="Filter CCategoryID column" HeaderText="Category ID" 
                            ReadOnly="True" UniqueName="CCategoryID" Visible="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="QuestionID" 
                            FilterControlAltText="Filter CQuestionID column" HeaderText="Question ID" 
                            ReadOnly="True" UniqueName="CQuestionID" Visible="False">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ChoiceID" 
                            FilterControlAltText="Filter CChoiceID column" HeaderText="Choice ID" 
                            ReadOnly="True" UniqueName="CChoiceID">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ChoiceText" 
                            FilterControlAltText="Filter cChoiceText column" HeaderText="Choice Text" 
                            UniqueName="cChoiceText" MaxLength="250">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ChoiceSerial" 
                            FilterControlAltText="Filter CChoiceSerial column" HeaderText="Choice Serial" 
                            UniqueName="CChoiceSerial">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="RefValue" 
                            FilterControlAltText="Filter CRefValue column" HeaderText="Ref. Value" 
                            UniqueName="CRefValue">
                        </telerik:GridBoundColumn>
                        <telerik:GridEditCommandColumn FilterControlAltText="Filter EditCommandColumn column">
                        </telerik:GridEditCommandColumn>
                    </Columns>
                    <EditFormSettings>
                        <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                        </EditColumn>
                    </EditFormSettings>
                </telerik:GridTableView>
            </DetailTables>
            <ParentTableRelation>
                <telerik:GridRelationFields DetailKeyField="CategoryID" 
                    MasterKeyField="CategoryID" />
            </ParentTableRelation>
            <CommandItemSettings ExportToPdfText="Export to PDF" />
            <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column" 
                Visible="True">
            </RowIndicatorColumn>
            <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column" 
                Visible="True">
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridEditCommandColumn FilterControlAltText="Filter EditCommandColumn column">
                </telerik:GridEditCommandColumn>
                <telerik:GridBoundColumn DataField="CategoryID" 
                    FilterControlAltText="Filter QCategoryID column" HeaderText="Category ID" 
                    ReadOnly="True" UniqueName="QCategoryID" Visible="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QuestionID" 
                    FilterControlAltText="Filter QQuestionID column" HeaderText="Question ID" 
                    ReadOnly="True" UniqueName="QQuestionID">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QuestionText" 
                    FilterControlAltText="Filter QQuestionText column" HeaderText="Question Text" 
                    UniqueName="QQuestionText" MaxLength="250">
                    <ItemStyle Width="200px" />
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="QuestionSerial" 
                    FilterControlAltText="Filter QQuestionSerial column" 
                    HeaderText="Question Serial" UniqueName="QQuestionSerial">
                </telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn FilterControlAltText="Filter EditCommandColumn column" 
                    UniqueName="EditCommandColumn1">
                </EditColumn>
            </EditFormSettings>
        </telerik:GridTableView>
    </DetailTables>
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="CategoryID" DataType="System.Int32" 
            FilterControlAltText="Filter CategoryID column" HeaderText="CategoryID" 
            ReadOnly="True" SortExpression="CategoryID" UniqueName="CategoryID">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Description" 
            FilterControlAltText="Filter Description column" HeaderText="Description" 
            SortExpression="Description" UniqueName="Description">
        </telerik:GridBoundColumn>
        <telerik:GridEditCommandColumn FilterControlAltText="Filter EditCommandColumn column">
        </telerik:GridEditCommandColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column" 
        UniqueName="EditCommandColumn1"></EditColumn>
</EditFormSettings>
    <PagerStyle Mode="Slider" />
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>
        </telerik:RadGrid>
        <asp:LinqDataSource ID="LinqDSCategory" runat="server" 
            ContextTypeName="COMPASS.ORM.CompassDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
            TableName="Categories">
        </asp:LinqDataSource>
    
        <asp:LinqDataSource ID="LinqDSQuestion" runat="server" 
            ContextTypeName="COMPASS.ORM.CompassDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Questions" 
            Where="CategoryID == @CategoryID">
            <WhereParameters>
                <asp:ControlParameter ControlID="RadGRidQuestionnaire" Name="CategoryID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    
        <asp:LinqDataSource ID="LinqDSChoice" runat="server" 
            ContextTypeName="COMPASS.ORM.CompassDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
            OrderBy="ChoiceSerial" TableName="Choices" 
            Where="CategoryID == @CategoryID &amp;&amp; QuestionID == @QuestionID">
            <WhereParameters>
                <asp:ControlParameter ControlID="RadGRidQuestionnaire" Name="CategoryID" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="RadGRidQuestionnaire" Name="QuestionID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
