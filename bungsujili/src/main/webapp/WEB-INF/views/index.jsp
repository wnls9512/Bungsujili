<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header2.jsp" />

    <section class="banner" id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="left-banner-content">
                        <div class="text-content">
                            <h6>There you go</h6>
                            <div class="line-dec"></div>
                            <h1>Clean &amp; Minimal <br>Template</h1>
                            <div class="white-border-button">
                                <a href="#" class="scroll-link" data-id="best-offer-section">Discover More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="right-banner-content">
                        <div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a></div>
                        <h2>Avalon</h2>
                        <span>Creative <em>HTML</em> Template</span>
                        <div class="line-dec"></div>
                        <p>â Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur et sem blandit, rhoncus ante a, varius libero. Cras elementum tincidunt ullamcorper. Sed vehic ula dictum tortor ut aliquet. â</p>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="best-offer" id=best-offer-section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="best-offer-left-content">
                        <div class="icon"><img src="${ pageContext.request.contextPath }/resources/img/best-offer-icon.png" alt=""></div>
                        <h4>Best Offer For You</h4>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="best-offer-right-content">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <h2>Modern Web Design<br><em>Avalon Theme</em></h2>
                                <p>Avalon Theme is a full-width modern HTML template for everyone. Please tell your friends about <a href="https://fb.com/templatemo" target="_parent">TemplateMo</a>. Thank you. You are allowed <strong>to use this template</strong> for your business. 
                                <br><br>You have <strong>no permission</strong> to re-distribute this template as a downloadable ZIP file on any website. If you see this on any website, that means an illegal copy. Please contact us if you have any question.</p>
                                <ul>
                                    <li>+ Aenean eget ex faucibus, tempor nibh vel.</li>
                                    <li>+ Bibendum tortor. Suspendisse a diam viverra.</li>
                                    <li>+ Finibus ipsum et, imperdiet felis.</li>
                                    <li>+ Donec laoreet efficitur ultrices sit amet enim.</li>
                                </ul>
                                <div class="pink-button">
                                    <a href="#" class="scroll-link" data-id="events-section">Discover More</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <img src="${pageContext.request.contextPath }/resources/img/best-offer-image.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="events" id="events-section">
        <div class="content-wrapper">
            <div class="inner-container container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-heading">
                            <div class="filter-categories">
                                <ul class="project-filter">
                                    <li class="filter" data-filter="all"><span>Show All</span></li>
                                    <li class="filter" data-filter="design"><span>Design Meeting</span></li>
                                    <li class="filter" data-filter="start"><span>App Start Up</span></li>
                                    <li class="filter" data-filter="web"><span>Web Conferences</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-10 col-sm-12 col-md-offset-1">
                        <div class="projects-holder">
                            <div class="event-list">
                                <ul>
                                    <li class="project-item first-child mix web">
                                        <ul class="event-item web">
                                            <li>
                                                <div class="date">
                                                    <span>12<br>May</span>
                                                </div>
                                            </li>
                                            <li>
                                                <h4>four loko franzen</h4>
                                                <div class="web">
                                                    <span>Web Conferences</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="time">
                                                    <span>8:00 AM - 11:00 AM<br>Saturday</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="white-button">
                                                    <a href="#">I am interested</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="project-item second-child mix design">
                                        <ul class="event-item design">
                                            <li>
                                                <div class="date">
                                                    <span>24<br>April</span>
                                                </div>
                                            </li>
                                            <li>
                                                <h4>Drink vinegar coloring</h4>
                                                <div class="design">
                                                    <span>Design Meeting</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="time">
                                                    <span>03:00 PM - 07:00 PM<br>Tuesday</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="white-button">
                                                    <a href="#">I am interested</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="project-item third-child mix start design">
                                        <ul class="event-item start">
                                            <li>
                                                <div class="date">
                                                    <span>30<br>Mar</span>
                                                </div>
                                            </li>
                                            <li>
                                                <h4>core hammock stiller</h4>
                                                <div class="app">
                                                    <span>App Start Up, Design Meeting</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="time">
                                                    <span>03:30 PM - 09:30 PM<br>Friday</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="white-button">
                                                    <a href="#">I am interested</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="project-item fourth-child mix web">
                                        <ul class="event-item web">
                                            <li>
                                                <div class="date">
                                                    <span>22<br>Mar</span>
                                                </div>
                                            </li>
                                            <li>
                                                <h4>palo santo art party</h4>
                                                <div class="web">
                                                    <span>Web Conferences</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="time">
                                                    <span>10:00 AM - 05:00 PM<br>Thursday</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="white-button">
                                                    <a href="#">I am interested</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="project-item fivth-child mix start web">
                                        <ul class="event-item start">
                                            <li>
                                                <div class="date">
                                                    <span>16<br>Mar</span>
                                                </div>
                                            </li>
                                            <li>
                                                <h4>Paleo craft beer copper</h4>
                                                <div class="app">
                                                    <span>App Start Up, Web Conferences</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="time">
                                                    <span>11:30 AM - 04:30 PM<br>Friday</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="white-button">
                                                    <a href="#">I am interested</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </section>


    <section class="testimonial" id="testimonial-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="testimonial-image"></div>
                </div>
                <div class="col-md-8">
                    <div id="owl-testimonial" class="owl-carousel owl-theme">
                        <div class="item col-md-12">
                            <img src="${pageContext.request.contextPath }/resources/img/author_01.png" alt="Steven Walker">
                            <span>Web Designer</span>
                            <h4>Steven Walker</h4>
                            <br>
                            <p><em>"</em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cura bitur et sem blandit, rhoncus ante, varius libero. Cras elemen tum tincidunt ullamcorper sed vehic ula dictum.<em>"</em></p>
                        </div>
                        <div class="item col-md-12">
                            <img src="${pageContext.request.contextPath }/resources/img/author_02.png" alt="Johnny Smith">
                            <span>Web Developer</span>
                            <h4>Johnny Smith</h4>
                            <br>
                            <p><em>"</em>Morbi elit est, pharetra ac enim a, faucibus dignissim augue. Quisque erat erat, placerat non pulvinar eget, sodales eget ex. Cras pulvinar purus et rutrum faucibus.<em>"</em></p>
                        </div>
                        <div class="item col-md-12">
                            <img src="${pageContext.request.contextPath }/resources/img/author_03.png" alt="William Smoker">
                            <span>Managing Director</span>
                            <h4>William Smoker</h4>
                            <br>
                            <p><em>"</em>Praesent luctus lacinia erat, quis lacinia ipsum varius a. Nullam a velit mollis, suscipit felis vitae, dictum libero hendrerit nibh quis sodales gravida ornare ultricies viverra.<em>"</em></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>      
    
    <section class="services" id="services-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                        <div class="flipper first-service">
                            <div class="front">
                                <div class="icon">
                                    <img src="${pageContext.request.contextPath }/resources/img/heart-icon.png" alt="">
                                </div>
                                <h4>Aliquam finibus est</h4>
                            </div>
                            <div class="back">
                                <p>Donec malesuada eu est in mattis. Aenean velit eros, blandit et tortor non, viverra hendrerit velit. Maecenas ut orci nec velit convallis lobortis sit amet ut magna. Ut rhoncus suscipit arcu, sed facilisis risus.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                        <div class="flipper second-service">
                            <div class="front">
                                <div class="icon">
                                    <img src="${pageContext.request.contextPath }/resources/img/home-icon.png" alt="">
                                </div>
                                <h4>Nullam sed turpis</h4>
                            </div>
                            <div class="back">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas vel diam porttitor, fermentum ante et, ornare elit. Morbi nec diam ex. Pellentesque habitant morbi tristique senectus.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                        <div class="flipper third-service">
                            <div class="front">
                                <div class="icon">
                                    <img src="${pageContext.request.contextPath }/resources/img/revision-icon.png" alt="">
                                </div>
                                <h4>Sed in luctus</h4>
                            </div>
                            <div class="back">
                                <p>Mauris congue ex eu enim suscipit, in suscipit est efficitur. Donec quis orci malesuada nunc lobortis aliquet et ut lacus. Sed erat magna, fringilla ac imperdiet in, pulvinar quis ante. Maecenas eleifend, sem vitae tristique.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                        <div class="flipper fourth-service">
                            <div class="front">
                                <div class="icon">
                                    <img src="${pageContext.request.contextPath }/resources/img/chat-icon.png" alt="">
                                </div>
                                <h4>Fusce congue ipsum</h4>
                            </div>
                            <div class="back">
                                <p>Donec venenatis erat at leo dictum, at dictum eros volutpat. Phasellus in dui sed purus varius hendrerit. Duis ac enim ac orci efficitur condimentum vel eget purus. Sed vel massa nulla. Curabitur consequat sem ac velit sollicitudin ornare.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-us" id="contact-section"> 
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                
                <!-- Please visit https://templatemo.com/contact page if you do not know how to setup the contact form -->
                
                    <form id="contact" action="" method="post">
                        <div class="row">
                            <div class="col-md-4">
                              <fieldset>
                                <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                              </fieldset>
                            </div>
                            <div class="col-md-4">
                              <fieldset>
                                <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required="">
                              </fieldset>
                            </div>
                             <div class="col-md-4">
                              <fieldset>
                                <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject..." required="">
                              </fieldset>
                            </div>
                            <div class="col-md-12">
                              <fieldset>
                                <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-md-6">
                              <fieldset>
                                <button type="submit" id="form-submit" class="btn">Send it now</button>
                              </fieldset>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <div class="contact-right-content">
                        <div class="icon"><img src="${pageContext.request.contextPath }/resources/img/map-marker-icon.png" alt=""></div>
                        <h4>You can find us on maps</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="/WEB-INF/views/common/footer2.jsp" />
