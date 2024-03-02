<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.master" AutoEventWireup="true" CodeFile="About_us.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <head>
        <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />--%>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    </head>
    
    <style>
    
    h1
    {
       font-family: "Playfair Display", serif;
       font-weight: 600;
       float: left;
    }
    p
    {
        margin: 60px 0 -40px;
        font-family: "Roboto", sans-serif;
        font-weight: 400;
        color: #777777;   
    }    
    /* about us img css */
    .about-img{
        min-width: 95%;
        max-height: 300px;
    }
    /* teams part css */
    
    .box
    {
        position:relative;
        overflow:hidden;
        font-family:'Lato',sans-serif;
        text-align:center;
    }
    .box:before
    {
        content:'';
        position:absolute;
        /*background:linear-gradient(to right, #09C6AB, #94b5f2);*/
        width: 80%;
        height: 28%;
        margin-top: 13px;
        top: 66%;
        right: 20%;
        left: 0;
        opacity:0;
        transition: all 0.4s linear;
    }
    .box:hover:before
    {
        opacity:0.9;
    }
    .box .img1
    {
        width:87%;
        height:190px;
        margin-top: 15px;
        transition: all 0.4s linear;
    }
    .box:hover .img1
    {
        opacity:1;
        transform:scale(1);
        
    }
    
    .box .box-centent
    {
        color:#fff;
        width:100%;
        transform: translateY(-50%) scale(0);
        top:50%;
        left:0;
        transition: all 0.4s linear;
    }
    
    .box:hover .box-centent
    {
        transform: translateY(-50%) scale(1);
        opacity:1;
        width: 80%;
        margin-top: -15px;
        background:linear-gradient(to right, #fff, #fff);       
    }
    
    .box .box-centent .title
    {
        font-size: 15px;
        font-weight: 500;
        Letter-spacing: 1px;
        text-transform: uppercase;
        margin-bottom: 0px;
        float: left;
        margin-left: 12px;
        padding-top: 12px;
        padding-right: 8px;
    }
    
    .box .box-centent .post
    {
        font-size: 11px;
        /* text-transform: capitalize; */
        padding-right: 10px;
        width: 80%;
        color: #777;
    }
	/* popular places css */
	.img-box
	{
	    display:block;
	    width:20%;
	    float:left;
	    /*padding:10px;
	    padding-left:12px:*/
	}
	.img3
	{
	    width:100%;
	    height:230px;
	    cursor: pointer;   
	    /*height:100%;*/
	}
	.img3:hover
	{
	    transform:scale(2,2);  
	    margin-top:37px;
	    height:150px;
	    width:150px;
	}
	
</style>

   <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/pexels-pixabay-206359.jpg);min-height:350px;background-size:cover">
		<div class="overlay"></div><%--style="height: 69px;"--%>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">
                    	<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>ABOUT US</h1>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

    <section id="about">
        <div class="text-center" style="padding: 25px;">
            <%--<h1 class="display-4" style="margin-top: 400px;text-transform:uppercase">About Us</h1>--%>
            <hr style="width:25%"/>
        </div>
        <div class="container">
            <div class="row my-5">
                
                <div class="col-lg-6 col-md-6 col-12 col-xxl-6 d-flex justify-content-center align-items-start flex-column">
                    <h1>About National Tourism</h1><%--We Believe that Interior beauty Lasts Long--%>
                    <p>
                        We are a main online travel organization in India giving a ‘best as far as class can tell with the objective to be ‘ India ‘s Travel Planner’. 
                        Through our site, www.nationalTourism.com, our versatile applications and our other related stages explore, analyze costs and book an extensive variety 
                        of packages and check their details.
                    </p>
                    <p>
                        National Tourism has been focused on bringing our customers the best in esteem and quality travel packages plans. We are enthusiastic about movement and 
                        sharing the world’s marvels on the relaxation travel side, and giving corporate explorers hello there contact administrations to encourage their business 
                        travel needs.
                    </p>
                </div>
                <div class="col-lg-6 col-md-6 col-12 col-xxl-6">
                    <figure>
                        <img src="../images/about_us.jpg" alt="nature" class="img-fluid about-img" style="border-radius:0px;margin-top: 20px;">
                    </figure>
                </div>
            </div>
        </div>
    </section>


    <!-- Team member section -->

    <section id="team" class="py-5 bg-dark">
        <div class="container">
            <!-- title -->
            <div class="text-center" style="padding: 25px;margin-top: 25px;">
                <h1 class="display-4" style="margin-top: 0px;text-transform:uppercase;margin-left: 40%;">Team Member</h1>
                <hr style="width: 35%;margin-right: 30%;margin-top: 40px;"/>
            </div>
            <!-- End of title -->

            <div class="row">
                <div class="col-md-4 col-sm-6 my-3" style="width: 20%;"></div>  
                <div class="col-md-4 col-sm-6 my-3">
                    <div class="box" style="border: 1px solid #eeeeee;height: 225px;width: 225px;margin-left: 90px;">
                        <img class="img1" src="images/jemina.jpg" class="img-thmbnail"/>
                        <div class="box-centent">
                            <h3 class="title">Jemina Asmani</h3>
                            <h3 class="post">Web development</h3>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4 col-sm-6 my-3" style="width: 27.33333%;">
                    <div class="box" style="border: 1px solid #eeeeee;height: 225px;width: 225px;">
                        <img class="img1" src="images/samir.jpg" class="img-thmbnail"/>
                        <div class="box-centent">
                            <h3 class="title">Samir Randeriya</h3>
                            <span class="post" style="padding-right: 60px;">WEB DEVELOPER</span>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </section>


    <section id="places" class="py-5 bg-light">
        <div class="container-fluid">
            <!-- title -->
            <div class="text-center" style="padding: 25px;margin-top: 25px;">
                <h1 class="display-4" style="margin-top: 0px;text-transform:uppercase;margin-left: 40%;">Popular Places</h1>
                <hr style="width: 35%;margin-right: 30%;margin-top: 40px;"/>
            </div>
        </div>
        <div class="container">
            <div class="main">
                <div class="img-box"><img src="images/pexels-pixabay-248771.jpg" class="img-fluid img3"/></div>
                <div class="img-box"><img src="images/pexels-iconcom-733174.jpg" class="img-fluid img3"/></div>
                <div class="img-box"><img src="images/pexels-david-bartus-586687.jpg" class="img-fluid img3"/></div>
                <div class="img-box"><img src="images/pexels-james-wheeler-414612.jpg" class="img-fluid img3"/></div>
                <div class="img-box"><img src="images/pexels-malík-1998439.jpg" class="img-fluid img3"/></div>
            </div>
        </div>
        


        <%--<div class="container">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="images/bg1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="images/bg2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="images/bg3.jpg" class="d-block w-100" alt="...">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>--%>
                <%--<div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                      <img src="images/bg2.jpg" class="img-fluid img-thumbnail" alt="..." height="250px" width="350px">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                      <img src="images/bg4.jpg" class="img-fluid img-thumbnail" alt="..." height="250px" width="350px">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                      <img src="images/bg3.jpg" class="img-fluid img-thumbnail" alt="..." height="250px width="350px">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                      <img src="images/bg5.jpg" class="img-fluid img-thumbnail" alt="..." height="250px" width="350px">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                      <img src="images/bg6.jpg" class="img-fluid img-thumbnail" alt="..." height="250px" width="350px">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                      <img src="images/bg7.jpg" class="img-fluid img-thumbnail" alt="..." height="250px" width="350px">
                </div>
            </div>
        </div>--%>
        
    </section>



    <hr style="width:100%"/>

    <%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
--%>
</asp:Content>

