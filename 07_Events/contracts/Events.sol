// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract DemoChecks {
    // require
    // revert
    // assert

    address owner;
    constructor() {
        owner = msg.sender;
    }

    function pay() public payable {

    }

    // require (calls revert if condition is false)
    function withdraw(address payable _to) external {
        require(msg.sender == owner, "You are not an owner!");
        // same as
        // if (msg.sender != owner) {
        //     revert("You are not an owner!");
        // }

        // assert(msg.sender == owner);
        // Panics if false, no message
        _to.transfer(address(this).balance);
    }
}

contract DemoModfiers {
    address owner;
    constructor() {
        owner = msg.sender;
    }

    function pay() public payable {
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not an owner!");
        _; // proceed to function
        // require(...) -- can write code after _;
    }

    function withdraw(address payable _to) external onlyOwner {
        _to.transfer(address(this).balance);
    }
}

contract DemoEvent {
    address owner;

    event Paid(address _from, uint _amount, uint _timestamp);

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        pay();
    }

    function pay() public payable {
        emit Paid(msg.sender, msg.value, block.timestamp);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not an owner!");
        _;
    }

    function withdraw(address payable _to) external onlyOwner {
        _to.transfer(address(this).balance);
    }
}