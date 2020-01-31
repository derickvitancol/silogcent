<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="silogcent.AdminPage" %>

<!DOCTYPE HTML>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="~/css/AdminCss.css" />
    </head>
    <body>
        <form runat="server">
            <div>
            <!--POSITION 1-->
            <div>
            Item 1:
            <div>
                <input type="button" id="fin1" value="Order Finished">
             
            </div>
            
            </div>
            <!--POSITION 2-->
            <div>
                Item 2:
                <div>
                    <input type="button" id="fin2" value="Order Finished">
                   
                </div>
            </div>
            <!--POSITION 3-->
            <div>
                Item 3
                <div>
                    <input type="button" id="fin3" value="Order Finished">
                    
                </div>
            </div>
            <!--POSITION 4-->
            <div>
                Item 4
                <div>
                    <input type="button" id="fin4" value="Order Finished">
                 
                </div>
            </div>
            <!--POSITION 5-->
            <div>
                Item 5
                <div>
                    <input type="button" id="fin5" value="Order Finished">
            
                </div>
            </div>
        </div>
        <!--DIV FOR THE PRICES DISPLAY-->
        <!--DATA WILL BE FROM THE DATABASE-->
        <div>
            <table>
                <tr>
                   <th>Item Name</th>
                   <th>Item Price</th>
                   <th></th> 
                </tr>
                <tr>
                    <td>Adsilog</td>
                    <td><asp:textbox ID="box1" runat= "server" ></asp:textbox></td>
                    <td><input type="button" value="Edit Price" id="item1" runat="server"/></td>
                </tr>
                <tr>
                    <td>Bacsilog</td>
                    <td></td>
                    <td><input type="button" value="Edit Price" id="item2"  runat="server"/></td>
                </tr>
                <tr>
                    <td>Bangsilog</td>
                    <td></td>
                    <td><input type="button" value="Edit Price" id="item3"  runat="server"/></td>
                </tr>
                <tr>
                    <td>Longsilog</td>
                    <td></td>
                    <td><input type="button" value="Edit Price" id="item4"  runat="server"/></td>
                </tr>
                <tr>
                    <td>Ribsilog</td>
                    <td></td>
                    <td><input type="button" value="Edit Price" id="item5"  runat="server"/></td>
                </tr>
                <tr>
                    <td>Sarsilog</td>
                    <td></td>
                    <td><input type="button" value="Edit Price" id="item6"  runat="server"/></td>
                </tr>
                <tr>
                    <td>Tapsilog</td>
                    <td></td>
                    <td><input type="button" value="Edit Price" id="item7"  runat="server"/></td>
                </tr>
            </table>
        </div>
        
        </form>
        <!--DIV FOR THE ITEM QUERY-->
        
    </body>
</html>