<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solution Display.aspx.cs" Inherits="Multunus.Solution_Display" %>

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
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Get Solution" Height="34px" Visible="False" Width="209px" />
    <asp:DropDownList ID="DropDownList1" runat="server" Visible="False">
    </asp:DropDownList>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
        ImageUrl="~/images/getsolution.jpg" onclick="ImageButton1_Click" 
        style="z-index: 1; left: 342px; top: 148px; position: absolute" Width="263px" />
<br class="clearfix" />
    <br />
    <br />
    <asp:Image ID="img7" runat="server" 
        style="z-index: 1; left: 664px; top: 387px; position: absolute; width: 79px; height: 70px" />
    <br />
    <asp:Image ID="img4" runat="server" 
        style="z-index: 1; left: 363px; top: 384px; position: absolute; height: 79px; width: 85px" />
    <br />
    <asp:Image ID="img5" runat="server" 
        style="z-index: 1; left: 462px; top: 384px; position: absolute; height: 75px; width: 83px" />
    <br />
    <asp:Image ID="img2" runat="server" 
        style="z-index: 1; left: 168px; top: 382px; position: absolute; height: 79px; width: 83px" />
    <asp:Image ID="img8" runat="server" 
        style="z-index: 1; left: 759px; top: 385px; position: absolute; height: 76px; width: 83px" />
    <br />
    <asp:Image ID="img6" runat="server" 
        style="z-index: 1; left: 564px; top: 384px; position: absolute; height: 74px; width: 81px" />
    <br />
    <asp:Image ID="img3" runat="server" 
        style="z-index: 1; left: 266px; top: 384px; position: absolute; height: 77px; width: 83px" />
    <asp:Image ID="imgmain" runat="server" 
        
        style="z-index: 1; left: 379px; top: 201px; position: absolute; height: 133px; width: 149px" 
        ImageUrl="~/images/fcb03c8d0a40048f2537df967239686f.jpeg" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Image ID="img1" runat="server" 
        style="z-index: 1; left: 70px; top: 386px; position: absolute; width: 78px; height: 75px" />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br class="clearfix" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" Height="21px" 
        ImageUrl="~/images/numb.jpg" Width="731px" />
    <br />
    <br />

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

