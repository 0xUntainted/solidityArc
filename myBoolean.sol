//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

/* exploring bolean in solidity, default value of bool after you declare it is false, should always have true or false while 1 and 0 doesn't work
because of integer intervention*/

contract myBoolean {
    bool public myBool;

    function setBool (bool myUpdateBool) public {
        myBool = myUpdateBool;
    }
}