﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebFormTuto.Demo" %>
<!-- <%@ Register Src="~/TestControl.ascx" TagName="WebControl" TagPrefix="TWebControl"%> -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body dir="ltr">
    <TWebControl:WebControl ID="Header" runat="server" MinValue="100"/>

    <form id="form1" runat="server">
    <h1><%=date %></h1>
    <asp:Label ID="Label1" runat="server" Text="Bonjour"></asp:Label>
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <asp:ListBox ID="lstLocation" runat="server">
            <asp:ListItem Value="Paris">Paris</asp:ListItem>
            <asp:ListItem>Londres</asp:ListItem>
            <asp:ListItem>Madrid</asp:ListItem>
        </asp:ListBox>
        <p>
            <asp:RadioButton ID="rdHomme" runat="server" Text="Homme" />
        </p>
        <p>
            <asp:RadioButton ID="rdFemme" runat="server" Text="Femme" />
        </p>
        <p class="test">
            <asp:CheckBox ID="chkC" runat="server" Text="C#" />
        </p>
        <p>
            <asp:CheckBox ID="chkASP" runat="server" Text="ASP.Net" />
        </p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <p>
            Nom<asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="nom"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [nom], [prenom] FROM [compte]"></asp:SqlDataSource>
        </p>
        Prénom<asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1" DataTextField="prenom" DataValueField="prenom"></asp:ListBox>
    </form>
</body>
</html>
