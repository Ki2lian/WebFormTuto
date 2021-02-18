<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebFormTuto.Demo" %>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_etu" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_etu" HeaderText="id_etu" InsertVisible="False" ReadOnly="True" SortExpression="id_etu" />
                <asp:BoundField DataField="nom_etu" HeaderText="nom_etu" SortExpression="nom_etu" />
                <asp:BoundField DataField="prenom_etu" HeaderText="prenom_etu" SortExpression="prenom_etu" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:schoolConnectionString3 %>" 
            SelectCommand="SELECT * FROM [Etudiant]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Etudiant] WHERE [id_etu] = @original_id_etu AND (([nom_etu] = @original_nom_etu) OR ([nom_etu] IS NULL AND @original_nom_etu IS NULL)) AND (([prenom_etu] = @original_prenom_etu) OR ([prenom_etu] IS NULL AND @original_prenom_etu IS NULL))"
            InsertCommand="INSERT INTO [Etudiant] ([nom_etu], [prenom_etu]) VALUES (@nom_etu, @prenom_etu)"
            OldValuesParameterFormatString="original_{0}"
            UpdateCommand="UPDATE [Etudiant] SET [nom_etu] = @nom_etu, [prenom_etu] = @prenom_etu WHERE [id_etu] = @original_id_etu">
            <DeleteParameters>
                <asp:Parameter Name="original_id_etu" Type="Int32" />
                <asp:Parameter Name="original_nom_etu" Type="String" />
                <asp:Parameter Name="original_prenom_etu" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nom_etu" Type="String" />
                <asp:Parameter Name="prenom_etu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nom_etu" Type="String" />
                <asp:Parameter Name="prenom_etu" Type="String" />
                <asp:Parameter Name="original_id_etu" Type="Int32" />
                <asp:Parameter Name="original_nom_etu" Type="String" />
                <asp:Parameter Name="original_prenom_etu" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </form>
</body>
</html>
