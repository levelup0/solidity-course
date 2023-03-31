// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./Ownable.sol";
import "./Balances.sol";

contract MyContract is Ownable, Balances {
    constructor(address _owner) Ownable(_owner) {
    }

    function withdraw(address payable _to) public override(Ownable, Balances) onlyOwner {
        // Balances.withdraw(_to);
        require(_to != address(0), "Address is zero!");
        super.withdraw(_to);
    }

}