<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style>
            h1
            {
                font-family: "Playfair Display", serif;
                font-weight: 600;
                font-size: 44px;
                float: left;
            }
        </style>

    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/pexels-pixabay-206359.jpg);min-height:350px;background-size:cover">
		<div class="overlay"></div><%--style="height: 69px;"--%>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">
                    	<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>GET IN TOUCH</h1>	
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
					    <div class="col-md-6 animate-box">
					    <h3>Get In Touch</h3>
					    <form action="#">
						    <div class="row form-group">
							    <div class="col-md-12">
								    <label class="sr-only" for="name">Name</label>
								    <%--<input type="text" id="name" class="form-control" placeholder="Your firstname">--%>
                                    <asp:TextBox ID="txtname" runat="server" type="text" class="form-control" placeholder="Your firstname"></asp:TextBox>
							    </div>
							
						    </div>

						    <div class="row form-group">
							    <div class="col-md-12">
								    <label class="sr-only" for="email">Email</label>
								    <%--<input type="text" id="email" class="form-control" placeholder="Your email address">--%>
                                    <asp:TextBox ID="txtemail" type="email" runat="server" class="form-control" placeholder="Your email address"></asp:TextBox>
							    </div>
						    </div>

						    <div class="row form-group">
							    <div class="col-md-12">
								    <label class="sr-only" for="subject">Subject</label>
								    <%--<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">--%>
                                    <asp:TextBox ID="txtsubject" runat="server" type="text" class="form-control" placeholder="Your subject of this message"></asp:TextBox>
							    </div>
						    </div>

						    <div class="row form-group">
							    <div class="col-md-12">
								    <label class="sr-only" for="message">Message</label>
								    <%--<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Write us something"></textarea>--%>
                                    <asp:TextBox ID="txtmsg" runat="server" class="form-control" placeholder="Write us something"></asp:TextBox>
							    </div>
						    </div>
						    <div class="form-group">
							    <%--<input type="submit" value="Send Message" class="btn btn-primary">--%>
                                <asp:Button ID="btn_submit" runat="server" Text="Send Message" 
                                    class="btn btn-primary" onclick="btn_submit_Click"/>
						    </div>

					    </form>		
				    </div>
				    <div class="col-md-5 col-md-push-1 animate-box">
					
					    <div class="gtco-contact-info">
						    <h3>Contact Information</h3>
						    <ul>
							    <li class="address" style="color:#09C6AB">21, Anand Society, <br /> near rander road surat-395009</li>
							    <li class="phone" style="cursor:pointer;"><a href="tel:91 8238 8351 55">+ 8238 8351 55</a></li>
                                <%--<li class="phone"><a href="tel:91 9099 4005 50">+ 9099 4005 50</a></li>--%>
							    <li class="email" style="cursor:pointer;"><a href="mailto:nationaltourism23@gmail.com">nationaltourism23@gmail.com</a></li>
							    <li style="padding-left: inherit;"><a href="https://wa.me/919099400550" style="margin-left: 3px;"><i class="fa fa-whatsapp" style="color: #cccccc;font-size: 1.4em;margin-right: 30px;"></i>Live Chat</a></li>
                                <%--<li style="padding-left: inherit;"><a href="https://wa.me/"><i class="icon-chat" style=""></i> Live Chat</a></li>--%>
						    </ul>
					    </div>


				    </div>
				    </div>
			    </div>
		    </div>
	    </div>


</asp:Content>

