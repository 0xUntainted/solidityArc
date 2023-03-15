/* byte as the counterpart representation of char in C++, additionally one character is == one byte.
the keyword used for byte is 'bytes'. */

/* strings cannot be converted to 'bytes' as the characters in string is made of UTF-8 which has 
different byte representation */

//strings cost expensive to store in the blockchain that's why it is not advisable to do so.

// the use of keccak256 or sha256 to compare strings.

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
