<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.mbs.daoFactory.*" %>
<%@page import="com.mbs.model.*" %>
<%String path = request.getContextPath(); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Users | Milk Billing System | Powered by Samgha IT Services</title>
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

			<marquee>Milk Billing System</marquee> 

		</p>

		<p class="f-right">User: <strong><a href="#">Administrator</a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="#" id="logout">Log out</a></strong></p>

	</div> <!--  /tray -->

	<hr class="noscreen" />

	<!-- Menu -->
	<div id="menu" class="box">


		<ul class="box">
			<li><a href="view/home.jsp"><span>Home</span></a></li> 
			<li ><a href="view/transaction.jsp"><span>Transaction</span></a></li><!-- Active -->
			<li ><a href="view/user.jsp"><span>User</span></a></li>
			<li><a href="view/products.jsp"><span>Products</span></a></li>
			<li><a href="view/indents.jsp"><span>Indents</span></a></li>
			<li><a href="view/report.jsp"><span>Report</span></a></li>
			
		</ul>

	</div> <!-- /header -->

	<hr class="noscreen" />

	<!-- Columns -->
	<div id="cols" class="box">
		
		<!-- Content (Right Column) -->
		<div id="content" class="box">

		
			<!-- Form -->
			<form action="viewUser" method="post" >
			
			<fieldset>
				<legend>View User Record</legend>
				<table class="nostyle">
				
				
				<!-- Retrieving the User Bean data to Edit Page -->
				<% User user=(User)request.getAttribute("setattribute");
				     String id=user.getUserId();
				     %>
					  
					  
					<tr>
						<td style="width:70px;">User Id:</td>
						<td><input type="text" size="8" name="uid"  readonly="readonly"  value="<%= id %>" class="input-text"  /></td>
						
						<td>Mobile Number:</td>
						<td><input type="text" size="10" name="umob" class="input-text" readonly="readonly" value="<%= user.getUserMob()%>"/></td>
					</tr>
					<tr>
					    <td style="width:180px;">User Name:</td>
						<td><input type="text" size="20" name="uname"  class="input-text"  readonly="readonly"  value="<%= user.getUserName()%>"/></td>
						
						<td style="width:70px;">Landline:</td>
						<td><input type="text" size="15" name="uphone" class="input-text"  readonly="readonly" value="<%= user.getUserPhone()%>"/></td>
					</tr>
					<tr>
						<td style="width:70px;" class="va-top">Address:</td>
						<td><textarea cols="20" rows="4"  name ="uaddr" readonly="readonly" class="input-text"><%= user.getUserAddr()%></textarea></td>
					</tr>
					<tr>
						<td>Select User:</td>
						<td >
						 <% String active =""; if(user.getUserType().equals("Retailer")){ active ="checked";}%>
						<input type="radio" name="utype" readonly="readonly" value="Retailer" checked="<%= active %>"/> Retailer <br />
						<% active=""; %>
						 <%  if(user.getUserType().equals("Sub-Dealer")){ active ="checked";}%>
                        <input type="radio" name="utype"readonly="readonly" value="Sub-Dealer" checked="<%= active %>"/> Sub-Dealer
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
						<input type="text" size="3" name ="CostFCM" readonly="readonly" value="<%= prodcostbean.getCostFCM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComFCM"  readonly="readonly" class="input-text"  value="<%= user.getComFCM()%>"/>
						</td>
						
					</tr>	
	
					
					<tr>
						<td>SM:</td>
						
						
						<td>
						<input type="text" size="3" name ="CostSM" readonly="readonly" value="<%= prodcostbean.getCostSM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComSM"  readonly="readonly" class="input-text"  value="<%= user.getComSM()%>"/>
						</td>
						
					</tr>
					<tr>
						<td>TM:</td>
						
						<td>
						<input type="text" size="3" name ="CostTM" readonly="readonly" value="<%= prodcostbean.getCostTM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComTM"  readonly="readonly" class="input-text"  value="<%= user.getComTM()%>"/>
						</td>
						
					</tr>
					<tr>
						<td>DTM:</td>
						
						<td>
						<input type="text" size="3" name ="CostDTM" readonly="readonly" value="<%= prodcostbean.getCostDTM()%>"class="input-text"/>
						<input type="text" size="3" name ="ComDTM"  readonly="readonly" class="input-text"  value="<%= user.getComDTM()%>"/>
						</td>
						
					</tr>
					<tr>
						<td><input type="hidden" name="context" value="viewUser"/></td>
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