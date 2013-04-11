<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
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
	<title>Transaction | Buissness Management System | Powered by Samgha IT Services</title>
</head>

<body>

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
			<li id="menu-active"><a href="#"><span>Transaction</span></a></li><!-- Active -->
			<li><a href="user.jsp"><span>User</span></a></li>
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
				<form action="#" method="get" id="search">
					<fieldset>
						<legend>Search</legend>

						<p><input type="text" size="17" name="" class="input-text" />&nbsp;<input type="submit" value="GO" class="input-submit-02" /><br />
						<a href="javascript:toggle('search-options');" class="ico-drop">Advanced search</a></p>

						<!-- Advanced search -->
						<div id="search-options" style="display:none;">

							<p>
								<label><input type="checkbox" name="" checked="checked" /> User</label><br />
								<label><input type="checkbox" name="" /> Product</label><br />
								
							</p>

						</div> <!-- /search-options -->

					</fieldset>
				</form>
			<p id="btn-create" class="box"><a href="report.html"><span>Month End Transaction</span></a></p>

				
			</div> <!-- /padding -->

		</div> <!-- /aside -->

		<hr class="noscreen" />

		<!-- Content (Right Column) -->
		<div id="content" class="box">

			<h1>Name:Santosh</h1>

			

			<!-- Form -->
			
			<fieldset>
				<legend>User Details</legend>
				<table class="nostyle">
					<tr>
						<td style="width:70px;">User ID:</td>
						<td><input type="text" size="10" name="" value="001" class="input-text" disabled="disabled" /></td>
					
						<td align ="center">Mobile Number:</td>
						<td><input type="text" size="10" name="" value="9790902787"class="input-text" disabled="disabled" /></td>
					
					</tr>
					<tr>
						<td style="width:70px; align ="center">Landline:</td>
						<td><input type="text" size="15" name="" value="044-3537885"class="input-text" disabled="disabled" /></td>
					</tr>
					<tr>
						<td style="width:70px; class="va-top">Address:</td>
						<td><input type="text" size="40" name ="" value="#1/601,Mugappair west,chennai" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea></td>
					</tr>
					<tr>
						<td>Select User:</td>
						<td ><select>
  							<option value="Retailer">Retailer</option>
  							<option value="Sub-Dealear">Sub-Dealear</option>
  							
						</select></td>
					</tr>
					<tr>
						<td align ="center">Commision</td>	
					</tr>
					<tr>
						<td>FCM:</td><td><input type="text" size="1" name ="" value="12" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	
						<input type="text" size="1" name ="" value="12.10" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	</td>
					</tr>	
	
					
					<tr>
						<td>SM:</td><td><input type="text" size="1" name ="" value="10" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	
						<input type="text" size="1" name ="" value="10.15" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	</td>
					</tr>
					<tr>
						<td>TM:</td><td><input type="text" size="1" name ="" value="15" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	
						<input type="text" size="1" name ="" value="15.10" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	</td>
					</tr>
					<tr>
						<td>DTM:</td><td><input type="text" size="1" name ="" value="30" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	
						<input type="text" size="1" name ="" value="30.10" disabled="disabled" textarea cols="75" rows="7" class="input-text" ></textarea>	</td>
					</tr>
					
				</table>
			</fieldset>

			<!-- Transactions -->
			<h3 class="tit">Transactions <span class="tag"></span></h3>
			
			<table>
				<tr align ="center">
				    <th>User_ID</th>
				    <th>Transaction_Number</th>
				    <th>Date</th>
				    <th>Product</th>
				    <th>No.of Product</th>	
				    <th>Total Price</th>
				    <th>Amount_to_be_paid</th>
				    <th>Paid_Amount</th>
				    <th>Balance</th>
				</tr>
				<tr align ="center">
				    <td>001</td>
				    <td>101</td>
				    <td>15/07/2012</td>
				    <td>FCM</td>
				    <td>1</td>
				    <td>12.10</td>
				    <td>12.10</td>
				    <td>12.10</td>
				    <td>0.0</td>
				
				</tr>
				<tr class="bg" align ="center">
				    <td>001</td>
				    <td>105</td>
				    <td>15/07/2012</td>
				    <td>SM</td>
				    <td>2</td>
				    <td>20.30</td>
				    <td>20.30</td>
				    <td>18.00</td>
				    <td>2.30</td>

				</tr>
				<tr align ="center">
				    <td>001</td>
				    <td>200</td>
				    <td>16/07/2012</td>
				    <td>TM</td>
				    <td>1</td>
				    <td>15.10</td>
				    <td>17.40</td>
				    <td>15.00</td>
				    <td>2.40</td>
				</tr>
				<tr class="bg" align ="center">
				    <td>001</td>
				    <td>254</td>
				    <td>17/07/2012</td>
				    <td>DTM</td>
			            <td>4</td>
				    <td>120.40</td>
				    <td>122.80</td>
				    <td>120.00</td>
				    <td>00.80</td>
				</tr>
				<tr align ="center">
				    <td>001</td>
				    <td>309</td>
				    <td>19/07/2012</td>
				    <td>FM</td>
				    <td>7</td>
				    <td>84.70</td>
				    <td>85.50</td>
				    <td>85.50</td>
				    <td>00.00</td>
				</tr>
			</table>

			
			
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