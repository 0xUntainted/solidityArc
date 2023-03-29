// store string
// readable for everyone
// writable to the owner
// times the message is updated

//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract messengerTrial {

    address public owner;
    string public message = "Hello Garci";
    uint public counter;

    constructor () {
        owner = msg.sender; 
    }

    function theMessageUpdate(string memory updateMessage) public{
        if (msg.sender == owner){
            message = updateMessage;
            counter++;
        }
    }
}
