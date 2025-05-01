Function createDiscountCalculator(double discountPercentage) {
  return (double price) => price * ((100 - discountPercentage) / 100);
}

void main() {
  var tenPercentDiscount = createDiscountCalculator(10);
  var twentyPercentDiscount = createDiscountCalculator(20);
  double originalPrice = 100.0;
  print('Harga asli:\$${originalPrice}');
  print('Harga setelah diskon 10%:\$${tenPercentDiscount(originalPrice)}');
  print('Harga setelah diskon 20%:\$${twentyPercentDiscount(originalPrice)}');
}
