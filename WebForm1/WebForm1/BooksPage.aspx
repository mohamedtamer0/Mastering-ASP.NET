<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BooksPage.aspx.cs" Inherits="WebForm1.BooksPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddBook.aspx">Add New Book</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="128px" Width="585px" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                    <asp:BoundField DataField="BookAuth" HeaderText="BookAuth" SortExpression="BookAuth" />
                    <asp:BoundField DataField="BookDate" HeaderText="BookDate" SortExpression="BookDate" />
                    <asp:BoundField DataField="BookInDate" HeaderText="BookInDate" SortExpression="BookInDate" />
                    <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                    <asp:BoundField DataField="Reciver" HeaderText="Reciver" SortExpression="Reciver" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
