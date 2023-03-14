//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ourUint {
    uint public myUint = 2;
    int public myInt = 250;

    function setUint(uint setMyUint) public {
        myUint = setMyUint;

    }

    function incrementUint() public {
        myUint++;
    }

    function decrementUint() public {
        myUint--;
    }

    function incrementInt() public {
        myInt++;
    }

}