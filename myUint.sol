/* never assign a variable like this | uint public myVar = 0;* | as it will cost more gas 
compare to | uint public myVar;* | both lines have the default value of 0 */

/* uint/int is an alias for unint256/int256. initializing uint/int as is, 
will have the default value of uint256/int256 */

/* uint/int sizes can vary to uint8/int8, 16, 64, 255. this can be useful for gas optimization
but always be mindful as the bit numbers are benchmark to how much bit can be stored. you do not 
want to use small storage for a big number */

/* Integers in Solidity are always rounded down! If we divide e.g. 100 / 101 = 0.990... 
but in Solidity the result will be 0. Integers in Solidity are actually cut off (not even rounded), 
in other words always rounded down. */

//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ourUint {
    // never assign
    uint public myVar = 0;
    
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
