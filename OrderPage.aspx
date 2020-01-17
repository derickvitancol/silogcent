<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="_183pProject.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Silog Central</title>
    <link rel="stylesheet" type="text/css" href="~/css/OrderCss.css" runat="server"/>
    <script src="/scripts/orderScripts.js" type="text/javascript"></script>
</head>
<body>
    <form id="orderForm" runat="server">
        <div class ="menu-grid">
            <!--ADD DIV HERE TO CREATE NEW ITEMS TO THE GRID-->
            <!--NOTE: ONLY CHANGE THE NUMBER OF THE NAMES OF THE CONTROLS-->
            <div>
                item1
                <input type="button" id="dec1" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label1" class="qtyLab">0</label>
                <input type="button" id="btn1" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/adsilog.png" alt="Adsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Adsilog</div>
                </div>-->
            </div> 
            <div>
                item2
                <input type="button" id="dec2" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label2" class="qtyLab">0</label>
                <input type="button" id="btn2" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bacsilog.png" alt="Bacsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Bacsilog</div>
                </div>-->
            </div>
            <div>
                item3
                <input type="button" id="dec3" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label3" class="qtyLab">0</label>
                <input type="button" id="btn3" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bangsilog.png" alt="Bangsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Bansilog</div>
                </div>-->
            </div>
            <div>
                item4
                <input type="button" id="dec4" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label4" class="qtyLab">0</label>
                <input type="button" id="btn4" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/longsilog.png" alt="Longsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Longsilog</div>
                </div>-->
            </div>
            <div>
                item5
                <input type="button" id="dec5" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label5" class="qtyLab">0</label>
                <input type="button" id="btn5" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/ribsilog.png" alt="Ribsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Ribsilog</div>
                </div>-->
            </div>
            <div>
                item6
                <input type="button" id="dec6" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label6" class="qtyLab">0</label>
                <input type="button" id="btn6" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/sarsilog.png" alt="Sarsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Sarsilog</div>
                </div>-->
            </div>
            <div>
                item7
                <input type="button" id="dec7" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label7" class="qtyLab">0</label>
                <input type="button" id="btn7" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/tapsilog.png" alt="Tapsilog"/>
                <!--<div class="fadedBox">
                    <div class="desc">Tapsilog</div>
                </div>-->
            </div>
        </div>
        <div class ="orderPart">
            <div class="cartLabel">
                <label class="cartLabel" for="cartLabel">Silog Central's Cart</label>
                <img class="cartLabel" src="/css/ShoppingCart.png" alt="Shopping Cart Logo"/>
            </div>
            <div class="itemPart">
                <table id="itemTable">
                    <tr>
                        <th>Item Made</th>
                        <th>Quantity</th>
                        <!--<th>
                            <input type="button" name="addButton" value="Add More Item" onclick="newItemrow()"/>
                        </th>-->
                    </tr>
                </table>
                <div class="commentPart">
                    <label for="commentArea">Comments</label>
                    <textarea name="commentArea"></textarea>
                </div>
                <div>
                    <input class="orderButn" type="button" name="orderButton" value="Submit Order" onclick="func()"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
