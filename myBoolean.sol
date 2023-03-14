/* exploring bolean in solidity, default value of bool after you declare it is false, should always have true or false while 1 and 0 doesn't work
because of integer intervention.
- remember, all values in Solidity are initialized by with their default value. There is no undefined or null. 
In addtion to this unit has a default value of 0 and bool to false*/

//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract myBoolean {
    bool public myBool;

    function setBool (bool myUpdateBool) public {
        myBool = myUpdateBool;
    }
}
