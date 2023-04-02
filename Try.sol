// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Try {
    function encode(string memory str) public pure returns(bytes memory) {
        return abi.encode(str);
    }
}