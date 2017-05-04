<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Move.indexx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div id="latestjobarea">
        <div id="showhotjob">
            <link href="css/advertiseshow.css" rel="stylesheet" />
            <div class="newsscrollarea" id="advershow" style="background: url('adpic/p001.jpg') no-repeat; background-position: 0px 0px;">
                <div class="directionarea">
                    <div id="left_pointer" class="direction_pointer rightpointer" onclick="funcleft()"></div>
                    <div id="right_pointer" class="direction_pointer leftpointer" onclick="funcright()"></div>
                </div>
                <div class="selectliarea">
                    <ul id="selectliareaul">
                        <li style="background-color: red;">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                    </ul>
                </div>
            </div>
        </div>
        <div style="width: 1020px; height: 200px; background-color: #b6ff00; margin-top: 30px;"></div>
    </div>
    <script src="js/adshow.js"></script>
</asp:Content>
