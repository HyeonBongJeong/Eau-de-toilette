<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://uicdn.toast.com/chart/latest/toastui-chart.min.css" />
<script src="https://uicdn.toast.com/chart/latest/toastui-chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.0/moment.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style type="text/css">
		#main {
            width: 100%;
            margin: 0 auto;
            height: 100%;
            
        }
        #user-info-back{
            width: 100%; 
            background-color: #f7f7f7;
            padding: 50px 0px 50px 0px;
        }

        #user-infos{
            width: 1050px;
            background-color: white; 
            margin: 0 auto;
            padding: 50px 0px 50px 0px;
            display: flex;
            
        }
        #mypage_section{
            width: 1050px; 
            margin: 0 auto; 
            padding-top: 50px; 
            display: block;
            min-height: 600px;
            max-height: 100%;
            overflow: auto;
        }

        #mypage-side-section{
            float: left;
            width: 200px;
        }
        #mypage-side-menu{
            margin-top: 20px;
        }
        #mypage-side-menus{
            list-style: none;
        }

        .menu{
            background-color: white;
            border : 1px solid #f7f7f7;
            height: 50px;
            font-size: 15px;
            line-height: 50px;
            cursor: pointer;
            
        }
        .menu-on{
            background-color: #f7f7f7;
            border : 1px solid #f7f7f7;
            color :#5f0080;
            font-weight: bold;
            cursor: pointer;
        }
        
        .menu-on > a{

            color :#5f0080;

        }

        #mypage-ques{
            margin-top : 20px; 
            padding-left: 20px; 
            height: 60px; 
            background-color: #f4f4f4; 
            border-radius: 0 100px 100px 0; 
            line-height: 30px;
          
        }
        #mypage-ques-header{
            font-size: 15px;
        }

        #mypage-ques-text{
            font-size: 12px;
        }

        .mypage-personer-info{
        	overflow: hidden;
            width: 810px; 
            float: right;
 			margin-left: 20px;  
 			height: 100%;      
 			display: block;
        }
        
        #realpoint{
        font-size: 25px; 
        color: #5f0080;
        cursor: pointer;
        }
</style>
</head>
<body>
        <div id="user-info-back">
           
            <div id="user-infos">
                	 <div id="chart-area"></div>
            </div>
           
        </div>
        
<script type="text/javascript">
$(document).ready(function() {
	var reg_dates = new Array();
	var reg_counts = new Array();

	function parse(str) {
	    var y = str.substr(0, 4);
	    var m = str.substr(4, 2);
	    var d = str.substr(6, 2);
	    return new Date(y,m-1,d);
	}
/* 	 const data = {
	        categories: [
	          '01/01/2020',
	          '02/01/2020',
	          '03/01/2020',
	          '04/01/2020',
	          '05/01/2020',
	          '06/01/2020',
	          '07/01/2020',
	          '08/01/2020',
	          '09/01/2020',
	          '10/01/2020',
	          '11/01/2020',
	          '12/01/2020',
	        ],
	        series: [
	          {
	            name: 'Seoul',
	            data: [-3.5, -1.1, 4.0, 11.3, 17.5, 21.5, 25.9, 27.2, 24.4, 13.9, 6.6, -0.6],
	          },
	          {
	            name: 'Seattle',
	            data: [3.8, 5.6, 7.0, 9.1, 12.4, 15.3, 17.5, 17.8, 15.0, 10.6, 6.6, 3.7],
	          },
	          {
	            name: 'Sydney',
	            data: [22.1, 22.0, 20.9, 18.3, 15.2, 12.8, 11.8, 13.0, 15.2, 17.6, 19.4, 21.2],
	          },
	          {
	            name: 'Moscow',
	            data: [-10.3, -9.1, -4.1, 4.4, 12.2, 16.3, 18.5, 16.7, 10.9, 4.2, -2.0, -7.5],
	          },
	          {
	            name: 'Jungfrau',
	            data: [-13.2, -13.7, -13.1, -10.3, -6.1, -3.2, 0.0, -0.1, -1.8, -4.5, -9.0, -10.9],
	          },
	        ],
	      };  */
	  






	const el = document.getElementById('chart-area');

	       const data = {
	    			
	    		  categories:[],
	    		 
	    		  series: [
	    		    {
	    		      name: '구매내역 통계',
	    		      data: [],
	    		    },
	    		    
	    		  ],
	    		};

	    $.ajax({
	    	 url : "${pageContext.request.contextPath}/myPageMangeOrderRegAll.do",
	        type : 'POST',
	        dataType : 'json',
	     success : function(datas) {
	    	for(var i = 0; i < datas.regMember.length; i++){
	    	 data.categories.push(moment(parse(datas.regMember[i].ph_date)).format('MM/DD/YYYY'));
	    	 data.series[0].data.push(datas.regMember[i].ph_count);
	    	 
	    			 
	    	}
	    	const chart = toastui.Chart.lineChart({ el, data, options });
	     },
	    });

	console.log(data); 


	const options = {
	  chart: { title: '통계', width: 1000, height: 400 },
	  xAxis: {
	    title: 'Month',
	    pointOnColumn: false,
	    date: {
            format: 'YY/MM',
          },
	  	
	  },
	  yAxis: {
	    title: '수',
	  },
	  
	  legend: {
	      align: 'bottom',
	    },
	 
	};

})


</script> 
</body>
</html>