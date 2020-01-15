<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="_183pProject.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Silog Central</title>
    <link rel="stylesheet" type="text/css" href="~/css/OrderCss.css" runat="server"/>
    <script src="/scripts/orderScripts.js" type="text/javascript">
    </script>
</head>
<body>
    <form id="orderForm" runat="server">
        <div class ="menu-grid">
            <div>
                item1
                     
            </div>
            <div>
                item2
            </div>
            <div>
                item3
            </div>
            <div>
                item4
            </div>
            <div>
                item5
            </div>
        </div>
        <div class ="orderPart">
                <ul>
                    <li>
                        <label for="nameText">Name of Customer</label>
                        <input type="text" name="nameText"/>    
                    </li>
                    <li>
                         
                           <table id="itemTable">
                            <tr>
                            <th>Item Made</th>
                            <th>Quantity</th>
                            <th>
                                <input type="button" name="addButton" value="Add item" onclick="newItemrow()"/>
                            </th>
                        </tr>
                        
                        </table>
                          
                    </li>
                        
                    <!--MAKE A TABLE WHICH CONTAINS THE ORDER COMBO BOXES-->
                    <!--THE DIV MUST BE ABLE TO DYNAMICALLY CREATE DIVS-->
                    <li>
                        <label for="commentArea">Comments</label>
                        <textarea name="commentArea"></textarea>
                    </li>

                    <li>
                        <input type="button" name="orderButton" value="Submit Order"/>
                    </li>
                </ul>  
        </div>
    </form>

    
</body>
</html>
