<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="members.aspx.cs" Inherits="UrbanNavigator.WebForm1" %>
<%@ Register TagPrefix="cse" TagName="registration" Src="~/usercontrols/registration.ascx"%>
<%@ Register TagPrefix="cse" TagName="citycompare" Src="~/armandoServices/citycompare.ascx"%>
<%@ Register TagPrefix="cse" TagName="newsfocus" Src="~/jeromeServices/newsfocus.ascx"%>
<%@ Register TagPrefix="cse" TagName="logout" Src="~/usercontrols/logout.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <!-- PRE LOADER -->
<section class="preloader">
     <div class="spinner">

          <span class="spinner-rotate"></span>
          
     </div>
</section>


    <form id="form3" runat="server">
        <div>
            
	<title>Members - CSE445/598 Final Project - Armando Romero & Jerome Ronquillo</title>

     <meta charset="UTF-8"/>
     <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
     <meta name="description" content=""/>
     <meta name="keywords" content=""/>
     <meta name="team" content=""/>
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

     <link rel="stylesheet" href="../css/bootstrap.min.css"/>
     <link rel="stylesheet" href="../css/owl.carousel.css"/>
     <link rel="stylesheet" href="../css/owl.theme.default.min.css"/>
     <link rel="stylesheet" href="../css/font-awesome.min.css"/>

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="../css/tooplate-style.css" />

</head>
<body>

     <!-- PRE LOADER -->
  


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
                    <a href="../default.aspx" class="navbar-brand">UrbanNavigator</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
<%--                    <ul class="nav navbar-nav">
                         <li><a href="default.aspx" class="smoothScroll">Home</a></li>
                         <li><a href="#feature" class="smoothScroll">Features</a></li>
                         <li><a href="#about" class="smoothScroll">About us</a></li>
                         <li><a href="#pricing" class="smoothScroll">Pricing</a></li>
                         <li><a href="#contact" class="smoothScroll">Contact</a></li>
                    </ul>--%>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="smoothScroll">
                            <a >
                              <%Response.Write("Hello " + Context.User.Identity.Name+",");%>
                            </a>
                        </li> 
                         <li><cse:logout runat="server" /></li>
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
                              <h3>Members Services</h3>
                             <!-- Registration  User Control -->
                             <asp:ScriptManager ID="ScriptManager5" runat="server"></asp:ScriptManager>
                             <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                 <ContentTemplate>
                                     <cse:citycompare runat="server" />
                                 </ContentTemplate>
                             </asp:UpdatePanel>
                             <!-- Registration  User Control -->
                         </div>
                        <div class="news-info">
                            
                            <cse:newsfocus runat="server" />
                        </div>
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
     <script src="../js/jquery.js"></script>
     <script src="../js/bootstrap.min.js"></script>
     <script src="../js/jquery.stellar.min.js"></script>
     <script src="../js/owl.carousel.min.js"></script>
     <script src="../js/smoothscroll.js"></script>
     <script src="../js/custom.js"></script>

        </div>
    </form>
</body>
</html>
