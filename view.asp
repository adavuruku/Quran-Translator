<!--#include file ="settings/header.asp"-->
<!--#include file ="settings/connection.asp"-->
<%
dim surra
if Request.QueryString("surrah") ="" then
	Response.Redirect ("Default.asp" )
else
	surra = CInt(Request.QueryString("surrah"))
end if
%>
<body style="width:80%;margin:auto">
			<!-- MIDDLE -->
			<div class="row" style="margin-top:5px;">
				<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
					
				</div>
				
				<div class=" col-xs-12 col-sm-8 col-md-8 col-lg-8">
					<div class="panel price panel-red" style="color: #333;background-color: #f9f9f9;border-color: #ccc;
    border-bottom: 1px solid #ccc;text-shadow: 0px 2px 0px rgba(250, 250, 250, .7);">
						<div class="panel-heading  text-center" style="color:#fff;background-color: #608BB4;">
							<h3>QURAN IN 39 LANGUAGES INCLUDING ARABIC</h3>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<%
									dim verse, arabic , surah
									set rs = Server.CreateObject("ADODB.recordset")
									queryS = "Select * from Surahs where surah_id=" & surra 
									rs.Open queryS, conn
									if Not rs.EOF then
										arabic= rs.Fields.Item("ArabicName")
										surah= rs.Fields.Item("EnglishName")
									else
										Response.Redirect ("Default.asp" )	
									end if
									rs.Close
								%>
							<hr/> 
								<h3> Suratul : <span><%=surah%> / <%=arabic%></span> <h3>
							<hr/>
							<p></p>
							<%
								'set rs = Server.CreateObject("ADODB.recordset")
								queryS = "Select * from Quran where surah_id=" & surra
								rs.Open queryS, conn
								if Not rs.EOF then
									dim path_two
									Item = 1
									'admission is given
									do Until rs.EOF
										Response.write("<hr/>")
											Response.write("<p> Verse - " & Item & "</p><h3>" & rs.Fields.Item("Albanian") & "</h3>")
										Response.write("<hr/>")
											Response.write("<h3>" & rs.Fields.Item("English") & "</h3>")
										Response.write("<hr/>")
										Item = Item + 1
										rs.MoveNext
									Loop
								end if
								%>
							</div>
								
								
								
								
					</div>
				</div>
				
				<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
					
				</div>
			</div>
		</body>
</html>