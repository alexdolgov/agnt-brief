// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IGauge} from "./../interfaces/IGauge.sol";
import {VeFunderGauge} from "./../VeFunderGauge.sol";
contract VeFunderGaugeFactory {
    address public lastGauge;

    function createGauge(address _receiver, uint256 _maxEmission) external returns (address) {
        lastGauge = address(new VeFunderGauge(msg.sender, _receiver, _maxEmission));

        return lastGauge;
    }
}
