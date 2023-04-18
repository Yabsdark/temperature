class Grados {
  // Celsius a Fahrenheit
  double celsiusToFahrenheit(double celsius) {
    return (celsius * 1.8) + 32;
  }

  // Celsius a Kelvin
  double celsiusToKelvin(double celsius) {
    return celsius + 273.15;
  }

  // Fahrenheit a Celsius
  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) / 1.8;
  }

  // Fahrenheit a Kelvin
  double fahrenheitToKelvin(double fahrenheit) {
    return (fahrenheit + 459.67) / 1.8;
  }

  // Kelvin a Celsius
  double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  // Kelvin a Fahrenheit
  double kelvinToFahrenheit(double kelvin) {
    return (kelvin * 1.8) - 459.67;
  }
}
