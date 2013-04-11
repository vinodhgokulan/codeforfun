<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Box HTML Code - www.PSDGraphics.com</title>

<link href="css/login-box.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div style="padding: 100px 0 0 250px;">

<div id="login-box">

<h2>Login</h2>
<p>Billing made Easy! Manage all your records in a few mouse clicks!!!</p>
<br />
<br />
<form name="login" action="mbsys" method="post" onsubmit="return check(userid,pass)">

<div id="login-box-name" style="margin-top:20px;">UserName:</div>
<div id="login-box-field" style="margin-top:20px;">
<input class="form-login" name="userid" title="Username" value="" size="30" maxlength="2048" /></div>

<div id="login-box-name">Password:</div>
<div id="login-box-field">
<input type="password" class="form-login" name="pass" title="Password" value="" size="30" maxlength="2048" /></div>
<br />
<input type="hidden" name="context" value="login"/>
<br />
<input type="image" src="images/login-btn.png"  width="103" height="42" style="margin-left:90px;" onSubmit="return alert("Hi")">

</form>

<script language="javascript">

function check(userid,pass)
{
	if(userid.value == "" || pass.value == "")
		{
		   alert("Error Password or Username")
		   return false;
		}
	
	
	}

</script>


</div>
</div>
</body>
</html>
