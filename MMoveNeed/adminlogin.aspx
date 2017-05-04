<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="MMoveNeed.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <form runat="server">
            <%-- <p><label>用户名：</label><input type="text" name="username"/></p>
            <p><label>密码：</label><input type="text" name="password"/></p>--%>
            <p>
                <asp:Label runat="server" Text="用户名："></asp:Label><asp:TextBox runat="server" ID="username" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="密码："></asp:Label><asp:TextBox runat="server" ID="password" TextMode="Password" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
            </p>
            <div style="width: 300px;">
                <script src="jquery-1.8.2.min.js"></script>
                <script>
                    function changeImg() {
                        $("#imgCheckNo").attr("src", "ValidateImage.aspx?r=" + getRandom(999));
                    }
                    function getRandom(n) { return Math.floor(Math.random() * n + 1) }
                </script>
                <div>
                    <img id="imgCheckNo" src="ValidateImage.aspx" style="border-color: #000000; border-width: 1px; border-style: Solid" />
                    <span onclick="changeImg();" style="cursor: pointer;">看不清?换一张</span>
                </div>
                <div class="labelCss">验证码：</div>
                <div>
                    <asp:TextBox ID="tbxCheckNo" runat="server" CssClass="tbxCss"></asp:TextBox>
                </div>
            </div>
            <p>
                <asp:Button ID="btnAdminLogin" runat="server" Text="登陆" OnClick="btnAdminLogin_Click" />
            </p>
        </form>
    </div>
</body>
</body>
</html>
