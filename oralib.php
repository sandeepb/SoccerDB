<?php
function connect_to_db()
{
$user='sandeep1';
$pass='sandeep1';
putenv("ORACLE_BASE=/usr/local/oracle");
putenv("ORACLE_HOME=/usr/local/oracle/product/9.2.0");
putenv("LD_LIBRARY_PATH=/usr/local/oracle/product/9.2.0/lib");
putenv("PATH=/usr/local/oracle/product/9.2.0");
putenv("TNS_ADMIN=/afs/umbc.edu/common/etc/tns_admin");
putenv("ORACLE_SID=GL");
putenv("TWO_TASK=GL");
$conn=ora_logon($user,$pass);
return $conn;
}


function getqueryanswer( $query)
{
$conn=connect_to_db();
$mycursor=ora_open($conn);
ora_parse($mycursor,$query,0);
ora_exec($mycursor);
while(ora_fetch_into($mycursor,&$results))
{
	$returnarray[]=$results;
}
ora_close($mycursor);
return $returnarray;
}

function insertquery( $query)
{
$conn=connect_to_db();
$mycursor=ora_open($conn);
ora_parse($mycursor,$query,0);
ora_exec($mycursor);
ora_close($mycursor);
}

?>
