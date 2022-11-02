<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ユーザー検索画面</title>
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
    <div class="TOPBAR">ユーザー検索画面</div>
    <div class="result">${message }</div>
    <div class="PARENTCONTAINER">
        <div class="container-fluid">
        <!--入力画面-->
            <div class="row">
            <div class="col-xs-12 TITLE">
                検索条件
                <div class="TITLELINE"></div>
            </div>
            </div>
            <form method="post" action="Find">
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
                <!--ニックネーム-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">ニックネーム</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="nickName"
                        id="txtニックネーム"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--氏名-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">氏名</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="userName"
                        id="txt氏名"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--性別-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">性別</div>
                    <div class="col-xs-8">
                    <input name="sex" type="radio" value="1" /><span>男</span>
                    <input name="sex" type="radio" value="2" /><span>女</span>
                    <input type="hidden" name="sex" id="sex" />
                    </div>
                </div>
                <!--生年月日-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">生年月日</div>
                    <div class="col-xs-8">
                    <!--年-->
                    <select class="SELECT" name="birthday1" id="txt生年">
                        <option selected=""></option>
                        <option value="2017">2017年</option>
                        <option value="2016">2016年</option>
                        <option value="2015">2015年</option>
                    </select>
                    <!--月-->
                    <select class="SELECT" name="birthday2" id="txt生月">
                        <option selected=""></option>
                        <option value="01">1月</option>
                        <option value="02">2月</option>
                        <option value="03">3月</option>
                        <option value="04">4月</option>
                        <option value="05">5月</option>
                        <option value="06">6月</option>
                        <option value="07">7月</option>
                        <option value="08">8月</option>
                        <option value="09">9月</option>
                        <option value="10">10月</option>
                        <option value="11">11月</option>
                        <option value="12">12月</option>
                    </select>
                    <!--日-->
                    <select class="SELECT" name="birthday3" id="txt生日">
                        <option selected=""></option>
                        <option value="01">1日</option>
                        <option value="02">2日</option>
                        <option value="03">3日</option>
                        <option value="04">4日</option>
                        <option value="05">5日</option>
                        <option value="06">6日</option>
                        <option value="07">7日</option>
                        <option value="08">8日</option>
                        <option value="09">9日</option>
                        <option value="10">10日</option>
                        <option value="11">11日</option>
                        <option value="12">12日</option>
                        <option value="13">13日</option>
                        <option value="14">14日</option>
                        <option value="15">15日</option>
                        <option value="16">16日</option>
                        <option value="17">17日</option>
                        <option value="18">18日</option>
                        <option value="19">19日</option>
                        <option value="20">20日</option>
                        <option value="21">21日</option>
                        <option value="22">22日</option>
                        <option value="23">23日</option>
                        <option value="24">24日</option>
                        <option value="25">25日</option>
                        <option value="26">26日</option>
                        <option value="27">27日</option>
                        <option value="28">28日</option>
                        <option value="29">29日</option>
                        <option value="30">30日</option>
                        <option value="31">31日</option>
                    </select>
                    <input type="hidden" name="birthday" id="txt生年月日" />
                    </div>
                </div>
                <!--年齢-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">年齢</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 75px"
                        class="TEXTBOX"
                        name="age"
                        id="txt年齢"
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
                <!--郵便番号-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">郵便番号</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 150px"
                        class="TEXTBOX"
                        name="postcode"
                        id="txt郵便番号"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--住所-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">住所</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="address"
                        id="txt住所"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--入社日-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">入社日</div>
                    <div class="col-xs-8">
                    <!--年-->
                    <select class="SELECT" name="hireDate1" id="txt入社年">
                        <option selected=""></option>
                        <option value="2017">2017年</option>
                        <option value="2016">2016年</option>
                        <option value="2015">2015年</option>
                    </select>
                    <!--月-->
                    <select class="SELECT" name="hireDate2" id="txt入社月">
                        <option selected=""></option>
                        <option value="01">1月</option>
                        <option value="02">2月</option>
                        <option value="03">3月</option>
                        <option value="04">4月</option>
                        <option value="05">5月</option>
                        <option value="06">6月</option>
                        <option value="07">7月</option>
                        <option value="08">8月</option>
                        <option value="09">9月</option>
                        <option value="10">10月</option>
                        <option value="11">11月</option>
                        <option value="12">12月</option>
                    </select>
                    <!--日-->
                    <select class="SELECT" name="hireDate3" id="txt入社日">
                        <option selected=""></option>
                        <option value="01">1日</option>
                        <option value="02">2日</option>
                        <option value="03">3日</option>
                        <option value="04">4日</option>
                        <option value="05">5日</option>
                        <option value="06">6日</option>
                        <option value="07">7日</option>
                        <option value="08">8日</option>
                        <option value="09">9日</option>
                        <option value="10">10日</option>
                        <option value="11">11日</option>
                        <option value="12">12日</option>
                        <option value="13">13日</option>
                        <option value="14">14日</option>
                        <option value="15">15日</option>
                        <option value="16">16日</option>
                        <option value="17">17日</option>
                        <option value="18">18日</option>
                        <option value="19">19日</option>
                        <option value="20">20日</option>
                        <option value="21">21日</option>
                        <option value="22">22日</option>
                        <option value="23">23日</option>
                        <option value="24">24日</option>
                        <option value="25">25日</option>
                        <option value="26">26日</option>
                        <option value="27">27日</option>
                        <option value="28">28日</option>
                        <option value="29">29日</option>
                        <option value="30">30日</option>
                        <option value="31">31日</option>
                    </select>
                    <input type="hidden" name="hireDate" id="txt入社年月日" />
                    </div>
                </div>
                <!--所属-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">所属</div>
                    <div class="col-xs-8">
                    <select class="SELECT" name="affiliation" id="cbx所属">
                        <option></option>
                        <option>技術部</option>
                        <option>営業部</option>
                    </select>
                    </div>
                </div>
                <!--役職-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">役職</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="position"
                        id="txt役職"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--趣味-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">趣味</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="hobby"
                        id="txt趣味"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--特技-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">特技</div>
                    <div class="col-xs-8">
                    <input
                        style="width: 300px"
                        class="TEXTBOX"
                        name="specialSkill"
                        id="txt特技"
                        type="text"
                        value=""
                    />
                    </div>
                </div>
                <!--座右の銘-->
                <div class="row">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">座右銘</div>
                    <div class="col-xs-8">
                    <textarea
                        style="width: 300px; height: 80px"
                        class="TEXTAREA"
                        name="comment"
                        id="txt座右銘"
                        type="text"
                        rows="2"
                    ></textarea>
                    </div>
                </div>
                <!--検索・メール送信・申請確認ボタン-->
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
                                name="検索"
                                id="btn検索"
                                value="検索"
                                style="width: 130px"
                                />
                            </td>
            </form>
                            <td style="width: 150px; text-align: right; border: none">
                                <input
                                type="button"
                                class="BUTTON"
                                name="メール送信"
                                id="btnメール送信"
                                value="メール送信"
                                style="width: 130px; float: right"
                                />
                            </td>
                            <td style="width: 150px; text-align: right; border: none">
                                <input
                                type="button"
                                class="BUTTON"
                                name="申請確認"
                                id="btn申請確認"
                                value="申請確認"
                                style="width: 130px; float: right"
                                />
                            </td>
                            </tr>
                        </table>
                        </td>
                    </tr>
                    </table>
                </div>
        </div>
        <div class="container">
        <!--ユーザー検索画面表-->
            <div class="row">
                <div class="col-12">
                <table style="border: 2px solid #69a4d8; width: 100%">
                <tr style="border-bottom: 2px solid #69a4d8; height: 40px">
                    <td style="width: 6%" class="TextCenter">選択</td>
                    <td style="width: 15%" class="TextCenter">ユーザーID</td>
                    <td style="width: 20%" class="TextCenter">氏名</td>
                    <td style="width: 6%" class="TextCenter">性別</td>
                    <td style="width: 15%" class="TextCenter">電話番号</td>
                    <td style="width: 13%" class="TextCenter">郵便番号</td>
                    <td style="width: *;" class="TextCenter">住所</td>
                    <td colspan="2">編集</td>
                </tr>
                <c:set var="MALE" value="1" />
                <c:set var="FEMALE" value="2" />
                <c:if test="${findModel.getAllUserList() != null }">
                    <c:set var="i" value="0" scope="request" />
                    <c:forEach var="item" items="${findModel.getAllUserList() }">
                        <tr>
                            <td class="TextCenter">
                                <input
                                    type="checkbox"
                                    id="selectUser_${item.getUserId() }"
                                />
                            </td>
                            <td>${item.getUserId() }</td>
                            <td>${item.getUserName() }</td>
                            <td class="TextCenter">
                                <c:choose>
                                <c:when test="${item.getSex() == MALE }">
                                    <c:out value="男" />
                                </c:when>
                                <c:when test="${item.getSex() == FEMALE }">
                                    <c:out value="女" />
                                </c:when>
                                <c:otherwise> </c:otherwise>
                                </c:choose>
                            </td>
                            <td>${item.getTel() }</td>
                            <td>${item.getPostcode() }</td>
                            <td>${item.getAddress() }</td>
                            <td style = "text-align: center">
                                <form id="update" action="UserEdit" method="post">
                                    <input type="text" name="userId" value="${item.getUserId()}" hidden>
                                    <input style="float: left" type="submit" id="updateSubmit" value="更新">
                                </form>
                                <form class="delete" action="UserDelete" method="post">
                                    <input type="text" name="userId" value="${item.getUserId()}" hidden>
                                    <input style="float: right" type="submit" value="削除">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </table>
                </div>
            </div>
        </div>
    </div>

        <script type="text/javascript">

        $(function(){
            $(".delete").submit(function(){
                if(window.confirm('削除していいですか')) {
                    return true;
                } else {
                    return false;
                }
            });
        });

        </script>
    </body>
</html>