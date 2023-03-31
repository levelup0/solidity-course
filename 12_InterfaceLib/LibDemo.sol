// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./Ext.sol";

contract LibDemo {
    using StrExt for string;
    using ArrExt for uint[];

    function runnerStr(string memory str1, string memory str2) public pure returns(bool) {
        return str1.eq(str2);
    }

    function runnerArr(uint[] memory arr, uint elem) public pure returns(bool) {
        return arr.inArray(elem);
    }
}