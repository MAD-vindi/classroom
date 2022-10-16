// getting day and timeframe.

const weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];

// getting IST
const d = new Date();
const utc = d.getTime() + (d.getTimezoneOffset() * 60000);
const ind = new Date(utc + (3600000*+5.5));
let day = weekday[ind.getDay()];
const time = ind.getHours();
let timeframe;

switch(time){
  case 11:
    timeframe="Morning";
    break;
  case 12:
    timeframe="Noon";
    break;
  case 14:
    timeframe="Afternoon";
    break;
  case 15:
    timeframe="midEve";
    break;
  case 16:
    timeframe="Evening";
    break;
  default:
    timeframe="";
}

module.exports = {day, timeframe}
