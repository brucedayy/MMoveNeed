var EventUtil = {
    addHandler: function (element, type, handler) {
        if (element.addEventListener) {
            element.addEventListener(type, handler, false);
        } else if (element.attachEvent) {
            element.attachEvent("on" + type, handler);
        } else {
            element["on" + type] = handler;
        }
    }
};
var btnlpointer = document.getElementById("left_pointer");
var btnrpointer = document.getElementById("right_pointer");
var lhandlerover = function () {
    btnlpointer.style.borderColor = "#e1dbdb";
    btnlpointer.style.borderRightColor = "#808080";
};
var rhandlerover = function () {
    btnrpointer.style.borderColor = "#e1dbdb";
    btnrpointer.style.borderLeftColor = "#808080";
};
var lhandlerout = function () {
    btnlpointer.style.borderColor = "#fff";
    btnlpointer.style.borderRightColor = "#aaa4a4";
};
var rhandlerout = function () {
    btnrpointer.style.borderColor = "#fff";
    btnrpointer.style.borderLeftColor = "#aaa4a4";
};
EventUtil.addHandler(btnlpointer, "mouseover", lhandlerover);
EventUtil.addHandler(btnrpointer, "mouseover", rhandlerover);
EventUtil.addHandler(btnlpointer, "mouseout", lhandlerout);
EventUtil.addHandler(btnrpointer, "mouseout", rhandlerout);
var selectli = document.getElementById("selectliareaul");
var adshow = document.getElementById("advershow"); 
var lihandlerover = function () {
    for (var i = 0; i < selectli.children.length; i++) {
        if (this === selectli.children[i]) {
            adshow.style.backgroundImage = "url('adpic/p00" + (i + 1).toString() + ".jpg')";
            this.style.backgroundColor = "red";
        }
        else {
            selectli.children[i].style.backgroundColor = "#000";
        }
    }
}
for (var i = 0; i < selectli.children.length; i++) {
    EventUtil.addHandler(selectli.children[i], "mouseover", lihandlerover);
} 
function funcleft() {
    for (var i = 0; i < selectli.children.length; i++) {
        if (selectli.children[i].style.backgroundColor == "red") {
            selectli.children[i].style.backgroundColor = "#000";
            if (i == 0) {
                adshow.style.backgroundImage = "url('adpic/p00" + (selectli.children.length).toString() + ".jpg')";
                selectli.children[4].style.backgroundColor = "red";
                break;
            }
            else {
                adshow.style.backgroundImage = "url('adpic/p00" + i.toString() + ".jpg')";
                selectli.children[i - 1].style.backgroundColor = "red";
                break;
            }
        }
    }
} 
function funcright() {
    for (var i = 0; i < selectli.children.length; i++) {
        if (selectli.children[i].style.backgroundColor == "red") {
            selectli.children[i].style.backgroundColor = "#000";
            if (i == selectli.children.length - 1) {
                adshow.style.backgroundImage = "url('adpic/p001" + ".jpg')";
                selectli.children[0].style.backgroundColor = "red";
                break;
            }
            else {
                adshow.style.backgroundImage = "url('adpic/p00" + (i + 2).toString() + ".jpg')";
                selectli.children[i + 1].style.backgroundColor = "red";
                break;
            }
        }
    }
}