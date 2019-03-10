function changeImg_min(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/min/n/" + stockid + ".gif"
    obj.setAttribute("src", url);     
}

function changeImg_day(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/daily/n/"+stockid+".gif"
    obj.setAttribute("src", url);     
}

function changeImg_week(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/weekly/n/"+stockid+".gif"
    obj.setAttribute("src", url);     
}

function changeImg_month(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/monthly/n/"+stockid+".gif"
    obj.setAttribute("src", url);     
}

function changeImg_year(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image2.sinajs.cn/newchart/macd/n/"+stockid+".gif"
    obj.setAttribute("src", url);
}