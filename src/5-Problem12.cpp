#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main()
{

  ifstream infile;
  int str;
  int l = 0;
  int lahan[100][100];
  bool lahancek[100][100];

  
  infile.open("contour.txt");
  if (!infile) {
      cout << "Unable to open file";
  }
  int j = -1;
  while (infile >> str){
    if (j == -1) {
      l = str;
      //cout << l << endl;
    } else {
      lahan[j][0] = str;
      lahancek[j][0] = false;
      for (int i = 1; i < l; i++) {
        infile >> str;
        lahan[j][i] = str;
        lahancek[j][i] = false;
      }
    }
    j++;
  }
  cout << "file loaded!" << endl;

  infile.close();

  int biggest = 0;

  for (int i = 0; i < l; i++) {
    for (j = 0; j < l; j++) {
      if (!lahancek[i][j]) {
        int tempNum = lahan[i][j];
        //cout << tempNum <<  " i: " << i  << " j: " << j << endl;
        int tempSize;

        int iteraTemp = 1;
        bool isSquare = true;
        while (isSquare) {
          tempSize = iteraTemp - 1;
          for (int iTemp = i; iTemp < i + iteraTemp; iTemp++) {
            if (!(tempNum == lahan[iTemp][j + iteraTemp - 1])) {
              isSquare = false;
              break;
            }
          }
          for (int iTemp = j; iTemp < j + iteraTemp; iTemp++) {
            if (!(tempNum == lahan[i + iteraTemp - 1][iTemp])) {
              isSquare = false;
              break;
            }
          }
          if (isSquare) {
            for (int iTemp = i; iTemp < i + iteraTemp; iTemp++) {
              lahancek[iTemp][j + iteraTemp - 1] = true;
            }
            for (int iTemp = i; iTemp < j + iteraTemp; iTemp++) {
              lahancek[i + iteraTemp - 1][iTemp] = true;
            }

            iteraTemp++;

          }
        }

        if (tempSize > biggest) {
          biggest = tempSize;
        }

      }
    }
  }

  cout << "Luas maksimum Krasti Krab yang dapat dibangun adalah " << biggest*biggest << endl;

  return 0;
}
