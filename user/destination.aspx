<%@ Page Title="" Language="C#" MasterPageFile="~/user/destination.master" AutoEventWireup="true" CodeFile="destination.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style>
            h1
            {
                font-family: "Playfair Display", serif;
                font-weight: 600;
                float: left;
            }
            h2
            {
                font-family: "Playfair Display", serif;
            }
            p
            {
                font-family: "Roboto", sans-serif;
            }
        </style>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
            <div class="col-lg-4 col-md-4 col-sm-6" style="width: 26.5%;margin-top: 10px;">
				<a href='../Admin_panel/upload/<%#Eval("image") %>' class="fh5co-card-item image-popup">
					<figure style="margin-bottom: 10px;">
						<div class="overlay"></div><%--<i class="ti-plus"></i>--%>
						<img src='../Admin_panel/upload/<%#Eval("image") %>' alt="Image" class="img-responsive" style="height: 210px;width: 240px;margin-left: 10px;margin-top: 10px;">
					</figure>
					<div class="fh5co-text">
						<h2 style="font-weight: 700;text-transform: uppercase;"><%#Eval("pack_name") %></h2>
						<p style="font-weight: 500;text-transform:uppercase;"><%#Eval("pack_place") %></p>
                        <p style="font-weight: 400;color: #777;"><i class="fa fa-inr" aria-hidden="true" style="margin-right: 4px;"></i><%#Eval("price") %> /-</p>
                        <p style="font-weight: 400;text-transform:uppercase;"><i class="fa fa-calendar" aria-hidden="true" style="margin-right: 10px;"></i><%#Eval("days") %></p>
					    <%--<p><asp:Button ID="Button5" runat="server" Text="VIEW DETAILS" class="btn btn-primary"/></p>--%>
					</div>
				</a>
                <a href='view_details.aspx?pack_id=<%#Eval("pack_id") %>' class="btn btn-primary" style="margin-left: 55px;">View Details</a>
			</div>
        </ItemTemplate>

    </asp:ListView>

            
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:constr %>" 
        SelectCommand="SELECT * FROM [Package] where status = '1' "></asp:SqlDataSource>
        
    </div>        
</asp:Content>

