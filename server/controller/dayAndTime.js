// getting day and timeframe.

const weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
const d = new Date();
let day = weekday[d.getDay()];
const time = d.getHours();
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
  case 14:
    timeframe="Evening";
    break;
  default:
    timeframe="";
}

module.exports = {day, timeframe}
