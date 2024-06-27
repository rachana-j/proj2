<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="proj2.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
<style>
    #show1
    {
        width:400px;
        padding:15px;
    }
    #content1
    {
        padding:15px;
        height:100px;
        font-size:20px;
        display:none;
    }
     #show2
 {
     width:600px;
     padding:15px;
 }
 #content2
{
     padding:15px;
     height:100px;
     font-size:20px;
     display:none;
 }
    
   .ab-links:hover{
       color:#ffd800;
   }
   .con {
    background-color: black;
    color: white;
}
   
</style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       

    <img width="1500px" src="images/ab.jpg" /><br />
    <div class="card-body">  
        <b><center><h2><p>Welcome to our blood donation web application!<br /></center></b>
        <h3> We are dedicated to facilitating the process of blood donation and
         connecting donors with those in need. Here's a bit more about us:</h3>
         <center><h2>Our Mission</h2></center>
            <p>Our mission is to save lives by ensuring a safe, reliable,
    nd adequate blood supply. We strive to make the blood donation process as 
    convenient and accessible as possible.The purpose of the Online Blood Donation is to collect data about 
    donors and seekers who are interested in donating blood or who require it. Anyone who wants to sign up to donate blood 
    can do so through this web application this website can do so.The main 
    aim we can say is to make people aware about how the blood plays an important role in our life and to make easy to them to find the
    campaigns available for them.
 </p>


 <div id="show1" class="ab-links"><h3><u>+ WHO NEEDS BLOOD??</u></h3> </div> 
        <div id="content1">
            Humans can't live without blood. Without blood, the body's organs couldn't get the oxygen and nutrients they need to survive,
            we couldn't keep warm or cool off, fight infections, or get rid of our own waste products. Without enough blood, we'd weaken and die.
           Every day, blood donors help patients of all ages: accident and burn victims,
            heart surgery and organ transplant patients, and those battling cancer.
        </div>

         <div id="show2" class="ab-links"><h3><b>+</b><u> WHEN IS BLOOD NEEDED??</u></h3> </div> 
        <div id="content2">
            Blood is needed by women with complications during pregnancy and childbirth,
            children with severe anaemia, often resulting from malaria or malnutrition,
            accident victims and surgical and cancer patients.And most important thing is 
            Types O negative and O positive are in high demand.Only 7% of the population are O negative. However, the need
            for O negative blood is the highest because it is used most often during emergencies. The need for O+ is high 
            because it is the most frequently.
        </div>
    
 <script>
     $(document).ready(function () {
         $("#show1").click(function () {
             $("#content1").slideToggle();
         });
         $("#show2").click(function () {
             $("#content2").slideToggle();
         });
     });
 </script>
        </div>
                   
     
    <%--footerr --%>
    <div class="con">
         <br />
            <section class="footer-widget-area footer-widget-area-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="about-footer">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <img src="images/logo-footer.png" alt="" />
                                    </div> <!--  end col-lg-3-->
                                     <br />
                                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                        <p>
                                            We are world largest and trustful blood donation center. We have been working since 1973 with a prestigious vision to helping patient to provide blood.
                                            We are working all over the world, organizing blood donation campaign to grow awareness among the people to donate blood.
                                        </p>
                                    </div> <!--  end .col-lg-9  -->
                                </div> <!--  end .row -->
                                <br />

---------------------------------------------------------------------------------------------------------------------------------------------------
                            <br />
                            </div> <!--  end .about-footer  -->
                        </div> <!--  end .col-md-12  -->
                    </div> <!--  end .row  -->
                     <br /> <br />
                    <div class="row">
                       <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-widget">
                                <div class="sidebar-widget-wrapper">
                                    <div class="footer-widget-header clearfix">
                                        <h3>Subscribe Us</h3>
                                    </div>
                                    <p>Signup for regular newsletter and stay up to date with our latest news.</p>                                  
                                </div>
                            </div>
                        </div> <!--  end .col-md-4 col-sm-12 -->   						                      
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="footer-widget">
                                <div class="sidebar-widget-wrapper">
                                   <div class="footer-widget-header clearfix">
                                        <h3>Contact Us</h3>
                                    </div>  <!--  end .footer-widget-header --> 
                                    <div class="textwidget">                                       
                                        <i class="fa fa-envelope-o fa-contact"></i> <p><a href="#">support@donation.com</a><br/><a href="#">helpme@donation.com</a></p>
                                        <i class="fa fa-location-arrow fa-contact"></i> <p>Phoolpada road<br/>virar east,India</p>
                                        <i class="fa fa-phone fa-contact"></i> <p>Office:&nbsp; (+880) 0823 560 433<br/>Cell:&nbsp; (+880) 0723 161 343</p>                              
                                    </div>
                                </div> <!-- end .footer-widget-wrapper  -->
                            </div> <!--  end .footer-widget  -->
                        </div> <!--  end .col-md-4 col-sm-12 -->   
                        <div class="col-md-4 col-sm-12 col-xs-12">
                           <div class="footer-widget clearfix">
                                <div class="sidebar-widget-wrapper">
                                    <div class="footer-widget-header clearfix">
                                        <h3>Support Links</h3>
                                    </div>  <!--  end .footer-widget-header --> 
                                    <ul class="footer-useful-links">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-caret-right fa-footer"></i>
                                                phoolpada.org
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-caret-right fa-footer"></i>
                                                ghaskopri.org
                                            </a>
                                        </li>
                                    </ul>
                                </div> <!--  end .footer-widget  --> 
                           </div> <!--  end .footer-widget  -->            
                        </div> <!--  end .col-md-4 col-sm-12 -->    
                    </div> <!-- end row  -->
                </div> <!-- end .container  -->
            </section> <!--  end .footer-widget-area  -->
</div>

        
</asp:Content>
