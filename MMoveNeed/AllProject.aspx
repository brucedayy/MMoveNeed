<%@ Page Title="" Language="C#" MasterPageFile="~/backadmin.Master" AutoEventWireup="true" CodeBehind="AllProject.aspx.cs" Inherits="MMoveNeed.AllProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 600px;">
        <asp:ListView ID="lstPTjob" runat="server" DataSourceID="SqlDataPTjob" OnItemCommand="PTJobListView_OnItemCommand">
            <LayoutTemplate>
                <div style="width: 600px;">
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
                <div style="width: 600px; height: 30px; text-align: left; line-height: 30px; font-size: 16px; color: black;">
                    <asp:DataPager ID="pg" PageSize="10" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ShowFirstPageButton="true" ShowPreviousPageButton="true" FirstPageText="首页" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ShowNextPageButton="true" ShowLastPageButton="true" LastPageText="尾页" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div style="width: 600px;">
                    <div style="width: 600px; height: 10px;">
                        <hr />
                    </div>
                    <div style="width: 600px;">
                        <div style="width: 600px; height: 30px; display: block;">
                            <span style="width: 30px; height: 30px; display: block; float: left;">
                                <img src="image/task.png" /></span>
                            <span style="width: 340px; height: 30px; display: block; float: left; font-size: 18px; line-height: 30px;"><%#Eval("jobName")%></span>
                            <span style="width: 30px; height: 30px; display: block; float: left;">
                                <img src="image/personcount.png" /></span>
                            <span style="width: 70px; height: 30px; display: block; float: left; font-size: 18px; line-height: 30px;"><%#Eval("employeeCount")%></span>
                            <span style="width: 30px; height: 30px; display: block; float: left;">
                                <img src="image/money.png" /></span>
                            <span style="width: 100px; height: 30px; display: block; float: left; font-size: 15px; line-height: 30px; font-family: 'Mic rosoft YaHei UI';"><%#Eval("salary") %></span>
                        </div>
                        <div style="width: 600px; display: block; font-size: 14px; background-color: #ffffff; margin-top: 10px;"><%#Eval("jobDetails")%></div>
                        <div style="width: 600px; height: 80px; display: block; margin-top: 5px;">
                            <div style="width: 600px; height: 30px; line-height: 30px; margin-top: 10px;">
                                <span style="display: block; width: 80px; height: 30px; line-height: 30px; float: left;">兼职时间:</span>
                                <span style="width: 520px; height: 30px; line-height: 30px;"><%#Eval("workTime")%></span>
                            </div>
                            <div style="width: 600px; height: 20px; display: block; margin-top: 10px;">
                                <span style="width: 20px; height: 20px; display: block; float: left;">
                                    <img src="image/EmployerLogo.png" /></span>
                                <span style="width: 60px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI'"><%#Eval("employerName")%></span>
                                <span style="width: 20px; height: 20px; display: block; float: left;">
                                    <img src="image/PhoneNumberlogo.png" /></span>
                                <span style="width: 120px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI';"><%#Eval("phoneNumber")%></span>
                                <span style="width: 20px; height: 20px; display: block; float: left;">
                                    <img src="image/Addresslogo.png" /></span>
                                <span style="width: 360px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI';"><%#Eval("address")%></span>
                            </div>
                        </div>
                    </div>
                    <div style="width: 600px; height: 20px; margin-bottom: 20px; margin-top: 5px;">
                        <asp:HiddenField ID="hfuid" Value='<%#Eval("uid")%>' runat="server" />
                        <asp:Button runat="server" ID="btnApprove" Width="60" Height="20" Text="删除" OnClick="btnDeleteJob_Click" CommandName="DeleteJobDataItem" />
                    </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataPTjob" runat="server" ConnectionString="<%$ ConnectionStrings:MMoveNeedDataConnectionString %>" SelectCommand="SELECT [uid], [username], [jobID], [jobName], [employerName], [employeeCount], [jobDetails], [jobAbstract], [salary], [workTime], [phoneNumber], [address], [jobApplyTime], [jobPublishTime], [approveStatus] FROM [jobData]">
        </asp:SqlDataSource>
    </div>

</asp:Content>
