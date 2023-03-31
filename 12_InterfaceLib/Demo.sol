// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "./Logger.sol";
import "./ILogger.sol";

contract DemoContract {
    Logger logger;

    constructor(address _Logger) {
        logger = Logger(_Logger);
    }

    function getPayment(address _from, uint _index) public view returns(uint) {
        return logger.getEntry(_from, _index);
    }

    receive() external payable {
        logger.log(msg.sender, msg.value);
    }
}

contract DemoInterface {
    ILogger logger;

    constructor(address _ILogger) {
        logger = ILogger(_ILogger);
    }

    function getPayment(address _from, uint _index) public view returns(uint) {
        return logger.getEntry(_from, _index);
    }

    receive() external payable {
        logger.log(msg.sender, msg.value);
    }
}