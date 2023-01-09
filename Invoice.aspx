<%@ Page Title="Invoice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="CLDV_POE_FIN.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>DOMINGO Customer Invoices</h2>
    <table style="width: 100%;">
        <tr>
            <td>Job Card generated invoices appear below</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Generated customer invoices</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="842px">
                    <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="JobCardNo" HeaderText="JobCardNo" SortExpression="JobCardNo" />
                        <asp:BoundField DataField="Cust_Name" HeaderText="Cust_Name" SortExpression="Cust_Name" />
                        <asp:BoundField DataField="Cust_Surname" HeaderText="Cust_Surname" SortExpression="Cust_Surname" />
                        <asp:BoundField DataField="InstallationAddress" HeaderText="InstallationAddress" SortExpression="InstallationAddress" />
                        <asp:BoundField DataField="JServiceType" HeaderText="JServiceType" SortExpression="JServiceType" />
                        <asp:BoundField DataField="JDailyRate" HeaderText="JDailyRate" SortExpression="JDailyRate" />
                        <asp:BoundField DataField="VAT" HeaderText="VAT" SortExpression="VAT" />
                        <asp:BoundField DataField="Total Amount" HeaderText="Total Amount" ReadOnly="True" SortExpression="Total Amount" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_VC_CLDV6211_20103712ConnectionString2 %>" SelectCommand="SELECT INVOICE_TABLE.InvoiceID, JOB_CARD01.JobCardNo, JOB_CARD01.Cust_Name, JOB_CARD01.Cust_Surname, JOB_CARD01.InstallationAddress, 
JobType.JServiceType, INVOICE_TABLE.JDailyRate, INVOICE_TABLE.VAT,  ((0.14 * INVOICE_TABLE.JDailyRate + INVOICE_TABLE.JDailyRate ) * JOB_CARD01.Days) 'Total Amount'
FROM JOB_CARD01, INVOICE_TABLE, JobType
WHERE INVOICE_TABLE.JobCardNo = JOB_CARD01.JobCardNo AND JOB_CARD01.JobType = JobType.JServiceType AND  INVOICE_TABLE.JDailyRate = JobType.JDailyRate 
"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
