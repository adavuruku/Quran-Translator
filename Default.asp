<!--#include file ="settings/header.asp"-->
<!--#include file ="settings/connection.asp"-->
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
								<table class='table table-hover'>
									<thead>
										<tr>
											<th >SNo.</th>
											<th>Sura (Arabic).</th>
											<th>Sura (English).</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
								<%
								set rs = Server.CreateObject("ADODB.recordset")
								queryS = "Select * from Surahs"  
								rs.Open queryS, conn
								if Not rs.EOF then
									
									dim path_two
									Item = 1
									'admission is given
									do Until rs.EOF
										'studState =rs.Fields.Item("studState") & " / " & rs.Fields.Item("studLg")
										'studReg =rs.Fields.Item("appID") & " / " & rs.Fields.Item("regNo")
										'studName = rs.Fields.Item("studTitle") & " " & rs.Fields.Item("studFName") & " "  & rs.Fields.Item("studLname")
										path_two = "view.asp?surrah=" & rs.Fields.Item("surah_id")
										Response.write("<tr>")
											Response.write("<td>" & rs.Fields.Item("surah_id") & "</td>")
											Response.write("<td>" & rs.Fields.Item("EnglishName") & "</td>")
											Response.write("<td>" & rs.Fields.Item("ArabicName") & "</td>")
											Response.write("<td><a href='" & path_two &"'><span  class='btn btn-primary hidden-print'>Read</span></a></td>")
										Response.write("<tr>")
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