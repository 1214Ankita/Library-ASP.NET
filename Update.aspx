<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Assignment_2.Update" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <br />
    <h2 class="newStyle3"><span class="newStyle3">Update a Record</span></h2>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Book ID : "></asp:Label>
    <asp:DropDownList ID="ddl_bID" runat="server" DataSourceID="SqlDataSource1" DataTextField="BookID" DataValueField="BookID" OnSelectedIndexChanged="ddl_bID_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" SelectCommand="SELECT [BookID] FROM [BookDetails]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Book Name : "></asp:Label>
    <asp:TextBox ID="txtbname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Author : "></asp:Label>
    <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Publisher : "></asp:Label>
    <asp:TextBox ID="txtpublisher" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Category : "></asp:Label>
    <asp:TextBox ID="txtcategory" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="No of Copies : "></asp:Label>
    <asp:TextBox ID="txtcopies" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" />
    <br />
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
    .newStyle4 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
    .newStyle3 {
        color: #7C6F57;
        font-family: "Gill Sans MT Condensed";
        font-size: large;
    }
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
    }
    .newStyle3 {
        font-size: xx-large;
    }
</style>
</asp:Content>



