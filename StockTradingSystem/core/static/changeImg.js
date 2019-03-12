function changeImg_min(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/v5/usstock/min/" + stockid + ".gif"
    obj.setAttribute("src", url);     
}

function changeImg_day(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/usstock/daily/"+stockid+".gif"
    obj.setAttribute("src", url);     
}

function changeImg_week(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image.sinajs.cn/newchart/usstock/weekly/"+stockid+".gif"
    obj.setAttribute("src", url);     
}

function changeImg_month(stockid) {
    var obj = document.getElementById("chart");
    var url = "image.sinajs.cn/newchart/usstock/monthly/"+stockid+".gif"
    obj.setAttribute("src", url);     
}

function changeImg_year(stockid) {
    var obj = document.getElementById("chart");
    var url = "http://image2.sinajs.cn/newchart/macd/n/"+stockid+".gif"
    obj.setAttribute("src", url);
}