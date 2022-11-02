<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>パスワード変更</title>
        <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        />
        <style type="text/css">
        * {
            font-family: "MS Mincho", "MS PMincho", "MS Gothic", "MS PGothic", Arial,
            Helvetica, sans-serif;
            }
        body,
        html {
            height: 100%;
            background-color: #e9ebee;
            }
        body {
            height: auto;
            margin: 8px;
            }
        .TOPBAR {
            width: 100%;
            min-width: 1000px;
            height: 50px;
            background-color: #5b9bd5;
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 8px;
            }
        .TITLE {
            font-size: 24px;
            font-weight: bold;
            }
        .TEXTBOX {
            color: #494949;
            border: 1px solid #69a4d8;
            border-radius: 5px;
            height: 30px;
            font-size: 18px;
            padding-left: 5px;
            padding-right: 5px;
            }
        .TEXTAREA {
            color: #494949;
            border: 1px solid #69a4d8;
            border-radius: 5px;
            font-size: 18px;
            padding-left: 5px;
            padding-right: 5px;
            resize: none;
            }
        .BUTTON {
            background-color: #5b9bd5;
            color: white;
            border: 1px solid #43729d;
            border-radius: 5px;
            height: 36px;
            font-size: 18px;
            font-weight: bold;
            }
        .EXITBUTTON {
            background-color: #5b9bd5;
            color: white;
            border: 1px solid #43729d;
            border-radius: 5px;
            height: 36px;
            font-size: 18px;
            font-weight: bold;
            }
        .BUTTONDISABLE {
            background-color: #dddddd;
            color: white;
            border: 1px solid #cccccc;
            border-radius: 5px;
            height: 36px;
            font-size: 18px;
            font-weight: bold;
            }
        .BUTTONDISABLE:hover {
            cursor: pointer;
            }
        .LABEL {
            color: #494949;
            font-size: 18px;
            text-align: left;
            }
        .SELECT {
            color: #494949;
            border: 1px solid #69a4d8;
            border-radius: 5px;
            height: 30px;
            font-size: 18px;
            }
        .TITLELINE {
            border-bottom: 3px solid #5b9bd5;
            width: 100%;
            margin-top: 5px;
            margin-bottom: 5px;
            }
        .TEXTBOX:focus,
        .TEXTAREA:focus,
        .SELECT:focus {
            outline: none !important;
            border-color: red;
            box-shadow: 0 0 5px #ce7171;
            }
        .BUTTON:hover {
            cursor: pointer;
            }
        .BUTTON:focus {
            outline: none !important;
            border-color: #43729d;
            box-shadow: 0 0 5px #608db8;
            }
        tr {
            height: 35px;
            font-size: 18px;
        }
        td {
            text-align: left;
            width: auto;
            }
        a {
            font-size: 18px;
            }
        .row {
            min-height: 35px;
            padding-bottom: 3px;
            }
        td {
            border: 1px solid #69a4d8;
            }
        .TEXTBOX {
            width: 300px;
            }
        .TEXTAREA {
            width: 300px;
            height: 100px;
            resize: none;
            }
        .PARENTCONTAINER {
            width: 1000px;
            height: auto;
            min-height: calc(
                100% - 58px
            );
            margin: 0 auto;
            display: block;
            background-color: white;
            }
        .container {
            width: 950px;
            margin: 0 auto;
            }
        .result {
            color:red;
            font-size: 15px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 5px;
            }

        </style>
        <script
        src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"
        type="text/javascript"
        ></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    </head>
    <body>
    <div class="TOPBAR">パスワード変更</div>
    <div class="result">${message }</div>
    <div class="PARENTCONTAINER">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 TITLE">
                    入力項目
                    <div class="TITLELINE"></div>
                </div>
            </div>
            <form method="post" action="ChangePass">
                <!--ユーザーID-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">ユーザーID</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="userId"
                        id="txtユーザーID"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--メールアドレス-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">メールアドレス</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="email"
                        id="txtメール"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--電話番号-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">電話番号</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 200px"
                        class="TEXTBOX"
                        name="tel"
                        id="txt電話番号"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--パスワード-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">パスワード</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 200px"
                        class="TEXTBOX"
                        name="password"
                        id="txtパスワード"
                        type="password"
                        value=""
                    />
                    </div>
                </div>
                <!--変更ボタン-->
                <div>
                    <table style="margin-bottom: 2px; width: 100%">
                    <tr>
                        <td colspan="3" style="width: 100%; border: none">
                            <table style="width: 100%">
                                <tr>
                                <td style="width: 500px; text-align: left; border: none">
                                    <input
                                    type="submit"
                                    class="BUTTON"
                                    name="変更"
                                    id="btn変更"
                                    value="変更"
                                    style="width: 130px; float: left"
                                    />
                                </td>
            </form>
                                <td style="width: 500px; text-align: left; border: none">
                                    <form action="Login" method="get">
                                    <input
                                        type="submit"
                                        class="EXITBUTTON"
                                        name="戻る"
                                        id="btn戻る"
                                        value="戻る"
                                        style="width: 130px; float: right"
                                        >
                                    </form>
                                </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
                </div>
        </div>
    </div>

        <script type="text/javascript">

        $(".BUTTON").click(function () {

            if ($("#txtユーザーID").val() == "") {
                alert("ユーザーIDを入力してください");
                return false;
            }

            if ($("#txtメール").val() == "") {
                alert("メールアドレスを入力してください");
                return false;
            }

            if ($("#txt電話番号").val() == "") {
                alert("電話番号を入力してください");
                return false;
            }

            if ($("#txtパスワード").val() == "") {
                alert("パスワードを入力してください");
                return false;
            }

        });

        </script>
    </body>
</html>
