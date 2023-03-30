// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Demo {
    // bool public myBool = true;
    // uint256 public myUint = 42;
    // address public myAddress;
    // string public myString = "fdvfd";
    // int8 public minimumUint;
    // function getMin() public {
    //     minimumUint = type(int8).min;
    // }
    uint8 public myVal = 254;
    function increment() public {
        unchecked {
            ++myVal;
        }
    }
}