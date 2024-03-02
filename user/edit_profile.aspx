<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.master" AutoEventWireup="true" CodeFile="edit_profile.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head>
        <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />--%>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
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
							<h1>ACCOUNT</h1>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
    <section id="about">
        <div class="container">
        <!-- row start -->
            <div class="row my-5">
            <!-- start -->
                <div class="col-lg-6 col-md-6 col-12 col-xxl-6 d-flex justify-content-center align-items-start flex-column" style="margin-top: 30px;">
                    <h2>Edit Profile</h2><%--We Believe that Interior beauty Lasts Long--%>
                    <%--<div class="row form-group">
					    <div class="col-md-12">
					        <label for="subject">ID</label>
                            <asp:TextBox ID="txt_userid" type="Text" runat="server" class="form-control" placeholder="ID" disabled></asp:TextBox>
					    </div>
				    </div>--%>
                    <div class="row form-group">
					    <div class="col-md-12">
					        <label for="subject">Name</label>
                            <asp:TextBox ID="txtname" type="Text" runat="server" class="form-control" placeholder="Name" disabled></asp:TextBox>
					    </div>
				    </div>
				    <div class="row form-group">
						<div class="col-md-12">
						    <label for="email">Email</label>
						    <%--<input type="text" id="email" class="form-control" placeholder="Your email address">--%>
                            <asp:TextBox ID="txtemail" type="email" runat="server" class="form-control" placeholder="Your email address" disabled></asp:TextBox>
					    </div>
                        <asp:Label ID="lbl_userid" runat="server" Text=""></asp:Label>
				    </div>
                </div>
                <!-- end -->
                <!-- Edit profile here start -->
                    <asp:Panel ID="pnl_edit" runat="server" Visible="False">
                        <div class="col-lg-6 col-md-6 col-12 col-xxl-6" style="margin-top: 30px;margin-bottom: 25px;">
                            <h2>Edit Profile here...</h2><%--We Believe that Interior beauty Lasts Long--%>
                             <%--<div class="row form-group">
					            <div class="col-md-12">
					                <label for="subject">ID</label>
                                    <asp:TextBox ID="txt_edit_id" type="Text" runat="server" class="form-control" placeholder="ID" disabled></asp:TextBox>
					            </div>
				            </div>--%>
                            <div class="row form-group">
					            <div class="col-md-12">
					                <label for="subject">Name</label>
                                    <asp:TextBox ID="txt_edit_name" type="Text" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
					            </div>
				            </div>
				            <div class="row form-group">
						        <div class="col-md-12">
						            <label for="email">Email</label>
						            <%--<input type="text" id="email" class="form-control" placeholder="Your email address">--%>
                                    <asp:TextBox ID="txt_edit_email" type="email" runat="server" class="form-control" placeholder="Your email address"></asp:TextBox>
					            </div>
				            </div>
                            <div class="row form-group">
						        <div class="col-md-12">
						            <asp:LinkButton ID="lnk_btn_sub" runat="server" Visible="False" OnClick="lnk_btn_edit_sub_click" class="btn btn-primary">SUBMIT</asp:LinkButton>
                                    <asp:LinkButton ID="lnk_btn_cnl" runat="server" Visible="False" OnClick="lnk_btn_edit_cnl_click" class="btn btn-primary">CANCLE</asp:LinkButton>
					            </div>
                                
                                <asp:Panel ID="panel_success" runat="server" visible="false">
                                     <div class="alert alert-success" role="alert">
                                       You have succesfully Update details.
                                    </div>
                                 </asp:Panel>
				            </div>
                        </div>
                    </asp:Panel>
                <!-- end -->
            </div>
           <!-- 1 row end-->

           <!-- 2 row start -->
            <div class="row my-5">
            <!-- start -->
                <div class="col-lg-6 col-md-6 col-12 col-xxl-6 d-flex justify-content-center align-items-start flex-column" style="margin-top: 3px;">
                    <asp:LinkButton ID="lnk_btn_chng_pwd" runat="server" onClick="lnk_btn_chng_pwd_click" style="margin-left: 8px;">Change Password</asp:LinkButton>
                        <div class="form-group" style="margin-top: 15px;text-transform:uppercase;padding-left: 200px;">
							 <%--<input type="submit" value="Send Message" class="btn btn-primary">--%>
                             <%--<asp:Button ID="btn_submit" runat="server" Text="Send Message" class="btn btn-primary" onclick="btn_submit_Click"/>--%>
                             <asp:LinkButton ID="lnk_btn_edit" runat="server" class="btn btn-primary" OnClick="lnk_btn_edit_click">Edit<i class="icon-edit" style="margin-left: 5px;"></i></asp:LinkButton>
                        </div>
                </div>
                <!-- end -->
                <!-- Edit profile here start -->
                    <asp:Panel ID="pnl_cng_pwd" runat="server" Visible="False">
                        <div class="col-lg-6 col-md-6 col-12 col-xxl-6" style="margin-top: -240px;margin-bottom: 25px;">
                            <h2>Change Password here...</h2><%--We Believe that Interior beauty Lasts Long--%>
                            <div class="row form-group">
					            <div class="col-md-12">
					                <label for="subject">Old Password</label>
                                    <asp:TextBox ID="txtold_password" type="password" runat="server" class="form-control" placeholder="Old Password"></asp:TextBox>
					            </div>
				            </div>
                            <div class="row form-group">
					            <div class="col-md-12">
					                <label for="subject">New Password</label>
                                    <asp:TextBox ID="txtnew_password" type="password" runat="server" class="form-control" placeholder="New Password"></asp:TextBox>
					            </div>
				            </div>
                            <div class="row form-group">
					            <div class="col-md-12">
					                <label for="subject">Retype Password</label>
                                    <asp:TextBox ID="txtre_password" type="password" runat="server" class="form-control" placeholder="Retype Password"></asp:TextBox>
					            </div>
				            </div> 
                            <div class="row form-group">
						        <div class="col-md-12">
						            <asp:LinkButton ID="lnk_btn_chng_sub" runat="server" Visible="False" OnClick="lnk_btn_chng_sub_click" class="btn btn-primary">SUBMIT</asp:LinkButton>
                                    <asp:LinkButton ID="lnk_btn_chng_cnl" runat="server" Visible="False" OnClick="lnk_btn_chng_cnl_click" class="btn btn-primary">CANCLE</asp:LinkButton>
					            </div>
				            </div>   
                        </div>
                    </asp:Panel>
                <!-- end -->
            </div>
           <!-- 2 row end-->
 
        </div>
    </section>

</asp:Content>

