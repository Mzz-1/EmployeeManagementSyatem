<%@ Page Title="Role" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Role.aspx.cs" Inherits="DatabaseCoursework.Role" %>

<asp:Content ID="BodyContent"  ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="heading-text">ROLE DETAILS</h2>
            <asp:GridView ID="GridView1" runat="server" CssClass="table" HeaderStyle-CssClass="bg-primary text-white" style="background-color: #f8f9fa; color: #343a40; border-color: #dee2e6;" AutoGenerateColumns="False" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" ReadOnly="True" SortExpression="ROLE_ID" />
                    <asp:BoundField DataField="ROLE_NAME" HeaderText="ROLE_NAME" SortExpression="ROLE_NAME" />
                    <asp:BoundField DataField="ROLE_DESCRIPTION" HeaderText="ROLE_DESCRIPTION" SortExpression="ROLE_DESCRIPTION" />
                    <asp:BoundField DataField="JOB_ID" HeaderText="JOB_ID" SortExpression="JOB_ID" />
                    <asp:TemplateField HeaderText="JOB_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="JOB_NAME" Enabled="false" DataValueField="JOB_ID" SelectedValue='<%# Bind("JOB_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;, &quot;ROLE_DESCRIPTION&quot;, &quot;JOB_ID&quot;) VALUES (:ROLE_ID, :ROLE_NAME, :ROLE_DESCRIPTION, :JOB_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;, &quot;ROLE_DESCRIPTION&quot;, &quot;JOB_ID&quot; FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE_NAME&quot; = :ROLE_NAME, &quot;ROLE_DESCRIPTION&quot; = :ROLE_DESCRIPTION, &quot;JOB_ID&quot; = :JOB_ID WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                    <asp:Parameter Name="ROLE_NAME" Type="String" />
                    <asp:Parameter Name="ROLE_DESCRIPTION" Type="String" />
                    <asp:Parameter Name="JOB_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ROLE_NAME" Type="String" />
                    <asp:Parameter Name="ROLE_DESCRIPTION" Type="String" />
                    <asp:Parameter Name="JOB_ID" Type="Decimal" />
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOB_ID&quot;, &quot;JOB_NAME&quot; FROM &quot;JOB_DETAILS&quot;"></asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    ROLE_ID:
                    <asp:Label ID="ROLE_IDLabel1" runat="server" Text='<%# Eval("ROLE_ID") %>' />
                    <br />
                    ROLE_NAME:
                    <asp:TextBox ID="ROLE_NAMETextBox" runat="server" Text='<%# Bind("ROLE_NAME") %>' />
                    <br />
                    ROLE_DESCRIPTION:
                    <asp:TextBox ID="ROLE_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("ROLE_DESCRIPTION") %>' />
                    <br />
                    JOB_ID:
                    <asp:TextBox ID="JOB_IDTextBox" runat="server" Text='<%# Bind("JOB_ID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                     <div class="insert-form">
                     <h3 class="form-heading">Add New Role</h3>
                     <div class="form-group">
                    ROLE_ID:
                    <asp:TextBox ID="ROLE_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator1" ControlToValidate="ROLE_IDTextBox" runat="server" ErrorMessage="Provide Appropriate ID"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ErrorMessage="ID must be integer" ControlToValidate="ROLE_IDTextBox" ValidationExpression="^[0-9]+$" Display="Dynamic" ForeColor="#dc3545"></asp:RegularExpressionValidator>

                    <br />
                        </div>
                         <div class="form-group">
                    ROLE_NAME:
                    <asp:TextBox ID="ROLE_NAMETextBox" CssClass="form-control" runat="server" Text='<%# Bind("ROLE_NAME") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator2" ControlToValidate="ROLE_NAMETextBox" runat="server" ErrorMessage="Provide Role Name"></asp:RequiredFieldValidator>

                    <br />
                               </div>
                              <div class="form-group">
                    ROLE_DESCRIPTION:
                    <asp:TextBox ID="ROLE_DESCRIPTIONTextBox" CssClass="form-control" runat="server" Text='<%# Bind("ROLE_DESCRIPTION") %>' />
                    <asp:RequiredFieldValidator CssClass="input-error" ID="RequiredFieldValidator3" ControlToValidate="ROLE_DESCRIPTIONTextBox" runat="server" ErrorMessage="Provide Role Description"></asp:RequiredFieldValidator>

                    <br />
                                    </div>
                                   <div class="form-group">
                    JOB_ID:
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="JOB_NAME" DataValueField="JOB_ID" SelectedValue='<%# Bind("JOB_ID") %>'>
                    </asp:DropDownList>
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