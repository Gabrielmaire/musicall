import flatpickr from "flatpickr";
import { totalPrice } from "../components/total_price_calculations";
import "flatpickr/dist/flatpickr.min.css";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

export const initFlatpickr = () => {
  flatpickr("#start_datepicker", {
    dateFormat: "d/m/Y",
    plugins: [new rangePlugin({ input: "#end_datepicker"})],
    onChange: (selectedDates) => {
      totalPrice(selectedDates[0], selectedDates[1]);
    }
  });
}


