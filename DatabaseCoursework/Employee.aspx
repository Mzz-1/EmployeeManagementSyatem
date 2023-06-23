<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Employee.aspx.cs" Inherits="DatabaseCoursework.Employee" %>

      <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
          <h2 class="heading-text">EMPLOYEE DETAILS</h2>
          <asp:GridView ID="GridView1" CssClass="table" HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
                  <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                  <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" DataFormatString="{0:dd-MMM-yyyy}"/>
                  <asp:BoundField DataField="CONTACT_NO" HeaderText="CONTACT_NO" SortExpression="CONTACT_NO" />
                  <asp:BoundField DataField="MANAGER_ID" HeaderText="MANAGER_ID" SortExpression="MANAGER_ID" />
                  <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" />
                  <asp:TemplateField HeaderText="ROLE_NAME">
                      <ItemTemplate>
                          <asp:DropDownList Enabled="false" ID="DropDownList1" runat="server" DataSourceID="JobTitleData" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="JobTitleData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                  <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
                  <asp:TemplateField HeaderText="DEPARTMENT_NAME">
                      <ItemTemplate>
                          <asp:DropDownList Enabled="false" ID="DropDownList2" runat="server" DataSourceID="departmentNameData" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_ID" SelectedValue='<%# Bind("DEPARTMENT_ID") %>'>
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="departmentNameData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>

<HeaderStyle CssClass="bg-primary text-white"></HeaderStyle>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMP&quot; WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID" InsertCommand="INSERT INTO &quot;EMP&quot; (&quot;EMPLOYEE_ID&quot;, &quot;NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;CONTACT_NO&quot;, &quot;MANAGER_ID&quot;, &quot;ROLE_ID&quot;, &quot;SALARY&quot;, &quot;DEPARTMENT_ID&quot;) VALUES (:EMPLOYEE_ID, :NAME, :DATE_OF_BIRTH, :CONTACT_NO, :MANAGER_ID, :ROLE_ID, :SALARY, :DEPARTMENT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;NAME&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;CONTACT_NO&quot;, &quot;MANAGER_ID&quot;, &quot;ROLE_ID&quot;, &quot;SALARY&quot;, &quot;DEPARTMENT_ID&quot; FROM &quot;EMP&quot;" UpdateCommand="UPDATE &quot;EMP&quot; SET &quot;NAME&quot; = :NAME, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;CONTACT_NO&quot; = :CONTACT_NO, &quot;MANAGER_ID&quot; = :MANAGER_ID, &quot;ROLE_ID&quot; = :ROLE_ID, &quot;SALARY&quot; = :SALARY, &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID">
                  <DeleteParameters>
                      <asp:Parameter Name="EMPLOYEE_ID" Type="Decimal" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="EMPLOYEE_ID" Type="Decimal" />
                      <asp:Parameter Name="NAME" Type="String" />
                      <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                      <asp:Parameter Name="CONTACT_NO" Type="String" />
                      <asp:Parameter Name="MANAGER_ID" Type="Decimal" />
                      <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                      <asp:Parameter Name="SALARY" Type="Single" />
                      <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="NAME" Type="String" />
                      <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                      <asp:Parameter Name="CONTACT_NO" Type="String" />
                      <asp:Parameter Name="MANAGER_ID" Type="Decimal" />
                      <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                      <asp:Parameter Name="SALARY" Type="Single" />
                      <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                      <asp:Parameter Name="EMPLOYEE_ID" Type="Decimal" />
                  </UpdateParameters>
              </asp:SqlDataSource>
         
          <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1">
              <EditItemTemplate>
                  EMPLOYEE_ID:
                  <asp:Label ID="EMPLOYEE_IDLabel1" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />
                  <br />
                  NAME:
                  <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                  <br />
                  DATE_OF_BIRTH:
                  <asp:TextBox ID="DATE_OF_BIRTHTextBox" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                  <br />
                  CONTACT_NO:
                  <asp:TextBox ID="CONTACT_NOTextBox" runat="server" Text='<%# Bind("CONTACT_NO") %>' />
                  <br />
                  MANAGER_ID:
                  <asp:TextBox ID="MANAGER_IDTextBox" runat="server" Text='<%# Bind("MANAGER_ID") %>' />
                  <br />
                  ROLE_ID:
                  <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                  <br />
                  SALARY:
                  <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                  <br />
                  DEPARTMENT_ID:
                  <asp:TextBox ID="DEPARTMENT_IDTextBox" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                  <br />
                  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                  &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </EditItemTemplate>
              <InsertItemTemplate>
                  <div class="insert-form">
                  <h3 class="form-heading">Add New Employee</h3>
                  <div class="form-group">
                  EMPLOYEE_ID:
                  <asp:TextBox CssClass="form-control" ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
                  <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator2" ControlToValidate="EMPLOYEE_IDTextBox" runat="server" ErrorMessage="Provide Appropriate ID"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator runat="server" ErrorMessage="ID must be integer" ControlToValidate="EMPLOYEE_IDTextBox" ValidationExpression="^[0-9]+$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                  <br />
                  </div>
                  <div class="form-group">
                  NAME:
                  <asp:TextBox CssClass="form-control" ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                  <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator1" ControlToValidate="NAMETextBox" runat="server" ErrorMessage="Provide Employee Name"></asp:RequiredFieldValidator>

                  <br />
                  </div>
                  <div class="form-group">
                  DATE_OF_BIRTH:
                  <asp:TextBox CssClass="form-control" ID="DATE_OF_BIRTHTextBox" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                  <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator3" ControlToValidate="DATE_OF_BIRTHTextBox" runat="server" ErrorMessage="Provide Date of Birth"></asp:RequiredFieldValidator>

                  <br />
                  </div>
                  <div class="form-group">
                  CONTACT_NO:
                  <asp:TextBox CssClass="form-control" ID="CONTACT_NOTextBox" runat="server" Text='<%# Bind("CONTACT_NO") %>' />
                  <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator4" ControlToValidate="CONTACT_NOTextBox" runat="server" ErrorMessage="Provide Contact No"></asp:RequiredFieldValidator>

                  <br />
                  </div>
                  <div class="form-group">
                  MANAGER_ID:
                      <asp:DropDownList CssClass="form-control" ID="DropDownList5" runat="server" DataSourceID="managerData" DataTextField="NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("MANAGER_ID") %>'>
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="managerData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;NAME&quot; FROM &quot;EMP&quot; WHERE MANAGER_ID is null"></asp:SqlDataSource>
                  <br />
                  </div>
                  <div class="form-group">
                  ROLE_ID:
                      <asp:DropDownList CssClass="form-control" ID="DropDownList4" runat="server" DataSourceID="roleData" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="roleData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot; FROM &quot;ROLE&quot;"></asp:SqlDataSource>
                  <br />
                  </div>
                  <div class="form-group">
                  SALARY:
                  <asp:TextBox CssClass="form-control" ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                  <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator5" ControlToValidate="SALARYTextBox" runat="server" ErrorMessage="Provide Salary"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator runat="server" ErrorMessage="Provide valid amount" ControlToValidate="SALARYTextBox" ValidationExpression="^[0-9]+(.[0-9]{1,2})?$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>
                  <br />
                  </div>
                  <div class="form-group">
                  DEPARTMENT_ID:
                      <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server" DataSourceID="departmentData" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_ID" SelectedValue='<%# Bind("DEPARTMENT_ID") %>'>
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="departmentData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot; FROM &quot;DEPARTMENT&quot;"></asp:SqlDataSource>
                  <br />
                  </div>
                  <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                  &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </InsertItemTemplate>
              <ItemTemplate>
                 
                  &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
              </ItemTemplate>
          </asp:FormView>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
               </asp:Content>
