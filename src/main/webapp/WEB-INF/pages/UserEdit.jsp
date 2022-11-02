<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
    <title>更新</title>
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
    <div class="TOPBAR">更新</div>
        <div class="PARENTCONTAINER">
            <div class="container-fluid">
                <!--入力画面-->
                <div class="row">
                    <div class="col-xs-12 TITLE">
                        入力項目
                        <div class="TITLELINE"></div>
                    </div>
                </div>
                <form class="Update" method="post" action="UserUpdate">
                    <!--ユーザーID-->
                    <div class="row">
                        <div class="col-xs-1"></div>
                        <div class="col-xs-3">ユーザーID</div>
                        <div class="col-xs-8">${userId}
                        <input type="hidden" name="userId" value="${userId}" />
                        </div>
                    </div>
                    <!--パスワード-->
                    <div class="row">
                        <div class="col-xs-1"></div>
                        <div class="col-xs-3">パスワード</div>
                        <div class="col-xs-8">
                        <input
                            style="width: 300px"
                            class="TEXTBOX"
                            name="password"
                            id="txtパスワード"
                            type="password"
                            value="${password }"
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
                            value="${email }"
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
                            value="${nickName }"
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
                            value="${userName }"
                        />
                        </div>
                    </div>
                    <!--性別-->
                    <div class="row">
                        <div class="col-xs-1"></div>
                        <div class="col-xs-3">性別</div>
                        <div class="col-xs-8">
                        <input name="sex" type="radio" <c:if test="${sex == 1}">checked</c:if> value="1" /><span>男</span>
                        <input name="sex" type="radio" <c:if test="${sex == 2}">checked</c:if> value="2" /><span>女</span>
                        <input type="hidden" name="sex" id="sex" />
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
                            value="${tel }"
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
                            value="${postcode }"
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
                            value="${address }"
                        />
                        </div>
                    </div>
                    <!--所属-->
                    <div class="row">
                        <div class="col-xs-1"></div>
                        <div class="col-xs-3">所属</div>
                        <div class="col-xs-8">
                        <select class="SELECT" name="affiliation" id="cbx所属">
                            <option></option>
                            <option value="技術部" <c:if test="${affiliation == '技術部'}">selected</c:if>>技術部</option>
                            <option value="営業部" <c:if test="${affiliation == '営業部'}">selected</c:if>>営業部</option>
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
                            value="${position } "
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
                            value="${hobby }"
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
                            value="${specialSkill }"
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
                        >${comment }</textarea>
                        </div>
                    </div>
                    <!--更新ボタン-->
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
                                    name="更新"
                                    id="btn更新"
                                    value="更新"
                                    style="width: 130px; float: left"
                                    />
                </form>
                                </td>
                                <td style="width: 500px; text-align: left; border: none">
                                    <form action="Find" method="post">
                                    <input
                                        type="submit"
                                        class="EXITBUTTON"
                                        name="Exit"
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

		if ($("#txtパスワード").val() == "") {
			alert("パスワードを入力してください");
			return false;
		}

		if ($("#txtメール").val() == "") {
			alert("メールアドレスを入力してください");
			return false;
		}

		if ($("#txtニックネーム").val() == "") {
			alert("ニックネームを入力してください");
			return false;
		}

		if ($("#txt氏名").val() == "") {
			alert("氏名を入力してください");
			return false;
		}

		if ($("#txt年齢").val() == "") {
			alert("年齢を入力してください");
			return false;
		}

		if ($("#txt電話番号").val() == "") {
			alert("電話番号を入力してください");
			return false;
		}

		if ($("#txt郵便番号").val() == "") {
			alert("郵便番号を入力してください");
			return false;
		}

		if ($("#txt住所").val() == "") {
			alert("住所を入力してください");
			return false;
		}

		if ($("#cbx所属").val() == "") {
			alert("所属を入力してください");
			return false;
		}

		if ($("#txt役職").val() == "") {
			alert("役職を入力してください");
			return false;
		}

		if ($("#txt趣味").val() == "") {
			alert("趣味を入力してください");
			return false;
		}

		if ($("#txt特技").val() == "") {
				alert("特技を入力してください");
				return false;
		}

		if ($("#txt座右銘").val() == "") {
				alert("座右銘を入力してください");
				return false;
		}

	});

    $(function(){
        $(".Update").submit(function(){
            if(window.confirm('更新していいですか')) {
                return true;
            } else {
                return false;
            }
        });
    });

    </script>
    </body>
</html>
