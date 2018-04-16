<%@ Page Title="Title" Language="C#" MasterPageFile="~/_home/Site.Master" AutoEventWireup="true" CodeBehind="db.aspx.cs" Inherits="Test.Web.Development.WebForm1" %>

<asp:Content contentplaceholderID="MainContent" runat="server">
	<script src="../Scripts/Development/Development.js"></script>
	<link rel="stylesheet" href="../css/Development/development.css" type="text/css" runat="server" />
	<section runat="server">
		<h1>Test Database Stuff</h1>
		<section id="db_form" runat="server">
			<asp:Label ID="lbDropdown" runat="server"></asp:Label>
			<asp:DropDownList ID="ddlTest" runat="server">
				<asp:ListItem>1st</asp:ListItem>
				<asp:ListItem>2nd</asp:ListItem>
				<asp:ListItem>3rd</asp:ListItem>
				<asp:ListItem>4th</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox ID="QueryText" ClientIDMode="Static" runat="server"></asp:TextBox>
			<asp:Button runat="server" ID="btn_submit" Text="Submit DB Query via code behind" onclick="btn_submit_Click"/>
			<input type="button" ClientIDMode="Static" value="Submit via aJax" id="ajaxButton" runat="server" />
		</section>
	
		<span ID="nStatus" ClientIDMode="static" name="nStatus" runat="server"></span>
		<span ID="aStatus" ClientIDMode="Static" name="aStatus" runat="server"></span>
	</section>
	<section>
		<hr />
		<input type="button" id="dbUpdate" value="Update DB" class="btn-success" />
		<span ID="uStatus" ClientIDMode="static" name="uStatus" runat="server"></span>
	</section>
</asp:Content>
	
