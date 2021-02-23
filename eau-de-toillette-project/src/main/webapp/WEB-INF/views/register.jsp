<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
            <title>회원가입</title>
            <script src="https://kit.fontawesome.com/2409d81413.js" crossorigin="anonymous"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
            <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
            <link rel="preconnect" href="https://fonts.gstatic.com">
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
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
                
                #reg-big-con {
                    width: 640px;
                    margin: 0 auto;
                }
                
                #reg-head>h3 {
                    padding-top: 64px;
                    height: 40px;
                    font-size: 30px;
                    line-height: 40px;
                    text-align: center;
                }
                
                #reg-sub {
                    padding: 23px 0 10px 0;
                    width: 100%;
                    height: 17px;
                    line-height: 17px;
                    text-align: right;
                    font-size: 12px;
                    color: #666666;
                }
                
                #reg-big-con>ul {
                    list-style: none;
                }
                
                #reg-tlb {
                    width: 100%;
                }
                
                .reg-title {
                    width: 159px;
                    padding: 9px 0px 0px 20px;
                    height: 83px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input {
                    width: 481px;
                    padding: 9px 0px 0px 0px;
                }
                
                .reg-title-1 {
                    width: 159px;
                    padding: 0px 0px 0px 20px;
                    height: 74px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input-1 {
                    width: 481px;
                }
                
                .reg-title-2 {
                    width: 159px;
                    padding: 0px 0px 9px 20px;
                    height: 83px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input-2 {
                    width: 481px;
                    padding: 0px 0px 9px 0px;
                }
                
                .reg-text {
                    outline: none;
                    width: 302px;
                    height: 42px;
                    padding: 0 14px 0 14px;
                    border: 1px solid #ccc;
                    border-radius: 3px;
                }
                
                .reg-text:focus {
                    border: 1px solid #333333;
                }
                
                #reg-btn {
                    cursor: pointer;
                }
                
                .reg-btn {
                    width: 118px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #4C0C70;
                    font-size: 14px;
                    margin-left: 5px;
                    cursor: pointer;
                }
                
                .reg-btn-2 {
                    width: 332px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #4C0C70;
                    font-size: 14px;
                    cursor: pointer;
                }
                
                #reg-search-icon {
                    width: 12px;
                    height: 12px;
                    margin-right: 6px;
                }
                
                .reg-genter-rabel {
                    display: inline-block;
                }
                
                .reg-gender-p {
                    float: left;
                    margin: 0px 52px 0px 12px;
                    font-size: 14px;
                    line-height: 24px;
                }
                
                .reg-circle-1 {
                    border: 1px solid #ccc;
                    background-color: #fff;
                    width: 22px;
                    height: 22px;
                    border-radius: 50%;
                    cursor: pointer;
                    float: left;
                }
                
                .reg-circle-con {
                    float: left;
                }
                
                .reg-circle-2 {
                    background-color: #4C0C70;
                    width: 24px;
                    height: 24px;
                    border-radius: 50%;
                    cursor: pointer;
                    float: left;
                }
                
                .reg-circle-3 {
                    background-color: #fff;
                    width: 10px;
                    height: 10px;
                    border-radius: 50%;
                    cursor: pointer;
                    position: absolute;
                    margin-top: 7px;
                    margin-left: 7px;
                }
                
                .reg-birth {
                    width: 332px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #ccc;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #ccc;
                    font-size: 14px;
                    cursor: pointer;
                }
                
                .reg-birth-text {
                    border: none;
                    outline: none;
                    width: 56px;
                    height: 42px;
                    padding: 0px 14px 0px 14px;
                    text-align: center;
                    float: left;
                }
                
                .reg-blank {
                    width: 22px;
                    height: 42px;
                    float: left;
                    color: #ccc;
                    line-height: 42px;
                    text-align: center;
                    cursor: default;
                }
                
                .reg-guide {
                    width: 100%;
                    margin-bottom: 10px;
                }
                
                .reg-guide>span {
                    display: block;
                    height: 18px;
                    font-size: 12px;
                    line-height: 18px;
                    color: #666666;
                }
                
                .fa-circle {
                    font-size: 2px;
                }
                
                .reg-guide-con {
                    display: none;
                }
                
                #agree-all-con {
                    width: 100%;
                    height: 40px;
                    padding: 12px 0px 4px 0px;
                    box-sizing: border-box;
                }
                
                #agree-all-con>span {
                    margin-left: 12px;
                    color: #4c4c4c;
                    font-size: 18px;
                    line-height: 24px;
                }
                
                #reg-agree-span-1 {
                    height: 17px;
                    font-size: 12px;
                    line-height: 17px;
                    display: block;
                    margin: 0px 0px 10px 36px;
                }
                
                .agree-each {
                    width: 100%;
                    height: 24px;
                    padding: 8px 0px 8px 0px;
                }
                
                .agree-each-1 {
                    width: 100%;
                    height: 24px;
                    padding: 8px 0px 8px 24px;
                }
                
                .reg-agree-title {
                    margin-left: 12px;
                    color: #4c4c4c;
                    font-size: 14px;
                    line-height: 24px;
                    float: left;
                }
                
                .reg-agree-title-2 {
                    color: #999999;
                    font-size: 14px;
                    line-height: 24px;
                    float: left;
                }
                
                #reg-footer {
                    width: 100%;
                    height: 56px;
                    padding: 40px 0pc 120px 0px;
                    display: flex;
                    justify-content: center;
                }
                
                #reg-btn {
                    height: 56px;
                    width: 240px;
                    border: none;
                    outline: none;
                    background-color: #4C0C70;
                    color: #fff;
                    font-size: 16px;
                    border-radius: 3px;
                }
                
                .terms {
                    cursor: pointer;
                    float: right;
                    font-size: 14px;
                    color: #4C0C70;
                    line-height: 24px;
                }
                
                #reg-modal-back {
                    position: fixed;
                    width: 100%;
                    height: 100%;
                    background-color: black;
                    opacity: 0.5;
                    display: none;
                    z-index: 2;
                }
                
                #reg-modal-con {
                    position: fixed;
                    width: 100%;
                    height: 100%;
                    display: none;
                    z-index: 3;
                }
                
                #reg-term-1,
                #reg-term-2 {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    background: #fff;
                    z-index: 4;
                    border-radius: 5px;
                    text-align: center;
                    font-size: 14px;
                    width: 440px;
                    height: 559px;
                    display: none;
                }
                
                .modal-title {
                    height: 73px;
                    box-sizing: border-box;
                    padding: 25px 30px 8px 30px;
                    font-size: 24px;
                    line-height: 40px;
                    text-align: left;
                }
                
                .modal-sub {
                    color: #999999;
                }
                
                .modal-quit {
                    float: right;
                    color: #999999;
                    margin-top: 8px;
                    cursor: pointer;
                }
                
                .modal-content {
                    width: 380px;
                    height: 431px;
                    padding: 0 30px 0 30px;
                    overflow: auto;
                    text-align: left;
                }
                
                .modalbtn {
                    width: 100%;
                    height: 55px;
                    box-sizing: border-box;
                    border: none;
                    border-top: 1px solid #999999;
                    color: #4C0C70;
                    font-size: 16px;
                    line-height: 55px;
                    padding: 0px;
                    background-color: transparent;
                    outline: none;
                    cursor: pointer;
                }
                
                #term-2-tbl {
                    border-collapse: collapse;
                    text-align: center;
                }
                
                #term-2-tbl>tbody>tr>th {
                    font-size: 12px;
                }
            </style>
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
                
                #reg-big-con {
                    width: 640px;
                    margin: 0 auto;
                }
                
                #reg-head>h3 {
                    padding-top: 64px;
                    height: 40px;
                    font-size: 30px;
                    line-height: 40px;
                    text-align: center;
                }
                
                #reg-sub {
                    padding: 23px 0 10px 0;
                    width: 100%;
                    height: 17px;
                    line-height: 17px;
                    text-align: right;
                    font-size: 12px;
                    color: #666666;
                }
                
                #reg-big-con>ul {
                    list-style: none;
                }
                
                #reg-tlb {
                    width: 100%;
                }
                
                .reg-title {
                    width: 159px;
                    padding: 9px 0px 0px 20px;
                    height: 83px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input {
                    width: 481px;
                    padding: 9px 0px 0px 0px;
                }
                
                .reg-title-1 {
                    width: 159px;
                    padding: 0px 0px 0px 20px;
                    height: 74px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input-1 {
                    width: 481px;
                }
                
                .reg-title-2 {
                    width: 159px;
                    padding: 0px 0px 9px 20px;
                    height: 83px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input-2 {
                    width: 481px;
                    padding: 0px 0px 9px 0px;
                }
                
                .reg-text {
                    outline: none;
                    width: 302px;
                    height: 42px;
                    padding: 0 14px 0 14px;
                    border: 1px solid #ccc;
                    border-radius: 3px;
                }
                
                .reg-text:focus {
                    border: 1px solid #333333;
                }
                
                #reg-btn {
                    cursor: pointer;
                }
                
                .reg-btn {
                    width: 118px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #4C0C70;
                    font-size: 14px;
                    margin-left: 5px;
                    cursor: pointer;
                }
                
                .reg-btn-2 {
                    width: 332px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #4C0C70;
                    font-size: 14px;
                    cursor: pointer;
                }
                
                #reg-search-icon {
                    width: 12px;
                    height: 12px;
                    margin-right: 6px;
                }
                
                .reg-genter-rabel {
                    display: inline-block;
                }
                
                .reg-gender-p {
                    float: left;
                    margin: 0px 52px 0px 12px;
                    font-size: 14px;
                    line-height: 24px;
                }
                
                .reg-guide {
                    width: 100%;
                    margin-bottom: 10px;
                }
                
                .reg-guide>span {
                    display: block;
                    height: 18px;
                    font-size: 12px;
                    line-height: 18px;
                    color: #666666;
                }
                
                .fa-circle {
                    font-size: 2px;
                }
                
                .reg-guide-con {
                    display: none;
                }
                
                #agree-all-con {
                    width: 100%;
                    height: 40px;
                    padding: 12px 0px 4px 0px;
                    box-sizing: border-box;
                }
                
                #addrval1 {
                    display: none;
                }
                
                #addr-con {
                    display: none;
                }
                
                #agree-all-con>span {
                    margin-left: 12px;
                    color: #4c4c4c;
                    font-size: 18px;
                    line-height: 24px;
                }
                
                #reg-agree-span-1 {
                    height: 17px;
                    font-size: 12px;
                    line-height: 17px;
                    display: block;
                    margin: 0px 0px 10px 36px;
                }
                
                .agree-each {
                    width: 100%;
                    height: 24px;
                    padding: 8px 0px 8px 0px;
                }
                
                .agree-each-1 {
                    width: 100%;
                    height: 24px;
                    padding: 8px 0px 8px 24px;
                }
                
                .reg-agree-title {
                    margin-left: 12px;
                    color: #4c4c4c;
                    font-size: 14px;
                    line-height: 24px;
                    float: left;
                }
                
                .reg-agree-title-2 {
                    color: #999999;
                    font-size: 14px;
                    line-height: 24px;
                    float: left;
                }
                
                #reg-footer {
                    width: 100%;
                    height: 56px;
                    padding: 40px 0pc 120px 0px;
                    display: flex;
                    justify-content: center;
                }
                
                #reg-btn {
                    height: 56px;
                    width: 240px;
                    border: none;
                    outline: none;
                    background-color: #4C0C70;
                    color: #fff;
                    font-size: 16px;
                    border-radius: 3px;
                }
                
                .terms {
                    cursor: pointer;
                    float: right;
                    font-size: 14px;
                    color: #4C0C70;
                    line-height: 24px;
                }
                
                #reg-modal-back {
                    position: fixed;
                    width: 100%;
                    height: 100%;
                    background-color: black;
                    opacity: 0.5;
                    display: none;
                    z-index: 2;
                }
                
                #reg-modal-con {
                    position: fixed;
                    width: 100%;
                    height: 100%;
                    display: none;
                    z-index: 3;
                }
                
                #reg-term-1,
                #reg-term-2 {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    background: #fff;
                    z-index: 4;
                    border-radius: 5px;
                    text-align: center;
                    font-size: 14px;
                    width: 440px;
                    height: 559px;
                    display: none;
                }
                
                #reg-term-3 {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    background: #fff;
                    z-index: 4;
                    border-radius: 5px;
                    text-align: center;
                    font-size: 14px;
                    width: 440px;
                    height: 257px;
                    display: none;
                }
                
                .modal-title {
                    height: 73px;
                    box-sizing: border-box;
                    padding: 25px 30px 8px 30px;
                    font-size: 24px;
                    line-height: 40px;
                    text-align: left;
                }
                
                .modal-sub {
                    color: #999999;
                }
                
                .modal-quit {
                    float: right;
                    color: #999999;
                    margin-top: 8px;
                    cursor: pointer;
                }
                
                .modal-content {
                    width: 380px;
                    height: 431px;
                    padding: 0 30px 0 30px;
                    overflow: auto;
                    text-align: left;
                }
                
                .modal-content-2 {
                    width: 380px;
                    height: 128px;
                    padding: 0 30px 0 30px;
                    overflow: auto;
                    text-align: left;
                }
                
                .modalbtn {
                    width: 100%;
                    height: 55px;
                    box-sizing: border-box;
                    border: none;
                    border-top: 1px solid #999999;
                    color: #4C0C70;
                    font-size: 16px;
                    line-height: 55px;
                    padding: 0px;
                    background-color: transparent;
                    outline: none;
                    cursor: pointer;
                }
                
                #term-2-tbl,
                #term-3-tbl {
                    border-collapse: collapse;
                    text-align: center;
                }
                
                #term-2-tbl>tbody>tr>th,
                #term-3-tbl>tbody>tr>th {
                    font-size: 12px;
                    padding: 7px 8px 8px 8px;
                }
                
                #term-2-tbl>tbody>tr>td,
                #term-3-tbl>tbody>tr>td {
                    font-size: 11px;
                    padding: 9px 4px 9px 4px;
                }
                
                .terms-alert {
                    margin-top: 20px;
                    font-size: 13px;
                }
            </style>
        </head>
        <script>
            $(function() {
                //$(".reg-circle-con").css("display", "none");
                $("#agree-all-2").css("display", "none");
                $("#agree-1-2").css("display", "none");
                $("#agree-2-2").css("display", "none");
                $("#agree-3-2").css("display", "none");
                $("#agree-7-2").css("display", "none");

                $('input[type=radio][name=m_gender]').change(function() {
                    if (this.value == 'M') {
                        $("#male-1").css("display", "none");
                        $("#male-2").css("dlsplay", "block");
                        $("#female-1").css("display", "block");
                        $("#notcheck-1").css("display", "block");
                        $("#female-2").css("display", "none");
                        $("#notcheck-2").css("display", "none");
                        $("#m_gender").val('M');
                    } else if (this.value == 'F') {
                        $("#male-2").css("dlsplay", "none");
                        $("#male-1").css("display", "block");
                        $("#female-1").css("display", "none");
                        $("#female-2").css("display", "block");
                        $("#notcheck-1").css("display", "block");
                        $("#notcheck-2").css("display", "none");
                        $("#m_gender").val('F');
                    } else if (this.value == 'N') {
                        $("#male-2").css("dlsplay", "none");
                        $("#male-1").css("display", "block");
                        $("#female-1").css("display", "block");
                        $("#female-2").css("display", "none");
                        $("#notcheck-1").css("display", "none");
                        $("#notcheck-2").css("display", "block");
                        $("#m_gender").val('N');
                    }
                });

                $(".reg-birth-text").focus(function() {
                    $(".reg-birth").css("border", "1px solid #666666");
                });
                $(".reg-birth-text").blur(function() {
                    $(".reg-birth").css("border", "1px solid #ccc");
                });

                $("#reg-input-1").focus(function() {
                    $("#reg-guide-con-1").css("display", "table-row");
                });
                $("#reg-input-2").focus(function() {
                    $("#reg-guide-con-2").css("display", "table-row");
                });
                $("#reg-input-3").focus(function() {
                    $("#reg-guide-con-3").css("display", "table-row");
                });

                $('input[type=checkbox][name=agree-all]').change(function() {
                    if ($("#agree-all").is(":checked")) {
                        $("#agree-all-1").css("display", "none");
                        $("#agree-all-2").css("display", "block");
                        $(".nesschkbx").val('Y');
                    } else {
                        $("#agree-all-1").css("display", "block");
                        $("#agree-all-2").css("display", "none");
                        $(".nesschkbx").val('N');

                    }
                });
                $('input[type=checkbox][name=agree]').change(function() {
                    if ($("#agree-1").is(":checked")) {
                        $("#agree-1-1").css("display", "none");
                        $("#agree-1-2").css("display", "block");
                        $("#nesschkbx1").val('Y');
                    } else {
                        $("#agree-1-1").css("display", "block");
                        $("#agree-1-2").css("display", "none");
                        $("#nesschkbx1").val('N');
                    }
                    if ($("#agree-2").is(":checked")) {
                        $("#agree-2-1").css("display", "none");
                        $("#agree-2-2").css("display", "block");
                        $("#nesschkbx2").val('Y');
                    } else {
                        $("#agree-2-1").css("display", "block");
                        $("#agree-2-2").css("display", "none");
                        $("#nesschkbx2").val('N');
                    }
                    if ($("#agree-3").is(":checked")) {
                        $("#agree-3-1").css("display", "none");
                        $("#agree-3-2").css("display", "block");
                    } else {
                        $("#agree-3-1").css("display", "block");
                        $("#agree-3-2").css("display", "none");
                    }
                    /*  if ($("#agree-4").is(":checked")) {
                         $("#agree-4-1").css("display", "none");
                         $("#agree-4-2").css("display", "block");
                     } else {
                         $("#agree-4-1").css("display", "block");
                         $("#agree-4-2").css("display", "none");
                     }
                     if ($("#agree-5").is(":checked")) {
                         $("#agree-5-1").css("display", "none");
                         $("#agree-5-2").css("display", "block");
                     } else {
                         $("#agree-5-1").css("display", "block");
                         $("#agree-5-2").css("display", "none");
                     }
                     if ($("#agree-6").is(":checked")) {
                         $("#agree-6-1").css("display", "none");
                         $("#agree-6-2").css("display", "block");
                     } else {
                         $("#agree-6-1").css("display", "block");
                         $("#agree-6-2").css("display", "none");
                     } */
                    if ($("#agree-7").is(":checked")) {
                        $("#agree-7-1").css("display", "none");
                        $("#agree-7-2").css("display", "block");
                        $("#nesschkbx3").val('Y');
                    } else {
                        $("#agree-7-1").css("display", "block");
                        $("#agree-7-2").css("display", "none");
                        $("#nesschkbx3").val('N');
                    }
                });

                $("#terms-1").on('click', function() {
                    $("#reg-modal-back").css("display", "block");
                    $("#reg-modal-con").css("display", "block");
                    $("#reg-term-1").css("display", "block");
                });
                $("#terms-2").on('click', function() {
                    $("#reg-modal-back").css("display", "block");
                    $("#reg-modal-con").css("display", "block");
                    $("#reg-term-2").css("display", "block");
                });
                $("#terms-3").on('click', function() {
                    $("#reg-modal-back").css("display", "block");
                    $("#reg-modal-con").css("display", "block");
                    $("#reg-term-3").css("display", "block");
                });
            });

            function checkSelectAll() {
                var checkboxes = document.querySelectorAll('input[name="agree"]');
                var checked = document.querySelectorAll('input[name="agree"]:checked');
                var selectAll = document.querySelector('input[name="agree-all"]');
                if (checkboxes.length === checked.length) {
                    selectAll.checked = true;
                    $("#agree-all-1").css("display", "none");
                    $("#agree-all-2").css("display", "block");
                } else {
                    selectAll.checked = false;
                    $("#agree-all-1").css("display", "block");
                    $("#agree-all-2").css("display", "none");
                }
            }

            function selectAll(selectAll) {
                var checkboxes = document.getElementsByName('agree');
                checkboxes.forEach((checkbox) => {
                    checkbox.checked = selectAll.checked;
                });
                if (selectAll.checked == true) {
                    $(".agree").css("display", "none");
                    $(".disagree").css("display", "block");
                } else if (selectAll.checked == false) {
                    $(".agree").css("display", "block");
                    $(".disagree").css("display", "none");
                }
            }

            function regModalCancel() {
                $("#reg-modal-back").css("display", "none");
                $("#reg-modal-con").css("display", "none");
                $("#reg-term-1").css("display", "none");
                $("#reg-term-2").css("display", "none");
                $("#reg-term-3").css("display", "none");
            }
        </script>
        <script>
            //모든 공백 체크 정규식 
            var empJ = /\s/g;
            //아이디 정규식 
            var idJ = /^[a-z0-9]{6,12}$/;
            // 비밀번호 정규식 
            var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,20}$/; //영문,숫자

            var check2 = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{10,20}$/; //영문,특수문자

            var check3 = /^(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{10,20}$/; //특수문자, 숫자
            // 이름 정규식 
            var nameJ = /^[가-힣]{2,4}$/;
            // 이메일 검사 정규식 
            var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            // 휴대폰 번호 정규식
            var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
            //^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/ 
            var yearJ = /^(19[0-9][0-9]|20\d{2})$/;
            var monthJ = /^(0[0-9]|1[0-2])$/;
            var dayJ = /^(0[1-9]|[1-2][0-9]|3[0-1])$/;
            var address = $('#m_addr3');

            $(document).ready(function() {
                var address = $('#m_addr3');

                // 정규식 체크
                // 1. id
                $("#idbtn").on("click", function() {
                    if (idJ.test($('#reg-input-1').val()) != true) {
                        alert("아이디 형식에 맞추어 입력해주세요.");
                    } else if (idJ.test($('#reg-input-1').val()) == true) {

                        var m_id = $('#reg-input-1').val();
                        $.ajax({
                            url: '${pageContext.request.contextPath}/idCheck',
                            method: 'POST',
                            data: {
                                m_id: m_id
                            },
                            dataType: 'json',
                            success: function(data) {
                                console.log("결과" + data);
                                if (data == 0) {
                                    $('#reg-span-2').html('<i class="fas fa-check"></i>&nbsp;&nbsp;&nbsp;아이디 중복확인');
                                    $('#reg-span-2').css('color', 'green');
                                    alert("사용가능한 아이디입니다.");
                                    $("#nessbtn1").val('Y');
                                    $("#m_id").val(m_id);
                                } else {
                                    $('#reg-span-2').html('<i class="fas fa-times"></i>&nbsp;&nbsp;&nbsp;아이디 중복확인');
                                    $('#reg-span-2').css('color', 'red');
                                    alert("다른 아이디를 사용해주세요.");
                                }
                            }
                        });
                    }
                });
                $("#reg-input-1").on("propertychange change keyup paste input", function() {
                    if (idJ.test($('#reg-input-1').val()) != true) {
                        $('#reg-span-1').html('<i class="fas fa-times"></i>&nbsp;&nbsp;&nbsp;6자 이상의 영문 혹은 영문과 숫자를 조합');
                        $('#reg-span-1').css('color', 'red');
                    } else if (idJ.test($('#reg-input-1').val()) == true) {
                        $('#reg-span-1').html('<i class="fas fa-check"></i>&nbsp;&nbsp;&nbsp;6자 이상의 영문 혹은 영문과 숫자를 조합');
                        $('#reg-span-1').css('color', 'green');

                    }
                });

                // 2. password
                $("#reg-input-2").on("propertychange change keyup paste input", function() {
                    if ($('#reg-input-2').val().length < 10) {
                        $('#reg-span-3').html('<i class="fas fa-times"></i>&nbsp;&nbsp;&nbsp;10자 이상 입력');
                        $('#reg-span-3').css('color', 'red');
                    } else if ($('#reg-input-2').val().length > 9) {
                        $('#reg-span-3').html('<i class="fas fa-check"></i>&nbsp;&nbsp;&nbsp;10자 이상 입력');
                        $('#reg-span-3').css('color', 'green');
                    }
                    if (check1.test($('#reg-input-2').val()) != true && check2.test($('#reg-input-2').val()) != true && check3.test($('#reg-input-2').val()) != true) {
                        $('#reg-span-4').html('<i class="fas fa-times"></i>&nbsp;&nbsp;&nbsp;영문/숫자/특수문자(!@#$%^&+=)만 허용하며, 2개 이상 조합');
                        $('#reg-span-4').css('color', 'red');
                    } else if (check1.test($('#reg-input-2').val()) == true || check2.test($('#reg-input-2').val()) == true || check3.test($('#reg-input-2').val()) == true) {
                        $('#reg-span-4').html('<i class="fas fa-check"></i>&nbsp;&nbsp;&nbsp;영문/숫자/특수문자(!@#$%^&+=)만 허용하며, 2개 이상 조합');
                        $('#reg-span-4').css('color', 'green');
                    }
                    if (/(\w)\1\1/.test($('#reg-input-2').val())) {
                        $('#reg-span-5').html('<i class="fas fa-times"></i>&nbsp;&nbsp;&nbsp;동일한 숫자 3개 이상 연속 사용 불가');
                        $('#reg-span-5').css('color', 'red');
                    } else {
                        $('#reg-span-5').html('<i class="fas fa-check"></i>&nbsp;&nbsp;&nbsp;동일한 숫자 3개 이상 연속 사용 불가');
                        $('#reg-span-5').css('color', 'green');
                    }

                });

                // 3. passwordcheck
                $("#reg-input-3").on("propertychange change keyup paste input", function() {
                    if ($('#reg-input-2').val() == $('#reg-input-3').val()) {
                        $('#reg-span-6').html('<i class="fas fa-check"></i>&nbsp;&nbsp;&nbsp;동일한 비밀번호를 입력해주세요');
                        $('#reg-span-6').css('color', 'green');
                        $("#m_password").val($('#reg-input-3').val());
                    } else {
                        $('#reg-span-6').html('<i class="fas fa-times"></i>&nbsp;&nbsp;&nbsp;동일한 비밀번호를 입력해주세요');
                        $('#reg-span-6').css('color', 'red');
                    }
                });

                // 4. email
                $("#emailbtn").on("click", function() {
                    if ($("#emailtext").val() == '') {
                        alert("이메일을 입력해주세요");
                    } else if ($("#emailtext").val() != '') {
                        if (mailJ.test($("#emailtext").val()) != true) {
                            alert("이메일 형식에 맞추어 입력해주세요");
                        } else if (mailJ.test($("#emailtext").val()) == true) {
                            var m_email = $('#emailtext').val();
                            $.ajax({
                                url: '${pageContext.request.contextPath}/emailCheck',
                                method: 'POST',
                                data: {
                                    m_email: m_email
                                },
                                dataType: 'json',
                                success: function(data) {
                                    console.log("결과" + data);
                                    if (data == 0) {
                                        alert("사용가능한 이메일입니다.");
                                        $("#nessbtn2").val('Y');
                                        $("#m_email").val(m_email);
                                    } else {
                                        alert("다른 이메일을 사용해주세요.");
                                    }
                                }
                            });
                        }
                    }
                });


                // 5. phone number
                $("#phonebtn").on("click", function() {
                    if ($("#phonetext").val() == '') {
                        alert("전화번호를 입력해주세요");
                    } else if ($("#phonetext").val() != '') {
                        if (phoneJ.test($("#phonetext").val()) != true) {
                            alert("전화번호 형식에 맞추어 입력해주세요");
                        } else if (phoneJ.test($("#phonetext").val()) == true) {
                            $("#m_phone").val($("#phonetext").val());

                            $("#phonebtn").on('click', function() {

                                var con_test = confirm("해당번호로 인증문자를 발송하시겠습니까?"); /* 문자를 보낼껀지 물어본다 */
                                var athor_text;
                                if (con_test == true) {
                                    var new_phone = $("#phonetext").val();
                                    var timer = null;
                                    var isRunning = false;
                                    var number = Math.floor(Math.random() * 100000) + 100000;
                                    if (number > 100000) {
                                        number = number - 10000;
                                    }
                                    if (!athor_text) {
                                        athor_text = number;
                                    } else {
                                        athor_text = '';
                                        athor_text = number;
                                    }
                                    $.ajax({
                                        url: "${pageContext.request.contextPath}/myPhoneAthor.do",
                                        type: "post",
                                        data: {
                                            to: new_phone,
                                            text: athor_text
                                        },
                                        success: function() {
                                            alert("해당 휴대폰으로 인증번호를 발송했습니다");
                                            console.log(athor_text);
                                            $("#phonetext").attr('readonly', true);
                                            $("#phonetext").css("background-color", "#FAFAFA");
                                            $("#phonebtn").attr('disabled', true);
                                            $("#phonebtn").css("color", "#DDDDDD");
                                            $("#phonebtn").css("border", "1px solid #DDDDDD");
                                            $("#phonetext-chk").attr('readonly', false);
                                            $("#phonetext-chk").css("background-color", "#fff");
                                            $("#chk_num_btn").attr('disabled', false);
                                            $("#chk_num_btn").css("color", "#4C0C70");
                                            $("#chk_num_btn").css("border", "1px solid #4C0C70");
                                            $("#nessbtn3").val('N');
                                            $("#reg-phone-chk").css("display", "table-row");
                                            $("#chk_num_btn").on('click', function() {
                                                if ($("#phonetext-chk").val() == athor_text) {
                                                    alert("휴대폰 인증이 완료되었습니다.");
                                                    $("#phonetext-chk").attr('readonly', true);
                                                    $("#phonetext-chk").css("background-color", "#FAFAFA");
                                                    $("#chk_num_btn").attr('disabled', true);
                                                    $("#chk_num_btn").css("color", "#DDDDDD");
                                                    $("#chk_num_btn").css("border", "1px solid #DDDDDD");
                                                    $("#phonetext").attr('readonly', false);
                                                    $("#phonetext").css("background-color", "#fff");
                                                    $("#phonebtn").attr('disabled', false);
                                                    $("#phonebtn").css("color", "#4C0C70");
                                                    $("#phonebtn").css("border", "1px solid #4C0C70");
                                                    $("#nessbtn3").val('Y');
                                                } else {
                                                    alert("정확한 인증번호를 입력해주세요.");
                                                    $("#phonetext").attr('readonly', false);
                                                    $("#phonetext").css("background-color", "#fff");
                                                    $("#phonebtn").attr('disabled', false);
                                                    $("#phonebtn").css("color", "#4C0C70");
                                                    $("#phonebtn").css("border", "1px solid #4C0C70");
                                                    $("#phonetext-chk").val('');
                                                }
                                            });
                                        },
                                        error: function() {

                                        },

                                    });
                                } else if (con_test == false) {

                                }
                            });
                        }
                    }
                });

                // 6. birth
                var birth_arr = new Array(3);
                $("#yeartext").on("blur", function() {
                    if (yearJ.test($("#yeartext").val()) != true) {} else {
                        birth_arr[0] = $("#yeartext").val();
                        if (birth_arr[0] != null && birth_arr[1] != null && birth_arr[2] != null) {
                            $("#m_birth").val(birth_arr[0] + '/' + birth_arr[1] + '/' + birth_arr[2]);
                        }
                    }
                });
                $("#monthtext").on("blur", function() {
                    if (monthJ.test($("#monthtext").val()) != true) {} else {
                        birth_arr[1] = $("#monthtext").val();
                        if (birth_arr[0] != null && birth_arr[1] != null && birth_arr[2] != null) {
                            $("#m_birth").val(birth_arr[0] + '/' + birth_arr[1] + '/' + birth_arr[2]);
                        }
                    }
                });
                $("#daytext").on("blur", function() {
                    if (dayJ.test($("#daytext").val()) != true) {} else {
                        birth_arr[2] = $("#daytext").val();
                        if (birth_arr[0] != null && birth_arr[1] != null && birth_arr[2] != null) {
                            $("#m_birth").val(birth_arr[0] + '/' + birth_arr[1] + '/' + birth_arr[2]);
                        }
                    }
                });

                // 7. address
                $("#addrval2").on("propertychange change keyup paste input", function() {
                    var addrval1 = $("#addrval1").val();
                    var addrval2 = $("#addrval2").val();
                    $("#m_addr").val(addrval1 + ' ' + addrval2);
                });

                // 8. name
                $("#nametext").on("blur", function() {
                    if ($("#nametext").val().length > 0) {
                        if (nameJ.test($("#nametext").val()) != true) {
                            alert("한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)");
                            $("#nametext").val('');
                        } else if (nameJ.test($("#nametext").val()) == true) {
                            $("#m_name").val($("#nametext").val());
                        }
                    }
                });

                $("#reg-form").on('submit', function() {
                    var reg_Arr = new Array(13).fill(false);
                    if ($("#m_id").val() == '') {
                        alert('아이디 중복확인을 해주세요.');
                        reg_Arr[0] = false;
                        return false;
                    } else {
                        reg_Arr[0] = true;
                    }
                    if ($("#m_password").val() == '') {
                        alert('비밀번호 형식에 맞추어 입력해주세요.');
                        reg_Arr[1] = false;
                        return false;
                    } else {
                        reg_Arr[1] = true;
                    }
                    if ($("#m_name").val() == '') {
                        alert('이름을 입력해주세요.');
                        reg_Arr[2] = false;
                        return false;
                    } else {
                        reg_Arr[2] = true;
                    }
                    if ($("#m_email").val() == '') {
                        alert('이메일 중복확인을 해주세요.');
                        reg_Arr[3] = false;
                        return false;
                    } else {
                        reg_Arr[3] = true;
                    }
                    if ($("#m_phone").val() == '') {
                        alert('휴대폰 번호 인증을 해주세요.');
                        reg_Arr[4] = false;
                        return false;
                    } else {
                        reg_Arr[4] = true;
                    }
                    if ($("#nessbtn4").val() == 'N') {
                        alert('주소 검색을 해주세요.');
                        reg_Arr[5] = false;
                        return false;
                    } else {
                        reg_Arr[5] = true;
                    }
                    if ($("#nessbtn1").val() == 'N') {
                        alert('아이디 중복확인을 해주세요.');
                        reg_Arr[6] = false;
                        return false;
                    } else {
                        reg_Arr[6] = true;
                    }
                    if ($("#nessbtn2").val() == 'N') {
                        alert('이메일 중복확인을 해주세요.');
                        reg_Arr[7] = false;
                        return false;
                    } else {
                        reg_Arr[7] = true;
                    }
                    if ($("#nessbtn3").val() == 'N') {
                        alert('휴대폰 번호 인증을 해주세요.');
                        reg_Arr[8] = false;
                        return false;
                    } else {
                        reg_Arr[8] = true;
                    }
                    if ($("#m_addr").val() == null) {
                        alert('주소를 입력해주세요.');
                        reg_Arr[9] = false;
                        return false;
                    } else {
                        reg_Arr[9] = true;
                    }

                    if ($("#nesschkbx1").val() == 'N') {
                        alert('필수항목을 체크해주세요');
                        reg_Arr[10] = false;
                        return false;
                    } else {
                        reg_Arr[10] = true;
                    }
                    if ($("#nesschkbx2").val() == 'N') {
                        alert('필수항목을 체크해주세요');
                        reg_Arr[11] = false;
                        return false;
                    } else {
                        reg_Arr[11] = true;
                    }
                    if ($("#nesschkbx3").val() == 'N') {
                        alert('필수항목을 체크해주세요');
                        reg_Arr[12] = false;
                        return false;
                    } else {
                        reg_Arr[12] = true;
                    }

                    //전체 유효성 검사
                    var validAll = true;
                    for (var i = 0; i < reg_Arr.length; i++) {
                        if (reg_Arr[i] == false) {
                            validAll = false;
                        }
                    }
                    if (validAll == true) { // 유효성 모두 통과 
                        alert('회원가입을 완료하였습니다.');
                    } else {
                        alert('정보를 다시 확인하세요.')
                    }

                });
            });

            function execPostCode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        var fullRoadAddr = data.roadAddress; // 도로명 주소 변수 
                        var extraRoadAddr = ''; // 도로명 조합형 주소 변수 
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraRoadAddr += data.bname;
                        }
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        if (extraRoadAddr !== '') {
                            extraRoadAddr = ' (' + extraRoadAddr + ')';
                        }
                        if (fullRoadAddr !== '') {
                            fullRoadAddr += extraRoadAddr;
                        }
                        console.log(data.zonecode);
                        console.log(fullRoadAddr);
                        $("#addrval1").css("display", "block");
                        $("#addr-con").css("display", "table-row");
                        $("#addr-search-btn").css("display", "none");
                        //$("[name=m_addr1]").val(data.zonecode);
                        $("[name=m_addr1]").val(fullRoadAddr);
                        //document.getElementById('m_addr1').value = data.zonecode; //5자리 새우편번호 사용 
                        document.getElementById('addrval1').value = fullRoadAddr;
                        $("#nessbtn4").val('Y');
                        $("#m_addr").val(fullRoadAddr);
                        $("#addrval2").val('');
                    }
                }).open();
            }
        </script>

        <body>
            <div id="reg-modal-back"></div>
            <div id="reg-modal-con">
                <div id="reg-term-1">
                    <h4 class="modal-title">이용약관&nbsp;<span class="modal-sub">(필수)</span><i class="fas fa-times modal-quit" onclick="regModalCancel();"></i></h4>
                    <div class="modal-content">
                        제1조(목적) 이 약관은 오 드 뚜왈렛 회사(전자상거래 사업자)가 운영하는 오 드 뚜왈렛 사이버 몰(이하 "오 드 뚜왈렛"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.
                        <br>   ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
                        <br>
                        <br> 제2조(정의)
                        <br>   ① "오 드 뚜왈렛"이란 오 드 뚜왈렛 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
                        <br>   ② “이용자”란 "오 드 뚜왈렛"에 접속하여 이 약관에 따라 "오 드 뚜왈렛"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
                        <br>   ③ ‘회원’이라 함은 "오 드 뚜왈렛"에 회원등록을 한 자로서, 계속적으로 "오 드 뚜왈렛"이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
                        <br>     ④ ‘비회원’이라 함은 회원에 가입하지 않고 "오 드 뚜왈렛"이 제공하는 서비스를 이용하는 자를 말합니다.
                        <br>
                        <br> 제3조 (약관 등의 명시와 설명 및 개정)
                        <br>   ① "오 드 뚜왈렛"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
                        <br>   ② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
                        <br>     ③ "오 드 뚜왈렛"은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                        <br>   ④ "오 드 뚜왈렛"이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.  이 경우 "오 드 뚜왈렛"은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
                        <br>     ⑤ "오 드 뚜왈렛"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "오 드 뚜왈렛"에 송신하여 "오 드 뚜왈렛"의 동의를 받은 경우에는 개정약관 조항이
                        적용됩니다.
                        <br>   ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
                        <br>
                        <br> 제4조(서비스의 제공 및 변경)
                        <br>   ① "오 드 뚜왈렛"은 다음과 같은 업무를 수행합니다.
                        <br>     1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
                        <br>     2. 구매계약이 체결된 재화 또는 용역의 배송
                        <br>     3. 기타 "오 드 뚜왈렛"이 정하는 업무
                        <br>   ② "오 드 뚜왈렛"은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
                        <br>   ③ "오 드 뚜왈렛"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
                        <br>   ④ 전항의 경우 "오 드 뚜왈렛"은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "오 드 뚜왈렛"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
                        <br>
                        <br>   제5조(서비스의 중단)
                        <br>   ① "오 드 뚜왈렛"은 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
                        <br>   ② "오 드 뚜왈렛"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "오 드 뚜왈렛"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
                        <br>   ③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "오 드 뚜왈렛"은 제8조에 정한 방법으로 이용자에게 통지하고 당초 "오 드 뚜왈렛"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "오 드 뚜왈렛"이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "오 드 뚜왈렛"에서 통용되는 통화가치에 상응하는 현물
                        또는 현금으로 이용자에게 지급합니다.
                        <br>
                        <br> 제6조(회원가입)
                        <br>   ① 이용자는 "오 드 뚜왈렛"이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
                        <br>   ② "오 드 뚜왈렛"은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
                        <br>     1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "오 드 뚜왈렛"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
                        <br>     2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
                        <br>     3. 기타 회원으로 등록하는 것이 "오 드 뚜왈렛"의 기술상 현저히 지장이 있다고 판단되는 경우
                        <br>   ③ 회원가입계약의 성립 시기는 "오 드 뚜왈렛"의 승낙이 회원에게 도달한 시점으로 합니다.
                        <br>   ④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 "오 드 뚜왈렛"에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.
                        <br>
                        <br> 제7조(회원 탈퇴 및 자격 상실 등)
                        <br>   ① 회원은 "오 드 뚜왈렛"에 언제든지 탈퇴를 요청할 수 있으며 "오 드 뚜왈렛"은 즉시 회원탈퇴를 처리합니다.
                        <br>   ② 회원이 다음 각 호의 사유에 해당하는 경우, "오 드 뚜왈렛"은 회원자격을 제한 및 정지시킬 수 있습니다.
                        <br>     1. 가입 신청 시에 허위 내용을 등록한 경우
                        <br>     2. "오 드 뚜왈렛"을 이용하여 구입한 재화 등의 대금, 기타 "오 드 뚜왈렛"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
                        <br>     3. 다른 사람의 "오 드 뚜왈렛" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
                        <br>     4. "오 드 뚜왈렛"을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
                        <br>   ③ "오 드 뚜왈렛"이 회원 자격을 제한․정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "오 드 뚜왈렛"은 회원자격을 상실시킬 수 있습니다.
                        <br>   ④ "오 드 뚜왈렛"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
                        <br>
                        <br> 제8조(회원에 대한 통지)
                        <br>   ① "오 드 뚜왈렛"이 회원에 대한 통지를 하는 경우, 회원이 "오 드 뚜왈렛"과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.
                        <br>   ② "오 드 뚜왈렛"은 불특정다수 회원에 대한 통지의 경우 1주일이상 "오 드 뚜왈렛" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.
                        <br>
                        <br> 제9조(구매신청 및 개인정보 제공 동의 등)
                        <br>   ① "오 드 뚜왈렛"이용자는 "오 드 뚜왈렛"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "오 드 뚜왈렛"은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. <br>       1. 재화 등의 검색 및 선택<br>       2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br>       3. 약관내용,
                        청약철회권이 제한되는 서비스, 배송료․설치비 등의 비용부담과 관련한 내용에 대한 확인<br>       4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시
                        <br>          (예, 마우스 클릭)<br>       5. 재화등의 구매신청 및 이에 관한 확인 또는 "오 드 뚜왈렛"의 확인에 대한 동의<br>       6. 결제방법의 선택<br>     ② "오 드 뚜왈렛"이 제3자에게 구매자 개인정보를 제공할 필요가 있는 경우 1) 개인정보를 제공받는 자, 2)개인정보를 제공받는 자의 개인정보 이용목적, 3) 제공하는 개인정보의 항목, 4) 개인정보를
                        제공받는 자의 개인정보 보유 및 이용기간을 구매자에게 알리고 동의를 받아야 합니다. (동의를 받은 사항이 변경되는 경우에도 같습니다.)
                        <br>     ③ "오 드 뚜왈렛"이 제3자에게 구매자의 개인정보를 취급할 수 있도록 업무를 위탁하는 경우에는 1) 개인정보 취급위탁을 받는 자, 2) 개인정보 취급위탁을 하는 업무의 내용을 구매자에게 알리고 동의를 받아야 합니다. (동의를 받은 사항이 변경되는 경우에도 같습니다.) 다만, 서비스제공에 관한 계약이행을 위해 필요하고 구매자의 편의증진과 관련된 경우에는 「정보통신망 이용촉진 및 정보보호
                        등에 관한 법률」에서 정하고 있는 방법으로 개인정보 취급방침을 통해 알림으로써 고지절차와 동의절차를 거치지 않아도 됩니다.
                        <br>
                        <br>   제10조 (계약의 성립)
                        <br>   ①  "오 드 뚜왈렛"은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
                        <br>     1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br>     2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
                        <br>     3. 기타 구매신청에 승낙하는 것이 "오 드 뚜왈렛" 기술상 현저히 지장이 있다고 판단하는 경우<br>     ② "오 드 뚜왈렛"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
                        <br>   ③ "오 드 뚜왈렛"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.
                        <br>
                        <br> 제11조(지급방법)
                        <br> "오 드 뚜왈렛"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, "오 드 뚜왈렛"은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도  추가하여 징수할 수 없습니다.      <br> 1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체
                        <br> 2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
                        <br> 3. 온라인무통장입금    <br> 4. 전자화폐에 의한 결제    <br> 5. 수령 시 대금지급  <br>   6. 마일리지 등 "오 드 뚜왈렛"이 지급한 포인트에 의한 결제  <br>   7. "오 드 뚜왈렛"과 계약을 맺었거나 "오 드 뚜왈렛"이 인정한 상품권에 의한 결제   <br>     8. 기타 전자적 지급 방법에 의한 대금 지급 등 <br>
                        <br>   제12조(수신확인통지․구매신청 변경 및 취소)   <br>   ① "오 드 뚜왈렛"은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다. <br>     ② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "오 드 뚜왈렛"은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라
                        처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.  <br>
                        <br> 제13조(재화 등의 공급)   <br>   ① 오 드 뚜왈렛은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, 오 드 뚜왈렛이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다.
                         이때 오 드 뚜왈렛은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.  <br>   ② 오 드 뚜왈렛은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 오 드 뚜왈렛이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 오 드 뚜왈렛이 고의․과실이 없음을 입증한 경우에는 그러하지
                        아니합니다.
                        <br>
                        <br>   제14조(환급)<br> 오 드 뚜왈렛은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. <br>
                        <br>   제15조(청약철회 등)   <br>   ① 오 드 뚜왈렛과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에
                        관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.  <br>   ② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.    <br>   1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
                        <br>   2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우  <br>   3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우   <br>   4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우   <br>   ③ 제2항제2호 내지 제4호의 경우에 오 드 뚜왈렛이 사전에 청약철회 등이 제한되는
                        사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.  <br>   ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.
                        <br>
                        <br> 제16조(청약철회 등의 효과)  <br>   ① 오 드 뚜왈렛은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 오 드 뚜왈렛이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.  <br>   ② 오 드
                        뚜왈렛은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.
                        <br>   ③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. 오 드 뚜왈렛은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 오 드 뚜왈렛이 부담합니다.     <br> ④ 이용자가 재화 등을 제공받을 때 발송비를
                        부담한 경우에 오 드 뚜왈렛은 청약철회 시 그 비용을  누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.   <br>
                        <br> 제17조(개인정보보호)     <br> ① 오 드 뚜왈렛은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.
                        <br> ② 오 드 뚜왈렛은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.     <br> ③ 오 드 뚜왈렛은 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다.     <br> ④ 오 드 뚜왈렛은 수집된
                        개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.     <br> ⑤ 오 드 뚜왈렛이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처),
                        정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.     <br> ⑥ 이용자는 언제든지 오 드 뚜왈렛이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 오
                        드 뚜왈렛은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 오 드 뚜왈렛은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다. <br> ⑦ 오 드 뚜왈렛은 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를  최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로
                        인한 이용자의 손해에 대하여 모든 책임을 집니다.     <br> ⑧ 오 드 뚜왈렛 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.     <br> ⑨ 오 드 뚜왈렛은 개인정보의 수집·이용·제공에 관한 동의 란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는
                        서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.
                        <br>
                        <br> 제18조(오 드 뚜왈렛의 의무)   <br> ① 오 드 뚜왈렛은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화․용역을 제공하는데 최선을 다하여야 합니다.     <br> ② 오 드 뚜왈렛은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.
                        <br> ③ 오 드 뚜왈렛이 상품이나 용역에 대하여 「표시․광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시․광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.     <br> ④ 오 드 뚜왈렛은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.   <br>
                        <br> 제19조(회원의 ID 및 비밀번호에 대한 의무)     <br> ① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.     <br> ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.     <br> ③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 오 드 뚜왈렛에 통보하고 오 드 뚜왈렛의 안내가
                        있는 경우에는 그에 따라야 합니다.   <br>
                        <br> 제20조(이용자의 의무) 이용자는 다음 행위를 하여서는 안 됩니다.       <br> 1. 신청 또는 변경시 허위 내용의 등록     <br> 2. 타인의 정보 도용     <br> 3. 오 드 뚜왈렛에 게시된 정보의 변경     <br> 4. 오 드 뚜왈렛이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
                        <br> 5. 오 드 뚜왈렛 기타 제3자의 저작권 등 지적재산권에 대한 침해     <br> 6. 오 드 뚜왈렛 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위     <br> 7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위   <br>
                        <br> 제21조(연결오 드 뚜왈렛과 피연결오 드 뚜왈렛 간의 관계)     <br> ① 상위 오 드 뚜왈렛과 하위 오 드 뚜왈렛이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 오 드 뚜왈렛(웹 사이트)이라고 하고 후자를 피연결 오 드 뚜왈렛(웹사이트)이라고 합니다.
                        <br> ② 연결오 드 뚜왈렛은 피연결오 드 뚜왈렛이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결오 드 뚜왈렛의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.
                        <br>
                        <br> 제22조(저작권의 귀속 및 이용제한)     <br> ① 오 드 뚜왈렛이 작성한 저작물에 대한 저작권 기타 지적재산권은 오 드 뚜왈렛에 귀속합니다.     <br> ② 이용자는 오 드 뚜왈렛을 이용함으로써 얻은 정보 중 오 드 뚜왈렛에게 지적재산권이 귀속된 정보를 오 드 뚜왈렛의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는
                        안됩니다.
                        <br> ③ 오 드 뚜왈렛은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.   <br>
                        <br> 제23조(분쟁해결)     <br> ① 오 드 뚜왈렛은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치․운영합니다.     <br> ② 오 드 뚜왈렛은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.     <br> ③ 오
                        드 뚜왈렛과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.   <br>
                        <br> 제24조(재판권 및 준거법)     <br> ① 오 드 뚜왈렛과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.     <br> ② 오 드 뚜왈렛과 이용자 간에 제기된
                        전자상거래 소송에는 한국법을 적용합니다.

                    </div>
                    <input type="button" class="modalbtn" value="확인" onclick="regModalCancel();">
                </div>
                <div id="reg-term-2">
                    <h4 class="modal-title">개인정보 수집 이용 동의&nbsp;<span class="modal-sub">(필수)</span><i class="fas fa-times modal-quit" onclick="regModalCancel();"></i></h4>
                    <div class="modal-content">
                        <table id="term-2-tbl" border="1px solid #999999;">
                            <tr>
                                <th style="width:195px;">수집 목적</th>
                                <th style="width:79px;">수집 항목</th>
                                <th style="width:99px;">보유 기간</th>
                            </tr>
                            <tr>
                                <td>이용자 식별 및 본인여부</td>
                                <td rowspan="4">이름, 아이디, 비밀번호, 휴대폰 번호, 이메일, 주소</td>
                                <td rowspan="4">회원 탈퇴 즉시 파기<br>부정이용 방지를 위하여 30일 동안 보관(아이디, 휴대폰 번호) 후 파기</td>
                            </tr>
                            <tr>
                                <td>거점 기반 서비스 제공</td>
                            </tr>
                            <tr>
                                <td>계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의 고객 고충 정리</td>
                            </tr>
                            <tr>
                                <td>부정 이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행</td>
                            </tr>
                            <tr>
                                <td>서비스방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
                                <td>서비스 이용기록, IP주소, 쿠키, MAC 주소, 모바일 기기정보(광고식별자, OS/앱 버전)</td>
                                <td>회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
                            </tr>
                        </table>
                        <p class="terms-alert">
                            서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.
                        </p>
                    </div>
                    <input type="button" class="modalbtn" value="확인" onclick="regModalCancel();">
                </div>
                <div id="reg-term-3">
                    <h4 class="modal-title">개인정보 수집 이용 동의&nbsp;<span class="modal-sub">(선택)</span><i class="fas fa-times modal-quit" onclick="regModalCancel();"></i></h4>
                    <div class="modal-content-2">
                        <table id="term-3-tbl" border="1px solid #999999;">
                            <tr>
                                <th style="width:195px;">수집 목적</th>
                                <th style="width:79px;">수집 항목</th>
                                <th style="width:99px;">보유 기간</th>
                            </tr>
                            <tr>
                                <td>맞춤형 회원 서비스 제공</td>
                                <td>성별, 생년월일</td>
                                <td>회원 탈퇴 즉시 파기</td>
                            </tr>
                        </table>
                        <p class="terms-alert">
                            동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.
                        </p>
                    </div>
                    <input type="button" class="modalbtn" value="확인" onclick="regModalCancel();">
                </div>
            </div>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="reg-big-con">
                <div id="reg-head">
                    <h3>회원가입</h3>
                    <p id="reg-sub">* 필수입력사항</p>
                </div>
                <table id="reg-tlb" style="border-top: 2px solid #333333;">
                    <tr>
                        <td class="reg-title">아이디*</td>
                        <td class="reg-input">
                            <input type="text" class="reg-text" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" id="reg-input-1" required>
                            <input type="button" class="reg-btn" value="중복확인" id="idbtn" required>
                        </td>
                    </tr>
                    <tr class="reg-guide-con" id="reg-guide-con-1">
                        <td class="reg-title-s"></td>
                        <td class="reg-input-s">
                            <p class="reg-guide">
                                <span id="reg-span-1"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;6자 이상의 영문 혹은
                                    영문과
                                    숫자를 조합</span>
                                <span id="reg-span-2"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;아이디 중복확인</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">비밀번호*</td>
                        <td class="reg-input-1">
                            <input type="password" class="reg-text" placeholder="비밀번호를 입력해주세요" id="reg-input-2" required>
                        </td>
                    </tr>
                    <tr class="reg-guide-con" id="reg-guide-con-2">
                        <td class="reg-title-s"></td>
                        <td class="reg-input-s">
                            <p class="reg-guide">
                                <span id="reg-span-3"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;10자 이상
                                    입력</span>
                                <span id="reg-span-4"><i
                                        class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;영문/숫자/특수문자(!@#$%^&+=)만
                                    허용하며, 2개 이상 조합</span>
                                <span id="reg-span-5"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;동일한 숫자 3개 이상 연속
                                    사용
                                    불가</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">비밀번호확인*</td>
                        <td class="reg-input-1">
                            <input type="password" class="reg-text" placeholder="비밀번호를 한번 더 입력해주세요" id="reg-input-3" required>
                        </td>
                    </tr>
                    <tr class="reg-guide-con" id="reg-guide-con-3">
                        <td class="reg-title-s"></td>
                        <td class="reg-input-s">
                            <p class="reg-guide">
                                <span id="reg-span-6"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;동일한 비밀번호를
                                    입력해주세요</span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">이름*</td>
                        <td class="reg-input-1">
                            <input type="text" class="reg-text" id="nametext" placeholder="이름을 입력해주세요" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">이메일*</td>
                        <td class="reg-input-1">
                            <input type="email" class="reg-text" placeholder="예: eaudetoillette@eaude.com" id="emailtext" required>
                            <input type="button" class="reg-btn" value="중복확인" id="emailbtn" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">휴대폰*</td>
                        <td class="reg-input-1">
                            <form method="post" id="smsForm">
                                <input type="tel" class="reg-text" name="to" placeholder="숫자만 입력해주세요" id="phonetext" required>
                                <input type="button" class="reg-btn" value="인증번호 받기" id="phonebtn" required>
                            </form>
                        </td>
                    </tr>
                    <tr id="reg-phone-chk" style="display:none;">
                        <td style="padding-top:0px;"></td>
                        <td>
                            <input type="tel" class="reg-text" id="phonetext-chk" style="padding-top:0px;" required>
                            <input type="button" class="reg-btn" value="인증번호 확인" id="chk_num_btn" style="padding-top:0px;" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">주소*</td>
                        <td class="reg-input-1">
                            <button type="button" class="reg-btn-2" onclick="execPostCode();" id="addr-search-btn" required><img src="${pageContext.request.contextPath}/resources/images/loupe.svg"
                                    id="reg-search-icon">주소 검색</button>

                            <input type="text" name="m_addr1" class="reg-text" id="addrval1" required readonly>
                        </td>
                    </tr>
                    <tr id="addr-con">
                        <td style="padding-top:0px;"></td>
                        <td>
                            <input type="text" class="reg-text" id="addrval2" style="padding-top:0px;" required>
                            <input type="button" class="reg-btn" onclick="execPostCode();" value="재검색" style="padding-top:0px;" id="addrbtn" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">성별</td>
                        <td class="reg-input-1">
                            <input type="radio" name="m_gender" id="male" value="M" style="display: none;">
                            <input type="radio" name="m_gender" id="female" value="F" style="display: none;">
                            <input type="radio" name="m_gender" id="notcheck" value="N" checked style="display: none;">
                            <label for="male" class="reg-genter-rabel">
                                <div class="reg-circle-1" id="male-1" style="display: block;"></div>
                                <div class="reg-circle-con" id="male-2" style="display:none;">
                                    <div class="reg-circle-2"></div>
                                    <div class="reg-circle-3"></div>
                                </div>
                                <p class="reg-gender-p">남자</p>
                            </label>
                            <label for="female" class="reg-genter-rabel">
                                <div class="reg-circle-1" id="female-1" style="display: block;"></div>
                                <div class="reg-circle-con" id="female-2" style="display:none;">
                                    <div class="reg-circle-2"></div>
                                    <div class="reg-circle-3"></div>
                                </div>
                                <p class="reg-gender-p">여자</p>
                            </label>
                            <label for="notcheck" class="reg-genter-rabel">
                                <div class="reg-circle-1" id="notcheck-1" style="display: none;"></div>
                                <div class="reg-circle-con" id="notcheck-2" style="display: block;">
                                    <div class="reg-circle-2"></div>
                                    <div class="reg-circle-3"></div>
                                </div>
                                <p class="reg-gender-p">선택안함</p>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="reg-title-2" style="margin-bottom: 9px;">생년월일</td>
                        <td class="reg-input-2">
                            <div class="reg-birth">
                                <p class="reg-blank"></p>
                                <input type="text" class="reg-birth-text" id="yeartext" placeholder="YYYY">
                                <p class="reg-blank">/</p>
                                <input type="text" class="reg-birth-text" id="monthtext" placeholder="MM">
                                <p class="reg-blank">/</p>
                                <input type="text" class="reg-birth-text" id="daytext" placeholder="DD">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="border-bottom: 1px solid #333333;"></td>
                    </tr>
                    <tr>
                        <td class="reg-title-1">이용약관동의*</td>
                        <td class="reg-input-1">
                            <input type="checkbox" name="agree-all" id="agree-all" onclick="selectAll(this)" style="display:none;">
                            <input type="checkbox" name="agree" class="agree-each" id="agree-1" onclick='checkSelectAll()' style="display:none;" required>
                            <input type="checkbox" name="agree" class="agree-each" id="agree-2" onclick='checkSelectAll()' style="display:none;" required>
                            <input type="checkbox" name="agree" class="agree-each" id="agree-3" onclick='checkSelectAll()' style="display:none;">
                            <!-- <input type="checkbox" name="agree" class="agree-each" id="agree-4" onclick='checkSelectAll()'>
                                <input type="checkbox" name="agree" class="agree-each" id="agree-5" onclick='checkSelectAll()'>
                                <input type="checkbox" name="agree" class="agree-each" id="agree-6" onclick='checkSelectAll()'> -->
                            <input type="checkbox" name="agree" class="agree-each" id="agree-7" onclick='checkSelectAll()' style="display:none;" required>
                            <label for="agree-all">
                                <div id="agree-all-con">
                                    <div class="reg-circle-1 agree" id="agree-all-1"></div>
                                    <div class="reg-circle-con disagree" id="agree-all-2">
                                        <div class="reg-circle-2"></div>
                                        <div class="reg-circle-3"></div>
                                    </div>
                                    <span>전체 동의합니다.</span>
                                </div>
                            </label>
                            <span id="reg-agree-span-1">
                                선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.
                            </span>
                            <div class="agree-each">
                                <label for="agree-1">
                                    <div class="reg-circle-1 agree" id="agree-1-1"></div>
                                    <div class="reg-circle-con disagree" id="agree-1-2">
                                        <div class="reg-circle-2"></div>
                                        <div class="reg-circle-3"></div>
                                    </div>
                                    <span class="reg-agree-title">이용약관 동의&nbsp;</span>
                                    <span class="reg-agree-title-2">(필수)</span>
                                </label>
                                <p class="terms" id="terms-1">약관보기 ></p>
                            </div>
                            <div class="agree-each">
                                <label for="agree-2">
                                    <div class="reg-circle-1 agree" id="agree-2-1"></div>
                                    <div class="reg-circle-con disagree" id="agree-2-2">
                                        <div class="reg-circle-2"></div>
                                        <div class="reg-circle-3"></div>
                                    </div>
                                    <span class="reg-agree-title">개인정보 수집, 이용 동의&nbsp;</span>
                                    <span class="reg-agree-title-2">(필수)</span>
                                </label>
                                <p class="terms" id="terms-2">약관보기 ></p>
                            </div>

                            <div class="agree-each">
                                <label for="agree-3">
                                    <div class="reg-circle-1 agree" id="agree-3-1"></div>
                                    <div class="reg-circle-con disagree" id="agree-3-2">
                                        <div class="reg-circle-2"></div>
                                        <div class="reg-circle-3"></div>
                                    </div>
                                    <span class="reg-agree-title">개인정보 수집, 이용 동의&nbsp;</span>
                                    <span class="reg-agree-title-2">(선택)</span>
                                </label>
                                <p class="terms" id="terms-3">약관보기 ></p>
                            </div>

                            <!-- <label for="agree-4">
                                    <div class="agree-each">
                                        <div class="reg-circle-1 agree" id="agree-4-1"></div>
                                        <div class="reg-circle-con disagree" id="agree-4-2">
                                            <div class="reg-circle-2"></div>
                                            <div class="reg-circle-3"></div>
                                        </div>
                                        <span class="reg-agree-title">무료배송, 할인쿠폰 등 혜택/정보 수신 동의&nbsp;</span>
                                        <span class="reg-agree-title-2">(선택)</span>
                                    </div>
                                </label>
                                <div class="agree-each-1">
                                    <label for="agree-5">
                                        <div class="reg-circle-1 agree" id="agree-5-1"></div>
                                        <div class="reg-circle-con disagree" id="agree-5-2">
                                            <div class="reg-circle-2"></div>
                                            <div class="reg-circle-3"></div>
                                        </div>
                                        <span class="reg-agree-title" style="margin-right:80px;">SMS&nbsp;</span>
                                    </label>
                                    <label for="agree-6">
                                        <div class="reg-circle-1 agree" id="agree-6-1"></div>
                                        <div class="reg-circle-con disagree" id="agree-6-2">
                                            <div class="reg-circle-2"></div>
                                            <div class="reg-circle-3"></div>
                                        </div>
                                        <span class="reg-agree-title">이메일&nbsp;</span>
                                    </label>
                                </div> -->
                            <div class="agree-each">
                                <label for="agree-7">
                                    <div class="reg-circle-1 agree" id="agree-7-1"></div>
                                    <div class="reg-circle-con disagree" id="agree-7-2">
                                        <div class="reg-circle-2"></div>
                                        <div class="reg-circle-3"></div>
                                    </div>
                                    <span class="reg-agree-title">본인은 만 14세 이상입니다.&nbsp;</span>
                                    <span class="reg-agree-title-2">(필수)</span>
                                </label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="border-bottom: 1px solid #ccc;"></td>
                    </tr>
                </table>
                <div id="reg-footer">
                    <form id="reg-form" action="insertMember" method="post">
                        <input type="hidden" name="m_id" id="m_id">
                        <input type="hidden" name="m_password" id="m_password">
                        <input type="hidden" name="m_email" id="m_email">
                        <input type="hidden" name="m_phone" id="m_phone">
                        <input type="hidden" name="m_addr" id="m_addr">
                        <input type="hidden" name="m_gender" id="m_gender" value="N">
                        <input type="hidden" name="m_birth" id="m_birth">
                        <input type="hidden" name="m_name" id="m_name">
                        <input type="hidden" id="nessbtn1" value="N">
                        <input type="hidden" id="nessbtn2" value="N">
                        <input type="hidden" id="nessbtn3" value="N">
                        <input type="hidden" id="nessbtn4" value="N">
                        <input type="hidden" id="nesschkbx1" class="nesschkbx" value="N">
                        <input type="hidden" id="nesschkbx2" class="nesschkbx" value="N">
                        <input type="hidden" id="nesschkbx3" class="nesschkbx" value="N">
                        <input type="submit" value="가입하기" id="reg-btn">
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>
