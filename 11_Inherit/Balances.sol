// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./Ownable.sol";

abstract contract Balances is Ownable {
    function getBalance() public view onlyOwner returns(uint) {
        return address(this).balance;
    }

    function withdraw(address payable _to) public override virtual onlyOwner {
        _to.transfer(address(this).balance);
    }
}