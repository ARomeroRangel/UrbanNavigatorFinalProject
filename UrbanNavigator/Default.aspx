<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UrbanNavigator.WebForm1" %>
<%@ Register TagPrefix="cse" TagName="registration" Src="~/usercontrols/registration.ascx"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
	<title>CSE445/598 Final Project - Armando Romero & Jerome Ronquillo</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">

</head>
<body>
          

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="default.aspx" class="navbar-brand">UrbanNavigator</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                         <li><a href="#home" class="smoothScroll">Home</a></li>
                         <li><a href="#feature" class="smoothScroll">Features</a></li>
                         <li><a href="#about" class="smoothScroll">About us</a></li>
                         <li><a href="#pricing" class="smoothScroll">Pricing</a></li>
                         <li><a href="#contact" class="smoothScroll">Contact</a></li>
                        <li><a href="protected/members.aspx" class="smoothScroll">Members</a></li>
                        <li><a href="admin/administrator.aspx" class="smoothScroll">Admin</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="login.aspx" class="smoothScroll">LogIn</a></li>
                    </ul>
               </div>

          </div>
     </section>


     <!-- FEATURE -->
     <section id="home" data-stellar-background-ratio="0.5">
          <div class="overlay"></div>
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-3 col-md-6 col-sm-12">
                         <div class="home-info">
                              <h3>UrbanNavigator</h3>
                              <h1>Relocate with Insight, Decide with Confidence - Where Cost Meets Safety!</h1>
                             <!-- Registration  User Control -->
                             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                             <ContentTemplate>
                             <cse:registration runat="server" />
                             </ContentTemplate>
                             </asp:UpdatePanel>
                             <!-- Registration  User Control -->
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- FEATURE -->
     <section id="feature" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h1>What you get</h1>
                         </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                         <ul class="nav nav-tabs" role="tablist">
                              <li class="active"><a href="#tab01" aria-controls="tab01" role="tab" data-toggle="tab">Responsive</a></li>

                              <li><a href="#tab02" aria-controls="tab02" role="tab" data-toggle="tab">Mobile</a></li>

                              <li><a href="#tab03" aria-controls="tab03" role="tab" data-toggle="tab">Support</a></li>
                         </ul>

                         <div class="tab-content">
                              <div class="tab-pane active" id="tab01" role="tabpanel">
                                   <div class="tab-pane-item">
                                        <h2>Minimal Design</h2>
                                        <p>Our relocation software embodies minimal design principles, featuring a clean and intuitive interface that prioritizes essential information. By presenting real-time crime and cost of living data in a concise and user-friendly manner, the application empowers users to make informed decisions about relocation effortlessly.</p>
                                   </div>
                                   <div class="tab-pane-item">
                                        <h2>Easy to use</h2>
                                        <p>Our user-friendly relocation software provides effortless navigation with a clean and intuitive interface. Access real-time crime and cost of living data seamlessly on both desktop and mobile devices, empowering users to make informed decisions with ease.</p>
                                   </div>
                              </div>


                              <div class="tab-pane" id="tab02" role="tabpanel">
                                   <div class="tab-pane-item">
                                        <h2>Compatible Browsers</h2>
                                        <p>Our software seamlessly operates on various browsers, ensuring a consistent experience across platforms.</p>
                                   </div>
                                   <div class="tab-pane-item">
                                        <h2>User Friendly</h2>
                                        <p>Designed for simplicity, our interface caters to users of all levels, making navigation and interaction intuitive and enjoyable.</p>
                                   </div>
                                   <div class="tab-pane-item">
                                        <h2>HTML5 & CSS3</h2>
                                        <p>Built with cutting-edge technologies, our application ensures a visually appealing and responsive user experience through the power of HTML5 and CSS3.</p>
                                   </div>
                              </div>

                              <div class="tab-pane" id="tab03" role="tabpanel">
                                   <div class="tab-pane-item">
                                        <h2>Quick Support</h2>
                                        <p>Our commitment to customer satisfaction is reflected in our prompt and efficient support system, ensuring timely assistance and resolutions to any queries or concerns.</p>
                                   </div>
                                   <div class="tab-pane-item">
                                        <h2>Fully Managed</h2>
                                        <p>Experience peace of mind as we handle the intricacies of managing various elements within our system, allowing you to focus on your priorities while we ensure smooth operations.</p>
                                   </div>
                              </div>
                         </div>

                    </div>

                    <div class="col-md-6 col-sm-6">
                         <div class="feature-image">
                              <img src="images/feature-mockup.png" class="img-responsive" alt="Thin Laptop">                             
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- ABOUT -->
     <section id="about" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-3 col-md-6 col-sm-12">
                         <div class="section-title">
                              <h1>Professional Team for you</h1>
                         </div>
                    </div>
                   <div class="team-container">
                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb">
                              <img src="images/team-image1.jpg" class="img-responsive" alt="Andrew Orange">
                              <div class="team-info team-thumb-up">
                                   <h2>Armando Romero</h2>
                                   <small>Software Engineering MS  Student</small>
                                   <p>
A software engineering master's student with a B.S. in management information systems and business analytics, bringing expertise 
                                       in full-stack development to seamlessly integrate technology and business innovation.</p>
                              </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb">
                              <div class="team-info team-thumb-down">
                                   <h2>Jerome Ronquillo</h2>
                                   <small>Software Engineering MS Student</small>
                                   <p>Dedicated to staying up-to-date with the latest technologies and proven track record of 
                                       successfully delivering high-quality software products, collaborating with
                                       cross-functional teams, and driving technical excellence.</p>
                              </div>
                              <img src="images/team-image2.jpg" class="img-responsive" alt="Catherine Soft">
                         </div>
                    </div>
                    </div>
               
               </div>
          </div>
     </section>


     <!-- TESTIMONIAL -->
     <section id="testimonial" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <div class="testimonial-image"></div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                         <div class="testimonial-info">
                              
                              <div class="section-title">
                                   <h1>What People Say</h1>
                              </div>

                              <div class="owl-carousel owl-theme">
                                   <div class="item">
                                        <h3>Thanks to the relocation service's detailed cost of living and crime data, I found a budget-friendly and safe neighborhood, making my move stress-free.</h3>
                                        <div class="testimonial-item">
                                             <img src="images/tst-image1.jpg" class="img-responsive" alt="Michael">
                                             <h4>Michael</h4>
                                        </div>
                                   </div>

                                   <div class="item">
                                        <h3>This service's comprehensive cost of living breakdown saved me money and, coupled with valuable crime data insights, ensured I moved to a neighborhood prioritizing safety.</h3>
                                        <div class="testimonial-item">
                                             <img src="images/tst-image2.jpg" class="img-responsive" alt="Sofia">
                                             <h4>Sofia</h4>
                                        </div>
                                   </div>

                                   <div class="item">
                                        <h3>With the help of this service's in-depth cost of living analysis and crime data, our family had a smoother transition, finding a budget-friendly and safe home for everyone.</h3>
                                        <div class="testimonial-item">
                                             <img src="images/tst-image3.jpg" class="img-responsive" alt="Monica">
                                             <h4>Monica</h4>
                                        </div>
                                   </div>
                              </div>

                         </div>
                    </div>
                    
               </div>
          </div>
     </section>


     <!-- PRICING -->
     <section id="pricing" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h1>Choose any plan</h1>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <div class="pricing-thumb">
                             <div class="pricing-title">
                                  <h2>Individual</h2>
                             </div>
                             <div class="pricing-info">
                                   <p>2 Cost Of Lving Inquires</p>
                                   <p>4 Crime Article Inquires</p>
                                   <p>24-hour Support</p>
                             </div>
                             <div class="pricing-bottom">
                                   <span class="pricing-dollar">$9.99/mo</span>
                                   <a href="#" class="section-btn pricing-btn">Register now</a>
                             </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <div class="pricing-thumb">
                             <div class="pricing-title">
                                  <h2>Business</h2>
                             </div>
                             <div class="pricing-info">
                                <p>50 Cost Of Lving Inquires</p>
                                <p>30 Crime Article Inquires</p>
                                
                                <p>15-minute Support</p>
                             </div>
                             <div class="pricing-bottom">
                                   <span class="pricing-dollar">$29.99/mo</span>
                                   <a href="#" class="section-btn pricing-btn">Register now</a>
                             </div>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <div class="pricing-thumb">
                             <div class="pricing-title">
                                  <h2>Professional</h2>
                             </div>
                             <div class="pricing-info">
                                   <p>100 Cost Of Lving Inquires</p>
                                   <p>60 Crime Article Inquires</p>
                                   <p>1-minute Support</p>
                             </div>
                             <div class="pricing-bottom">
                                   <span class="pricing-dollar">$59.99/mo</span>
                                   <a href="#" class="section-btn pricing-btn">Register now</a>
                             </div>
                         </div>
                    </div>
                    
               </div>
          </div>
     </section>   


     <!-- CONTACT -->
     <section id="contact" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-1 col-md-10 col-sm-12">
                         Contact Form! PlaceHolder.
                    </div>

               </div>
          </div>
     </section>       


     <!-- FOOTER -->
     <footer id="footer" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="copyright-text col-md-12 col-sm-12">
                         <div class="col-md-6 col-sm-6">
                              <p>Copyright &copy; 2023 UrbanNavigator - Armando Romero & Jerome Ronquillo</p>
                         </div>

                         <div class="col-md-6 col-sm-6">
                              <ul class="social-icon">
                                   <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-instagram"></a></li>
                              </ul>
                         </div>
                    </div>

               </div>
          </div>
     </footer>


     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

        </div>
    </form>
</body>
</html>
