<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Assignment_2.Add" MasterPageFile="~/MasterPage.Master" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <h2>&nbsp;</h2>
    <h2 class="newStyle3">Add a new Book</h2>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Book ID : "></asp:Label>
    <asp:TextBox ID="b_ID" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Book Name : "></asp:Label>
    <asp:TextBox ID="b_Name" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Author : "></asp:Label>
    <asp:TextBox ID="b_Author" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Publisher : "></asp:Label>
    <asp:TextBox ID="b_publ" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Category : "></asp:Label>
    <asp:TextBox ID="b_Cat" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="No. of Copies : "></asp:Label>
    <asp:TextBox ID="b_Copies" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" />
    <br />
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
    }
    .newStyle4 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
</style>
</asp:Content>


