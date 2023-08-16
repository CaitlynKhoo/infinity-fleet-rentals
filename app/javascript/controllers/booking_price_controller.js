import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-price"
export default class extends Controller {
  static targets = ["start" , "end","total"]
  static values ={
    day: String
  }
  connect() {
    // console.log("price calculator")
  }

  pricing(){
    console.log("in pricing");
    const end_date = new Date(this.endTarget.value);
    const start_date = new Date(this.startTarget.value);
    this.totalTarget.innerText = "0.00";
    // console.log(Math.abs(end_date-start_date));
    if(end_date > start_date)
    {
      const num_days = Math.ceil(Math.abs(end_date-start_date) / (1000 * 60 * 60 * 24));
      // console.log(this.data.get("dayValue"));
      const total_price = num_days * parseFloat(this.dayValue)
      this.totalTarget.innerText = total_price.toFixed(2);
    }

  }
}
