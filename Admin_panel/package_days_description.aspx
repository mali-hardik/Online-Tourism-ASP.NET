<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_panel/Admin_panel.master" AutoEventWireup="true" CodeFile="package_days_description.aspx.cs" Inherits="Admin_panel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="card">
        <div class="card-header">
              <strong>Package Days Details</strong> 
        </div>
        <div class="card-body card-block">
            <form id="Form1" runat="server">
                <div class="form-group">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <label for="nf-email" class=" form-control-label">Package Type</label>

                        <asp:DropDownList ID="ddlpacktype" runat="server" class="form-control" 
                        DataSourceID="SqlDataSource1"  AutoPostBack="True" DataTextField="pack_type_name" 
                        DataValueField="pack_type_id"></asp:DropDownList>

                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT * FROM [Package_type]"></asp:SqlDataSource>
                    <%--</asp:UpdatePanel>--%>
                </div>
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Package Name</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:DropDownList ID="ddlpackname" runat="server" class="form-control" 
                        DataSourceID="SqlDataSource2" DataTextField="pack_name" 
                        DataValueField="pack_id"></asp:DropDownList>
                            
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:constr %>"
                                SelectCommand="SELECT * FROM [Package] WHERE ([pack_type_id] = @pack_type_id)">
                            <SelectParameters>
                                    <asp:ControlParameter ControlID="ddlpacktype" Name="pack_type_id" 
                                        PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>    
                </ContentTemplate>
                </asp:UpdatePanel>               
            
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Day 1</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:TextBox ID="txtday1" runat="server" type="text" placeholder="Enter details of day 1.." textmode="multiline" class="form-control"></asp:TextBox>
                            <%--<span class="help-block">Please enter your email</span>--%>
                </div>
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Day 2</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:TextBox ID="txtday2" runat="server" type="text" placeholder="Enter details of day 2.." textmode="multiline" class="form-control"></asp:TextBox>
                            <%--<span class="help-block">Please enter your email</span>--%>
                </div>
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Day 3</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:TextBox ID="txtday3" runat="server" type="text" placeholder="Enter details of day 3.." textmode="multiline" class="form-control"></asp:TextBox>
                            <%--<span class="help-block">Please enter your email</span>--%>
                </div>
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Day 4</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:TextBox ID="txtday4" runat="server" type="text" placeholder="Enter details of day 4.." textmode="multiline" class="form-control"></asp:TextBox>
                            <%--<span class="help-block">Please enter your email</span>--%>
                </div>
                <div class="form-group">
                    <label for="nf-email" class=" form-control-label">Day 5</label>
                        <%--<input type="text" id="nf-email" placeholder="Enter Package Name.." class="form-control">--%>
                        <asp:TextBox ID="txtday5" runat="server" type="text" placeholder="Enter details of day 5.." textmode="multiline" class="form-control"></asp:TextBox>
                            <%--<span class="help-block">Please enter your email</span>--%>
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

          <div class="table-responsive">
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataKeyNames="pack_day_id" DataSourceID="SqlDataSource4" 
                   EmptyDataText="There are no data records to display."
                    CssClass="table table-striped table-bordered table-hover" Width="100%" 
                   AllowPaging="True" >
                   <Columns>
                       <asp:BoundField DataField="pack_day_id" HeaderText="ID" ReadOnly="True" 
                           SortExpression="pack_day_id" InsertVisible="False" />
                       <asp:BoundField DataField="pack_type_id" HeaderText="Package Type Id" 
                           SortExpression="pack_type_id" />
                       <asp:BoundField DataField="pack_id" HeaderText="Package Id" 
                           SortExpression="pack_id" />
                       <asp:BoundField DataField="day1" HeaderText="Day 1" 
                           SortExpression="day1" />
                       <asp:BoundField DataField="day2" HeaderText="Day 2" 
                           SortExpression="day2" />
                       <asp:BoundField DataField="day3" HeaderText="Day 3" SortExpression="day3" />
                       <asp:BoundField DataField="day4" HeaderText="Day 4" SortExpression="day4" />
                       <asp:BoundField DataField="day5" HeaderText="Day 5" SortExpression="day5" />
                       <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                       <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   DeleteCommand="DELETE FROM [Package_days] WHERE [pack_day_id] = @pack_day_id" 
                   InsertCommand="INSERT INTO [Package_days] ([pack_type_id], [pack_id], [day1], [day2], [day3], [day4], [day5]) VALUES (@pack_type_id, @pack_id, @day1, @day2, @day3, @day4, @day5)" 
                   SelectCommand="SELECT * FROM [Package_days]" 
                   UpdateCommand="UPDATE [Package_days] SET [pack_type_id] = @pack_type_id, [pack_id] = @pack_id, [day1] = @day1, [day2] = @day2, [day3] = @day3, [day4] = @day4, [day5] = @day5 WHERE [pack_day_id] = @pack_day_id">
                   <DeleteParameters>
                       <asp:Parameter Name="pack_day_id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="pack_type_id" Type="Int32" />
                       <asp:Parameter Name="pack_id" Type="Int32" />
                       <asp:Parameter Name="day1" Type="String" />
                       <asp:Parameter Name="day2" Type="String" />
                       <asp:Parameter Name="day3" Type="String" />
                       <asp:Parameter Name="day4" Type="String" />
                       <asp:Parameter Name="day5" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="pack_type_id" Type="Int32" />
                       <asp:Parameter Name="pack_id" Type="Int32" />
                       <asp:Parameter Name="day1" Type="String" />
                       <asp:Parameter Name="day2" Type="String" />
                       <asp:Parameter Name="day3" Type="String" />
                       <asp:Parameter Name="day4" Type="String" />
                       <asp:Parameter Name="day5" Type="String" />
                       <asp:Parameter Name="pack_day_id" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
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







            </form>
        </div>
   </div>

</asp:Content>

