<?xml version="1.0"?>
<%@page import="com.mbs.daoFactory.*"%>
<%@page import="com.mbs.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="en" />
<meta name="robots" content="noindex,nofollow" />
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="../css/reset.css" />
<!-- RESET -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="../css/main.css" />
<!-- MAIN STYLE SHEET -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="../css/2col.css" title="2col" />
<!-- DEFAULT: 2 COLUMNS -->
<link rel="alternate stylesheet" media="screen,projection"
	type="text/css" href="../css/1col.css" title="1col" />
<!-- ALTERNATE: 1 COLUMN -->
<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]-->
<!-- MSIE6 -->
<link rel="stylesheet" media="screen,projection" type="text/css"
	href="../css/style.css" />
<!-- GRAPHIC THEME -->
<link rel="stylesheet" media="all" type="text/css"
	href="../css/jsDatePick_ltr.min.css" src="../images" />

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/switcher.js"></script>
<script type="text/javascript" src="../js/toggle.js"></script>
<script type="text/javascript" src="../js/ui.core.js"></script>
<script type="text/javascript" src="../js/ui.tabs.js"></script>
<script type="text/javascript" src="../js/jsDatePick.min.1.3.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".tabs > ul").tabs();
	});
</script>
<script type="text/javascript">
	window.onload = function() {
		new JsDatePick({
			useMode : 2,
			target : "inputField",
			dateFormat : "%Y-%M-%d"
		});
	};

	var FCMGrades;
	var SMGrades;
	var TMGrades;
	var DTMGrades;

		function assign() {
		FCMGrades = parseInt(document.indent.FCMGrades.value);
		SMGrades = parseInt(document.indent.SMGrades.value);
		TMGrades = parseInt(document.indent.TMGrades.value);
		DTMGrades = parseInt(document.indent.DTMGrades.value);
		


	}
	function Totalgrades() {
		assign();
		var TotalGrades = FCMGrades + SMGrades + TMGrades + DTMGrades;
		document.getElementById('TotalGrades').value = TotalGrades;

	}
	
</script>
<script>


function TotalLitres() {
		
	alert("hi");
	}
	
	</script>
<title>Indents | Buissness Management System | Powered by Samgha
	IT Services</title>
</head>

<body>

	<div id="main">

		<!-- Tray -->
		<div id="tray" class="box">

			<p class="f-left box">

				<!-- Switcher -->
				<span class="f-left" id="switcher"> <a href="#" rel="1col"
					class="styleswitch ico-col1" title="Display one column"><img
						src="../design/switcher-1col.gif" alt="1 Column" /></a> <a href="#"
					rel="2col" class="styleswitch ico-col2" title="Display two columns"><img
						src="../design/switcher-2col.gif" alt="2 Columns" /></a>
				</span> Project: <strong>Your Project</strong>

			</p>

			<p class="f-right">
				User: <strong><a href="#">Administrator</a></strong>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="#"
					id="logout">Log out</a></strong>
			</p>

		</div>
		<!--  /tray -->

		<hr class="noscreen" />

		<!-- Menu -->
		<div id="menu" class="box">


			<ul class="box">
				<li><a href="home.jsp"><span>Home</span></a></li>
				<li><a href="transaction.jsp"><span>Transaction</span></a></li>
				<!-- Active -->
				<li><a href="user.jsp"><span>User</span></a></li>
				<li><a href="products.jsp"><span>Products</span></a></li>
				<li id="menu-active"><a href="#"><span>Indents</span></a></li>
				<li><a href="report.jsp"><span>Report</span></a></li>

			</ul>

		</div>
		<!-- /header -->

		<hr class="noscreen" />

		<!-- Columns -->
		<div id="cols" class="box">

			<!-- Aside (Left Column) -->
			<div id="aside" class="box">

				<div class="padding box">

					<!-- Logo (Max. width = 200px) -->
					<p id="logo">
						<a href="#"><img src="tmp/logo.gif" alt="Our logo"
							title="Visit Site" /></a>
					</p>

					<!-- Search -->
					<form action="../search" method="post" id="search">
						<fieldset>
							<legend>Search</legend>

							<p>
								<input type="text" size="17" name="ISearchId" class="input-text" />&nbsp;<input
									type="submit" value="GO" class="input-submit-02" /><br /> <a
									href="javascript:toggle('search-options');" class="ico-drop">Filter
									Option</a>
							</p>

							<!-- Advanced search -->
							<div id="search-options" style="display: none;">

								<p>

									<label><input type="radio" id="actiontype"
										name="Iaction" value="view" />View</label><br /> <label><input
										type="radio" id="actiontype1" name="Iaction" value="edit" />
										Edit</label><br /> <label><input type="radio"
										id="actiontype2" name="Iaction" value="delete" /> Delete</label><br />
									<input type="hidden" name="context" value="searchIndent"></input>


								</p>

							</div>
							<!-- /search-options -->

						</fieldset>
					</form>

					<!-- Create a new project -->

					<p id="btn-create" class="box">
						<a href="javascript:window.print()" name=print><span>Print
								Indent</span></a>
					</p>




				</div>
				<!-- /padding -->


			</div>
			<!-- /aside -->


			<!-- Content (Right Column) -->
			<div id="content" class="box">


				<h1>Create New Indents</h1>

				<form  action="mbsys" method="post" name="indent">

					<!-- Form -->


					<fieldset>
						<legend>Enter User Details</legend>

						<table class="nostyle">
							<!-- Connecting to DB to Retrieve Next User-ID -->
							<%
								DAOFactory IndentNo = new DAOFactory();
								int nextIndentNo = IndentNo.getNextIndentNo();
							%>
							<tr>
								<td style="width: 70px;">Intent_Number:</td>
								<td><input type="text" size="5" name="IndentNo"
									value="<%=nextIndentNo%>" class="input-text"
									readonly="readonly" /></td>


							</tr>
							<tr>
								<td style="width: 70px;" align="center">Date:</td>
								<td><input type="text" size="10" name="Date"
									class="input-text" id="inputField" /></td>
							</tr>
							<tr>
								<td style="width: 70px;" align="center">Type of Milk</td>
							</tr>
							<tr>
								<td style="width: 70px;" align="center">FCM</td>
								<td style="width: 100px;" align="center">Total Grades:</td>
								<td><input type="text" size="5" name="FCMGrades" value=""
									class="input-text" /></td>
							</tr>
							<tr>
								<td style="width: 70px;" align="center">SM</td>
								<td style="width: 100px;" align="center">Total Grades:</td>
								<td><input type="text" size="5" name="SMGrades" value=""
									class="input-text" /></td>
							</tr>
							<tr>
								<td style="width: 70px;" align="center">TM</td>
								<td style="width: 100px;" align="center">Total Grades:</td>
								<td><input type="text" size="5" name="TMGrades" value=""
									class="input-text" /></td>
							</tr>
							<tr>
								<td style="width: 70px;" align="center">DTM</td>
								<td style="width: 100px;" align="center">Total Grades:</td>
								<td><input type="text" size="5" name="DTMGrades" value=""
									class="input-text" /></td>
							</tr>
							<tr>
								<td style="width: 70px;" class="va-top">Total Grades:</td>
							<td><input type="text" size="10" onfocus="Totalgrades()" name="TotalGrades" id="TotalGrades" value="" class="input-text" /></td>
							</tr>
							<tr>
								<td style="width: 70px;" class="va-top">Total Litres:</td>
							<td><input type="text" size="10" onchange="TotalLitres()" name="TotalLitres" id="TotalLitres" value="" class="input-text" /></td>
							</tr>

							<tr>
								<td colspan="2" class="t-right"><input type="submit"
									class="input-submit" value="Save Indent" /><input type="reset"
									class="input-submit" value="Cancel" /></td>
								<td><input type="hidden" name="context" value="IndentAdd" /></td>
							</tr>



						</table>
					</fieldset>
				</form>


			</div>
			<!-- /content -->

		</div>
		<!-- /cols -->

		<hr class="noscreen" />

		<!-- Footer -->
		<div id="footer" class="box">

			<p class="f-left">
				&copy; 2009 <a href="#">Your Company</a>, All Rights Reserved &reg;
			</p>

			<p class="f-right">
				Templates by <a href="http://www.adminizio.com/">Adminizio</a>
			</p>

		</div>
		<!-- /footer -->

	</div>
	<!-- /main -->

</body>
</html>