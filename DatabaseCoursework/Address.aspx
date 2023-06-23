<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master"  CodeBehind="Address.aspx.cs" Inherits="DatabaseCoursework.Address" %>


     <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
         <h2 class="heading-text">ADDRESS DETAILS</h2>
            <asp:GridView ID="GridView1" CssClass="table " HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;"  runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        
                    <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
         
                    <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                    <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                    <asp:BoundField DataField="POSTAL_CODE" HeaderText="POSTAL_CODE" SortExpression="POSTAL_CODE" />
                    <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
                    <asp:BoundField DataField="DISTRICT" HeaderText="DISTRICT" SortExpression="DISTRICT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;POSTAL_CODE&quot;, &quot;STREET&quot;, &quot;DISTRICT&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :CITY, :POSTAL_CODE, :STREET, :DISTRICT)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;POSTAL_CODE&quot;, &quot;STREET&quot;, &quot;DISTRICT&quot; FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;CITY&quot; = :CITY, &quot;POSTAL_CODE&quot; = :POSTAL_CODE, &quot;STREET&quot; = :STREET, &quot;DISTRICT&quot; = :DISTRICT WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="CITY" Type="String" />
                    <asp:Parameter Name="POSTAL_CODE" Type="Decimal" />
                    <asp:Parameter Name="STREET" Type="String" />
                    <asp:Parameter Name="DISTRICT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="CITY" Type="String" />
                    <asp:Parameter Name="POSTAL_CODE" Type="Decimal" />
                    <asp:Parameter Name="STREET" Type="String" />
                    <asp:Parameter Name="DISTRICT" Type="String" />
                    <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
                <EditItemTemplate>
                    ADDRESS_ID:
                    <asp:Label ID="ADDRESS_IDLabel1" runat="server" Text='<%# Eval("ADDRESS_ID") %>' />
                    <br />
                    COUNTRY:
                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    CITY:
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    <br />
                    POSTAL_CODE:
                    <asp:TextBox ID="POSTAL_CODETextBox" runat="server" Text='<%# Bind("POSTAL_CODE") %>' />
                    <br />
                    STREET:
                    <asp:TextBox ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                    <br />
                    DISTRICT:
                    <asp:TextBox ID="DISTRICTTextBox" runat="server" Text='<%# Bind("DISTRICT") %>' />
                    <br />
                    <asp:LinkButton CssClass="update-button" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                 <div class="insert-form">
                     <h3 class="form-heading">Add New Address</h3>
                     <div class="form-group">
                    ADDRESS_ID:
         
                    <asp:TextBox CssClass="form-control" ID="ADDRESS_IDTextBox" runat="server" Text='<%# Bind("ADDRESS_ID") %>' />
                     <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator1" ControlToValidate="ADDRESS_IDTextBox" runat="server" ErrorMessage="Provide Appropriate ID"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator runat="server" ErrorMessage="ID must be integer" ControlToValidate="ADDRESS_IDTextBox" ValidationExpression="^[0-9]+$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                         <br />
                         </div>
                    <div class="form-group">
                    COUNTRY:
                    <asp:TextBox CssClass="form-control" ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="COUNTRYTextBox" runat="server" ErrorMessage="Please Provide Country" ></asp:RequiredFieldValidator>
                     <br />

                    </div>
                     <div class="form-group">
                    CITY:
                    <asp:TextBox CssClass="form-control" ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="CITYTextBox" runat="server" ErrorMessage="Please Provide City" ></asp:RequiredFieldValidator>
                    <br />
                         </div>
                         <div class="form-group">
                    POSTAL_CODE:
                    <asp:TextBox CssClass="form-control" ID="POSTAL_CODETextBox" runat="server" Text='<%# Bind("POSTAL_CODE") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="POSTAL_CODETextBox" runat="server" ErrorMessage="Please Provide Postal Code" ></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator runat="server" ErrorMessage="Postal code must be integer" ControlToValidate="POSTAL_CODETextBox" ValidationExpression="^[0-9]+$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                    <br />
                             </div>
                     <div class="form-group">
                    STREET:
                    <asp:TextBox CssClass="form-control" ID="STREETTextBox" runat="server" Text='<%# Bind("STREET") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="CITYTextBox" runat="server" ErrorMessage="Please Provide Street Name" ></asp:RequiredFieldValidator>

                    <br />
                         </div>
                     <div class="form-group">
                    DISTRICT:
                    <asp:TextBox CssClass="form-control" ID="DISTRICTTextBox" runat="server" Text='<%# Bind("DISTRICT") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CITYTextBox" runat="server" ErrorMessage="Please Provide District Name" ></asp:RequiredFieldValidator>

                    <br />
                         </div>
                    <asp:LinkButton CssClass="btn btn-success" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </div>
                </InsertItemTemplate>
                <ItemTemplate>
               
                    &nbsp;<asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
                </ItemTemplate>
            </asp:FormView>
        
    </asp:Content>

