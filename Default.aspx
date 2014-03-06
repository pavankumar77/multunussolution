<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Multunus.Default" %>

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
<div id="dropmenu1_a" class="dropmenudiv_a">
<a href="http://www.dynamicdrive.com/style/csslibrary/category/C1/">Incoming Returnable</a>
<a href="http://www.dynamicdrive.com/style/csslibrary/category/C2/">Incoming Non-Returnable</a>
<a href="http://www.dynamicdrive.com/style/csslibrary/category/C4/">Outgoing Returnable</a>
<a href="http://www.dynamicdrive.com/style/csslibrary/category/C6/">Outgoing Non-Returnable</a>

</div>


<!--2nd drop down menu -->                                                
<div id="dropmenu2_a" class="dropmenudiv_a" style="width: 150px;">
<a href="http://www.cssdrive.com">CSS Drive</a>
<a href="http://www.javascriptkit.com">JavaScript Kit</a>
<a href="http://www.codingforums.com">Coding Forums</a>
<a href="http://www.javascriptkit.com/jsref/">JavaScript Reference</a>
</div>

<script type="text/javascript">
    //SYNTAX: tabdropdown.init("menu_id", [integer OR "auto"])
    tabdropdown.init("colortab", 0)
</script>


<div id="container">
<br class="clearfix" />
    <asp:Image ID="Image1" runat="server" Height="163px" 
        ImageUrl="~/images/profile.jpg" Width="591px" />
<br class="clearfix" />
<br class="clearfix" />
    <asp:Image ID="Image2" runat="server" Height="181px" 
        ImageUrl="~/images/Detailsjpg.jpg" Width="671px" />
<br class="clearfix" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">View Resume</asp:LinkButton>
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