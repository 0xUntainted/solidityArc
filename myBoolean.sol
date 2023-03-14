/* exploring bolean in solidity, default value of bool after you declare it is false, should always have true or false while 1 and 0 doesn't work
because of integer intervention*/

/* remember that in Solidity there is no undefined or null. If you initialize a variable with out value it will automatically set to its default value. 
0 in integer, false in boolean and "" in string.*/

//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract myBoolean {
    bool public myBool;

    function setBool (bool myUpdateBool) public {
        myBool = myUpdateBool;
    }
}
