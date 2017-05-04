<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="PublishPTJob.aspx.cs" Inherits="Move.PublishPTJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <style type="text/css">
        .checklabel {
            color: #ff0000;
            line-height: 22px;
            display: none;
        }

        #applyJobFormContent {
            font-size: 14px;
            font-family: 'Microsoft YaHei';
        }
    </style>
    <div id="publishjobarea" style="margin: auto; width: 1024px; height: 800px;background-color:#ffffff;">
        <div id="applyJobForm" style="width: 600px; height: 800px;">
            <div id="applyJobFormContent" style="width: 500px; height: 800px;">
                <hr />
                <label>兼职名称：</label><asp:TextBox runat="server" ID="jobName" MaxLength="15" Width="216px"></asp:TextBox>
                <label class="checklabel">信息不正确！</label>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="jobName" ErrorMessage="兼职名称不能为空"></asp:RequiredFieldValidator>
                <p>
                    <label>联系人名：</label><asp:TextBox runat="server" ID="employerName" MaxLength="4"></asp:TextBox>
                    <label class="checklabel">信息不正确！</label>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="employerName" ErrorMessage="联系人名不能为空"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <label>工资情况：</label><asp:TextBox ID="salary" runat="server" MaxLength="4" Width="109px"></asp:TextBox><label>元</label>
                    <asp:DropDownList runat="server" ID="dropClassify">
                        <asp:ListItem>每天</asp:ListItem>
                        <asp:ListItem>每月</asp:ListItem>
                        <asp:ListItem>每年</asp:ListItem>
                        <asp:ListItem>每个任务</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="工资情况不能为空" ControlToValidate="salary"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <label>工作人数：</label>
                    <asp:TextBox ID="employeecount" runat="server" MaxLength="3" Width="63px"></asp:TextBox><label>人</label>
                    <%--<label class="checklabel">信息不正确！</label>--%>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="employeecount" ErrorMessage="工作人数不能为空"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <label>手机号码：</label>
                    <%-- <input type="text" name="phoneNumber" />--%>
                    <asp:TextBox ID="phoneNumber" runat="server" MaxLength="11" Width="116px"></asp:TextBox>
                    <%--<label class="checklabel">信息不正确！</label>--%>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="手机号码不能为空" ControlToValidate="phoneNumber"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <label>联系地址：</label>
                    <%--<input type="text" name="address" />--%>
                    <asp:TextBox runat="server" ID="address" MaxLength="25" Width="243px"></asp:TextBox>
                    <%--     <label class="checklabel">信息不正确！</label>--%>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="联系地址不能为空" ControlToValidate="address"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <span style="height: 400px; vertical-align: top;">兼职内容：</span>
                    <%-- <textarea name="jobDetails" style="height: 100px; width: 400px;"></textarea>--%>
                    <asp:TextBox ID="jobDetails" runat="server" Height="100px" Width="400px" TextMode="MultiLine" MaxLength="800" Rows="5"></asp:TextBox>
                </p>
                <span style="height: 100px; vertical-align: top; float: left;">工作时间：</span>
                <div style="width: 300px; height: 100px; float: left;">
                    <style type="text/css">
                        td {
                            border: 1px #808080 solid;
                            text-align: center;
                        }
                    </style>
                    <table style="width: 100%; border: 1px solid #808080;" cellspacing="0">
                        <tr>
                            <td></td>
                            <td>周日</td>
                            <td>周一</td>
                            <td>周二</td>
                            <td>周三</td>
                            <td>周四</td>
                            <td>周五</td>
                            <td>周六</td>
                        </tr>
                        <tr>
                            <td>上午</td>
                            <td>
                                <asp:CheckBox runat="server" ID="m7" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="m1" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="m2" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="m3" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="m4" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="m5" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="m6" /></td>
                        </tr>
                        <tr>
                            <td>下午</td>
                            <td>
                                <asp:CheckBox runat="server" ID="a7" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="a1" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="a2" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="a3" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="a4" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="a5" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="a6" /></td>
                        </tr>
                        <tr>
                            <td>晚上</td>
                            <td>
                                <asp:CheckBox runat="server" ID="e7" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="e1" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="e2" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="e3" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="e4" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="e5" /></td>
                            <td>
                                <asp:CheckBox runat="server" ID="e6" /></td>
                        </tr>
                    </table>
                </div>
                <div style="width:300px;">
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
                <p style="margin-top: 10px">
                    <%--<button>提交申请</button>--%>
                    <asp:Button runat="server" Text="提交申请" OnClick="Unnamed32_Click" />
                </p>
            </div>
        </div>
    </div>
</asp:Content>
