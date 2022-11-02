<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>ログイン画面</title>

        <style type="text/css">
        .TOPBAR {
            width: 100%; /* 幅：全画面 */
            min-width: 1000px;
            height: 50px; /* 高さ：50px */
            background-color: #5b9bd5; /* 背景色：#5B9BD5 */
            color: white; /* テキスト色：ホワイト */
            font-size: 24px; /* フォントサイズ：24px */
            font-weight: bold; /* フォントの太さ：太 */
            text-align: center; /* テキストの位置：トップバーの中央 */
            display: flex; /* テキストの位置：トップバーの中央 */
            justify-content: center; /* テキストの位置：トップバーの中央 */
            align-items: center; /* テキストの位置：トップバーの中央 */
            margin-bottom: 8px; /* 白色背景枠との間の幅：8px */
        }
        .LABEL {
            color: red;
            margin: 0 auto;
            display: block;
            text-align: center;
        }
        .CONTAINER {
            width: 250px;
            margin: 0 auto;
            margin-bottom: 5px;
        }
        .TEXTBOX {
            width: 250px;
            height: 30px;
            margin-bottom: 5px;
        }
        .LEFT {
            float: left;
        }
        .RIGHT {
            float: right;
        }
        .BUTTON {
            width: 250px;
        }
        .TEXTAREA {
            width: 500px;
            height: 200px;
            margin: 0 auto;
            display: block;
            resize: none;
            clear: both;
        }
        .result {
            color:red;
            font-size: 15px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 5px;
        }
        </style>
        <script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>

    </head>

    <body>
        <div class="TOPBAR">ユーザー管理システム</div>
        <div class="result">${message }</div>
        <form method="post" action="/OfficeSystem/Login">
            <label class="LABEL">  ${error}  </label>
            <div class="CONTAINER">
                <input type="text" class="TEXTBOX" id="userId" name="userId" placeholder="ユーザーID" />			<!-- nameプロパティを追加し -->
                <input type="password" class="TEXTBOX" id="password" name="password" placeholder="パスワード" /> 	<!-- サーバーがデータを受け取れるようにする -->
                <input type="text" class="TEXTBOX" id="email" name="email" placeholder="メールアドレス" />
                <input type="submit" class="BUTTON" value="ログイン"/>
                <a href="ChangePass" class="LEFT">パスワード忘れ</a>
                <a href="UserAdd" class="RIGHT">新規登録</a>
            </div>
        </form>
        <textarea class="TEXTAREA">お知らせ</textarea>
    <script type="text/ecmascript">

	$(".BUTTON").click(function () {

		if ($("#userId").val() == "") {
			alert("ユーザーIDを入力してください");
			return false;
		}

		if ($("#password").val() == "") {
			alert("パスワードを入力してください");
			return false;
		}

		if ($("#email").val() == "") {
			alert("メールアドレスを入力してください");
			return false;
		}
	});
    </script>



    </body>
</html>