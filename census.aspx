<!DOCTYPE html>
<html lang="en">
  <head>
	<!-- #include file ="header.html" -->
    <title>Census - Clinton County PAGenWeb</title>
  </head>
  <body>
    <!-- #include file ="navbar.html" -->
    <div class="container content">
		<img src="img/flag_census.jpg" class="content-header"/>
		<h2>Transcribed Census Data</h2>
		<p>
			Please note that due to advances in technology and the availability of huge databases, transcribing census materials have become non-cost effective effort and is seldom practiced now unless a small localized group has a purpose for such. Most census records have been transcribed, cataloged, and indexed on Ancestry.com.
			<br/>
			<br/>
			<div class="table-responsive">
				<h4>Clinton County, Federal Census Index</h4>
				<table class="table cctable"> 
					<tr> <th>Year</th> <th>Roll</th> <th>ED's</th> <th>Transcription Status</th> <th>Transcriber</th> </tr> 
					<tr> <td>1840</td> <td>M704-450</td> <td></td> <td></td> <td></td> </tr> 
					<tr> <td>1850</td> <td>M432-768</td> <td></td> <td><a href="http://ftp.us-census.org/pub/usgenweb/census/pa/clinton/1850/"><img src="img/cp-comp-proof.gif"></a></td> <td>Kimberly K. Loar</td> </tr> 
					<tr> <td>1860</td> <td>M653-1097</td> <td></td> <td></td> <td></td> </tr> 
					<tr> <td>1870</td> <td>M593-1328</td> <td><a id="twps" href="http://www.us-census.org/states/pennsylvania/teams/Clinton1870.htm">Twps</a></td> <td><a href="http://ftp.us-census.org/pub/usgenweb/census/pa/clinton/1870/"><img src="img/cp-part.gif"></a><br><a href="http://www.usgwcensus.org/cenfiles/pa/clinton/1870/"><img src="img/acp-partial.gif"></a></td> <td id="need"><a href="">Team Volunteers<br>Needed</a></td> </tr> 
					<tr> <td>1880</td> <td>T9-1113</td> <td></td> <td><a href="http://www.familysearch.org/Eng/Search/frameset_search.asp?PAGE=census/search_census.asp"><img src="img/family-search.gif"></a></td> <td>FamilySearch<br>Website</td> </tr> 
					<tr> <td>1890</td> <td>M123-85</td> <td></td> <td></td> <td></td> </tr> 
					<tr> <td>1900</td> <td>T623-1397</td> <td><a id="twps" href="http://www.us-census.org/states/pennsylvania/teams/Clinton1900.htm">ED's</a></td> <td></td> <td></td> </tr> 
					<tr> <td>1910</td> <td>T624-1332</td> <td></td> <td></td> <td></td> </tr> 
					<tr> <td>1920</td> <td>T625-1554</td> <td></td> <td></td> <td></td> </tr> 
					<tr> <td>1930</td> <td>T626-2021<br>T626-2022</td> <td><a id="twps" href="http://www.us-census.org/states/pennsylvania/teams/Clinton1930.htm">ED's</a></td> <td></td> <td></td> </tr> 
				</table>
			</div>
			<br/>
			<div>
				<script type="text/javascript">
					$(function() {
						$("twpData").flexible();
					});
					function openRawText(item) {
						let file = "content/census/"+$(item).parent().attr("id")+".txt";
						console.log('Opening raw -> ', file);
						window.open(file);
					}
					function loadTextArea(filename) {
						let filepath = "content/census/"+filename+".txt";
						console.log('Loading text file -> ', filepath);
						$("#twpText").text(filepath);
						$.ajax({
							url : filepath,
							dataType: "text",
							success : function (data) {
								$(".twpText").text(data);
							}
						});
					}
				</script>
				<h4>Township Census Data</h4>
				<div style="display: flex;">
					<div class="twpList" align=center>
						<ul style="list-style: none; padding: 0; float: left; max-width: 300px; min-width: 200px; display:inline-block:">
							<li class="twpbtn"><div class="twp" id="baldeagletwp" onclick="loadTextArea(this.id)">Bald Eagle Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="beechcreektwp" onclick="loadTextArea(this.id)">Beech Creek Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="chapmantwp" onclick="loadTextArea(this.id)">Chapman Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="colebrooktwp" onclick="loadTextArea(this.id)">Colebrook Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="crawfordtwp" onclick="loadTextArea(this.id)">Crawford Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="dunstabletwp" onclick="loadTextArea(this.id)">Dunstable Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="gallahertwp" onclick="loadTextArea(this.id)">Gallaher Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="greenetwp" onclick="loadTextArea(this.id)">Greene Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="grovetwp" onclick="loadTextArea(this.id)">Grove Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="katlingtwp" onclick="loadTextArea(this.id)">Katling Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="lamartwp" onclick="loadTextArea(this.id)">Lamar Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="leidytwp" onclick="loadTextArea(this.id)">Leidy Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="lockhaventwp" onclick="loadTextArea(this.id)">Lock Haven Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="logantwp" onclick="loadTextArea(this.id)">Lumber Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="lumbertwp" onclick="loadTextArea(this.id)">Logan Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="portertwp" onclick="loadTextArea(this.id)">Porter Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="waynetwp" onclick="loadTextArea(this.id)">Wayne Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
							<li class="twpbtn"><div class="twp" id="woodwardtwp" onclick="loadTextArea(this.id)">Woodward Twp. <a href="javascript:void(0)" onclick="openRawText(this)" id="raw">(Raw)</a></div></li>
						</ul>
					</div>
					<div class="textWrapper boxsizingBorder" style="float:left; flex-grow: 1; height: auto;"><textarea class="twpText boxsizingBorder" style="flex-grow: 1;"> </textarea></div>
				</div>
			</div>
		</p>
    </div>
	<!-- #include file ="footer.html" -->
  </body>
</html>
