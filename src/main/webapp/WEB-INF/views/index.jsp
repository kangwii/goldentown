<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>언제나 당신과 함께..Golden-Town</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet"/>
        <link rel="stylesheet" href="./resources/css/stylesme.css">
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-light bg-light static-top">
            <div class="container">
                <a class="navbar-brand" href="/index">GoldenTown</a>
                <c:if test="${session==null}">
                <div>                
               	<a class="innerLog btn btn-primary" href="/login">로그인</a>
               	<a class="innerAc btn btn-primary" href="/member">회원가입</a>
               	</div>
	            </c:if>
	            <c:if test="${session!=null}">
	            	<p>${session.id}님 환영합니다.</p>
	            </c:if>
            </div>
        </nav>        
        <header class="masthead">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="text-center text-white">
                            <!-- Page heading-->
                            <h1 class="golden-mb5 mb-5">당신은 사랑받기 위해 태어난 사람</h1>
                            <form class="form-subscribe" id="contactForm" data-sb-form-api-token="API_TOKEN">
                                <!-- Email address input-->
                                <div class="row">
                                    <div class="col">
                                        <input class="form-control form-control-lg" id="" type="text" placeholder="도움말을입력하여주세요  '병원' '약국' '요양원'" data-sb-validations="required,email" />  
                                    </div>
                                    <div class="col-auto"><button class="btn btn-primary btn-lg disabled" id="submitButton" type="button">입력하기</button></div>
                                </div>                               
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Icons Grid-->
        <section class="features-icons bg-light text-center">
            <div class="container golden-back">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><img class="m-auto"src="./resources/icon/K-001.jpg" alt=""></div>
                            <h3><a href="#" class="find">가까운 병·의원 찾기</a></h3>
                            <p class="lead mb-0">주변의 가장 가까운 병원을 추천하여 드립니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><img class="m-auto"src="./resources/icon/K-002.jpg" alt=""></div>
                            <h3><a href="#" class="find">가까운 요양원 둘러보기</a></h3>
                            <p class="lead mb-0">가까운 요양원을 검색하여 보여드립니다.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><img class="m-auto"src="./resources/icon/K-003.jpg" alt=""></div>
                            <h3><a href="#" class="find">가까운 약국찾기</a></h3>
                            <p class="lead mb-0">가장 가까운 약국을 찾아드립니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image Showcases-->
        <section class="showcase">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('./resources/assets/img/bg-showcase-1.jpg')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2>언제나 든든한 親舊 <br>오래된 벗</h2>
                        <p class="lead mb-0">외롭고 힘든 노년생활이 아닌 새로운 친구들을 사귀어보세요. 장난끼가 많은 친구, 웃음기가 많은 친구, 당신의 친구들이 기다리고 있습니다.</p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-lg-6 text-white showcase-img" style="background-image: url('./resources/assets/img/bg-showcase-2.jpg')"></div>
                    <div class="col-lg-6 my-auto showcase-text">
                        <h2>가족들과의 시간 <br>보내기</h2>
                        <p class="lead mb-0">가족 친척 사촌등 과의 즐거운 시간을 보내기 위한 곳 당신만의 가족을 위한 공간 추천.</p>
                    </div>
                </div>
                <div class="row g-0">
                    <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('./resources/assets/img/bg-showcase-3.jpg')"></div>
                    <div class="col-lg-6 order-lg-1 my-auto showcase-text">
                        <h2>인생 2막시작</h2>
                        <p class="lead mb-0">늦었다고요? 늦었다는 마음만 있을뿐 늦은건 없습니다. 당신이 언제나 행복하길 진심으로 바랍니다. </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonials-->
        <section class="testimonials text-center bg-light">
            <div class="container">
                <h2 class="mb-5">언제나 행복하게...</h2>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="./resources/assets/img/testimonials-1.jpg" alt="..." />
                            <h5>봉사활동 체험프로그램</h5>
                            <p class="font-weight-light mb-0">"여러분의 경험과 지식을 나눠주세요"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="./resources/assets/img/testimonials-2.jpg" alt="..." />
                            <h5>친구들과 어울리기</h5>
                            <p class="font-weight-light mb-0">"열심히 일한 당신. 이제는 친구들과 행복한 시간을 보내보세요"</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                            <img class="img-fluid rounded-circle mb-3" src="./resources/assets/img/testimonials-3.jpg" alt="..." />
                            <h5>새로운시작</h5>
                            <p class="font-weight-light mb-0">"무엇이든 하나라도 더 배워가길 희망합니다."</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call to Action-->
        <section class="call-to-action text-white text-center" id="signup">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <h2 class="mb-4">즐기실 준비가 되셨나요?? 함께해요!!</h2>
                        <form class="form-subscribe" id="contactFormFooter" data-sb-form-api-token="API_TOKEN">
                            <!-- Email address input-->
                            <div class="row">
                                <div class="col">
                                    <input class="form-control form-control-lg" id="emailAddressBelow" type="text" placeholder="사는지역을 입력하여주세요" data-sb-validations="" />                                    
                                </div>
                                <div class="col-auto"><button class="btn btn-primary btn-lg disabled" id="submitButton" type="submit">검색</button></div>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item"><a href="#!">About</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Contact</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="#!">Terms of Use</a></li>
                            <li class="list-inline-item">⋅</li>
                            <li class="list-inline-item"><a href="/board/list">Q&A Board</a></li>
                        </ul>
                        <p class="text-muted small mb-4 mb-lg-0">&copy; GodenTown Cpoy All Rights Reserved. Since2022</p>
                    </div>
                    <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item me-4">
                                <a href="#!"><i class="bi-facebook fs-3"></i></a>
                            </li>
                            <li class="list-inline-item me-4">
                                <a href="#!"><i class="bi-twitter fs-3"></i></a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!"><i class="bi-instagram fs-3"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script>        
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>