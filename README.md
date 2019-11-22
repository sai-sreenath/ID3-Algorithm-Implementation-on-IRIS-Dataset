# ID3-Algorithm-Implementation-on-IRIS-Dataset

cacc implementation function:
https://www.mathworks.com/matlabcentral/fileexchange/41740-discretization-methods-class-attribute-contingency-coefficient-cacc-matlab


Assignment:
The assignment will use  the  Iris Data Set (attached as text file) and which can also be found at:  http://archive.ics.uci.edu/ml/datasets/Iris

This assignment has two parts:

Part 1. Discretization of continuous valued attributes:

A) The first approach is to use a naive discretization by just round off the decimal values, so that all the attributes are integer-valued.

B) The second approach is to Run the  Class-Attribute Contingency Coefficient (CACC) discretization algorithm 

The paper describing the algorithm is attached to this assignment.

A MATLAB function implementing it can be found at:

https://www.mathworks.com/matlabcentral/fileexchange/41740-discretization-methods-class-attribute-contingency-coefficient-cacc-matlab

Part 2.  For each discretization approach, use the discretized attributes to implement ID3 in Matlab (if you use code lifted from some online source please document that as a comment in your program and reference in the report. Provide at least 5 runs (different training and test sets), and the corresponding accuracies.  You can also use the MATLAB function confusion which will generate a confusion matrix.  
