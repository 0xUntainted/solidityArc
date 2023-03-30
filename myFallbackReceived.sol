//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleFallbackReceive {
    uint public lastValueSent;
    string public lastFuncCalled;

    // receive() function is called if the contract receives ether without any data.
    // no arguements and no return value, must have payable keyword.
    receive() external payable {
        lastValueSent = msg.value;
        lastFuncCalled = "received";
    }
    
    //the fallback() function is executed when a contract receives a transaction that doesn't match a func in the contract.
    //no names, no arguements and mark with payable keyword if it is intended to receive ether.
    fallback() external payable {
        lastValueSent = msg.value;
        lastFuncCalled = "fallback";
    }
    
    //receive() is a function that gets priority over fallback() when a calldata is empty. But fallback gets precedence over receive when calldata does not fit a valid function signature.
}