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

    <script>
        window.onload = newItemrow;
        var num = 0;
        var arrNum = new Array();
        var qty = 0;
        var qtyLabel;
        function newItemrow() {
            var name = "nlabel" + num;
            var n1 = "nrange" + num;
            var par = "qtyLoad(" + name + "," + n1 + ")";

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

            /*var newRange = document.createElement("input");
            var newLabel = document.createElement("label");*/
            var removeBut = document.createElement("input");

            /*newRange.setAttribute("type","range");
            newRange.setAttribute("id",n1);
            newRange.setAttribute("min","0");
            newRange.setAttribute("max","10");
            newRange.setAttribute("onclick",par);*/

            decQty.setAttribute("type", "button");
            decQty.setAttribute("value", "-");
            decQty.setAttribute("onclick", "decQty()");

            incQty.setAttribute("type", "button");
            incQty.setAttribute("value", "+");
            incQty.setAttribute("onclick", "incQty()");

            removeBut.setAttribute("type", "button");
            removeBut.setAttribute("value", "X");
            removeBut.setAttribute("onclick", "removeRow()");

            //newLabel.setAttribute("id",name);
            //newLabel.innerHTML = newRange.value;

            qtyLabel.setAttribute("id", qty);
            qtyLabel.innerHTML = 0;

            c1.appendChild(newSel);
            c2.appendChild(decQty);
            c2.appendChild(qtyLabel);
            c2.appendChild(incQty);
            c3.appendChild(removeBut);
            arrNum[num];
            num = num + 1;
            qty = 0;
        }

        function decQty() {
            if (qty == 0) {
                qtyLabel.innerHTML = 0;
            }
            else {
                qty--;
                qtyLabel.innerHTML = qty;
            }
            return;
        }

        function incQty() {
            qty++;
            qtyLabel.innerHTML = qty;
            return;
        }

        function qtyLoad(val, ran) {
            var lab = document.getElementById(val);
            var r = document.getElementById(ran);
            lab.innerHTML = r.value;
        }

        function func() {

        }

        function removeRow() {

        }
        </script>
</body>
</html>
