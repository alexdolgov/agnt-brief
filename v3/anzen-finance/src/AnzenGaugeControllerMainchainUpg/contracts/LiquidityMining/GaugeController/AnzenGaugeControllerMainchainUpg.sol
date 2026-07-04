// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.23;

import "./AnzenGaugeControllerBaseUpg.sol";
import "../../interfaces/IAGaugeControllerMainchain.sol";

contract AnzenGaugeControllerMainchainUpg is AnzenGaugeControllerBaseUpg, IAGaugeControllerMainchain {
    address public immutable votingController;

    modifier onlyVotingController() {
        if (msg.sender != votingController) revert Errors.GCNotVotingController(msg.sender);
        _;
    }

    constructor(
        address _votingController,
        address _anzen
    ) AnzenGaugeControllerBaseUpg(_anzen) {
        votingController = _votingController;
        _disableInitializers();
    }

    function initialize() external initializer {
        __BoringOwnable_init();
    }

    function updateVotingResults(
        uint128 wTime,
        address[] memory markets,
        uint256[] memory anzenSpeeds
    ) external onlyVotingController {
        _receiveVotingResults(wTime, markets, anzenSpeeds);
    }
}
