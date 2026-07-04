// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

interface IMakeItRain {
    function makeItRain_executionCounts(uint256 blockNumber, address sender) external view returns (uint256);
}

contract MakeItRain is EggBase {

    uint256 public immutable RAIN_COUNT;
    IMakeItRain public immutable mainPlug__;

    constructor(
        address mainPlug_,
        uint256 rainCount_
    ) {
        mainPlug__ = IMakeItRain(mainPlug_);
        RAIN_COUNT = rainCount_;
    }

    function egg(address msgSender, bytes calldata data) external override view returns (bool) {
        (uint256 blockNumber) = abi.decode(data, (uint256));
        uint256 count = mainPlug__.makeItRain_executionCounts(blockNumber, msgSender);
        if (count>RAIN_COUNT) return true;
        return false;
    }
}
