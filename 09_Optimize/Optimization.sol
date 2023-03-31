// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Op {
    // uint128 a = 1;
    // uint128 b = 1;
    // uint256 c = 1;
    bytes32 public hash = 0x9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658;
}

contract Un {
    // uint128 a = 1;
    // uint256 c = 1;
    // uint128 b = 1;
    bytes32 public hash = keccak256(
        abi.encodePacked("test")
    );
}