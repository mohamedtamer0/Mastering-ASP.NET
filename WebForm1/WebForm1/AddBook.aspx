<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="WebForm1.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        Add New Book<br />
        <table class="auto-style1">
            <tr>
                <td>Book Name</td>
                <td>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Book Auther</td>
                <td>
                    <asp:TextBox ID="Auth" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Book Date</td>
                <td>
                    <asp:TextBox ID="Date" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Book in Date</td>
                <td>
                    <asp:TextBox ID="InDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Book Price </td>
                <td>
                    <asp:TextBox ID="Price" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Receiver</td>
                <td>
                    <asp:DropDownList ID="Receiver" runat="server">
                        <asp:ListItem>Ahmed</asp:ListItem>
                        <asp:ListItem>Mohamed</asp:ListItem>
                        <asp:ListItem>Ibrahim</asp:ListItem>
                        <asp:ListItem>Mahmoud</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add Book" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" Text="Cancel" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
