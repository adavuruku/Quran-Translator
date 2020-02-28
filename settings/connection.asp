<%
strProvider = "Provider=Microsoft.Jet.OLEDB.4.0;data source=" & server.mappath("/quran/Al_Quran.mdb")
'	strProvider = "Provider=Microsoft.JET.OLEDB.4.0;Data Source=C:\maths\studentrecord.mdb;"
'	Set objConn = server.createobject("ADODB.Connection") 
	'objConn.Open strProvider
	
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Open(strProvider)
%>