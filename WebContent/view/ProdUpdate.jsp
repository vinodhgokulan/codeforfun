<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.mbs.model.Product"%>
<%@page import="com.mbs.daoFactory.DAOFactory"%>
<%String path = request.getContextPath(); %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-language" content="en" />
	<meta name="robots" content="noindex,nofollow" />
	<link rel="stylesheet" media="screen,projection" type="text/css" href="<%=path %>/css/reset.css" /> <!-- RESET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="<%=path %>/css/main.css" /> <!-- MAIN STYLE SHEET -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="<%=path %>/css/2col.css" title="2col" /> <!-- DEFAULT: 2 COLUMNS -->
	<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="<%=path %>/css/1col.css" title="1col" /> <!-- ALTERNATE: 1 COLUMN -->
	<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]--> <!-- MSIE6 -->
	<link rel="stylesheet" media="screen,projection" type="text/css" href="<%=path %>/css/style.css" /> <!-- GRAPHIC THEME -->

	<script type="text/javascript" src="<%=path %>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/js/switcher.js"></script>
	<script type="text/javascript" src="<%=path %>/js/toggle.js"></script>
	<script type="text/javascript" src="<%=path %>/js/ui.core.js"></script>
	<script type="text/javascript" src="<%=path %>/js/ui.tabs.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".tabs > ul").tabs();
	});
	</script>
	<title>Products | Buissness Management System | Powered by Samgha IT Services</title>
</head>

<body>

<div id="main">

	<!-- Tray -->
	<div id="tray" class="box">

		<p class="f-left box">

			<!-- Switcher -->
			<span class="f-left" id="switcher">
				<a href="#" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="<%=path %>/design/switcher-1col.gif" alt="1 Column" /></a>
				<a href="#" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="<%=path %>/design/switcher-2col.gif" alt="2 Columns" /></a>
			</span>

			Project: <strong>Your Project</strong>

		</p>

		<p class="f-right">User: <strong><a href="#">Administrator</a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="#" id="logout">Log out</a></strong></p>

	</div> <!--  /tray -->

	<hr class="noscreen" />

	<!-- Menu -->
	<div id="menu" class="box">


		<ul class="box">
			<li><a href="home.jsp"><span>Home</span></a></li> 
			<li ><a href="transaction.jsp"><span>Transaction</span></a></li><!-- Active -->
			<li ><a href="user.jsp"><span>User</span></a></li>
			<li id="menu-active"><a href="#"><span>Products</span></a></li>
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
				<form action="#" method="get" id="search">
					<fieldset>
						<legend>Search</legend>

						<p><input type="text" size="17" name="" class="input-text" />&nbsp;<input type="submit" value="GO" class="input-submit-02" /><br />
						<a href="javascript:toggle('search-options');" class="ico-drop">Advanced search</a></p>

						<!-- Advanced search -->
						<div id="search-options" style="display:none;">

							<p>
									<label><input type="radio" id="actiontype" name="Uaction" value="view" />View</label><br />
								<label><input type="radio" id="actiontype1" name="Uaction" value="edit"/> Edit</label><br />
								<label><input type="radio" id="actiontype2" name="Uaction" value="delete"/> Delete</label><br />
								
							</p>

						</div> <!-- /search-options -->

					</fieldset>
				</form>

				<!-- Create a new project -->
				<p id="btn-create" class="box"><a href="products.html"><span>Add new Product</span></a></p>

			</div> <!-- /padding -->

		
		</div> <!-- /aside -->

		
		<!-- Content (Right Column) -->
		<div id="content" class="box">

		
			<!-- Form -->
			<form action="mbsys" method="post" >
			
			<fieldset>
				<legend>Update Product Details</legend>
				<table class="nostyle">
					<% Product product=(Product)request.getAttribute("setattribute");
				     String id=product.getProdId();
				     %>
	<tr>
						<td style="width:70px;">ProductId:</td>
						<td><input type="text" size="20" name="prodId" value="<%= product.getProdId()%>"  class="input-text" readonly = "readonly"/></td>
					</tr>
					<tr>
						<td style="width:100px;">Product Name:</td>
						<td><input type="text" size="5" name="prodName" value="<%=product.getProdName() %>" class="input-text" /></td>
					
						
					</tr>
					<tr>
						<td >Product Type:</td>
						<td >
						 <% String active =""; if(product.getProdType().equals("Milk")){ active ="checked";}%>
						<input type="radio" name="prodType" value="Milk" <%= active %>/> Milk<br />
						<% active=""; %>
						<%  if(product.getProdType().equals("Butter")){active ="checked"; }%>
                        <input type="radio" name="prodType"  value="Butter" <%= active %> /> Butter
						</td>
					</tr>
					<tr>
						<td style="width:70px;">Cost / Unit:</td>
						<td><input type="text" size="15" name="prodCost" value="<%= product.getProdCost()%>" class="input-text"  /></td>
					</tr>
					
					<tr>
					<td colspan="2" class="t-right"><input type="submit" class="input-submit" value="Update Product"/><input type="reset" class="input-submit" value="Cancel"/></td>
						<td><input type="hidden" name="context" value="prodUpdate"/></td>
					</tr>
				</table>
			</fieldset>
			</form>

			
		</div> <!-- /content -->

	</div> <!-- /cols -->

	<hr class="noscreen" />

	<!-- Footer -->
	<div id="footer" class="box">

		<p class="f-left">&copy; 2009 <a href="#">Your Company</a>, All Rights Reserved &reg;</p>

		<p class="f-right">Templates by <a href="http://www.adminizio.com/">Adminizio</a></p>

	</div> <!-- /footer -->

</div> <!-- /main -->

</body>
</html>