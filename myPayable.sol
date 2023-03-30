/* - payable is a keyword that lets the function accept value, it is placed after visibility specifier.
    - msg.value is a msg-object that store the value sent by the msg.sender.
    - payable() is a casting keyword to identify the address as payable.
*/

//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleContract {
    string public myString = "Hello Goofy";

    function updateString (string memory _newString) public payable {
        if(msg.value == 1 ether) {
        myString = _newString;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}