<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.master" AutoEventWireup="true" CodeFile="booking_details.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <head>
        <!-- Order Details Template -->
        <!--===============================================================================================-->	
	        <link rel="icon" type="image/png" href="../order_details_template/images/icons/travel%20(2).png"/>
        <!--===============================================================================================-->
	        <link rel="stylesheet" type="text/css" href="../order_details_template/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
	        <link rel="stylesheet" type="text/css" href="../order_details_template/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
	        <link rel="stylesheet" type="text/css" href="../order_details_template/vendor/animate/animate.css">
        <!--===============================================================================================-->
	        <link rel="stylesheet" type="text/css" href="../order_details_template/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
	        <link rel="stylesheet" type="text/css" href="../order_details_template/vendor/perfect-scrollbar/perfect-scrollbar.css">
        <!--===============================================================================================-->
	        <link rel="stylesheet" type="text/css" href="../order_details_template/css/util.css">
	        <link rel="stylesheet" type="text/css" href="../order_details_template/css/main.css">
        <!--===============================================================================================-->
        <!-- Order Details Template End-->
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
        </head>

     <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/pexels-pixabay-206359.jpg);min-height:350px;background-size:cover">
		<div class="overlay"></div><%--style="height: 69px;"--%>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">
                    	<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1 style="margin-top: 133px;">Booking Details</h1>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

        <div class="gtco-section border-bottom">
		    <div class="gtco-container">
			    <div class="row">
				    <div class="col-md-12">
					    

        <div class="wrap-table100">
				<div class="table100 ver1">
                	    <div class="table100-firstcol">
						    <table>
                                    <thead>
								        <tr class="row100 head">
									        <th class="cell100 column1">Mobile No</th>
								        </tr>
							        </thead>
							        <tbody>
                                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
                                    <ItemTemplate>
								        <tr class="row100 body">
									        <td class="cell100 column2" style="height: 66px;padding-top: 20px;padding-left: 35px;">
                                                <asp:Label ID="lbl_umobileno" runat="server" Text='<%#Eval("umobile_no") %>'></asp:Label>
                                            </td>
								        </tr>
                                     </ItemTemplate>
                                     </asp:ListView>
							        </tbody>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:constr %>" 
                                    SelectCommand="SELECT * FROM [Booking] WHERE ([uname] = @uname)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="uname" SessionField="user_name" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

						    </table>
					    </div>
					
					    <div class="wrap-table100-nextcols js-pscroll">
						    <div class="table100-nextcols">
							    <table>
                                    <thead>
									    <tr class="row100 head">
										    <th class="cell100 column2">Image</th>
                                            <th class="cell100 column3">Package Place</th>
										    <th class="cell100 column4">Package Name</th>
										    <th class="cell100 column5">Days</th>
										    <th class="cell100 column6">Price</th>
										    <th class="cell100 column7">Destination To</th>
										    <th class="cell100 column8">Destination From</th>
                                            <th class="cell100 column8">Adult</th>
                                            <th class="cell100 column8">Children</th>
									    </tr>
								    </thead>

								    <tbody>
                                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
									    <tr class="row100 body">
										    <td class="cell100 column2">
                                                <img src='../Admin_panel/upload/<%#Eval("image") %>' class="img-responsive" height="50" Width ="50" />
                                            </td>
										    <td class="cell100 column3">
                                                <asp:Label ID="lbl_pck_place" runat="server" Text='<%#Eval("package_place") %>'></asp:Label>
                                            </td>
										    <td class="cell100 column4">
                                                <asp:Label ID="lbl_pck_name" runat="server" Text='<%#Eval("package_name") %>'></asp:Label>
                                            </td>
										    <td class="cell100 column5">
                                                <asp:Label ID="lbl_days" runat="server" Text='<%#Eval("days") %>'></asp:Label>
                                            </td>
										    <td class="cell100 column6">
                                                <asp:Label ID="lbl_price" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                            </td>
										    <td class="cell100 column7">
                                                <asp:Label ID="lbl_to" runat="server" Text='<%#Eval("pack_to") %>'></asp:Label>
                                            </td>
										    <td class="cell100 column8">
                                                <asp:Label ID="lbl_from" runat="server" Text='<%#Eval("pack_from") %>'></asp:Label>
                                            </td>
                                            <td class="cell100 column7">
                                                <asp:Label ID="lbl_adult" runat="server" Text='<%#Eval("adult") %>'></asp:Label>
                                            </td>
										    <td class="cell100 column8">
                                                <asp:Label ID="lbl_child" runat="server" Text='<%#Eval("children") %>'></asp:Label>
                                            </td>
									    </tr>
                                    </ItemTemplate>
                                    </asp:ListView>
								    </tbody>
                               
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:constr %>" 
                                SelectCommand="SELECT * FROM [Booking] WHERE ([uname] = @uname)">
                                <SelectParameters>
                                    <asp:SessionParameter Name="uname" SessionField="user_name" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

							    </table>
						    </div>
					    </div>
                   
				</div>
			</div>
				    </div>
			    </div>
		    </div>
	    </div>

    <!-- Order Details Template -->
    <!--===============================================================================================-->	
	    <%--<script src="../order_details_template/vendor/jquery/jquery-3.2.1.min.js"></script>--%>
    <!--===============================================================================================-->
	    <script src="../order_details_template/vendor/bootstrap/js/popper.js"></script>
	    <script src="../order_details_template/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
	    <script src="../order_details_template/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
	    <script src="../order_details_template/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>

	    <%--<script>
	        $('.js-pscroll').each(function () {
	            var ps = new PerfectScrollbar(this);

	            $(window).on('resize', function () {
	                ps.update();
	            })

	            $(this).on('ps-x-reach-start', function () {
	                $(this).parent().find('.table100-firstcol').removeClass('shadow-table100-firstcol');
	            });

	            $(this).on('ps-scroll-x', function () {
	                $(this).parent().find('.table100-firstcol').addClass('shadow-table100-firstcol');
	            });

	        });

	    </script>--%>
    <!--===============================================================================================-->
	    <script src="../order_details_template/js/main.js"></script>

        <script type="text/javascript">
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
            var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl)
            })
    </script>

</asp:Content>

