//Starter Test stimulus file for FastRCA12 

load FastRCA12.hdl,
compare-to FastRCA12.cmp,
output-file FastRCA12.out,
output-list a%B3.12.3 b%B3.12.3 out%B3.12.3 carry%B3.1.3;

// Test Case 1
set a %B000000000000;
set b %B000000000000;
eval;
output;

// Test Case 2
set a %B000000000001;
set b %B000000000000;
eval;
output;

// Test Case 3
set a %B000000000001;
set b %B000000000001;
eval;
output;

// Test Case 4
set a %B000000000010;
set b %B000000000010;
eval;
output;

// Test Case 5
set a %B000000000100;
set b %B000000001000;
eval;
output;

// Test Case 6
set a %B000000000101;
set b %B000000000011;
eval;
output;

// Test Case 7
set a %B000000001111;
set b %B000000001111;
eval;
output;

// Test Case 8
set a %B000000111111;
set b %B000000111111;
eval;
output;

// Test Case 9
set a %B000011111111;
set b %B000011111111;
eval;
output;

// Test Case 10
set a %B111111111111;
set b %B000000000000;
eval;
output;

// Test Case 11
set a %B111111111111;
set b %B000000000001;
eval;
output;

// Test Case 12
set a %B111111111111;
set b %B111111111111;
eval;
output;

// Test Case 13
set a %B100000000000;
set b %B100000000000;
eval;
output;

// Test Case 14
set a %B011111111111;
set b %B000000000001;
eval;
output;

// Test Case 15
set a %B011111111111;
set b %B011111111111;
eval;
output;

// Test Case 16
set a %B011111111111;
set b %B100000000000;
eval;
output;

// Test Case 17
set a %B001111111111;
set b %B001111111111;
eval;
output;

// Test Case 18
set a %B111100001111;
set b %B000011110000;
eval;
output;

// Test Case 19
set a %B010101010101;
set b %B001010101010;
eval;
output;

// Test Case 20
set a %B000000000001;
set b %B111111111111;
eval;
output;
//fill in more test cases here to thoroughly check correctness of your chip