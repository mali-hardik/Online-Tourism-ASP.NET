<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel/Admin_panel.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Admin_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <form id="form1" runat="server">
 <div class="card">
        <div class="card-header">
              <strong>Contact Details</strong> 
        </div>
        <div class="table-responsive">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="contact_id" DataSourceID="SqlDataSource1" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="contact_id" HeaderText="Contact Id" ReadOnly="True" 
                           SortExpression="contact_id" InsertVisible="False" />
                       <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                       <asp:BoundField DataField="email" HeaderText="Email" 
                           SortExpression="email" />
                       <asp:BoundField DataField="subject" HeaderText="Subject" 
                           SortExpression="subject" />
                       <asp:BoundField DataField="message" HeaderText="Message" 
                           SortExpression="message" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConflictDetection="CompareAllValues" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [Contact] WHERE [contact_id] = @original_contact_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL))" 
                   InsertCommand="INSERT INTO [Contact] ([name], [email], [subject], [message]) VALUES (@name, @email, @subject, @message)" 
                   OldValuesParameterFormatString="original_{0}" 
                   SelectCommand="SELECT * FROM [Contact]" 
                   UpdateCommand="UPDATE [Contact] SET [name] = @name, [email] = @email, [subject] = @subject, [message] = @message WHERE [contact_id] = @original_contact_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_contact_id" Type="Int32" />
                       <asp:Parameter Name="original_name" Type="String" />
                       <asp:Parameter Name="original_email" Type="String" />
                       <asp:Parameter Name="original_subject" Type="String" />
                       <asp:Parameter Name="original_message" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="name" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="subject" Type="String" />
                       <asp:Parameter Name="message" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="name" Type="String" />
                       <asp:Parameter Name="email" Type="String" />
                       <asp:Parameter Name="subject" Type="String" />
                       <asp:Parameter Name="message" Type="String" />
                       <asp:Parameter Name="original_contact_id" Type="Int32" />
                       <asp:Parameter Name="original_name" Type="String" />
                       <asp:Parameter Name="original_email" Type="String" />
                       <asp:Parameter Name="original_subject" Type="String" />
                       <asp:Parameter Name="original_message" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               </div>
  </div>

</form>
</asp:Content>

