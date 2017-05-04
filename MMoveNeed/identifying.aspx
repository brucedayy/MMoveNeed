<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="identifying.aspx.cs" Inherits="MMoveNeed.identifying" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="立即注册" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
