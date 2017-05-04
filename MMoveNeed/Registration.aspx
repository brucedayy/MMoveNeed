<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MMoveNeed.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:aliceblue;">
    <%--<div>
         <div style="width: 400px; height: 600px; background-color: #b6ff00;margin:auto;">
        <form method="post" action="Registration.ashx">
            <p><label>用户名：</label><input type="text" name="username"/></p>
            <p><label>密码：</label><input type="password" name="password"/></p>
            <p><label>确认密码：</label><input type="password" /></p>
            <p><label>雇主姓名：</label><input type="text"/></p>
            <p><label>公司名字：</label><input type="text"/></p>
            <p><label>电话号码：</label><input type="text" /></p>
            <p><label>地址：</label><input type="text" /></p>
            <p><label>邮箱：</label><input type="text" /></p>
            <p></p>
            <button>提交申请</button>
        </form>
    </div>
    </div>--%>
 <%--    <div style="width: 400px; height: 600px; background-color: #b6ff00;margin:auto;">
        <form method="post" action="Registration.ashx">
            <p><label>用户名：</label><input type="text" name="username" /></p>
            <p><label>密&nbsp;码：</label><input type="password" name="password" /></p>
            <p><label>确认密码：</label><input type="password" /></p>
            <p><label>雇主姓名：</label><input type="text" /></p>
            <p><label>公司名字：</label><input type="text" /></p>
            <p><label>电话号码：</label><input type="text" /></p>
            <p><label>地&nbsp;址：</label><input type="text" /></p>
            <p><label>邮&nbsp;箱：</label><input type="text" /></p>
            <p></p>
            <button>提交申请</button>
        </form>
               
    </div>--%>
    <form runat="server">
        <div style="width:500px;height:434px; margin:auto;">           
            <p>
                <asp:Label runat="server" Text="用户名：" Height="20px" Width="100px"></asp:Label><asp:TextBox runat="server" ID="username" MaxLength="15"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="用户名不能为空" ControlToValidate="username"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="密码：" Height="20px" Width="95px"></asp:Label>
                <asp:TextBox runat="server" ID="password" TextMode="Password" MaxLength="15"></asp:TextBox>              
                <asp:RequiredFieldValidator runat="server" ErrorMessage="密码不能为空" ControlToValidate="password"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="确认密码：" Height="20" Width="100"></asp:Label><asp:TextBox runat="server" ID="submitpassword" TextMode="Password" MaxLength="15"></asp:TextBox>
            <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="密码不能为空" ControlToValidate="submitpassword"></asp:RequiredFieldValidator>--%>
                <asp:CompareValidator runat="server" ErrorMessage="两次输入的密码不一致" ControlToCompare="password" ControlToValidate="submitpassword"></asp:CompareValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="雇主姓名：" Height="20" Width="100"></asp:Label><asp:TextBox runat="server" ID="employername" Width="87px" MaxLength="4"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="雇主姓名不能为空" ControlToValidate="employername"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="公司名字：" Height="20" Width="100"></asp:Label><asp:TextBox runat="server" ID="companyname" Width="196px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="公司名字不能为空" ControlToValidate="companyname"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="电话号码：" Height="20" Width="100"></asp:Label><asp:TextBox runat="server" ID="phonenumber" Width="132px" MaxLength="11"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="电话号码不能为空" ControlToValidate="phonenumber"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Label runat="server" Text="地址：" Height="20" Width="100"></asp:Label><asp:TextBox runat="server" ID="address" Width="259px" MaxLength="25"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="地址不能为空" ControlToValidate="address"></asp:RequiredFieldValidator>
            </p>
          <%--  <p>
                <asp:Label runat="server" Text="邮箱：" Height="20" Width="100"></asp:Label><asp:TextBox runat="server" ID="email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="邮箱不能为空" ControlToValidate="email"></asp:RequiredFieldValidator>
            </p>--%>
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
                <asp:Button runat="server" Text="确认" Width="100" Height="30" OnClick="Unnamed15_Click"/></p>
        </div>
    </form>
</body>
</html>
