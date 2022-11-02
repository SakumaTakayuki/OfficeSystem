# OfficeSystem

<h3>ログインページとユーザー検索機能</h3>
<p>言語はJava。SpringMVCで作成。</p>
<p>訓練校で学習したログインページ、ユーザー検索機能、新規登録の作成の復習をするために、機能の追加と改修を行う。</p>

<h4>新規登録機能</h4>
<ul>
    <li>UserAddController,UserAdd.jsp作成</li>
    <li>FindModel,UserInfoModelDAOにUserAdd,IdCheck書き足し</li>
    <li>ユーザーID重複時にエラーメッセージ表示</li>
    <li>新規登録完了時にLogin.jspにメッセージ表示</li>
</ul>
<h4>削除機能</h4>
<ul>
    <li>UserDeleteController作成</li>
    <li>FindModel,UserInfoModelDAOにUserDelete書き足し</li>
    <li>実行結果がFind.jspに表示されるようにFind.jspを改修</li>
</ul>
<h4>パスワード変更機能</h4>
<ul>
    <li>ChangePassController,ChangePass.jsp作成</li>
    <li>FindModel,UserInfoModelDAOにChangePassCheck,ChangePass書き足し</li>
    <li>入力情報が異なる際にエラーメッセージ表示</li>
    <li>パスワード変更完了時にLogin.jspにメッセージ表示</li>
</ul>
