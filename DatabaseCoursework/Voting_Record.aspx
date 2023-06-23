<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Voting_Record.aspx.cs" Inherits="DatabaseCoursework.Voting_Record" %>

  <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <div class="container-box">
          <h2 class="heading-text">VOTING RECORDS</h2>
            <asp:DropDownList ID="DropDownList1" CssClass="form-control margin" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="EMPLOYEE_ID">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" CssClass="table" HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.employee_id, e.name, e.contact_no, r.role_name, d.department_name,
   v.voting_month, v.voting_year, c.name as candidate_name, c.contact_no, cr.role_name as candidate_role_name, d2.department_name as candidate_department_name
    FROM emp e
    INNER JOIN voting_poll v ON e.employee_id = v.voter_id
    INNER JOIN emp c ON v.candidate_id = c.employee_id
    INNER JOIN role r ON e.role_id= r.role_id
    INNER JOIN role cr ON c.role_id= cr.role_id
    INNER JOIN department d ON d.department_id= e.department_id
    INNER JOIN department d2 ON d2.department_id= c.department_id
   WHERE e.employee_id = :employee">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;NAME&quot; FROM &quot;EMP&quot;"></asp:SqlDataSource>
      </div>
    </asp:Content>