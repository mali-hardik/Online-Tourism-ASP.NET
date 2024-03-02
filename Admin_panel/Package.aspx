<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel/Admin_panel.master" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="Admin_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
    <div class="card">
        <div class="card-header">
              <strong>Package Details</strong> 
        </div>
    <div class="card-body card-block">
        <form id="Form1" runat="server">
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Package Name</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                    <asp:TextBox ID="txtpackagename" runat="server" type="text" placeholder="Enter Package Name.." class="form-control"></asp:TextBox>
                        <%--<span class="help-block">Please enter your email</span>--%>
            </div>
            <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Package Type</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:DropDownList ID="ddlpacktype" runat="server" class="form-control" 
                        DataSourceID="SqlDataSource1"  AutoPostBack="True" DataTextField="pack_type_name" 
                        DataValueField="pack_type_id"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT * FROM [Package_type]">
                    </asp:SqlDataSource>
                            <%--<span class="help-block">Please enter your email</span>--%>
                </div>
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Package Price</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                    <asp:TextBox ID="txtprice" runat="server" type="text" placeholder="Enter Package Price.." class="form-control"></asp:TextBox>
                        <%--<span class="help-block">Please enter your email</span>--%>
            </div>
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Package Days</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                    <asp:TextBox ID="txtdays" runat="server" type="text" placeholder="Enter Package days.." class="form-control"></asp:TextBox>
                        <%--<span class="help-block">Please enter your email</span>--%>
            </div>
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Package Place</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                    <asp:TextBox ID="txtplace" runat="server" type="text" placeholder="Enter Package place.." class="form-control"></asp:TextBox>
                        <%--<span class="help-block">Please enter your email</span>--%>
            </div>
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Meal</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                    <asp:TextBox ID="txtmeal" runat="server" type="text" placeholder="Enter Meal.." class="form-control"></asp:TextBox>
                        <%--<span class="help-block">Please enter your email</span>--%>
            </div>
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Image file</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:FileUpload ID="uploadimage" runat="server" placeholder="Enter Package image.." class="form-control"/>
                <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
                        <%--<span class="help-block">Please enter your email</span>--%>
            </div>
            <div class="form-group">
                <label for="nf-email" class=" form-control-label">Package Description</label>
                    <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                    <asp:TextBox ID="txtdesc" runat="server" type="text" placeholder="Enter pacakge description.." textmode="MultiLine" class="form-control"></asp:TextBox>
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
                   DataKeyNames="pack_id" DataSourceID="SqlDataSource2" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="pack_id" HeaderText="ID" ReadOnly="True" 
                           SortExpression="pack_id" InsertVisible="False" />
                       <asp:BoundField DataField="pack_name" HeaderText="Package Name" 
                           SortExpression="pack_name" />
                       <asp:BoundField DataField="pack_type_id" HeaderText="Package type" 
                           SortExpression="pack_type_id" />
                       <asp:BoundField DataField="price" HeaderText="Price" 
                           SortExpression="price" />
                       <asp:BoundField DataField="days" HeaderText="Days" 
                           SortExpression="days" />
                       <asp:BoundField DataField="pack_place" HeaderText="Place" 
                           SortExpression="pack_place" />
                       <asp:BoundField DataField="meal" HeaderText="Meal" 
                           SortExpression="meal" />
                       <asp:BoundField DataField="image" HeaderText="Image" 
                           SortExpression="image" />
                        <asp:TemplateField HeaderText="Package Image">
                            <ItemTemplate>
                                <img src ='upload/<%#Eval("image") %>' height="80px" width="80px" />
                            </ItemTemplate>
                            </asp:TemplateField>
                       <asp:BoundField DataField="image_desc" HeaderText="Image Description" 
                           SortExpression="image_desc" />
                       <asp:BoundField DataField="status" HeaderText="Status" 
                           SortExpression="status" />
                       <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [Package] WHERE [pack_id] = @original_pack_id" 
                   InsertCommand="INSERT INTO [Package] ([pack_name], [pack_type], [price], [days], [pack_place], [meal], [image], [image_desc], [status]) VALUES (@pack_name, @pack_type, @price, @days, @pack_place, @meal, @image, @image_desc, @status)" 
                   OldValuesParameterFormatString="original_{0}" 
                   SelectCommand="SELECT * FROM [Package]" 
                   
                   
                   UpdateCommand="UPDATE [Package] SET [pack_name] = @pack_name, [pack_type] = @pack_type, [price] = @price, [days] = @days, [pack_place] = @pack_place, [meal] = @meal, [image] = @image, [image_desc] = @image_desc, [status] = @status WHERE [pack_id] = @original_pack_id">
                   <DeleteParameters>
                       <asp:Parameter Name="original_pack_id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="pack_name" Type="String" />
                       <asp:Parameter Name="pack_type" Type="String" />
                       <asp:Parameter Name="price" Type="String" />
                       <asp:Parameter Name="days" Type="String" />
                       <asp:Parameter Name="pack_place" Type="String" />
                       <asp:Parameter Name="meal" Type="String" />
                       <asp:Parameter Name="image" Type="String" />
                       <asp:Parameter Name="image_desc" Type="String" />
                       <asp:Parameter Name="status" Type="Int32" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="pack_name" Type="String" />
                       <asp:Parameter Name="pack_type" Type="String" />
                       <asp:Parameter Name="price" Type="String" />
                       <asp:Parameter Name="days" Type="String" />
                       <asp:Parameter Name="pack_place" Type="String" />
                       <asp:Parameter Name="meal" Type="String" />
                       <asp:Parameter Name="image" Type="String" />
                       <asp:Parameter Name="image_desc" Type="String" />
                       <asp:Parameter Name="status" Type="Int32" />
                       <asp:Parameter Name="original_pack_id" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               
          </div>



        </form>
    </div>                          
</div>

</asp:Content>

