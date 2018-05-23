#include <iostream>
#include <sstream>
#include <string>
#include <math.h>
using namespace std;

string IntToString(int val){
	stringstream out;
	out << val;
	return (out.str());
}

int CharToInt(char val){
	return (val - '0');
}

int HexToDec(string hex){
	int dec = 0, exp = hex.length()-1;
	// Interval dari kiri ke kanan.
	// Setiap digit dikali dengan ekivalen desimalnya (16^exp) ditambahkan ke dec
	for(int i = 0; i < hex.length(); i++){
		switch(hex[i]){
			case 'A': dec += (10 * pow(16,exp)); break;
			case 'B': dec += (11 * pow(16,exp)); break;
			case 'C': dec += (12 * pow(16,exp)); break;
			case 'D': dec += (13 * pow(16,exp)); break;
			case 'E': dec += (14 * pow(16,exp)); break;
			case 'F': dec += (15 * pow(16,exp)); break;
			default: dec += (CharToInt(hex[i]) * pow(16,exp)); break;
		}
		exp--;
	}	

	return dec;
}

string DecToHex(int dec){
	string hex = "";
	int result = dec;

	// modulo 16 dari result merupakan digit paling depan hex
	// result kemudian dibagi bulat dengan 16
	// Loop terus hingga result = 0
	do {
		int remainder = result % 16;
		switch(remainder) {
			case 10: hex.insert(0,"A"); break;
			case 11: hex.insert(0,"B"); break;
			case 12: hex.insert(0,"C"); break;
			case 13: hex.insert(0,"D"); break;
			case 14: hex.insert(0,"E"); break;
			case 15: hex.insert(0,"F"); break;
			default: hex.insert(0, IntToString(remainder)); break;
		}
		result = result/16;
	}
	while (result > 0);

	return hex;
}

int main() {
	string A,B, result;
	cout << "Masukan A : "; cin >> A;
	cout << "Masukan B : "; cin >> B;

	result = DecToHex(HexToDec(A) + HexToDec(B));

	cout << A << " + " << B << " = " << result << endl;	

	return 0;
}