// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

library StrExt {
    function eq(string memory str1, string memory str2) internal pure returns(bool) {
        return keccak256(abi.encode(str1)) == keccak256(abi.encode(str2));
    }
}

library ArrExt {
    function inArray(uint[] memory arr, uint elem) internal pure returns(bool) {
        for (uint i = 0; i < arr.length; ++i) {
            if (arr[i] == elem) {
                return true;
            }
        }
        return false;
    }
}