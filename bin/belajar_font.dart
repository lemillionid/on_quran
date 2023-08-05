// String to HexaDecimal
String stringToHexadecimal(String input) {
  List<int> codeUnits = input.codeUnits;
  String hex = "";
  for (int codeUnit in codeUnits) {
    // Mengonversi kode unit menjadi heksadesimal dan menambahkan ke string hex
    hex += codeUnit.toRadixString(16).padLeft(2, '0');
  }
  return hex
      .toUpperCase(); // Mengubah menjadi huruf besar agar heksadesimalnya terlihat lebih baik
}

void main() {
  String input = "م";
  print(input);
  String hexadecimal = stringToHexadecimal(input);
  print(hexadecimal); // Output: "48656C6C6F2C20576F726C6421"
  final str2 = hexadecimalToString(hexadecimal);
  print(str2);
}

//Hexa to String
String hexadecimalToString(String input) {
  // Pastikan panjang string input adalah genap
  if (input.length % 2 != 0) {
    throw ArgumentError("Input heksadesimal harus memiliki panjang genap.");
  }

  List<String> hexPairs = [];
  for (int i = 0; i < input.length; i += 2) {
    // Memecah heksadesimal menjadi potongan dua digit (kode unit heksadesimal)
    hexPairs.add(input.substring(i, i + 2));
  }

  String result = "";
  for (String hexPair in hexPairs) {
    // Mengonversi potongan heksadesimal menjadi angka desimal
    int decimal = int.parse(hexPair, radix: 16);

    // Mengubah angka desimal menjadi karakter dan menambahkannya ke string result
    result += String.fromCharCode(decimal);
  }

  return result;
}

void main1() {
  String hexadecimal = "0645";
  String output = hexadecimalToString(hexadecimal);
  print(output); // Output: "Hello, World!"
}
