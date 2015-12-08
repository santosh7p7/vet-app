// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
// require bootstrap should be on top
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require canvasjs.min
//= require skinnytip 
//= require_tree .

function createCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else var expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}

function ShowDiv(ele) {
  document.getElementById(ele).style.display = 'table-row';
}

function HideDiv(ele) {
  document.getElementById(ele).style.display = 'none';
}

function ShowInfo(ele, rid) {
  ShowDiv("info_fa"+ele+"_"+rid);
  HideDiv("ind_fa"+ele+"_"+rid);
  ShowDiv("date1_fa"+ele+"_"+rid);
  ShowDiv("date2_fa"+ele+"_"+rid);
}

function ShowInd(ele, rid) {
  ShowDiv("ind_fa"+ele+"_"+rid);
  HideDiv("info_fa"+ele+"_"+rid);
  HideDiv("date1_fa"+ele+"_"+rid);
  HideDiv("date2_fa"+ele+"_"+rid);
}

function ShowAllInfo() {
    var rid = arguments[0];
    len = arguments.length;
    if(len == 0) return;
    for(var i=1; i < len; i++)
    {
      ShowInfo(arguments[i], rid);
    }
    document.getElementById("show_all_info_link"+"_"+rid).style.display = 'none';
    document.getElementById("hide_all_info_link"+"_"+rid).style.display = 'block';
    return true;
}

function HideAllInfo() {
    var rid = arguments[0];
    len = arguments.length;
    if(len == 0) return;
    for(var i=1; i < len; i++)
    {
      ShowInd(arguments[i], rid);
    }
    document.getElementById("hide_all_info_link"+"_"+rid).style.display = 'none';
    document.getElementById("show_all_info_link"+"_"+rid).style.display = 'block';
    return true;
}

function OnShowAll(ele, show_hide_ele) 
{
    e = document.getElementById(show_hide_ele);
    if(ele.value == 'no') 
    {
      e.style.display = 'block';
    }
    else
    {
      e.style.display = 'none';
    }
}
