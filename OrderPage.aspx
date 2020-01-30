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
        
        <input type="button" id="addtocart" name="addCartButton" value="Add to Cart" onclick="AddOrder()"/>
        <input type="button" id="editOrder" name="editOrder" value="Edit Orders" onclick="EditOrder()" disabled=""/>
        <div class ="menu-grid">
            <!--PUT A ADD TO CART BUTTON NA NAKASTICKY-->
            <!--ADD DIV HERE TO CREATE NEW ITEMS TO THE GRID-->
            <!--NOTE: ONLY CHANGE THE NUMBER OF THE NAMES OF THE CONTROLS-->
            <div class="grid-item">
                <input type="button" id="dec1" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label1" id="label1" class="qtyLab">0</asp:label>
                <input runat="server" type="button" id="btn1" class="incBtn" value="+" onclick="incQty(event)"/> 
                Adsilog
                <img src="/css/adsilog.png" alt="Adsilog"/>
                <div class="hoverDiv">
                    Adsilog is a combination of Adobo Egg and Fried Rice.
                </div>
            </div> 
            <div  class="grid-item">
                <input type="button" id="dec2" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label2" id="label2" class="qtyLab">0</asp:label>
                <input type="button" id="btn2" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bacsilog.png" alt="Bacsilog"/>
                Bacsilog
                <div class="hoverDiv">
                    Bacsilog is a combination of Bacon Egg and Fried Rice.
                </div>
            </div>
            <div  class="grid-item">
                <input type="button" id="dec3" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label3" id="label3" class="qtyLab">0</asp:label>
                <input type="button" id="btn3" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bangsilog.png" alt="Bangsilog"/>
                Bangsilog
                <div class="hoverDiv">
                    Bangsilog is a combination of Fried Bangus Egg and Fried Rice.
                </div>

            </div>
            <div  class="grid-item">
                <input type="button" id="dec4" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label4" id="label4" class="qtyLab">0</asp:label>
                <input type="button" id="btn4" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/longsilog.png" alt="Longsilog"/>
                Longsilog
                <div class="hoverDiv">
                    Longsilog is a combination of Longanisa Egg and Fried Rice.
                </div>
            </div>
            <div  class="grid-item">
                <input type="button" id="dec5" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label5" id="label5" class="qtyLab">0</asp:label>
                <input type="button" id="btn5" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/ribsilog.png" alt="Ribsilog"/>
                Ribsilog
                <div class="hoverDiv">
                    Ribsilog is a combination of Pork Ribs Egg and Fried Rice.
                </div>
            </div>
            <div  class="grid-item">
                <input type="button" id="dec6" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label6" id="label6" class="qtyLab">0</asp:label>
                <input type="button" id="btn6" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/sarsilog.png" alt="Sarsilog"/>
                Sarsilog
                <div class="hoverDiv">
                    Sarsilog is a combination of Sardines Egg and Fried Rice.
                </div>
            </div>
            <div  class="grid-item">
                <input type="button" id="dec7" class="decBtn" value="-" onclick="decQty(event)"/>
                <asp:label runat="server" AssociatedControlID="label7" id="label7" class="qtyLab">0</asp:label>
                <input type="button" id="btn7" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/tapsilog.png" alt="Tapsilog"/>
                Tapsilog
                <div class="hoverDiv">
                    Tapsilog is a combination of Tapa Egg and Fried Rice.
                </div>
            </div>
        </div>
        <div class ="order-part">
            Silog Central's Cart
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
                        <input type="button" class="orderButn" name="orderButton" value="Submit Order"/>
                    </li>
                </ul>  
        </div>
    </form>
</body>
</html>
