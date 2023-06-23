<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatabaseCoursework._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row-block">
         <h2 class="heading">Dashboard</h2>
        <div class="card" style="background:#aa45bb">
            <h2>Department</h2>
            <p>
               All Departments
               
            </p>
            <p>
                
                <a class="button" href="Department.aspx">View Details &raquo;</a>
            </p>

        </div>

        <div class="card" style="background:#ec3e79">
            <h2>Address</h2>
            <p>
               All Address
            </p>
          
            <p>
                
                <a class="button" href="Address.aspx">View Details &raquo;</a>
            </p>
        </div>

        <div class="card" style="background:#2095f2">
            <h2>Job</h2>
            <p>
               All Jobs
                 
            </p>
           
            <p>
                <a class="button" href="Job.aspx">View Details &raquo;</a>
            </p>
        </div>

        <div class="card" style="background:#ff9700">
            <h2>Role</h2>
            <p>
               All Roles
                
            </p>
            <p>
                <a class="button" href="Role.aspx">View Details &raquo;</a>
            </p>
        </div>

        <div class="card" style="background:#26a499">
            <h2>Employee</h2>
            <p>
               Total Employees
                 
            </p>
            <p>
                <a class="button" href="Employee.aspx">View Details &raquo;</a>
            </p>
        </div>

        <div class="card" style="background:#ef514e">
            <h2>Employee Job History</h2>
            <p>
               All Job History
            </p>
            <p>
                <a class="button" href="Job_History.aspx">View Details &raquo;</a>
            </p>
        </div>

        <div class="card" style="background:#4baf4f">
            <h2>Employee Voting Record</h2>
            <p>
               All voting Records
            </p>
            <p>
                <a class="button" href="Voting_Poll.aspx">View Details &raquo;</a>
            </p>
        </div>

        <div class="card" style="background:#02a8f4">
            <h2>Employee of the month</h2>
            <p>
               All Employee Of The Month Records
            </p>
            <p>
                <a class="button" href="Employee_Of_The_Month.aspx">View Details &raquo;</a>
            </p>
            <div>
            </div>
        </div>
   
    </div>
    <div class="chart-area">
        <h2>Data Visualization</h2>

        <h2>Number of employees in each department</h2>
        <asp:Chart runat="server" ID="ctl00" DataSourceID="SqlDataSource1" Height="391px" Width="781px">
            <Series>
                <asp:Series Name="Series1" XValueMember="DEPARTMENT_NAME" YValueMembers="COUNT(E.EMPLOYEE_ID)"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand=" SELECT  d.department_name, COUNT(e.employee_id)
    from emp e
    JOIN department d ON e.department_id = d.department_id
    group by department_name"></asp:SqlDataSource>

        <h2>Number of roles in each job</h2>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Height="451px" Width="780px">
            <Series>
                <asp:Series Name="Series1" XValueMember="JOB_NAME" YValueMembers="NUM_OF_ROLES"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select j.job_name,count(r.role_id) as num_of_roles from role r join job_details j on j.job_id = r.job_id group by j.job_name"></asp:SqlDataSource>

         <h2>Number of employees in each job</h2>
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource3" Height="430px" Width="783px">
        <Series>
            <asp:Series Name="Series1" XValueMember="ROLE_NAME" YValueMembers="NUM_OF_EMPLOYEES"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select r.role_name,count(e.role_id) as num_of_employees from role r join emp e on r.role_id = e.role_id group by r.role_name"></asp:SqlDataSource>
    </div>
</asp:Content>
