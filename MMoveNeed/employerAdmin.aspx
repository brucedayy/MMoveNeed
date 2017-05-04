<%@ Page Title="" Language="C#" MasterPageFile="~/backadmin.Master" AutoEventWireup="true" CodeBehind="employerAdmin.aspx.cs" Inherits="MMoveNeed.employerAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:1100px;">
        <div style="width:1100px;height:24px;line-height:20px;">
            <style type="text/css">
                #tabletitle td{
                    text-align:center;
                    border:#808080 1px solid;  
                    font-size:14px;  
                    background-color:#ff6a00;                                
                }
                #tableitemcontent td{
                    text-align:center;
                    font-size:14px;                     
                }
            </style>
            <table id="tabletitle" style="width:100%; height: 11px;" cellspacing="0">
                <tr>
                    <td style="width:15%">用户名</td>
                    <td style="width:15%">密码</td>
                    <td style="width:10%">雇主姓名</td>
                    <td style="width:15%">公司名</td>
                    <td style="width:10%">电话号码</td>
                    <td style="width:25%">地址</td> 
                    <td style="width:10%">批准</td>                  
                </tr>
            </table>
            <div style="width:1100px;">
                <asp:ListView runat="server" DataSourceID="SqlDataEmployer" OnItemCommand="PTJobListView_OnItemCommand">
                    <LayoutTemplate>
                        <div style="width: 1100px;">
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                        </div>
                        <div style="width: 1100px; height: 30px; text-align: center;margin-top:20px;">
                            <hr />
                            <asp:DataPager ID="pg" PageSize="30" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" ShowPreviousPageButton="true" ShowLastPageButton="true" ShowNextPageButton="true" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ShowFirstPageButton="false" ShowPreviousPageButton="false" ShowNextPageButton="true" ShowLastPageButton="true" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <table id="tableitemcontent" style="width: 100%;" cellspacing="0">   
                             <hr />                        
                            <tr>
                                <td style="width: 15%"><%#Eval("username")%></td>
                                <td style="width: 15%"><%#Eval("password")%></td>
                                <td style="width: 10%"><%#Eval("name")%></td>
                                <td style="width: 15%"><%#Eval("companyName")%></td>
                                <td style="width: 10%"><%#Eval("phonenumber")%></td>
                                <td style="width: 25%"><%#Eval("address")%></td>
                                <td style="width: 10%">
                                    <asp:HiddenField ID="hfuid" Value='<%#Eval("uid")%>' runat="server" />       
                                    <asp:Button runat="server" Text="批准" OnClick="btnApprove_Click" CommandName="UpdateJobStatus"/>
                                </td>
                            </tr>                            
                        </table>
                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataEmployer" runat="server" ConnectionString="<%$ ConnectionStrings:MMoveNeedDataConnectionString %>" SelectCommand="SELECT [uid], [username], [password], [name], [companyName], [phonenumber], [address], [email], [approveStatus] FROM [employer] WHERE ([approveStatus] = @approveStatus)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="no" Name="approveStatus" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
