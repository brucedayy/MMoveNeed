<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="projectDetails.aspx.cs" Inherits="MMoveNeed.projectDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div style="width: 1024px;">
        <div style="width: 600px;">
            <div style="width: 600px; height: 10px;">
                <hr />
            </div>
            <div style="width: 600px;">
                <div style="width: 600px; height: 30px; display: block;">
                    <span style="width: 30px; height: 30px; display: block; float: left;">
                        <img src="image/task.png" /></span>
                    <span style="width: 340px; height: 30px; display: block; float: left; font-size: 18px; line-height: 30px;"><%=jobname%></span>
                    <span style="width: 30px; height: 30px; display: block; float: left;">
                        <img src="image/personcount.png" /></span>
                    <span style="width: 70px; height: 30px; display: block; float: left; font-size: 18px; line-height: 30px;"><%=employeecount%></span>
                    <span style="width: 30px; height: 30px; display: block; float: left;">
                        <img src="image/money.png" /></span>
                    <span style="width: 100px; height: 30px; display: block; float: left; font-size: 15px; line-height: 30px; font-family: 'Microsoft YaHei UI';"><%=salary%></span>
                </div>
                <div style="width: 600px; display: block; font-size: 14px;background-color:#ffffff;margin-top:10px;"><%=jobdetails%></div>
                <div style="width:600px;height:100px;display:block;margin-top:20px;">
                    <span style="width:30px;height:100px;display:block;text-align:center;line-height:25px;font-size:16px;float:left;">兼职时间</span>
                    <div style="width: 570px; height: 100px; display: block; float: left;">
                        <style type="text/css">
                            td {
                                border: 1px #808080 solid;
                                text-align: center;
                                height:20px;
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
                                    <asp:Label runat="server" ID="Lm7"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Lm1"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Lm2"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Lm3"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Lm4"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Lm5"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Lm6"/></td>
                            </tr>
                            <tr>
                                <td>下午</td>
                                <td>
                                    <asp:Label runat="server" ID="La7"/></td>
                                <td>
                                    <asp:Label runat="server" ID="La1"/></td>
                                <td>
                                    <asp:Label runat="server" ID="La2"/></td>
                                <td>
                                    <asp:Label runat="server" ID="La3"/></td>
                                <td>
                                    <asp:Label runat="server" ID="La4"/></td>
                                <td>
                                    <asp:Label runat="server" ID="La5"/></td>
                                <td>
                                    <asp:Label runat="server" ID="La6"/></td>
                            </tr>
                            <tr>
                                <td>晚上</td>
                                <td>
                                    <asp:Label runat="server" ID="Le7"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Le1"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Le2"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Le3"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Le4"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Le5"/></td>
                                <td>
                                    <asp:Label runat="server" ID="Le6"/></td>
                            </tr>
                        </table>
                    </div>
                  
                </div>
                <div style="width: 600px; height: 20px; display: block;margin-bottom:20px;margin-top:10px;">
                    <span style="width: 20px; height: 20px; display: block; float: left;">
                        <img src="image/EmployerLogo.png" /></span>
                    <span style="width: 60px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI'"><%=employername%></span>
                    <span style="width: 20px; height: 20px; display: block; float: left;">
                        <img src="image/PhoneNumberlogo.png" /></span>
                    <span style="width: 120px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI';"><%=phonenumber%></span>
                    <span style="width: 20px; height: 20px; display: block; float: left;">
                        <img src="image/Addresslogo.png" /></span>
                    <span style="width: 360px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI';"><%=address%></span>
                </div>             
            </div>           
        </div>
    </div>
</asp:Content>
