<%@ Page Language="c#" AutoEventWireup="false" CodeBehind="Default.aspx.vb" %>
<%
	HelloWorldLabel.Text = HttpRuntime.AppDomainAppPath;
	if (!IsPostBack) {
		String mypath = @"d:\websites\pagenweb.org\~clinton\";
		String[] allfiles = System.IO.Directory.GetFiles(mypath);
		String[] alldirs = System.IO.Directory.GetDirectories(mypath);
		String[] all = allfiles.Concat(alldirs).ToArray();
		List<string> files = new List<string>();
		foreach (string filePath in all) {
			files.Add(@filePath);
		}
		HelloWorldLabel.Text = string.Join("<br/>", files.ToArray());
		//string test = System.IO.File.ReadAllText(@"d:\websites\pagenweb.org\~clinton\index.html");
		//FileTextLabel.Text = test;
		
		//System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
        //response.ClearContent();
        //response.Clear();
        //response.ContentType = "text/plain";
        //response.AddHeader("Content-Disposition", "attachment; filename=index.html;");
        //response.TransmitFile(@"d:\websites\pagenweb.org\~clinton\index.html");
        //response.Flush();    
        //response.End();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
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
        <asp:Label runat="server" id="HelloWorldLabel"></asp:Label>
		<asp:Label runat="server" id="FileTextLabel"></asp:Label>
    </div>
    </form>
</body>
</html>