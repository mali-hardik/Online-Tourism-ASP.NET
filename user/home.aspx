<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="user_Default" %>

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

    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/pexels-pixabay-206359.jpg);min-height:350px;background-size:cover">
		<div class="overlay"></div><%--style="height: 69px;"--%>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">
                    	<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>HOME</h1>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

    <div class="gtco-section" style="margin-left: 235px">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2 style="margin-right:235px;font-weight: 600;font-size: 46px;">Famous Trips Packages</h2>
					<%--<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>--%>
				</div>
			</div>
			<div class="row">
<%--                <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                </ItemTemplate>
                </asp:DataList>--%>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">    
                <ItemTemplate>
                    <div class="col-lg-4 col-md-4 col-sm-6" style="width: 26.5%;">
					    <a href='../Admin_panel/upload/<%#Eval("image") %>' class="fh5co-card-item image-popup">
                            <figure style="margin-bottom: 10px;">
							    <div class="overlay"><%--<i class="ti-plus"></i>--%></div>
							    <img src='../Admin_panel/upload/<%#Eval("image") %>' alt="Image" class="img-responsive" style="height: 210px;width: 240px;margin-left: 10px;margin-top: 10px;">
						    </figure>
						    <div class="fh5co-text">
							    <h2 style="font-weight: 700;text-transform: uppercase;"><%#Eval("pack_name") %></h2>
						        <%--<asp:Label ID="lbl_pack_id" runat="server" Text='<%#Eval("pack_id") %>' Visible="true"></asp:Label>--%>
                                <p style="font-weight: 500;text-transform:uppercase;"><%#Eval("pack_place") %></p>
                                <p style="font-weight: 400;color: #777;"><i class="fa fa-inr" aria-hidden="true" style="margin-right: 4px;"></i><%#Eval("price") %> /-</p>
                                <p style="font-weight: 400;text-transform:uppercase;"><i class="fa fa-calendar" aria-hidden="true" style="margin-right: 10px;"></i><%#Eval("days") %></p>
						    </div>
					    </a>
                        <a href='view_details.aspx?pack_id=<%#Eval("pack_id") %>' class="btn btn-primary" style="margin-left: 55px;">View Details</a>
				    </div>
                </ItemTemplate>              
              </asp:ListView>  
				
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                    SelectCommand="SELECT TOP 3 * FROM [Package] where status = '1' "></asp:SqlDataSource>
				
			</div>
		</div>
	</div>

    <div id="gtco-section">
		<div class="gtco-container" style="max-width: 1350px;">
            <%--<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2 style="font-weight: 600;font-size: 46px;">Famous Trips Packages</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>--%>
              <%--<h2>Places</h2>--%>
              <div class="row">
                  <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                      <li data-target="#myCarousel" data-slide-to="3"></li>  
                      <li data-target="#myCarousel" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">

                      <div class="item active">
                          <img src="../images/home_1.jpg" alt="Los Angeles" style="width:100%;height:620px;"><%--border-radius:5px--%>
                      </div>
                      <div class="item">
                            <img src="../images/home_2.jpg" alt="Chicago" style="width:100%;height:620px;">
                      </div>
                      <div class="item">
                            <img src="../images/home_3.jpg" alt="New York" style="width:100%;height:620px;">
                      </div>
                       <div class="item">
                            <img src="../images/home_4.jpg" alt="New York" style="width:100%;height:620px;">
                       </div>
                       <div class="item">
                            <img src="../images/home_5.jpg" alt="New York" style="width:100%;height:620px;">
                      </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                  </div>
            </div>
	</div>


	<%--<div class="gtco-cover gtco-cover-sm" style="background-image: url(images/img_bg_1.jpg)"  data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container text-center">
			<div class="display-t">
				<div class="display-tc">
					<h1>We have high quality services that you will surely love!</h1>
				</div>	
			</div>
		</div>
	</div>--%>

	<div id="gtco-counter" class="gtco-section">
		<div class="gtco-container">

			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Our Success</h2>
					<p>We are a main online travel organization in India giving a best as far as class can tell with the objective to be ‘ India's Travel Planner’.</p>
				</div>
			</div>

			<div class="row">
				
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter"><%--data-from="0" data-to="12202" data-speed="5000" data-refresh-interval="50"--%>
                            <asp:Label ID="lbl_destination" runat="server" Text=""></asp:Label></span>
						<span class="counter-label">Destination</span>     
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter">
                        <asp:Label ID="lbl_user" runat="server" Text=""></asp:Label></span>
						<span class="counter-label">Users</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter">
                            <asp:Label ID="lbl_pck" runat="server" Text=""></asp:Label></span>
						<span class="counter-label">Packages</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInUp">
					<div class="feature-center">
						<span class="counter">
                            <asp:Label ID="lbl_booking" runat="server" Text=""></asp:Label></span>
                        <span class="counter-label">Booking Details</span>

					</div>
				</div>
					
			</div>
		</div>
	</div>
    
	<%--<div id="gtco-subscribe">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>subscribe</h2>
					<p>be the first to know about the new templates.</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<form class="form-inline">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label for="email" class="sr-only">email</label>
								<input type="email" class="form-control" id="email" placeholder="your email">
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<button type="submit" class="btn btn-default btn-block">subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>--%>

 <hr/ style="width: 82%;">
</asp:Content>

