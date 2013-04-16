<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />

	    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.17.js"></script>
		<script type="text/javascript" src="js/jquery.annotate.js"></script>
		<script type="text/javascript" src="js/jquery.Jcrop.js"></script>
		<script type="text/javascript" src="js/jquery.color.js"></script>
		



    <link href="css/annotation.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to my First JQUERY annotation example
    </h2>
    <p>
    <div>
			<img id="toAnnotate" src="images/trafalgar-square-annotated.jpg" alt="Trafalgar Square" width="600" height="398" />
		</div>
    </p>
    <p>
       
		<table border="1">
<tr>
<td>
            <asp:Label ID="Label1" runat="server" Text="Top"></asp:Label></td>
<td>
    
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
                    <asp:Label ID="Label2" runat="server" Text="Left"></asp:Label></td>
<td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
                    <asp:Label ID="Label3" runat="server" Text="width"></asp:Label></td>
<td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>
                            <asp:Label ID="Label4" runat="server" Text="Height"></asp:Label></td>
<td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td>
                                    <asp:Label ID="Label5" runat="server" Text="Text"></asp:Label></td>
<td>
                                        <asp:TextBox ID="TextBox5" runat="server" Height="58px" Width="125px"></asp:TextBox></td>
</tr>
<tr>
<td>
                                            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" /></td>
<td><div id="result"></div></td>
</tr>


	
</table>

    </p>
   

   <p>
   
   <script type="text/javascript">
       <asp:Literal ID="Literal1" runat="server"></asp:Literal>
       </script>
   </p>
</asp:Content>
