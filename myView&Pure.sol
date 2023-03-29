//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleViewPure {

    uint public myStorageVariable;

// View functions - used to retrieve data from the contract state and does not modify it.
    function getmyStorageVariable() public view returns(uint){
        return myStorageVariable;
    }

// Pure functions - does not read or modify the state od smart contracts, used for calculations.
    function addMyVariables(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function setMyStorageVariable(uint updateVariable) public returns(uint) {
        myStorageVariable = updateVariable;
        return myStorageVariable; // ideal for peer to smartcontracts but ideal for contract to contract interaction.
    }

}