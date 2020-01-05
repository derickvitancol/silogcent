<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="_183pProject.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="orderForm" runat="server">
        <div class ="menuGrid">
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
                        <table id="itemTable" runat="server">
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
                        <input type="button" name="orderButton" value="Submit Order" onclick="func()"></input>
                    </li>
                </ul>  
        </div>
    </form>
</body>
</html>
