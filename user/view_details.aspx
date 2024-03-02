<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.master" AutoEventWireup="true" CodeFile="view_details.aspx.cs" Inherits="user_Default" %>

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
                margin-top: 7px;
            }       
            p
            {
                font-family: "Roboto", sans-serif;
            }
            .courses-container 
            {  
                margin-left: -50px;   
            }

            .course {
	            background-color: #fcfbfb;
	            border-radius: 0px;
	            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
	            display: flex;
	            max-width: 100%;
	            margin: 20px;
	            overflow: hidden;
	            width: 68%;
	            height:110px;
            }

            .course h6 {
	            opacity: 0.6;
	            margin: 0;
	            letter-spacing: 1px;
	            text-transform: uppercase;
            }

            .course h2 {
	            letter-spacing: 1px;
	                width: 80px;

	            /*margin: 5px 0;*/  
            }

            .course-preview {
	            background-color: #09C6AB;
	            color: #fff;
	            padding: 30px;
	            max-width: 250px;
            }

            .course-preview a {
	            color: #fff;
	            display: inline-block;
	            font-size: 12px;
	            opacity: 0.6;
	            margin-top: 30px;
	            text-decoration: none;
            }

            .course-info {
	            padding: 20px;
	            position: relative;
	            width: 100%;
            }

            .progress-container {
	            position: absolute;
	            top: 30px;
	            right: 30px;
	            text-align: right;
	            width: 150px;
            }

            .progress {
	            background-color: #ddd;
	            border-radius: 3px;
	            height: 5px;
	            width: 100%;
            }

            .progress::after {
	            border-radius: 3px;
	            background-color: #2A265F;
	            content: '';
	            position: absolute;
	            top: 0;
	            left: 0;
	            height: 5px;
	            width: 66%;
            }

            .progress-text {
	            font-size: 10px;
	            opacity: 0.6;
	            letter-spacing: 1px;
            }
            .btn1 {
	            background-color: #2A265F;
	            border: 0;
	            border-radius: 50px;
	            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
	            color: #fff;
	            font-size: 16px;
	            padding: 12px 25px;
	            position: absolute;
	            bottom: 30px;
	            right: 30px;
	            letter-spacing: 1px;
            }
            .pck_name
            {
                font-family: "Playfair Display", serif;
                font-size: 2.14286em;
                text-transform: capitalize;
                margin-left: 5px;
                color: #000;
            }
            .pack_price
            {
                font-weight: 800;
                font-size: 20px;
                font: 1.85714em "Lato Bold";
                color: #444546;
            }
            .pck_days
            {
                background: #333;
                padding: 5px;
                color: #fff;
                text-transform: capitalize;   
            }
            .pck_place
            {
                font: 2.14286em "Playfair Display", serif;
                text-transform: capitalize;
                color: #000;
                margin-bottom: 5px;
                margin-right: 2px;
                margin-left: -15px;   
            }
            .pck_quote
            {
                font-weight: 800;
                font-size: 25px;
                color: #000;
            }
            
            .days_desc
            {
                font-size: 20px;   
                color: #000;
                text-transform: capitalize;
            }
            
        </style>

        <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/pexels-pixabay-206359.jpg);min-height:350px;background-size:cover">
		    <div class="overlay"></div><%--style="height: 69px;"--%>
		    <div class="gtco-container">
			    <div class="row">
				    <div class="col-md-12 col-md-offset-0 text-center">
					    <div class="row row-mt-15em">
                    	    <div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							    <h1 style="font-size: 53px;">VIEW DETAILS</h1>	
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
	    </header>

    <div class="gtco-section" style="padding-top: 15px;">
		<div class="gtco-container">
           <div class="row">
     
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" 
                        onselectedindexchanged="ListView2_SelectedIndexChanged">
                        <ItemTemplate>
                        <table style="width: 106%">
                            <tr>
                                <td style="" class="" rowspan=2>
                                    <asp:Label ID="lbl_place" class="pck_place" runat="server" Text='<%#Eval("pack_place") %>'></asp:Label>
                                    <asp:Label ID="lbl_quote" class="pck_quote" runat="server" Text='-'></asp:Label>
                                    <asp:Label ID="lbl_pck_name" class="pck_name" runat="server" Text='<%#Eval("pack_name") %>'></asp:Label>
                                    <asp:Label ID="lbl_pck" class="pck_name" runat="server" Text='Package'></asp:Label>
                                </td>
                                <%--<td style="width: 60px;" class="style6">2</td>--%>
                                <td style="width: 60px;" class="style6"></td>
                                <td style="width: 60px;" class="style6"></td>
                                <td style="width: 60px;color: #444546" class="style6">Strating From</td>
                                <td style="width: 60px;" class="style6" rowspan=2>
                                    <%--<asp:Button ID="btn_booking" runat="server" Text="BOOK NOW" class="btn btn-danger" />--%>
                                    <asp:LinkButton ID="btn_booking" runat="server" class="btn btn-danger" 
                                        onclick="btn_booking_Click" style="border-radius: 0px;">Book Now</asp:LinkButton>
                                </td>
                            </tr>
                             <tr>
                                <td style="width: 60px;" class="style6"></td>
                                <td style="width: 60px;" class="style6"></td>
                                <td style="width: 60px;" class="style6">
                                    <i class="fa fa-inr" aria-hidden="true" style="margin-right: 4px;font-size: 25px;color: #444546;"></i>
                                    <asp:Label ID="lbl_price" class="pack_price" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 60px;" class="style6" colspan=1>
                                    <i class="fa fa-calendar" aria-hidden="true" style="margin-right: 10px;margin-left: -15px;margin-top: 12px;font-size: 20px;"></i>
                                    <asp:Label ID="lbl_days" class="pck_days" runat="server" Text='<%#Eval("days") %>'></asp:Label>
                                </td>
                            </tr>
                            </table>
                               </ItemTemplate>
                    </asp:ListView>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:constr %>" 
                        SelectCommand="SELECT * FROM [Package] WHERE ([pack_id] = @pack_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="pack_id" QueryStringField="pack_id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                            <div class="container">
                                <div class="row my-5">
                                
                             
                                        <div class="col-lg-6 col-md-6 col-12 col-xxl-6" style="margin-left: -35px;margin-top: 15px;width:65%;">
                                           <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                           <img src='../Admin_panel/upload/<%#Eval("image") %>' alt="Image" class="img-responsive" style="height: 550px;width: 770px;box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);">
                                           </ItemTemplate>
               </asp:DataList>   
                                        </div>

                                  
			        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:constr %>" 
                   SelectCommand="SELECT * FROM [Package] WHERE ([pack_id] = @pack_id)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="pack_id" QueryStringField="pack_id" 
                                Type="Int32" />
                        </SelectParameters>
               </asp:SqlDataSource>
                                    <div class="col-lg-6 col-md-6 col-12 col-xxl-6" style="width:35%;">
                                        <%--<figure>--%>
                                            <asp:Panel ID="pnl_booking" runat="server" Visible="false">
                                                <div class="col-md-12">
					                                <div class="col-md-6 animate-box" style="width:100%;margin-top: 10px;">
					                                    <h1 class="display-3" style="text-align:center">Booking Now..</h1>
					                                    <form action="#">
						                                   

                                                            <div class="row form-group">
							                                    <div class="col-md-12">
								                                    <label for="subject" style="font-size:large">To</label>
                                                                    <asp:TextBox ID="txt_to" type="text" TextMode=Date runat="server" class="form-control" placeholder="To"></asp:TextBox>
                                                                    <%--<asp:Calendar ID="To_date" runat="server" ></asp:Calendar>--%>
							                                    </div>
						                                    </div>

                                                            <div class="row form-group">
							                                    <div class="col-md-12">
								                                    <label for="subject" style="font-size:large">From</label>
                                                                    <asp:TextBox ID="txt_from" type="text" TextMode=Date runat="server" class="form-control" placeholder="From"></asp:TextBox>
                                                                    <%--<asp:Calendar ID="From_date" runat="server" ></asp:Calendar>--%>
							                                    </div>
						                                    </div>

                                                            <div class="row form-group">
							                                    <div class="col-md-12" data-bs-toggle="tooltip" data-bs-placement="right" title="Adult">
								                                    <label for="subject" style="font-size:large">Adult</label>
                                                                    <asp:DropDownList ID="ddl_adult" runat="server" class="form-control" placeholder="Adult">
                                                                        <asp:ListItem>Select Adult</asp:ListItem>
                                                                        <asp:ListItem>0</asp:ListItem>
                                                                        <asp:ListItem>1</asp:ListItem>
                                                                        <asp:ListItem>2</asp:ListItem>
                                                                    </asp:DropDownList>
							                                    </div>
						                                    </div>

                                                            <div class="row form-group">
							                                    <div class="col-md-12" data-bs-toggle="tooltip" data-bs-placement="right" title="Children">
								                                    <label for="subject" style="font-size:large">Children</label>
                                                                    <asp:DropDownList ID="ddl_child" runat="server" class="form-control">
                                                                        <asp:ListItem>Select Children</asp:ListItem>   
                                                                        <asp:ListItem>0</asp:ListItem>
                                                                        <asp:ListItem>1</asp:ListItem>
                                                                        <asp:ListItem>2</asp:ListItem>
                                                                        <asp:ListItem>3</asp:ListItem>
                                                                    </asp:DropDownList>
							                                    </div>
						                                    </div>

                                                            <div class="row form-group">
							                                    <div class="col-md-12">
								                                    <label for="subject" style="font-size:large">Mobile Number</label>
                                                                    <asp:TextBox ID="txt_mobile" type="text" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
							                                    </div>
						                                    </div>

						                                    <div class="form-group" style="text-align:center">
                                                                <asp:Button ID="btn_submit" runat="server" Text="Book" class="btn btn-success" OnClick="btn_submit_click" style="border-radius: 5px;width: 35%;font-size: 16px;font-weight: 700;"/><%--primary, info,--%>
                                                                <asp:Button ID="btn_cancle" runat="server" Text="Cancle" class="btn" OnClick="btn_cancle_click"/>
						                                    </div>

					                                    </form>		
				                                    </div>
				                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="pnl_login" runat="server" Visible="False">

                                            </asp:Panel>
                                        <%--</figure>--%>
                                    </div>
                                </div>
                            </div>
                    
			</div>
           
        

            <!-- for days -->
<%--            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>--%>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            
            <div class="courses-container" style="">
	            <div class="course">
		            <div class="course-preview">
			            <%--<h6>Course</h6>--%>
			            <h2>Day 1</h2>
			            <%--<a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>--%>
		            </div>
		            <div class="course-info" style="padding-top: 6px;">
			            <i class="fa fa-plane" aria-hidden="true" style="font-size: 25px;
    margin-right: 12px;
    margin-left: 5px;"></i>
			            <asp:Label ID="Label1" runat="server" class="days_desc" Text='optional'></asp:Label><br/>
                        <i class="fa fa-bed" aria-hidden="true" style="font-size: 25px;margin-right: 10px;"></i>
                        <asp:Label ID="lbl_days1" runat="server" class="days_desc" Text='Hotel checkin in'></asp:Label>
                        <asp:Label ID="lbl_day1" runat="server" class="days_desc" Text='<%#Eval("pack_place") %>'></asp:Label>
                        <br/>
		                <i class="fa fa-cutlery" aria-hidden="true" style="    font-size: 25px;
    margin-left: 4px;
    margin-right: 14px;"></i>
			            <asp:Label ID="lbl_day1_meal" runat="server" class="days_desc" Text=' No Meals'></asp:Label>
		            
                    </div>
                    
	            </div>
            </div>
            <div class="courses-container">
	            <div class="course">
		            <div class="course-preview">
			            <%--<h6>Course</h6>--%>
			            <h2>Day 2</h2>
			            <%--<a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>--%>
		            </div>
		            <div class="course-info">
			            <i class="fa fa-bed" aria-hidden="true" style="font-size: 25px;margin-right: 17px;"></i>
                        <asp:Label ID="lbl_day2" runat="server" class="days_desc" Text='Hotel Check In For 3 Nights'></asp:Label>
                        <br/>
		                <i class="fa fa-cutlery" aria-hidden="true" style="font-size: 25px;margin-right: 22px;margin-left: 3px;"></i>
			            <asp:Label ID="lbl_day2_meal" runat="server" class="days_desc" Text=' Dinner Only'></asp:Label>
		            </div>
	            </div>
            </div>
            <div class="courses-container">
	            <div class="course">
		            <div class="course-preview">
			            <%--<h6>Course</h6>--%>
			            <h2>Day 3</h2>
			            <%--<a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>--%>
		            </div>
		            <div class="course-info">
			           <i class="fa fa-bed" aria-hidden="true" style="font-size: 25px;margin-right: 17px;"></i>
                        <asp:Label ID="lbl_day3" runat="server" class="days_desc" Text='Hotel'></asp:Label>
                        <br/>
		                <i class="fa fa-cutlery" aria-hidden="true" style="font-size: 25px;margin-right: 22px;margin-left: 3px;"></i>
			            <asp:Label ID="lbl_day3_meal" runat="server" class="days_desc" Text='Breakfast & Dinner'></asp:Label>
		            </div>
	            </div>
            </div>
            <div class="courses-container">
	            <div class="course">
		            <div class="course-preview">
			            <%--<h6>Course</h6>--%>
			            <h2>Day 4</h2>
			            <%--<a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>--%>
		            </div>
		            <div class="course-info">
			            <i class="fa fa-bed" aria-hidden="true" style="font-size: 25px;margin-right: 17px;"></i>
                        <asp:Label ID="lbl_day4" runat="server" class="days_desc" Text='Hotel'></asp:Label>
                        <br/>
		                <i class="fa fa-cutlery" aria-hidden="true" style="font-size: 25px;margin-right: 22px;margin-left: 3px;"></i>
			            <asp:Label ID="lbl_day4_meal" runat="server" class="days_desc" Text='Breakfast & Dinner'></asp:Label>
		            </div>
	            </div>
            </div>
            <div class="courses-container">
	            <div class="course">
		            <div class="course-preview">
			            <%--<h6>Course</h6>--%>
			              <h2>Day 5</h2>
			            <%--<a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>--%>
		            </div>
		            <div class="course-info" style="padding-top: 6px;">
                        <i class="fa fa-plane" aria-hidden="true" style="font-size: 25px;margin-right: 20px;margin-left: 5px;"></i>
			            <asp:Label ID="lbl_days5" runat="server" class="days_desc" Text='optional'></asp:Label><br/>
                        <i class="fa fa-bed" aria-hidden="true" style="font-size: 25px;margin-right: 17px;"></i>
                        <asp:Label ID="lbl_day5" runat="server" class="days_desc" Text='Hotel Checkout'></asp:Label>
                        <br/>
		                <i class="fa fa-cutlery" aria-hidden="true" style="font-size: 25px;margin-right: 22px;margin-left: 3px;"></i>
			            <asp:Label ID="lbl_day5_meal" runat="server" class="days_desc" Text='Breakfast & Dinner'></asp:Label>
		            </div>
	            </div>
            </div>
            
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:constr %>" 
                SelectCommand="SELECT * FROM [Package] WHERE ([pack_id] = @pack_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="pack_id" QueryStringField="pack_id" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--</ItemTemplate>
             </asp:Repeater>
            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:constr %>" 
                SelectCommand="SELECT * FROM [Package] WHERE ([pack_id] = @pack_id)"">
                <SelectParameters>
                     <asp:QueryStringParameter Name="pack_id" QueryStringField="pack_id" Type="Int32" />
                </SelectParameters>
                </asp:SqlDataSource>--%>

            </div>
		</div>
	</div>
</asp:Content>

