<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxGridView: How to Change Cell Background-Color on Mouse Hover Using CSS</title>
    <style type="text/css">
        .cellBgColor
        {
            background-color: white;
        }
        .cellBgColor:hover
        {
            background-color: Yellow;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid"
        DataSourceID="AccessDataSource1" KeyFieldName="CustomerID">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Styles>
            <Cell CssClass="cellBgColor">
            </Cell>
        </Styles>
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb"
        SelectCommand="SELECT [CustomerID], [ContactName], [Country] FROM [Customers]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
