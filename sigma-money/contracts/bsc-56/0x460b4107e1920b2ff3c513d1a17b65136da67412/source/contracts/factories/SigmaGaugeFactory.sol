// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IGauge} from "./../interfaces/IGauge.sol";
import {Gauge} from "./../SigmaGauge.sol";
contract SigmaGaugeFactory {
    address public lastGauge;

    function createGauge(address _pool) external returns (address) {
        lastGauge = address(new Gauge(_pool, msg.sender));

        return lastGauge;
    }
}
