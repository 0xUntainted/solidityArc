//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract MyContract {
    string public ourString = "Hello World";

    function updateOurString(string memory updateString) public
    {
        ourString = updateString;
    }
}
