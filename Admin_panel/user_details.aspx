<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel/Admin_panel.master" AutoEventWireup="true" CodeFile="user_details.aspx.cs" Inherits="Admin_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">
 <div class="card">
        <div class="card-header">
              <strong>Users Details</strong> 
        </div>
        <div class="table-responsive">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="user_id" DataSourceID="SqlDataSource1" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" 
                           SortExpression="user_id" InsertVisible="False" />
                       <asp:BoundField DataField="user_name" HeaderText="User Name" 
                           SortExpression="user_name" />
                       <asp:BoundField DataField="email" HeaderText="Email" 
                           SortExpression="email" />
                       <asp:BoundField DataField="password" HeaderText="Password" 
                           SortExpression="password" />
                       <asp:BoundField DataField="status" HeaderText="Status" 
                           SortExpression="status" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConflictDetection="CompareAllValues" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [Users] WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
                   InsertCommand="INSERT INTO [Users] ([user_name], [email], [password], [status]) VALUES (@user_name, @email, @password, @status)" 
                   OldValuesParameterFormatString="original_{0}" 
                   SelectCommand="SELECT * FROM [Users]" 
                   
                   UpdateCommand="UPDATE [Users] SET [user_name] = @user_name, [email] = @email, [password] = @password, [status] = @status WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_user_id" Type="Int32" />
                       <asp:Parameter Name="original_user_name" Type="String" />
                       <asp:Parameter Name="original_email" Type="String" />
                       <asp:Parameter Name="original_password" Type="String" />
                       <asp:Parameter Name="original_status" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="user_name" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="password" Type="String" />
                       <asp:Parameter Name="status" Type="Int32" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="user_name" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="password" Type="String" />
                       <asp:Parameter Name="status" Type="Int32" />
                       <asp:Parameter Name="original_user_id" Type="Int32" />
                       <asp:Parameter Name="original_user_name" Type="String" />
                       <asp:Parameter Name="original_email" Type="String" />
                       <asp:Parameter Name="original_password" Type="String" />
                       <asp:Parameter Name="original_status" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               </div>
  </div>

    </form>

</asp:Content>

