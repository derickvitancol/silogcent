﻿var num = 0;
var number = 0;
var arrNum = new Array();
var qty = 0;
var qtyLabel;
var event;
var quantityArr = [0, 0, 0, 0, 0, 0, 0];

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
        labelQty.innerHTML = 0;
    }
    else {
        val--;
        labelQty.innerHTML = val;
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