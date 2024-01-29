#include <iostream>
#include <cmath>
#include <vector>

using namespace std;

void calculateEvolutions(double& a, double& b) {
    double a_new = (a + b) / sqrt(2);
    double b_new = (a - b) / sqrt(2);
    
    a = a_new;
    b = b_new;
}

int main() {
    const int numIterations = 50;

    vector<double> a_values(numIterations);
    vector<double> b_values(numIterations);

    double a = 0.0;
    double b = 0.0;

    // Set the central position of 'a' to 1
    a = 1.0;

    for (int t = 0; t < numIterations; t++) {
        a_values[t] = a;
        b_values[t] = b;
        
        calculateEvolutions(a, b);
    }

    cout << "Values of 'a':" << endl;
    for (int t = 0; t < numIterations; t++) {
        cout << "a(" << t << ") = " << a_values[t] << endl;
    }

    cout << "Values of 'b':" << endl;
    for (int t = 0; t < numIterations; t++) {
        cout << "b(" << t << ") = " << b_values[t] << endl;
    }

    return 0;
}
