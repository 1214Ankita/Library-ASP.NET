<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="Assignment_2.IssueBook" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <h2>&nbsp;</h2>
    <h2 class="newStyle3">Issue a Book</h2>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Student ID : "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Student Name : "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Book ID : "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Book Name : "></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="No. of copies : "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ISSUED" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CANCEL" />
    <br />
    <br />
    <asp:Label ID="Label6" runat="server"></asp:Label>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
    }
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
</style>
</asp:Content>



