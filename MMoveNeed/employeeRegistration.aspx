<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeRegistration.aspx.cs" Inherits="MMoveNeed.employeeRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:600px;height:500px;background-color:#b6ff00;">   
        <p>
            <asp:Label runat="server" Text="用户名:" Width="80"></asp:Label>           
            <asp:TextBox runat="server" Width="180px" ID="username"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="用户名不能为空" ControlToValidate="username"></asp:RequiredFieldValidator>
        </p>                                                 
        <p>
            <asp:Label runat="server" Text="密码:" Width="80"></asp:Label> 
            <asp:TextBox runat="server" Width="180px" ID="password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label runat="server" Text="确认密码:" Width="80"></asp:Label> 
            <asp:TextBox runat="server" Width="180px" ID="copypassword" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator runat="server" ControlToCompare="password" ControlToValidate="copypassword" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
        </p>
        <p>
            <asp:Label runat="server" Text="姓名:" Width="80"></asp:Label> 
            <asp:TextBox runat="server" Width="180px" ID="name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label runat="server" Text="手机号码:" Width="80"></asp:Label> 
            <asp:TextBox runat="server" Width="180px"  ID="phonenumber"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="phonenumber" ErrorMessage="手机号不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label runat="server" Text="邮箱:" Width="80"></asp:Label>
            <asp:TextBox runat="server" Width="180px" ID="email"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="邮箱地址不能为空"></asp:RequiredFieldValidator>
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
            <asp:Button Text="提交" runat="server" Width="64px" ID="btnSubmit" OnClick="btnSubmit_Click"/>
        </p>
    </div>
    </form>
</body>
</html>
