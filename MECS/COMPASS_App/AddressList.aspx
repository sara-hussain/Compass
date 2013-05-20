<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddressList.aspx.cs" Inherits="COMPASS.AddressList" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" 
                Name="Telerik.Web.UI.Common.Core.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" 
                Name="Telerik.Web.UI.Common.jQuery.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" 
                Name="Telerik.Web.UI.Common.jQueryInclude.js">
            </asp:ScriptReference>
        </Scripts>
    </telerik:RadScriptManager>
    <div>
        <telerik:RadGrid ID="RadGridAddressList" runat="server" 
            AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" CellSpacing="0" DataSourceID="LinqDSAddressList" 
            GridLines="None" onpageindexchanged="RadGridAddressList_PageIndexChanged" 
            onpagesizechanged="RadGridAddressList_PageSizeChanged">
<MasterTableView DataSourceID="LinqDSAddressList">
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
</RowIndicatorColumn>

<ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="Contracted_Name" 
            FilterControlAltText="Filter Contracted_Name column" 
            HeaderText="Contracted Name" ReadOnly="True" SortExpression="Contracted_Name" 
            UniqueName="Contracted_Name">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Contracted_Address" 
            FilterControlAltText="Filter Contracted_Address column" 
            HeaderText="Contracted Address" ReadOnly="True" 
            SortExpression="Contracted_Address" UniqueName="Contracted_Address">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="City" 
            FilterControlAltText="Filter City column" HeaderText="City" ReadOnly="True" 
            SortExpression="City" UniqueName="City">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ZIP" DataType="System.Double" 
            FilterControlAltText="Filter ZIP column" HeaderText="ZIP" ReadOnly="True" 
            SortExpression="ZIP" UniqueName="ZIP">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Ethnic_Groups" DataType="System.Double" 
            FilterControlAltText="Filter Ethnic_Groups column" HeaderText="Ethnic Groups" 
            ReadOnly="True" SortExpression="Ethnic_Groups" UniqueName="Ethnic_Groups">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Household_Age" 
            FilterControlAltText="Filter Household_Age column" HeaderText="Household Age" 
            ReadOnly="True" SortExpression="Household_Age" UniqueName="Household_Age">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Geo_Tract" DataType="System.Double" 
            FilterControlAltText="Filter Geo_Tract column" HeaderText="Geo Tract \ Block" 
            ReadOnly="True" SortExpression="Geo_Tract" UniqueName="Geo_Tract">
        </telerik:GridBoundColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>
        </telerik:RadGrid>
    </div>
    <asp:LinqDataSource ID="LinqDSAddressList" runat="server" 
        ContextTypeName="COMPASS.ORM.CompassDataContext" EntityTypeName="" 
        Select="new (Contracted_Name, Contracted_Address, City, ZIP, Ethnic_Groups, Household_Age, Geo_Tract)" 
        TableName="AddressLists">
    </asp:LinqDataSource>
    </form>
</body>
</html>
