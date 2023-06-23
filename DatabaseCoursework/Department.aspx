<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="DatabaseCoursework.Department" %>

        <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <h2 class="heading-text">DEPARTMENT DETAILS</h2>
            <asp:GridView ID="GridView1" CssClass="table" HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                    <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" SortExpression="LOCATION" />
                    <asp:BoundField DataField="BUILDING" HeaderText="BUILDING" SortExpression="BUILDING" />
                    <asp:BoundField DataField="FLOOR" HeaderText="FLOOR" SortExpression="FLOOR" />
                    <asp:BoundField DataField="ROOM" HeaderText="ROOM" SortExpression="ROOM" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;LOCATION&quot;, &quot;BUILDING&quot;, &quot;FLOOR&quot;, &quot;ROOM&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :LOCATION, :BUILDING, :FLOOR, :ROOM)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;LOCATION&quot;, &quot;BUILDING&quot;, &quot;FLOOR&quot;, &quot;ROOM&quot; FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;LOCATION&quot; = :LOCATION, &quot;BUILDING&quot; = :BUILDING, &quot;FLOOR&quot; = :FLOOR, &quot;ROOM&quot; = :ROOM WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="LOCATION" Type="String" />
                    <asp:Parameter Name="BUILDING" Type="String" />
                    <asp:Parameter Name="FLOOR" Type="Decimal" />
                    <asp:Parameter Name="ROOM" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="LOCATION" Type="String" />
                    <asp:Parameter Name="BUILDING" Type="String" />
                    <asp:Parameter Name="FLOOR" Type="Decimal" />
                    <asp:Parameter Name="ROOM" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    DEPARTMENT_ID:
                    <asp:Label ID="DEPARTMENT_IDLabel1" runat="server" Text='<%# Eval("DEPARTMENT_ID") %>' />
                    <br />
                    DEPARTMENT_NAME:
                    <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                    <br />
                    LOCATION:
                    <asp:TextBox ID="LOCATIONTextBox" runat="server" Text='<%# Bind("LOCATION") %>' />
                    <br />
                    BUILDING:
                    <asp:TextBox ID="BUILDINGTextBox" runat="server" Text='<%# Bind("BUILDING") %>' />
                    <br />
                    FLOOR:
                    <asp:TextBox ID="FLOORTextBox" runat="server" Text='<%# Bind("FLOOR") %>' />
                    <br />
                    ROOM:
                    <asp:TextBox ID="ROOMTextBox" runat="server" Text='<%# Bind("ROOM") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <div class="insert-form">
                     <h3 class="form-heading">Add New Department</h3>
                    <div class="form-group">
                    DEPARTMENT_ID:
                    <asp:TextBox ID="DEPARTMENT_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator1" ControlToValidate="DEPARTMENT_IDTextBox" runat="server" ErrorMessage="Provide Appropriate ID"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator runat="server" ErrorMessage="ID must be integer" ControlToValidate="DEPARTMENT_IDTextBox" ValidationExpression="^[0-9]+$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                    <br />
                    </div>
                    <div class="form-group">
                    DEPARTMENT_NAME:
                    <asp:TextBox ID="DEPARTMENT_NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator2" ControlToValidate="DEPARTMENT_NAMETextBox" runat="server" ErrorMessage="Provide Department Name"></asp:RequiredFieldValidator>

                    <br />
                    </div>
                    <div class="form-group">
                    LOCATION:
                    <asp:TextBox ID="LOCATIONTextBox" CssClass="form-control" runat="server" Text='<%# Bind("LOCATION") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator3" ControlToValidate="LOCATIONTextBox" runat="server" ErrorMessage="Provide Location"></asp:RequiredFieldValidator>
                    <br />
                    <div class="form-group">
                    BUILDING:
                    <asp:TextBox ID="BUILDINGTextBox" CssClass="form-control" runat="server" Text='<%# Bind("BUILDING") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator4" ControlToValidate="BUILDINGTextBox" runat="server" ErrorMessage="Provide Building Name"></asp:RequiredFieldValidator>

                    <br />
                    </div>
                    <div class="form-group">
                    FLOOR:
                    <asp:TextBox ID="FLOORTextBox" CssClass="form-control" runat="server" Text='<%# Bind("FLOOR") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator5" ControlToValidate="FLOORTextBox" runat="server" ErrorMessage="Provide Floor Number"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator runat="server" ErrorMessage="Provide valid amount" ControlToValidate="FLOORTextBox" ValidationExpression="^[0-9]+(.[0-9]{1,2})?$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                    <br />
                    </div>
                    <div class="form-group">
                    ROOM:
                    <asp:TextBox ID="ROOMTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ROOM") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator6" ControlToValidate="ROOMTextBox" runat="server" ErrorMessage="Provide Room Number"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator runat="server" ErrorMessage="Provide valid amount" ControlToValidate="ROOMTextBox" ValidationExpression="^[0-9]+(.[0-9]{1,2})?$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                    <br />
                    </div>
                    <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                   </div>
                </InsertItemTemplate>
                <ItemTemplate>       
                    &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
                </ItemTemplate>
            </asp:FormView>
          </asp:Content>

