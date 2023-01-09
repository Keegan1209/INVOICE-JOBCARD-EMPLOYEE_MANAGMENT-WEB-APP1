<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="CLDV_POE_FIN.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<table class="nav-justified">
        <tr>
            <td colspan="2">Domingo Employees Database</td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: small">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: small; background-color: #0066FF; color: #000000; height: 42px;">To ADD new employees enter the employee information below and select INSERT, To REMOVE employees enter the employee information and click DELETE, to search for employees Insert Employee Information and Select SEARCH, to update employee information Enter the employee number and the NEW employee information and select UPDATE</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium; height: 33px;">&nbsp;Number</td>
            <td style="height: 33px; font-size: medium;">
                <asp:TextBox ID="EmpNoTXT" runat="server" Height="23px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium">&nbsp;Name</td>
            <td style="font-size: medium">
                <asp:TextBox ID="EmpNameTXT" runat="server" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 33px; font-size: medium;">&nbsp;Surname</td>
            <td style="height: 33px; font-size: medium;">
                <asp:TextBox ID="EmpSurTXT" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium">Contact</td>
            <td style="font-size: medium">
                <asp:TextBox ID="EmpContTXT" runat="server" Height="23px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium">&nbsp;</td>
            <td style="font-size: small">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" BackColor="#0066FF" ForeColor="White" />
                <asp:Button ID="Button2" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button2_Click" Text="Update" />
                <asp:Button ID="SearchBtn" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="SearchBtn_Click" Text="Search" />
                <asp:Button ID="DeleteBtn" runat="server" BackColor="Red" ForeColor="White" OnClick="DeleteBtn_Click1" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: medium; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color: #000000;">Employees&nbsp; in the Database</td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: medium">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-size: medium">
                <asp:GridView ID="GridView1" runat="server" Width="830px">
                </asp:GridView>
            </td>
        </tr>
        </table>
    </h2>
    </asp:Content>
