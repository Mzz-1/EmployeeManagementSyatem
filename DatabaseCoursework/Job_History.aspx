<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Job_History.aspx.cs" Inherits="DatabaseCoursework.Job_History" %>

  <asp:Content ID="BodyContent"  ContentPlaceHolderID="MainContent" runat="server">
       <div class="container-box">
        <h2 class="heading-text">JOB HISTORY RECORDS</h2>
            <asp:DropDownList ID="DropDownList1" CssClass="form-control margin"  runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="NAME" DataValueField="EMPLOYEE_ID">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" CssClass="table" HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" runat="server" AutoGenerateColumns="False" DataKeyNames="CONTACT_NO,DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" ReadOnly="True" SortExpression="CONTACT_NO" />
                    <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                    <asp:BoundField DataField="JOB_NAME" HeaderText="JOB_NAME" SortExpression="JOB_NAME" />
                    <asp:BoundField DataField="JOB_DESCRIPTION" HeaderText="JOB_DESCRIPTION" SortExpression="JOB_DESCRIPTION" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" DataFormatString="{0:dd-MMM-yyyy}"/>
                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" DataFormatString="{0:dd-MMM-yyyy}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT e.name, e.contact_no, e.salary,
 d.department_id, d.department_name, j.job_name,
     j.job_description, h.start_date, h.end_date
    from emp e
    JOIN job_history h ON e.employee_id = h.employee_id
     JOIN department d ON h.department_id = d.department_id
     JOIN role r ON h.role_id = r.role_id
    JOIN job_details j ON r.job_id = j.job_id
WHERE e.employee_id = :employee
 ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;NAME&quot; FROM &quot;EMP&quot;"></asp:SqlDataSource>
    </div>
          </asp:Content>