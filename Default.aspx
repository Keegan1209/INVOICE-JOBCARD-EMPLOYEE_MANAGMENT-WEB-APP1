<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CLDV_POE_FIN._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width:100%;">
        <tr>
            <td style="height: 20px; width: 209px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; background-color: #6699FF;">To ADD a NEW JobCard enter the information below and select INSERT. To REMOVE JobCards enter the Jobcard information and JobCard Number then click DELETE, to search for Jobcards Insert the Jobcard ID or Customer name Information and Select SEARCH, to UPDATE Job Card information Enter the Jobcard number and the NEW JobCard information and select UPDATE.</td>
            <td style="height: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; background-color: #6699FF;">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; background-color: #6699FF;">To UPDATE JOB TYPE DAILY RATE, enter the JOB TYPE ID and the new DAILY RATE.</td>
            <td style="height: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; background-color: #6699FF;">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 19px; " colspan="2">Updated job cards displayed below:</td>
            <td style="height: 19px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Job Card No. </td>
            <td>
                <asp:TextBox ID="JobCardTXT" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Customer Name</td>
            <td>
                <asp:TextBox ID="CustNameTXT" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Customer Surname</td>
            <td>
                <asp:TextBox ID="CustSurnameTXT" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Installation </td>
            <td>
                <asp:TextBox ID="AddressTXT" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Job Type</td>
            <td>
                <asp:TextBox ID="JobTypeTXT" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Days</td>
            <td>
                <asp:TextBox ID="DaysTXT" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">Materials</td>
            <td>
                <asp:TextBox ID="MaterialsTXT" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px; height: 40px">&nbsp;</td>
            <td style="height: 40px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" BackColor="#0066FF" ForeColor="White" />
                <asp:Button ID="SearchBtn" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="SearchBtn_Click" Text="Search" />
                <asp:Button ID="UpdateBtn" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="UpdateBtn_Click1" Text="Update" />
                <asp:Button ID="DeleteBtn" runat="server" BackColor="Red" ForeColor="White" OnClick="DeleteBtn_Click1" Text="Delete" />
            </td>
            <td style="height: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px; height: 40px; color: #000000;">Current Job Type Daily Rate:</td>
            <td style="height: 40px"></td>
            <td style="height: 40px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px; color: #000000;" colspan="2">
                <asp:GridView ID="GridView3" runat="server" Width="570px">
                </asp:GridView>
            </td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px; color: #000000; font-size: small;" colspan="2">To update job Type Daily Rate, Enter ID below and the new Daily Rate. </td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px; color: #000000;" colspan="2">JobType ID to be updated:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="JobTypeID" runat="server"></asp:TextBox>
            </td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px; color: #000000;" colspan="2">Update Job Type Daily rate:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="JDailyRate" runat="server" style="margin-bottom: 0"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" BackColor="Yellow" ForeColor="Black" OnClick="Button2_Click" Text="Update" />
            </td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px; color: #000000;" colspan="2">&nbsp;</td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: medium; color: #000000;" colspan="2">Updated Job Cards in the database:</td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 40px" colspan="2">
                <asp:GridView ID="GridView2" runat="server" Width="940px">
                </asp:GridView>
            </td>
            <td class="modal-sm" style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px; height: 40px">&nbsp;</td>
            <td style="height: 40px">&nbsp;</td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px; height: 40px">Database History</td>
            <td style="height: 40px">&nbsp;</td>
            <td style="height: 40px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" colspan="2" style="height: 40px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_VC_CLDV6211_20103712ConnectionString3 %>" InsertCommand="INSERT INTO JOB_CARD01(JobCardNo, Cust_Name, Cust_Surname, InstallationAddress, JobType, Days, MaterialsUsed) VALUES (,,,,,,)" SelectCommand="SELECT JobCardNo, Cust_Name, Cust_Surname, InstallationAddress, JobType, Days, MaterialsUsed FROM JOB_CARD01"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="JobCardNo">
                    <Columns>
                        <asp:BoundField DataField="JobCardNo" HeaderText="JobCardNo" SortExpression="JobCardNo" ReadOnly="True" />
                        <asp:BoundField DataField="Cust_Name" HeaderText="Cust_Name" SortExpression="Cust_Name" />
                        <asp:BoundField DataField="Cust_Surname" HeaderText="Cust_Surname" SortExpression="Cust_Surname" />
                        <asp:BoundField DataField="InstallationAddress" HeaderText="InstallationAddress" SortExpression="InstallationAddress" />
                        <asp:BoundField DataField="JobType" HeaderText="JobType" SortExpression="JobType" />
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                        <asp:BoundField DataField="MaterialsUsed" HeaderText="MaterialsUsed" SortExpression="MaterialsUsed" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="modal-sm" style="height: 40px">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
