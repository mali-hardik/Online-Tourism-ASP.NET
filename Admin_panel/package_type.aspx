<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel/Admin_panel.master" AutoEventWireup="true" CodeFile="package_type.aspx.cs" Inherits="Admin_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="card">
        <div class="card-header">
              <strong>Package Type</strong> 
        </div>
        <div class="card-body card-block">
            <form id="Form1" action="" method="post" class="" runat="server">
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Package Type Name</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:TextBox ID="txtpacktype" runat="server" type="text" placeholder="Enter package type.." class="form-control"></asp:TextBox>
                            <%--<span class="help-block">Please enter your email</span>--%>
                </div>
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Status</label>
                    <asp:DropDownList ID="ddlstatus" runat="server"  
                    class="form-control" ng-model="model.select" 
                    required="">
                    <asp:ListItem Enabled="true" Text="On" Value="1" ></asp:ListItem>
                    <asp:ListItem  Text="Off" Value="0" ></asp:ListItem>
                </asp:DropDownList>
                </div>
                
            <%--<div class="card-footer">--%>
                <%--<button type="submit" class="btn btn-primary btn-sm">
                       <i class="fa fa-dot-circle-o"></i> Submit
                 </button>--%>
                 <asp:Button ID="btnadd" runat="server" Text="Submit" 
                    class="btn btn-primary btn-sm" onclick="btnadd_Click"/>
                 <asp:Button ID="btnreset" runat="server" Text="Reset" 
                    class="btn btn-danger btn-sm" onclick="btnreset_Click"/>
          <%--  </div>--%>
          <br /><br /><br />
                
          <div class="table-responsive">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="pack_type_id" DataSourceID="SqlDataSource1" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="pack_type_id" HeaderText="ID" ReadOnly="True" 
                           SortExpression="pack_type_id" InsertVisible="False" />
                       <asp:BoundField DataField="pack_type_name" HeaderText="Package Type" 
                           SortExpression="pack_type_name" />
                       <asp:BoundField DataField="status" HeaderText="Status" 
                           SortExpression="status" />
                       <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConflictDetection="CompareAllValues" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [Package_type] WHERE [pack_type_id] = @original_pack_type_id AND (([pack_type_name] = @original_pack_type_name) OR ([pack_type_name] IS NULL AND @original_pack_type_name IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
                   InsertCommand="INSERT INTO [Package_type] ([pack_type_name], [status]) VALUES (@pack_type_name, @status)" 
                   OldValuesParameterFormatString="original_{0}" 
                   SelectCommand="SELECT * FROM [Package_type]" 
                   
                   UpdateCommand="UPDATE [Package_type] SET [pack_type_name] = @pack_type_name, [status] = @status WHERE [pack_type_id] = @original_pack_type_id AND (([pack_type_name] = @original_pack_type_name) OR ([pack_type_name] IS NULL AND @original_pack_type_name IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_pack_type_id" Type="Int32" />
                       <asp:Parameter Name="original_pack_type_name" Type="String" />
                       <asp:Parameter Name="original_status" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="pack_type_name" Type="String" />
                       <asp:Parameter Name="status" Type="Int32" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="pack_type_name" Type="String" />
                       <asp:Parameter Name="status" Type="Int32" />
                       <asp:Parameter Name="original_pack_type_id" Type="Int32" />
                       <asp:Parameter Name="original_pack_type_name" Type="String" />
                       <asp:Parameter Name="original_status" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               </div>

            </form>
        </div>

        

   </div>


</asp:Content>

