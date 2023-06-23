<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DatabaseCoursework.Home" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Employee Management System</h1>
        <p class="lead">The employee record and voting system manages employee records and facilitates the selection of Employee of the Month. It allows HR personnel to store and manage employee information, while employees can nominate and vote for their peers who have demonstrated exceptional performance. The system ensures transparency and fairness in the selection process, promotes engagement, and helps organizations build a culture of recognition and appreciation.</p>
       
    </div>

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
    <div>
        <asp:Chart runat="server">
            <Series>
                <asp:Series Name="Series1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
