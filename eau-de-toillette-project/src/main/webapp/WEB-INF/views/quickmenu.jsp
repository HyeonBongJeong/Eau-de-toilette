<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <style>
                * {
                    margin: 0%;
                    padding: 0%;
                    color: #333333;
                    font-family: 'Noto Sans KR', sans-serif;
                }
                
                body html {
                    max-width: 100%;
                    height: 100%;
                    display: block;
                }
                
                a {
                    text-decoration: none;
                }
                
                #scroll {
                    width: 78px;
                    float: right;
                    margin-right: -130px;
                    max-height: 270px;
                    /* margin-top:141px; */
                    border: 1px solid #4C4C4C;
                    text-align: center;
                    /* overflow:hidden; */
                }
                
                #scroll-inner {
                    width: 78px;
                    height: 100px;
                    background-color: yellow;
                }
                
                #scroll-img-con {
                    max-height: 200px;
                    overflow: hidden;
                }
                
                .scroll-up {
                    height: 22px;
                    cursor: pointer;
                }
                
                #scroll-title {
                    height: 16px;
                    font-size: 12px;
                    line-height: 16px;
                    padding-bottom: 6px;
                }
                
                .scroll-img {
                    width: 60px;
                    height: 77px;
                    background-color: white;
                    cursor: pointer;
                }
            </style>
        </head>
        <!-- <script>
            var slideWrapper = document.querySelector('#scroll-img-con');
            var slider = document.querySelector('#scroll-img-con>ul');
            var slides = document.querySelectorAll('.scroll-img');
            var totalSlides = slides.length;
            var sliderWidth = slideWrapper.clientHeight;
            var slideIndex = 0;


            function showSlides(n) {
                slideIndex = n;
                console.log(n);
                if (slideIndex == -1) {
                    slideIndex = totalSlides - 1;
                } else if (slideIndex === totalSlides) {
                    slideIndex = 0;
                }
                var reheight = -(77 * slideIndex) + 'px';
/*                 slider.style.top = -(sliderWidth * slideIndex) + 'px'; */
                $("#scroll-img-con>ul").animate({marginTop: reheight});
                console.log(reheight);
            }


            function plusSlides(n) {
                showSlides(n);
/*                 showSlides(slideIndex += n); */
                //$("#scroll-img-con>ul").animate({marginTop: "77px"});
                console.log(n);
                //console.log(slideIndex);
            }

            function godown(n) {
                $("#scroll-img-con>ul").animate({
                    marginTop: "-77px"
                });
            }

            /* var nextBtn = document.querySelector('#scroll-down');
            var prevBtn = document.querySelector('#scroll-up');
            nextBtn.addEventListener('click', function() {
                plusSlides(1);
            });
            prevBtn.addEventListener('click', function() {
                plusSlides(-1);
            }); */
        </script> -->
        <script>
        $(function(){
        	  $('.scrollbtn').click(function () {
        	    var ih = $(this).index() == 0 ? -77 : 77; //위아래로 움직이는 px 숫자
        	    var obj = $('#scroll-img-con');
        	    obj.animate({ scrollTop:obj.scrollTop() + ih }, 100);
        	  });
        	});
        
        $(function(){
        	  $('.btnQuickToday').css({ cursor: 'pointer' }).click(function () {
        	   var ih = $(this).index() == 0 ? -77 : 77; //위아래로 움직이는 px 숫자
        	   var obj = $('.scroll-img-con');
        	   obj.animate({ scrollTop:obj.scrollTop() + ih }, 100);
        	  });
        	 });

        </script>

        <body>
            <c:if test="${not empty productsessionaddr }">
                <div id="scroll-outer">
                    <div id="scroll" style="right: 100;">
                        <div class="scroll-up btnQuickToday">
                            <i class="fas fa-angle-up"></i>
                        </div>
                        <strong id="scroll-title">최근 본 상품</strong>
                        <div id="scroll-img-con" class="scroll-img-con">
                            <ul>
                                <c:forEach var="vo" items="${ productsessionaddr}" varStatus="s">
                                    <li><img class="scroll-img" src="${productsessionimg[s.index] }" onclick="location.href='productsession?productimg1=${productsessionimg[s.index] }&p_id=${vo }';"></li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="scroll-up btnQuickToday">
                            <i class="fas fa-angle-down"></i>
                        </div>
                    </div>
                </div>
            </c:if>
        </body>

        </html>