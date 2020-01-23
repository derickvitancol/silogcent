var num = 0;
var number = 0;
var arrNum = new Array();
var qty = 0;
var qtyLabel;
var event;
var orderNotBlank = false;
var ordList;
//var quantityArr = [0, 0, 0, 0, 0, 0, 0];




class OrderList {
    constructor()
    {
        //ITEMS 1 - 7 CORRESPOND TO LABELS 1 -7 
        this.itemArr = [0, 0, 0, 0, 0, 0, 0];
        this.NameArr = ["adsilog", "bacsilog", "bangsilog", "longsilog", "ribsilog", "sarsilog", "tapsilog"];
    }

    static clearQuantity()
    {
        var counter = 1;
        var editLabel;

        while (counter < 8) {
            editLabel = document.getElementById("label" + counter);
            editLabel.innerHTML = "0";
            counter = counter + 1;
        }

    }

    static clearOrder()
    {
        var addCartButton = document.getElementById("addtocart");
        var editCart = document.getElementById("editOrder");
        var itemTable = document.getElementById("itemTable");
        var len = itemTable.rows.length - 1;

        while (len > 0) {
            itemTable.deleteRow(len);
            len = len - 1;
        }
        editCart.setAttribute("disabled", "");
        addCartButton.removeAttribute("disabled");
    }

    //Function to add items to cart 
    //LOCK THE MENU AFTER CLICKING THIS
    static AddtoCart(ord) {
        var addCartButton = document.getElementById("addtocart");
        var editCart = document.getElementById("editOrder");
        var counter = 0;
        var name = "label";
        var num = counter +1;
        var sourceLabel;
        var nrow;
        var c1;
        var c2;

        var parentTable = document.getElementById("itemTable");

        while (counter < 6)
        {
            sourceLabel = document.getElementById(name + num);

            ord.itemArr[counter] = sourceLabel.innerHTML;
            if (ord.itemArr[counter] > 0) {
                nrow = parentTable.insertRow();

                //NEW CELLS 
                c1 = nrow.insertCell();
                c2 = nrow.insertCell();

                //CREATE THE ELEMETNS TO BE PLACED IN THE CELLS
                c1.innerHTML = ord.NameArr[counter];
                c2.innerHTML = ord.itemArr[counter];


                nrow.appendChild(c1);
                nrow.appendChild(c2);

                parentTable.appendChild(nrow);
                orderNotBlank = true;
            }
            counter = counter + 1; 
            num = counter + 1;

           
        }

        if (orderNotBlank == true)
        {
            addCartButton.setAttribute("disabled", "");
            editCart.removeAttribute("disabled");
        }
        
        //SETS THE TEXTS ON THE GRID TO 0
        OrderList.clearQuantity();

    }

    static EditCart(ord) {
        ord.itemArr = [0, 0, 0, 0, 0, 0, 0];
        orderNotBlank = false;
       
        OrderList.clearOrder()
    }

    //CLEARS THE QUANTITIES IN THE GRID
   

}

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

function AddOrder() {
    ordList = new OrderList();
    OrderList.AddtoCart(ordList);
}

function EditOrder() {

    OrderList.EditCart(ordList);

}



