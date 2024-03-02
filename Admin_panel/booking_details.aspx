<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel/Admin_panel.master" AutoEventWireup="true" CodeFile="booking_details.aspx.cs" Inherits="Admin_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
    <div class="card">
        <div class="card-header">
              <strong>Booking Details</strong> 
        </div>
        <div class="table-responsive">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="bid" DataSourceID="SqlDataSource1" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="bid" HeaderText="ID" ReadOnly="True" 
                           SortExpression="bid" InsertVisible="False" />
                       <asp:BoundField DataField="umobile_no" HeaderText="Mobile No" 
                           SortExpression="umobile_no" />
                       <asp:BoundField DataField="uname" HeaderText="Name" 
                           SortExpression="uname" />
                       <asp:BoundField DataField="emailid" HeaderText="Email ID" 
                           SortExpression="emailid" />
                       <asp:BoundField DataField="package_place" HeaderText="Package Place" 
                           SortExpression="package_place" />
                       <asp:BoundField DataField="package_name" HeaderText="Package Name" 
                           SortExpression="package_name" />
                       <asp:BoundField DataField="days" HeaderText="Days" SortExpression="days" />
                       <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                       <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" />
                       <asp:TemplateField HeaderText="Package Image">
                            <ItemTemplate>
                                <img src ='upload/<%#Eval("image") %>' height="80px" width="80px" />
                            </ItemTemplate>
                       </asp:TemplateField>
                       <asp:BoundField DataField="pack_to" HeaderText="To" SortExpression="pack_to" />
                       <asp:BoundField DataField="pack_from" HeaderText="From" 
                           SortExpression="pack_from" />
                       <asp:BoundField DataField="adult" HeaderText="Adult" SortExpression="adult" />
                       <asp:BoundField DataField="children" HeaderText="Children" 
                           SortExpression="children" />
                       <asp:BoundField DataField="payment" HeaderText="Payment" 
                           SortExpression="payment" />
                       <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />

                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [Booking] WHERE [bid] = @original_bid" 
                   InsertCommand="INSERT INTO [Booking] ([umobile_no], [uname], [emailid], [package_place], [package_name], [days], [price], [image], [pack_to], [pack_from], [adult], [children], [payment]) VALUES (@umobile_no, @uname, @emailid, @package_place, @package_name, @days, @price, @image, @pack_to, @pack_from, @adult, @children, @payment)" 
                   OldValuesParameterFormatString="original_{0}" 
                   SelectCommand="SELECT * FROM [Booking]" 
                   
                   UpdateCommand="UPDATE [Booking] SET [umobile_no] = @umobile_no, [uname] = @uname, [emailid] = @emailid, [package_place] = @package_place, [package_name] = @package_name, [days] = @days, [price] = @price, [image] = @image, [pack_to] = @pack_to, [pack_from] = @pack_from, [adult] = @adult, [children] = @children, [payment] = @payment WHERE [bid] = @original_bid">
                   <DeleteParameters>
                       <asp:Parameter Name="original_bid" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="umobile_no" Type="String" />
                       <asp:Parameter Name="uname" Type="String" />
                       <asp:Parameter Name="emailid" Type="String" />
                       <asp:Parameter Name="package_place" Type="String" />
                       <asp:Parameter Name="package_name" Type="String" />
                       <asp:Parameter Name="days" Type="String" />
                       <asp:Parameter Name="price" Type="String" />
                       <asp:Parameter Name="image" Type="String" />
                       <asp:Parameter DbType="Date" Name="pack_to" />
                       <asp:Parameter DbType="Date" Name="pack_from" />
                       <asp:Parameter Name="adult" Type="String" />
                       <asp:Parameter Name="children" Type="String" />
                       <asp:Parameter Name="payment" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="umobile_no" Type="String" />
                       <asp:Parameter Name="uname" Type="String" />
                       <asp:Parameter Name="emailid" Type="String" />
                       <asp:Parameter Name="package_place" Type="String" />
                       <asp:Parameter Name="package_name" Type="String" />
                       <asp:Parameter Name="days" Type="String" />
                       <asp:Parameter Name="price" Type="String" />
                       <asp:Parameter Name="image" Type="String" />
                       <asp:Parameter Name="pack_to" DbType="Date" />
                       <asp:Parameter DbType="Date" Name="pack_from" />
                       <asp:Parameter Name="adult" Type="String" />
                       <asp:Parameter Name="children" Type="String" />
                       <asp:Parameter Name="payment" Type="String" />
                       <asp:Parameter Name="original_bid" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               </div>
  </div>
  </form>
</asp:Content>

