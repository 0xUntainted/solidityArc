//deposit to contract
// view smartcontract balance
//withdraw all
//withdraw to spc. address

//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SmartWallet {
    address payable public owner;
    string public currStatus;
    uint ethValue;
    

    constructor() {
        owner = payable (msg.sender);
    }

    function ethDeposit () public payable {
        if (msg.value == 1 ether) {
            currStatus = "recieved";
        } else {
            payable(msg.sender).transfer(msg.value);
            currStatus = "reverted";
        }
    }

    function viewContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawALL() public {
        if(msg.sender == owner) {
            payable(owner).transfer(viewContractBalance());
            currStatus = "all funds are withdrawed";
        } else {
            currStatus = "only the owner can withdraw all";
        }
    }

    function withdrawSome(uint amount) public {
        payable(owner).transfer(amount);
        currStatus = "funds are withdrawed";
    }

    receive() external payable{
    }

    fallback() external payable{
    }


}