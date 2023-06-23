<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="HomePage.aspx.cs" Inherits="DatabaseCoursework.HomePage" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="CSSContent" runat="server">

   <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="content/home/css/fontawesome.css">
    <link rel="stylesheet" href="content/home/css/templatemo-scholar.css">
    <link rel="stylesheet" href="content/home/css/owl.css">
    <link rel="stylesheet" href="content/home/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

   


</asp:Content>

 <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="main-banner" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-carousel owl-banner">
                            <div class="item item-3">
                                <div class="header-text">

                                    <h2>
                                        Employee Manahgement System
                                    </h2>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="services section" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="icon">
                                <img
                                    src="content/home/images/service-01.png"
                                    alt="online degrees"
                                />
                            </div>
                            <div class="main-content">
                                <h4>Online Degrees</h4>
                                <p>
                                    Whenever you need free templates in HTML
                                    CSS, you just remember TemplateMo website.
                                </p>
                                <div class="main-button">
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="icon">
                                <img
                                    src="content/home/images/service-02.png"
                                    alt="short courses"
                                />
                            </div>
                            <div class="main-content">
                                <h4>Short Courses</h4>
                                <p>
                                    You can browse free templates based on
                                    different tags such as digital marketing,
                                    etc.
                                </p>
                                <div class="main-button">
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="icon">
                                <img
                                    src="content/home/images/service-03.png"
                                    alt="web experts"
                                />
                            </div>
                            <div class="main-content">
                                <h4>Web Experts</h4>
                                <p>
                                    You can start learning HTML CSS by modifying
                                    free templates from our website too.
                                </p>
                                <div class="main-button">
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="section fun-facts">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="wrapper">
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="counter">
                                        <h2
                                            class="timer count-title count-number"
                                            data-to="150"
                                            data-speed="1000"
                                        ></h2>
                                        <p class="count-text">Happy Students</p>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="counter">
                                        <h2
                                            class="timer count-title count-number"
                                            data-to="804"
                                            data-speed="1000"
                                        ></h2>
                                        <p class="count-text">Course Hours</p>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="counter">
                                        <h2
                                            class="timer count-title count-number"
                                            data-to="50"
                                            data-speed="1000"
                                        ></h2>
                                        <p class="count-text">
                                            Employed Students
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="counter end">
                                        <h2
                                            class="timer count-title count-number"
                                            data-to="15"
                                            data-speed="1000"
                                        ></h2>
                                        <p class="count-text">
                                            Years Experience
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="team section" id="team">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <div class="main-content">
                                <img src="content/home/images/member-01.jpg" alt="" />
                                <span class="category">UX Teacher</span>
                                <h4>Sophia Rose</h4>
                                <ul class="social-icons">
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-facebook"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-twitter"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-linkedin"></i
                                        ></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <div class="main-content">
                                <img src="content/home/images/member-02.jpg" alt="" />
                                <span class="category">Graphic Teacher</span>
                                <h4>Cindy Walker</h4>
                                <ul class="social-icons">
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-facebook"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-twitter"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-linkedin"></i
                                        ></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <div class="main-content">
                                <img src="content/home/images/member-03.jpg" alt="" />
                                <span class="category">Full Stack Master</span>
                                <h4>David Hutson</h4>
                                <ul class="social-icons">
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-facebook"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-twitter"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-linkedin"></i
                                        ></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <div class="main-content">
                                <img src="content/home/images/member-04.jpg" alt="" />
                                <span class="category">Digital Animator</span>
                                <h4>Stella Blair</h4>
                                <ul class="social-icons">
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-facebook"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-twitter"></i
                                        ></a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            ><i class="fab fa-linkedin"></i
                                        ></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section events" id="events">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-heading">
                            <h6>Schedule</h6>
                            <h2>Upcoming Events</h2>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <div class="item">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="image">
                                        <img
                                            src="content/home/images/event-01.jpg"
                                            alt=""
                                        />
                                    </div>
                                </div>
                                <div class="col-lg-9">
                                    <ul>
                                        <li>
                                            <span class="category"
                                                >Web Design</span
                                            >
                                            <h4>UI Best Practices</h4>
                                        </li>
                                        <li>
                                            <span>Date:</span>
                                            <h6>16 Feb 2036</h6>
                                        </li>
                                        <li>
                                            <span>Duration:</span>
                                            <h6>22 Hours</h6>
                                        </li>
                                        <li>
                                            <span>Price:</span>
                                            <h6>$120</h6>
                                        </li>
                                    </ul>
                                    <a href="#"
                                        ><i class="fa fa-angle-right"></i
                                    ></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <div class="item">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="image">
                                        <img
                                            src="content/home/images/event-02.jpg"
                                            alt=""
                                        />
                                    </div>
                                </div>
                                <div class="col-lg-9">
                                    <ul>
                                        <li>
                                            <span class="category"
                                                >Front End</span
                                            >
                                            <h4>New Design Trend</h4>
                                        </li>
                                        <li>
                                            <span>Date:</span>
                                            <h6>24 Feb 2036</h6>
                                        </li>
                                        <li>
                                            <span>Duration:</span>
                                            <h6>30 Hours</h6>
                                        </li>
                                        <li>
                                            <span>Price:</span>
                                            <h6>$320</h6>
                                        </li>
                                    </ul>
                                    <a href="#"
                                        ><i class="fa fa-angle-right"></i
                                    ></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-6">
                        <div class="item">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="image">
                                        <img
                                            src="content/home/images/event-03.jpg"
                                            alt=""
                                        />
                                    </div>
                                </div>
                                <div class="col-lg-9">
                                    <ul>
                                        <li>
                                            <span class="category"
                                                >Full Stack</span
                                            >
                                            <h4>Web Programming</h4>
                                        </li>
                                        <li>
                                            <span>Date:</span>
                                            <h6>12 Mar 2036</h6>
                                        </li>
                                        <li>
                                            <span>Duration:</span>
                                            <h6>48 Hours</h6>
                                        </li>
                                        <li>
                                            <span>Price:</span>
                                            <h6>$440</h6>
                                        </li>
                                    </ul>
                                    <a href="#"
                                        ><i class="fa fa-angle-right"></i
                                    ></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 </asp:Content>

<asp:Content ID="JSContent" ContentPlaceHolderID="JavaScriptContent" runat="server">

    <script src="Content/home/js/isotope.min.js"></script>
    <script src="Content/home/js/owl-carousel.js"></script>
    <script src="Content/home/js/popup.js"></script>
    <script src="Content/home/js/tabs.js"></script>
    <script src="Content/home/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');
        var showSection = function showSection(section, isAnimate) {
            var
                direction = section.replace(/#/, ''),
                reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                reqSectionPos = reqSection.offset().top - 0;
            if (isAnimate) {
                $('body, html').animate({
                    scrollTop: reqSectionPos
                },
                    800);
            } else {
                $('body, html').scrollTop(reqSectionPos);
            }
        };
        var checkSection = function checkSection() {
            $('.section').each(function () {
                var
                    $this = $(this),
                    topEdge = $this.offset().top - 80,
                    bottomEdge = topEdge + $this.height(),
                    wScroll = $(window).scrollTop();
                if (topEdge < wScroll && bottomEdge > wScroll) {
                    var
                        currentId = $this.data('section'),
                        reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                    reqLink.closest('li').addClass('active').
                        siblings().removeClass('active');
                }
            });
        };
        $('.main-menu, .scroll-to-section').on('click', 'a', function (e) {
            if ($(e.target).hasClass('external')) {
                return;
            }
            e.preventDefault();
            $('#menu').removeClass('active');
            showSection($(this).attr('href'), true);
        });
        $(window).scroll(function () {
            checkSection();
        });
    </script>

</asp:Content>