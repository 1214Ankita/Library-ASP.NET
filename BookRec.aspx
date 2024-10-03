<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookRec.aspx.cs" Inherits="Assignment_2.Book_Records" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
    <h1><span class="newStyle3">Book Records</span></h1>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="15" ForeColor="#333333" GridLines="Vertical"  PageSize="5" BorderColor="#CCCCCC" BorderWidth="2px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="No_of_copies" HeaderText="No_of_copies" SortExpression="No_of_copies" />
        </Columns>
        <EditRowStyle BackColor="#DEDDDA" />
        <FooterStyle BackColor="#DEDDDA" Font-Bold="True" ForeColor="White" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryConnectionString %>" SelectCommand="SELECT * FROM [BookDetails]"></asp:SqlDataSource>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .newStyle3 {
        font-family: "Gill Sans MT Condensed";
        font-size: xx-large;
        color: #7C6F57;
    }
    .newStyle3 {
    }
</style>
</asp:Content>



