<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<?xml version="1.0"?>
<%@page import="com.mbs.daoFactory.*" %>
<%@page import="com.mbs.model.*" %>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="en" />
	<meta name="robots" content="noindex,nofollow" />
	<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/reset.css" /> <!-- RESET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/main.css" /> <!-- MAIN STYLE SHEET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/2col.css" title="2col" /> <!-- DEFAULT: 2 COLUMNS -->
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="../css/1col.css" title="1col" /> <!-- ALTERNATE: 1 COLUMN -->
	<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]--> <!-- MSIE6 -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/style.css" /> <!-- GRAPHIC THEME -->

	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/switcher.js"></script>
	<script type="text/javascript" src="../js/toggle.js"></script>
	<script type="text/javascript" src="../js/ui.core.js"></script>
	<script type="text/javascript" src="../js/ui.tabs.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".tabs > ul").tabs();
	});
	</script>
	<title>Users | Milk Billing System | Powered by Samgha IT Services</title>

</head>

<body>


<script type="text/javascript">

 function check(actiontype){
	 
	 if(confirm("Are you sure want to delete this User?"))
		 {
		    return true;
		 }else
			 {
			 return false;
			 }
	 
	 
 }

</script>
<div id="main">

	<!-- Tray -->
	<div id="tray" class="box">

		<p class="f-left box">

			<!-- Switcher -->
			<span class="f-left" id="switcher">
				<a href="#" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="../design/switcher-1col.gif" alt="1 Column" /></a>
				<a href="#" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="../design/switcher-2col.gif" alt="2 Columns" /></a>
			</span>

			<marquee> Milk Billing System</marquee> 

		</p>

		<p class="f-right">User: <strong><a href="#">Administrator</a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="#" id="logout">Log out</a></strong></p>

	</div> <!--  /tray -->

	<hr class="noscreen" />

	<!-- Menu -->
	<div id="menu" class="box">


		<ul class="box">
			<li><a href="home.jsp"><span>Home</span></a></li> 
			<li ><a href="transaction.jsp"><span>Transaction</span></a></li><!-- Active -->
			<li id="menu-active"><a href="#"><span>User</span></a></li>
			<li><a href="products.jsp"><span>Products</span></a></li>
			<li><a href="indents.jsp"><span>Indents</span></a></li>
			<li><a href="report.jsp"><span>Report</span></a></li>
			
		</ul>

	</div> <!-- /header -->

	<hr class="noscreen" />

	<!-- Columns -->
	<div id="cols" class="box">

		<!-- Aside (Left Column) -->
		<div id="aside" class="box">

			<div class="padding box">

				<!-- Logo (Max. width = 200px) -->
				<p id="logo"><a href="#"><img src="tmp/logo.gif" alt="Our logo" title="Visit Site" /></a></p>

				<!-- Search -->
				<form action="../search" method="post" id="search" >
					<fieldset>
						<legend>Users Menu</legend>

						<p><input type="text" size="17" name="uSearchid" class="input-text" />&nbsp;<input type="submit" value="GO" class="input-submit-02" /><br />
						<a href="javascript:toggle('search-options');" class="ico-drop">Search Options</a></p>

						<!-- Advanced search -->
						<div id="search-options" style="display:none;">

								<p>
								<label><input type="radio" id="actiontype" name="Uaction" value="view" />View</label><br />
								<label><input type="radio" id="actiontype1" name="Uaction" value="edit"/> Edit</label><br />
								<label><input type="radio" id="actiontype2" name="Uaction" value="delete"/> Delete</label><br />
								
								<input type="hidden" name="context" value="searchUser"></input>
							</p>

						</div> <!-- /search-options -->

					</fieldset>
				</form>

				<!-- Create a new project -->
				<p id="btn-create" class="box"><a href="user.html"><span>User Reports</span></a></p>

			</div>

		</div> <!-- /aside -->

		
		<!-- Content (Right Column) -->
		<div id="content" class="box">

		
			<!-- Form -->
			<form action="mbsys" method="post" >
			
			<fieldset>
				<legend>Create New User Record</legend>
				<table class="nostyle">
				
				
				<!-- Connecting to DB to Retrieve Next User-ID -->
					<%DAOFactory uid = new DAOFactory();
					  int nextUID = uid.getNextUID();
					  %>
					  
					  
					<tr>
						<td style="width:70px;">User Id:</td>
						<td><input type="text" size="8" name="uid"   value="<%= nextUID %>" class="input-text"  /></td>
						
						<td>Mobile Number:</td>
						<td><input type="text" size="10" name="umob" class="input-text"  /></td>
					</tr>
					<tr>
					    <td style="width:180px;">User Name:</td>
						<td><input type="text" size="20" name="uname"  class="input-text"  /></td>
						
						<td style="width:70px;">Landline:</td>
						<td><input type="text" size="15" name="uphone" value=""class="input-text"  /></td>
					</tr>
					<tr>
						<td style="width:70px;" class="va-top">Address:</td>
						<td><textarea cols="20" rows="4" size="40" name ="uaddr" class="input-text"></textarea></td>
					</tr>
					<tr>
						<td>Select User:</td>
						<td >
						<input type="radio" name="utype" value="Retailer" /> Retailer<br />
                        <input type="radio" name="utype" value="Sub-Dealer" /> Sub-Dealer
						</td>
					</tr>
					<tr>
						<td><strong>Commision</strong></td>	
					</tr>
					
					<!-- Connecting to DB to Retrieve Cost Price -->
					<%DAOFactory dao = new DAOFactory();
					  ProdCostBean prodcostbean = dao.getProdCost();
					  %>
					  
					<tr>
						<td>FCM:</td>
						
						<td>
						<input type="text" size="3" name ="CostFCM" disabled="disabled" value="<%= prodcostbean.getCostFCM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComFCM"  class="input-text"/>
						</td>
						
					</tr>	
	
					
					<tr>
						<td>SM:</td>
						
						
						<td>
						<input type="text" size="3" name ="CostSM" disabled="disabled" value="<%= prodcostbean.getCostSM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComSM"  class="input-text" />
						</td>
						
					</tr>
					<tr>
						<td>TM:</td>
						
						<td>
						<input type="text" size="3" name ="CostTM" disabled="disabled" value="<%= prodcostbean.getCostTM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComTM"  class="input-text" />
						</td>
						
					</tr>
					<tr>
						<td>DTM:</td>
						
						<td>
						<input type="text" size="3" name ="CostDTM" disabled="disabled" value="<%= prodcostbean.getCostDTM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComDTM"  class="input-text" />
						</td>
						
					</tr>
					<tr>
						<td colspan="2" class="t-right"><input type="submit" class="input-submit" value="Create User"/><input type="reset" class="input-submit" value="Cancel"/></td>
						<td><input type="hidden" name="context" value="userAdd"/></td>
					</tr>
					
				</table>
			</fieldset>
			
			</form>
			

			
		</div> <!-- /content -->

	</div> <!-- /cols -->

	<hr class="noscreen" />

	<!-- Footer -->
	<div id="footer" class="box">

		<p class="f-left">&copy; 2012 <a href="#">Samgha IT Services Private Limited</a>, All Rights Reserved &reg;</p>

		<p class="f-right">Powered By <a href="http://www.samgha.org">Samgha</a></p>

	</div> <!-- /footer -->

</div> <!-- /main -->

</body>
</html>