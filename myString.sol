// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ourString {
    string public myString = "Hello World";
    bytes public myBytes = "Hello World";

    function setMyString(string memory updateMyString) public {
        myString = updateMyString;
    }

    function compareString (string memory _myString) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }
    
}