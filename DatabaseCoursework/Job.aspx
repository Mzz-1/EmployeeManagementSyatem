<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Job.aspx.cs" Inherits="DatabaseCoursework.Job" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 class="heading-text">JOB DETAILS</h2>
    <asp:GridView ID="GridView1" CssClass="table" HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" runat="server" AutoGenerateColumns="False" DataKeyNames="JOB_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" ReadOnly="True" SortExpression="JOB_ID" />
            <asp:BoundField DataField="JOB_NAME" HeaderText="JOB_NAME" SortExpression="JOB_NAME" />
            <asp:BoundField DataField="JOB_DESCRIPTION" HeaderText="JOB_DESCRIPTION" SortExpression="JOB_DESCRIPTION" />
            <asp:BoundField DataField="MIN_SALARY" HeaderText="MIN_SALARY" SortExpression="MIN_SALARY" />
            <asp:BoundField DataField="MAX_SALARY" HeaderText="MAX_SALARY" SortExpression="MAX_SALARY" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB_DETAILS&quot; WHERE &quot;JOB_ID&quot; = :JOB_ID" InsertCommand="INSERT INTO &quot;JOB_DETAILS&quot; (&quot;JOB_ID&quot;, &quot;JOB_NAME&quot;, &quot;JOB_DESCRIPTION&quot;, &quot;MIN_SALARY&quot;, &quot;MAX_SALARY&quot;) VALUES (:JOB_ID, :JOB_NAME, :JOB_DESCRIPTION, :MIN_SALARY, :MAX_SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOB_ID&quot;, &quot;JOB_NAME&quot;, &quot;JOB_DESCRIPTION&quot;, &quot;MIN_SALARY&quot;, &quot;MAX_SALARY&quot; FROM &quot;JOB_DETAILS&quot;" UpdateCommand="UPDATE &quot;JOB_DETAILS&quot; SET &quot;JOB_NAME&quot; = :JOB_NAME, &quot;JOB_DESCRIPTION&quot; = :JOB_DESCRIPTION, &quot;MIN_SALARY&quot; = :MIN_SALARY, &quot;MAX_SALARY&quot; = :MAX_SALARY WHERE &quot;JOB_ID&quot; = :JOB_ID">
            <DeleteParameters>
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
                <asp:Parameter Name="JOB_NAME" Type="String" />
                <asp:Parameter Name="JOB_DESCRIPTION" Type="String" />
                <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
                <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="JOB_NAME" Type="String" />
                <asp:Parameter Name="JOB_DESCRIPTION" Type="String" />
                <asp:Parameter Name="MIN_SALARY" Type="Decimal" />
                <asp:Parameter Name="MAX_SALARY" Type="Decimal" />
                <asp:Parameter Name="JOB_ID" Type="Decimal" />
            </UpdateParameters>
    </asp:SqlDataSource>
    
           
        
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="JOB_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            JOB_ID:
            <asp:Label ID="JOB_IDLabel1" runat="server" Text='<%# Eval("JOB_ID") %>' />
            <br />
            JOB_NAME:
            <asp:TextBox ID="JOB_NAMETextBox" runat="server" Text='<%# Bind("JOB_NAME") %>' />
            <br />
            JOB_DESCRIPTION:
            <asp:TextBox ID="JOB_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("JOB_DESCRIPTION") %>' />
            <br />
            MIN_SALARY:
            <asp:TextBox ID="MIN_SALARYTextBox" runat="server" Text='<%# Bind("MIN_SALARY") %>' />
            <br />
            MAX_SALARY:
            <asp:TextBox ID="MAX_SALARYTextBox" runat="server" Text='<%# Bind("MAX_SALARY") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="insert-form">
            <h3 class="form-heading">Add New Job</h3>
            <div class="form-group">
            JOB_ID:
            <asp:TextBox CssClass="form-control" ID="JOB_IDTextBox" runat="server" Text='<%# Bind("JOB_ID") %>' />
            <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator1" ControlToValidate="JOB_IDTextBox" runat="server" ErrorMessage="Provide Appropriate ID"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ErrorMessage="ID must be integer" ControlToValidate="JOB_IDTextBox" ValidationExpression="^[0-9]+$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                <br />
            </div>
            <div class="form-group">
            JOB_NAME:
            <asp:TextBox CssClass="form-control" ID="JOB_NAMETextBox" runat="server" Text='<%# Bind("JOB_NAME") %>' />
            <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator2" ControlToValidate="JOB_NAMETextBox" runat="server" ErrorMessage="Provide Appropriate ID"></asp:RequiredFieldValidator>

            <br />
            </div>
            <div class="form-group">
            JOB_DESCRIPTION:
            <asp:TextBox CssClass="form-control" ID="JOB_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("JOB_DESCRIPTION") %>' />
            <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator3" ControlToValidate="JOB_DESCRIPTIONTextBox" runat="server" ErrorMessage="Provide Job Description"></asp:RequiredFieldValidator>

            <br />
            </div>
            <div class="form-group">
            MIN_SALARY:
            <asp:TextBox CssClass="form-control" ID="MIN_SALARYTextBox" runat="server" Text='<%# Bind("MIN_SALARY") %>' />
            <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator4" ControlToValidate="MIN_SALARYTextBox" runat="server" ErrorMessage="Provide Min Salary"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Provide valid amount" ControlToValidate="MIN_SALARYTextBox" ValidationExpression="^[0-9]+(.[0-9]{1,2})?$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>
            <br />
            </div>
            <div class="form-group">
            MAX_SALARY:
            <asp:TextBox CssClass="form-control" ID="MAX_SALARYTextBox" runat="server" Text='<%# Bind("MAX_SALARY") %>' />
            <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator5" ControlToValidate="MAX_SALARYTextBox" runat="server" ErrorMessage="Provide Max Salary"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator runat="server" ErrorMessage="Provide valid amount" ControlToValidate="MAX_SALARYTextBox" ValidationExpression="^[0-9]+(.[0-9]{1,2})?$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

            <br />
            <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
           
            &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
        </ItemTemplate>
    </asp:FormView>
    
           
        
</asp:Content>