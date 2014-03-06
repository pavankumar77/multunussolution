<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solution.aspx.cs" Inherits="Multunus.Solution" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<!--Css file-->


<link href="css/style.css" rel="stylesheet" type="text/css" />


<!--End of Css file -->


<!--Menu Starts from here-->


<script type="text/javascript" src="dropdowntabfiles/dropdowntabs.js"></script>
<link rel="stylesheet" type="text/css" href="dropdowntabfiles/ddcolortabs.css" />

<!--End of Menu-->


    <style type="text/css">
        #Text1
        {
            z-index: 1;
            left: 463px;
            top: 251px;
            position: absolute;
            width: 394px;
        }
    </style>


</head>

<body>



    <form id="form1" runat="server">



<div id="header">
</div>
<br class="clearfix" />
<div id="colortab" class="ddcolortabs">
<ul>
<li><a href="Default.aspx" title="Home"><span>General Profile</span></a></li>
<li><a href="PuzzleLogic.aspx" title="Logic" ><span>Puzzle Logic</span></a></li>
<li><a href="Solution.aspx" title="Solution" ><span>Puzzle Solution</span></a></li>

</ul>
</div>

<div class="ddcolortabsline">&nbsp;</div>


<!--1st drop down menu -->                                                   


<!--2nd drop down menu -->                                                


<script type="text/javascript">
    //SYNTAX: tabdropdown.init("menu_id", [integer OR "auto"])
    tabdropdown.init("colortab", 0)
</script>


<div id="container">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="TextBox3" runat="server" 
        
        style="z-index: 1; left: 476px; top: 251px; position: absolute; width: 376px" 
        Enabled="False">439822737516007424</asp:TextBox>
    <asp:Image ID="Image1" runat="server" Height="50px" 
        ImageUrl="~/images/tweetid.jpg" Width="944px" />
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/images/submit.jpg" onclick="ImageButton1_Click" 
        style="z-index: 1; left: 882px; top: 246px; position: absolute; height: 32px; width: 101px" />
<br class="clearfix" />
    <br />
&nbsp;<asp:Image ID="Image2" runat="server" Height="19px" 
        ImageUrl="~/images/example.jpg" Width="709px" />
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" Visible="False">
    </asp:DropDownList>
    <br />
    <br />
    <br class="clearfix" />

</div>

<div class="ddcolortabsline">&nbsp;</div>

<div id="footer">
<span id="pull_left">Multunus Solution</span>
<span id="pull_right"> Kousick Shanmugam Nagaraj</a></span>
</div>


</div>
    </form>
</body>
</html>
