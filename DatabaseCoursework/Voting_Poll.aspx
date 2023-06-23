<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Voting_Poll.aspx.cs" Inherits="DatabaseCoursework.Voting_Poll" %>

      <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="VOTER_ID" DataValueField="VOTER_ID">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VOTER_ID,VOTING_YEAR,VOTING_MONTH" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="VOTER_ID" HeaderText="VOTER_ID" ReadOnly="True" SortExpression="VOTER_ID" />
                    <asp:TemplateField HeaderText="VOTER_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAME" Enabled="false" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("VOTER_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="VOTING_YEAR" HeaderText="VOTING_YEAR" ReadOnly="True" SortExpression="VOTING_YEAR" />
                    <asp:BoundField DataField="VOTING_MONTH" HeaderText="VOTING_MONTH" ReadOnly="True" SortExpression="VOTING_MONTH" />
                    <asp:BoundField DataField="CANDIDATE_ID" HeaderText="CANDIDATE_ID" SortExpression="CANDIDATE_ID" />
                    <asp:TemplateField HeaderText="CANDIDATE_NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="NAME" Enabled="false" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("CANDIDATE_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;VOTING_POLL&quot; WHERE (&quot;VOTER_ID&quot; = :VOTER_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="VOTER_ID" PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;NAME&quot; FROM &quot;EMP&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;VOTER_ID&quot; FROM &quot;VOTING_POLL&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
    </asp:Content>
