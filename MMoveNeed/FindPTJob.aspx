<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="FindPTJob.aspx.cs" Inherits="Move.FindPTJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div id="findjobarea" style="margin: auto; width: 1024px; height: 1250px;background-color:#ffffff;">
        <div id="findjobshowItem" style="width: 600px; height: 1250px;">
            <asp:ListView ID="lstPTJobs" runat="server" DataSourceID="SqlDataJobData" OnItemCommand="PTJobListView_OnItemCommand">
                <LayoutTemplate>
                    <div style="width: 600px; height: 1200px;">
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
                    <div style="width: 600px; height: 10px;">
                        <hr />
                    </div>
                    <div style="width: 600px; height: 100px;">
                        <div style="width: 600px; height: 30px; display: block;">
                            <span style="width: 30px; height: 30px; display: block; float: left;">
                                <img src="image/task.png" /></span>
                            <span style="width: 340px; height: 30px; display: block; float: left; font-size: 18px; line-height: 30px;"><%#Eval("jobName")%></span>
                            <span style="width: 30px; height: 30px; display: block; float: left;">
                                <img src="image/personcount.png" /></span>
                            <span style="width: 70px; height: 30px; display: block; float: left; font-size: 16px; line-height: 30px;"><%#Eval("employeeCount")%></span>
                            <span style="width: 30px; height: 30px; display: block; float: left;">
                                <img src="image/money.png" /></span>
                            <span style="width: 100px; height: 30px; display: block; float: left; font-size: 15px; line-height: 30px; font-family: 'Microsoft YaHei UI';"><%#Eval("salary")%></span>
                        </div>
                        <div style="width: 600px; height: 50px; display: block; font-size: 13px;"><%#Eval("jobAbstract")%><asp:LinkButton ID="jobdetails" runat="server" Text="详情" CommandName="showDetails"></asp:LinkButton></div>
                        <div style="width: 600px; height: 20px; display: block;">
                            <span style="width: 20px; height: 20px; display: block; float: left;">
                                <img src="image/EmployerLogo.png" /></span>
                            <span style="width: 60px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI'"><%#Eval("employerName")%></span>
                            <span style="width: 20px; height: 20px; display: block; float: left;">
                                <img src="image/PhoneNumberlogo.png" /></span>
                            <span style="width: 120px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI';"><%#Eval("phoneNumber")%></span>
                            <span style="width: 20px; height: 20px; display: block; float: left;">
                                <img src="image/Addresslogo.png" /></span>
                            <span style="width: 360px; height: 20px; display: block; float: left; font-size: 14px; line-height: 20px; font-family: 'Microsoft JhengHei UI';"><%#Eval("address")%></span>
                            <asp:HiddenField ID="jobid" Value='<%#Eval("jobID")%>' runat="server" />
                        </div>
                    </div>
                </ItemTemplate>
                <EmptyDataTemplate>No records</EmptyDataTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataJobData" runat="server" ConnectionString="<%$ ConnectionStrings:MMoveNeedDataConnectionString %>" SelectCommand="SELECT [username], [jobID], [jobName], [employerName], [employeeCount], [jobDetails], [jobAbstract], [salary], [workTime], [uid], [jobApplyTime], [address], [phoneNumber], [jobPublishTime], [approveStatus] FROM [jobData] WHERE ([approveStatus] = @approveStatus)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="yes" Name="approveStatus" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
