// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract DemoStruct {
    struct Payment {
        uint amount;
        uint timestamp;
        address from;
        string message;
    }

    struct Balance {
        uint totalPayments;
        mapping (uint => Payment) payments;
        uint totalValue;
    }

    mapping (address => Balance) public balances;

    function pay(string memory message) public payable {
        balances[msg.sender].totalValue += msg.value;
        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );
        balances[msg.sender].payments[balances[msg.sender].totalPayments++] = newPayment;
    }

    function getBalance(address addr) public view returns(uint) {
        return balances[addr].totalValue;
    }
}

contract DemoBytes {
    bytes32 public myBytes = "test";
    bytes public myDynBytes = "test";
    bytes public myDynCyrBytes = unicode"тест";

    function demoBytes() public view returns(uint) {
        return myBytes.length;
    }

    function demoDynBytes() public view returns(uint) {
        return myDynBytes.length;
    }

    function demoDynCyrBytes() public view returns(uint) {
        return myDynCyrBytes.length;
    }

    function demoChar(uint ind) public view returns(bytes1) {
        return myDynCyrBytes[ind];
    }
}

contract DemoArray {
    uint[10] public myArray = [1, 2, 3];
    uint[3][2] public my2DArray = [[1, 2, 3], [4, 5, 6]];

    uint[] public myDynArray;

    function demo() public {
        myDynArray.push(3);
        myDynArray.push(4);
    }

    function sampleMemory() public pure returns(uint[] memory) {
        uint[] memory tempArray = new uint[](10);
        return tempArray;
    }
}

contract DemoEnum {
    enum Status { Registered, Paid, Delivered, Received }
    Status public currentStatus;

    function register() public {
        currentStatus = Status.Registered;
    }

    function pay() public {
        currentStatus = Status.Paid;
    }

    function deliver() public {
        currentStatus = Status.Delivered;
    }

    function _receive() public {
        currentStatus = Status.Received;
    }
}