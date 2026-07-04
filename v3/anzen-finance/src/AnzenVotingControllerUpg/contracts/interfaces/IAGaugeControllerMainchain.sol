// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.23;

import "./IAGaugeController.sol";

interface IAGaugeControllerMainchain is IAGaugeController {
    function updateVotingResults(uint128 wTime, address[] calldata markets, uint256[] calldata anzenSpeeds) external;
}
