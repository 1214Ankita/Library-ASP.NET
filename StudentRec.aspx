<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentRec.aspx.cs" Inherits="Assignment_2.Student_Records" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <h1><span class="newStyle3">Student Records</span></h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" AllowPaging="True" BorderColor="#CCCCCC" BorderWidth="2px" CellPadding="15" ForeColor="#333333" GridLines="Vertical" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
            <asp:BoundField DataField="Issued" HeaderText="Issued" SortExpression="Issued" />
            <asp:BoundField DataField="No_BooksIssued" HeaderText="No_BooksIssued" SortExpression="No_BooksIssued" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#7B715E" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .newStyle3 {
    }
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
    }
    .newStyle4 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
    .newStyle3 {
    }
    .newStyle3 {
        color: #7C6F57;
    }
</style>
</asp:Content>



