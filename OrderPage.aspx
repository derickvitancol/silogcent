<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="_183pProject.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Silog Central</title>
    <link rel="stylesheet" type="text/css" href="~/css/OrderCss.css" runat="server"/>
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
                <div class="fadedBox">
                    <div class="desc">Adsilog</div>
                </div>
            </div> 
            <div>
                item2
                <input type="button" id="dec2" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label2" class="qtyLab">0</label>
                <input type="button" id="btn2" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bacsilog.png" alt="Bacsilog"/>
                <div class="fadedBox">
                    <div class="desc">Bacsilog</div>
                </div>
            </div>
            <div>
                item3
                <input type="button" id="dec3" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label3" class="qtyLab">0</label>
                <input type="button" id="btn3" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/bangsilog.png" alt="Bangsilog"/>
                <div class="fadedBox">
                    <div class="desc">Bansilog</div>
                </div>
            </div>
            <div>
                item4
                <input type="button" id="dec4" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label4" class="qtyLab">0</label>
                <input type="button" id="btn4" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/longsilog.png" alt="Longsilog"/>
                <div class="fadedBox">
                    <div class="desc">Longsilog</div>
                </div>
            </div>
            <div>
                item5
                <input type="button" id="dec5" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label5" class="qtyLab">0</label>
                <input type="button" id="btn5" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/ribsilog.png" alt="Ribsilog"/>
                <div class="fadedBox">
                    <div class="desc">Ribsilog</div>
                </div>
            </div>
            <div>
                item6
                <input type="button" id="dec6" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label6" class="qtyLab">0</label>
                <input type="button" id="btn6" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/sarsilog.png" alt="Sarsilog"/>
                <div class="fadedBox">
                    <div class="desc">Sarsilog</div>
                </div>
            </div>
            <div>
                item7
                <input type="button" id="dec7" class="decBtn" value="-" onclick="decQty(event)"/>
                <label id="label7" class="qtyLab">0</label>
                <input type="button" id="btn7" class="incBtn" value="+" onclick="incQty(event)"/> 
                <img src="/css/tapsilog.png" alt="Tapsilog"/>
                <div class="fadedBox">
                    <div class="desc">Tapsilog</div>
                </div>
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

    <script>
        var num = 0;
        var number = 0;
        var arrNum = new Array();
        var qty = 0;
        var qtyLabel;

        function newItemrow() {

            var curtable = document.getElementById("itemTable");
            var nrow = curtable.insertRow();
            nrow.setAttribute("id", "row" + num);
            var c1 = nrow.insertCell();
            var c2 = nrow.insertCell();
            var c3 = nrow.insertCell();

            var newSel = document.createElement("select");

            var decQty = document.createElement("input");
            var incQty = document.createElement("input");
            qtyLabel = document.createElement("label");

            var removeBut = document.createElement("input");

            decQty.setAttribute("type", "button");
            decQty.setAttribute("value", "-");
            decQty.setAttribute("onclick", "decQty(event)");
            decQty.setAttribute("id", "dec" + num);

            incQty.setAttribute("type", "button");
            incQty.setAttribute("value", "+");
            incQty.setAttribute("id", "btn" + num);
            incQty.setAttribute("onclick", "incQty(event)");

            removeBut.setAttribute("type", "button");
            removeBut.setAttribute("value", "X");
            removeBut.setAttribute("onclick", "removeRow(event)");
            removeBut.setAttribute("id", "rem" + num);

            qtyLabel.setAttribute("id", "label" + num);
            qtyLabel.innerHTML = 0;

            c1.appendChild(newSel);
            c2.appendChild(decQty);
            c2.appendChild(qtyLabel);
            c2.appendChild(incQty);
            c3.appendChild(removeBut);
            arrNum[num];
            num = num + 1;
            qty = 0;
            number = number + 1;
        }

        function decQty(event) {
            var elemId = event.target.id;
            var elemnum = elemId.replace("dec", "");
            var labelQty = document.getElementById("label" + elemnum);

            var val = parseInt(labelQty.innerHTML, 10);
            if (val == 0) {
                qtyLabel.innerHTML = 0;
            }
            else {
                val--;
                qtyLabel.innerHTML = val;
            }
        }

        function incQty(event) {
            var elemId = event.currentTarget.id;
            var elemnum = elemId.replace("btn", "");
            var labelQty = document.getElementById("label" + elemnum);
            var val = parseInt(labelQty.innerHTML, 10);

            val = val + 1;
            labelQty.innerHTML = val;
        }

        function removeRow(event) {
            var elemId = event.currentTarget.id;

            var elemnum = elemId.replace("rem", "");
            var rowElem = document.getElementById("row" + elemnum);
            rowElem.parentElement.removeChild(rowElem);
        }

        window.onload = newItemrow;
    </script>
</body>
</html>
