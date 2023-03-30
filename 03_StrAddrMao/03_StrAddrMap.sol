// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract DemoString {
    string public myString = "dcdsvcgd";

    function demo() public {
        string memory myTempString = "Hello, World!";
        myString = myTempString;
    }

    function demoString(string memory argString) public {
        myString = argString;
    }
}

contract DemoAddress {
    address public myAddress = 0xDCE16C491f9921Bc19844d8b8b42F6e37fE9F7E6;

    function get_balance(address targetAddress) public view returns(uint) {
        return targetAddress.balance;
    }

    function recieveFunds() public payable { }

    function transferTo(address payable targetAddress, uint amount) public {
        targetAddress.transfer(amount);
    }
}

contract DemoMapping {
    address public owner;
    mapping (address => uint) public myMapping;

    constructor() {
        owner = msg.sender;
    }

    function recieveFunds() public payable {
        myMapping[msg.sender] += msg.value;
    }

    function withdrawAll() public {
        require(msg.sender == owner);
        payable(owner).transfer(address(this).balance);
    }
}