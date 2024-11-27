//Starter Test stimulus file for AddSub10 

load AddSub10.hdl,
output-file AddSub10.out,
compare-to AddSub10.cmp,
output-list a%B1.10.1 b%B1.10.1 sub%B1.1.1 out%B1.10.1 overflow%B4.1.4;

set a %B0000000000,
set b %B0000000000,
set sub 0,
eval,
output;

//fill in more test cases here to thoroughly check correctness of your chip

//                 3
set a %B0000000001,
set b %B0000000000,
set sub 1,
eval,
output;

//                 4
set a %B0000000000,
set b %B0000000001,
set sub 1,
eval,
output;


//                 7
set a %B0111111111,
set b %B0111111111,
set sub 0,
eval,
output;

//                 8
set a %B0111111111,
set b %B0000000001,
set sub 0,
eval,
output;

//                 9
set a %B0111111111,
set b %B0000000001,
set sub 1,
eval,
output;

//                 10
set a %B1111011000,
set b %B1111011000,
set sub 0,
eval,
output;

//                 11
set a %B1011111100,
set b %B1100000011,
set sub 0,
eval,
output;

//                 12
set a %B1001001110,
set b %B1010101101,
set sub 1,
eval,
output;

//                 13
set a %B0100010010,
set b %B0110101110,
set sub 1,
eval,
output;

//                14
set a %B0111111111, 
set b %B0100000000,
set sub 0,
eval,
output;

//                 5
set a %B1000000000,
set b %B1000000000,
set sub 0,
eval,
output;