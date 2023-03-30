// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract DemoFunction {
    // public
    // external
    // internal -- with Decsendants
    // private -- no Decsendants

    // view -- read-only, only calls, no transactions
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // pure -- same but can use only arguments
    // ----------------------------
    // string public message = "Hello, world!";
    // function getMessage() public pure returns(string memory) {
    //     return message;
    // }
    // DOESNT WORK, because tries to read message

    // call
    function getMessage() public pure returns(string memory _message) {
        _message = "Hello, world!";
    }
    // OK!

    string public message = "Hello, world!";
    // transaction (no return, use Events!)
    function setMessage(string memory newMessage) external {
        message = newMessage;
    }

    uint public balance;
    // payable
    function pay() external payable {
        balance += msg.value;
    }

    // fallback -- with calldata
    // recieive -- without calldata
    receive() external payable {
        balance += msg.value;
    }
}