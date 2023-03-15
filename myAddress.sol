//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract myAddress {
    address public someAddress;

    function setAddress (address updateAddress) public {
        someAddress = updateAddress;
    }

    function getAddressBalance() public view returns (uint){
        return someAddress.balance;
    }

}