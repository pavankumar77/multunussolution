<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PuzzleLogic.aspx.cs" Inherits="Multunus.PuzzleLogic" %>

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


<!--2nd drop down menu -->                                                


<script type="text/javascript">
    //SYNTAX: tabdropdown.init("menu_id", [integer OR "auto"])
    tabdropdown.init("colortab", 0)
</script>


<div id="container">
<br class="clearfix" />
    <asp:Image ID="Image1" runat="server" Height="473px" 
        ImageUrl="~/images/logic.jpg" Width="980px" />
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
