<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="_183pProject.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Silog Central</title>
    <link rel="stylesheet" type="text/css" href="~/css/OrderCss.css" runat="server"/>
    <script src="/scripts/orderScripts.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="#"/>
</head>
<body>
    <form id="orderForm" runat="server">
        <!--PUT A ADD TO CART BUTTON NA NAKASTICKY-->
        <input type="button" id="addtocart" name="addCartButton" value="Add to Cart" onclick="AddOrder()"/>
        <input type="button" id="editOrder" name="editOrder" value="Edit Orders" onclick="EditOrder()" disabled=""/>
        <div class ="menu-grid">
            <!--ADD DIV HERE TO CREATE NEW ITEMS TO THE GRID-->
            <!--NOTE: ONLY CHANGE THE NUMBER OF THE NAMES OF THE CONTROLS-->
            <div>
                item1
                <input type="button" id="dec1" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label1" id="label1" class="qtyLab">0</asp:label>
                <input runat="server" type="button" id="btn1" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/adsilog.png" alt="Adsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Adsilog</div>
                </div>-->
            </div> 
            <div>
                item2
                <input type="button" id="dec2" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label2" id="label2" class="qtyLab">0</asp:label>
                <input type="button" id="btn2" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bacsilog.png" alt="Bacsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Bacsilog</div>
                </div>-->
            </div>
            <div>
                item3
                <input type="button" id="dec3" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label3" id="label3" class="qtyLab">0</asp:label>
                <input type="button" id="btn3" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bangsilog.png" alt="Bangsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Bansilog</div>
                </div>-->
            </div>
            <div>
                item4
                <input type="button" id="dec4" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label4" id="label4" class="qtyLab">0</asp:label>
                <input type="button" id="btn4" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/longsilog.png" alt="Longsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Longsilog</div>
                </div>-->
            </div>
            <div>
                item5
                <input type="button" id="dec5" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label5" id="label5" class="qtyLab">0</asp:label>
                <input type="button" id="btn5" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/ribsilog.png" alt="Ribsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Ribsilog</div>
                </div>-->
            </div>
            <div>
                item6
                <input type="button" id="dec6" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label6" id="label6" class="qtyLab">0</asp:label>
                <input type="button" id="btn6" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/sarsilog.png" alt="Sarsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Sarsilog</div>
                </div>-->
            </div>
            <div>
                item7
                <input type="button" id="dec7" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label7" id="label7" class="qtyLab">0</asp:label>
                <input type="button" id="btn7" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/tapsilog.png" alt="Tapsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Tapsilog</div>
                </div>-->
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
                            <th>Item Name</th>
                            <th>Quantity</th>
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
