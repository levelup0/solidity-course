// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

abstract contract Ownable {
    address public owner;

    constructor(address ownerOverride) {
        owner = ownerOverride == address(0) ? msg.sender : ownerOverride;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not an owner!");
        _;
    }

    function withdraw(address payable _to) public virtual onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}