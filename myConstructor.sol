//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract myContract {

    address public myAddress;

    /* - the constructor is a special function that is only called once when the contruct is initially deployed
        - no return types
        - can have parameters like the exp. below */
        
    constructor (address _someAddress) {
        myAddress = _someAddress; 
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setMyAddressSender() public {
        myAddress = msg.sender;
    }
}