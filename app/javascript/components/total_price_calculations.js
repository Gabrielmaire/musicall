import moment from "moment";

const totalPrice = (startDate, endDate) => {
  const startDateMoment = moment(startDate);
  const endDateMoment = moment(endDate);
  const numberDays = endDateMoment.diff(startDateMoment, "days");
  const pricePerDay = document.getElementById("price-per-day").dataset.price;

  const totalPrice = Number.parseInt(pricePerDay) * numberDays;
  const totalPriceSpan = document.getElementById("total-price");
  if (numberDays > 0) {
    totalPriceSpan.innerHTML = totalPrice
  } else {
    totalPriceSpan.innerHTML = "0"
  };
}

export {totalPrice};
