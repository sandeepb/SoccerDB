<?php
	include_once("commonprint.php");
$useriderror=$passworderror=$emailerror=$firstnameerror=$lastnameerror="noerror";
$useriderrorstring=$passworderrorstring=$emailerrorstring=$firstnameerrorstring=$lastnameerrorstring="";
if(isset($_POST["firsttime"]) && $_POST["firsttime"]==1)
{
	$errorcode=checkforerrors();
	if(!($errorcode ^ 0))
	{
		insertvalues();
		header("Location: registrationsucceeded.php");
	}
	
	if($errorcode & 1)
	{
		$useriderror="error";
		$useriderrorstring="Userid already exists. Please select another";
	}
	if($errorcode & 2)
	{
		$passworderror="error";
		$passworderrorstring="The two passwords do not match";
	}
	
}
printdefault("New User Registration");
$form="
<div id=\"content\">
<form name=\"newuserform\" action=\"registration.php\" method=\"post\">
<table >
	<tr>
		<td class=".$useriderror.">User id</td><td>".$useriderrorstring."</td><td> <input type=\"text\" name=\"userid\" value=\"".$_POST["userid"]."\"></input><br><span
class=\"small\">Enter a user id that you will use to logon to the site</span></td>
	</tr>
	
	<tr>
		<td class=".$passworderror.">Password</td><td>".$passworderrorstring."</td><td> <input type=\"password\" name=\"password\"></input></td>
	</tr>
	<tr>
		<td class=".$passworderror.">Confirm Password</td><td></td><td> <input type=\"password\" name=\"confirmpassword\"></input></td>
	</tr>
	<tr>
		<td class=".$emailerror.">Enter email address</td><td>".$emailerrorstring."</td><td><input type=\"text\" name=\"email\"  value=\"".$_POST["email"]."\"></input></td>
	</tr>
	<tr>
		<td class=".$firstnameerror.">Enter First Name</td><td>".$firstnameerrorstring."</td><td><input type=\"text\" name=\"firstname\" value=\"".$_POST["firstname"]."\"></input></td>
	</tr>
	<tr>
		<td class=".$lastnameerror.">Enter Last Name</td><td>".$lastnameerrorstring."</td><td><input type=\"text\" name=\"lastname\"  value=\"".$_POST["lastname"]."\"></input></td>
	</tr>
	<tr>
		<input type=\"hidden\" name=\"firsttime\" value=1></input>
	</tr>
	<tr>
		<td><input type=\"submit\" name\"Submit\" value=\"Go\"></td>
	</tr>
</table>
</form>
</div>
";
print $form;
printender();


function checkforerrors()
{
include_once("oralib.php");
 $returncode=0;
 $query="select * from user_account where user_id = '".$_POST["userid"]."'";
 $rowarray=getqueryanswer($query);
 if(count($rowarray)>0)
 {
 	$returncode = $returncode | 1;
 }
 
 if(strcmp($_POST["password"],$_POST["confirmpassword"]))
 {
 	$returncode = $returncode | 2;
 }
 return $returncode;
}

function insertvalues()
{
include_once("oralib.php");
$query="insert into user_account values ( '".$_POST["userid"]."','".$_POST["password"]."','".$_POST["firstname"]." ".$_POST["lastname"]."','".$_POST["email"]."','user')";
insertquery($query);  
}
	printender();
	
?>
