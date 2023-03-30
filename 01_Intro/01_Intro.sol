// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract MyStore {
    address public owner;
    mapping (address => uint) public payments;

    constructor() {
        owner = msg.sender;
    }

    function payForItem() public payable {
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public {
        address payable ownerPayable = payable(owner);
        address contractAddress = address(this);
        ownerPayable.transfer(contractAddress.balance);
    }
}