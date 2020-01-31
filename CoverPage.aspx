<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoverPage.aspx.cs" Inherits="HomePage.CoverPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Silog Central</title>
        <link href="css/style.css" rel="stylesheet"  />
    </head>
    <body>
        <header>

        <div class="main">
            <ul>
                <li class="active"><a href="#">HOME</a></li>
                <li><a href="#About">ABOUT</a></li>
            </ul>
            
        </div>
       <div class="logo">
           <img src="Images/Logo.png"/>
       </div>
        <div class="title">
            <h1>SILOG CENTRAL</h1>
            <h3>"Finest Silog in the Philippines"</h3>
        </div>
        <div class="button">
            <a href= "#" id="btn-menu">LOOK IN MENU</a>
        </div> 
        <div class="loginbox">
        <img src="Images/LogoAvatar.png" class="avatar"/>
            <h1>Register Here</h1>
            <form runat="server">
               
                <div id="fullname">
                     <p>FULL NAME</p>
                     <asp:TextBox ID="fname" placeholder="Ex. Dizon Almer Dave" runat="server" />
                </div>
                <div>
                    <p>House Number</p>
                    <div class="HouseNumber">
                        <asp:TextBox ID="houseNo_textBox" placeholder="14" runat="server" />
                    </div>
                    <div class="Street">
                        <p>Street</p>
                        <asp:TextBox ID="street_textBox" placeholder="Ex. Serrano Compound" runat="server" />
                    </div>
                     <p>City</p>
                    <asp:TextBox ID="city_textBox" Text="Quezon City" runat="server" />
                    <p>Barangay</p>
                    <asp:DropDownList ID="barangay" runat="server">
                        <asp:ListItem Text="Nova Proper" Value="Nova Proper"/>
                        <asp:ListItem Text="Sauyo" Value="Sauyo"/>
                        <asp:ListItem Text="San Bartolome" Value="San Bartolome"/>
                        <asp:ListItem Text="Tandang Sora" Value="Tandang Sora" />
                    </asp:DropDownList>
                   
                </div>
                <br />
                <p>Mobile Number</p>
                <asp:TextBox ID="mobile_textBox" Placeholder="Ex. +63912345678" runat="server" />
                <p>Phone Number</p>
                <asp:TextBox ID="phone_textBox" Placeholder="Ex. 1234567" runat="server" />
                <asp:Button ID="submit" name= "" text="Submit" runat="server" OnClick="submit_click" />
                
            </form>

        </div>
        <div id="three-container"></div>
        </header>
    </body>
</html>
