<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Employee_of_the_month.aspx.cs" Inherits="DatabaseCoursework.Employee_of_the_month" %>

  <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="container-box">
      <h2 class="heading-text">EMPLOYEE OF THE MONTH RECORDS</h2>
            <asp:DropDownList ID="DropDownList2" CssClass="form-control margin" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="VOTING_YEAR" DataValueField="VOTING_YEAR">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList1" CssClass="form-control margin" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="VOTING_MONTH" DataValueField="VOTING_MONTH">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" CssClass="table"  HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM (
    SELECT e.employee_id, e.name, v.voting_month, v.voting_year, COUNT(v.candidate_id) AS vote_count
    FROM emp e
    JOIN voting_poll v ON e.employee_id = v.candidate_id
    WHERE v.voting_month = :month and v.voting_year = :year
    GROUP BY e.employee_id, e.name, v.voting_month, v.voting_year
    ORDER BY vote_count DESC)
    WHERE rownum &lt;=3">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="month" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="year" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VOTING_MONTH&quot; FROM &quot;VOTING_POLL&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VOTING_YEAR&quot; FROM &quot;VOTING_POLL&quot;"></asp:SqlDataSource>
    </div>
           </asp:Content>
