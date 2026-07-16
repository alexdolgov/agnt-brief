// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IAggregatorV2V3} from "../../interfaces/IAggregatorV2V3.sol";
import {BaseChainlinkAdapter} from "./BaseChainlinkAdapter.sol";

/// @title ChainlinkAdapter Contract
/// @author Radiant
contract ValidatedChainlinkAdapterWithSequencer is BaseChainlinkAdapter {
    IAggregatorV2V3 public constant ARBITRUM_SEQUENCER_UPTIME_FEED =
        IAggregatorV2V3(0xFdB631F5EE196F0ed6FAa767959853A9F217697D);
    uint256 public constant GRACE_PERIOD_TIME = 3600;

    error SequencerDown();
    error GracePeriodNotOver();

    constructor(address _chainlinkFeed, uint256 _heartbeat) BaseChainlinkAdapter(_chainlinkFeed, _heartbeat) {}

    /**
     * @notice Check the sequencer status for the Arbitrum mainnet.
     */
    function checkSequencerFeed() public view {
        (, int256 answer, uint256 startedAt,,) = ARBITRUM_SEQUENCER_UPTIME_FEED.latestRoundData();
        // Answer == 0: Sequencer is up
        // Answer == 1: Sequencer is down
        bool isSequencerUp = answer == 0;
        if (!isSequencerUp) {
            revert SequencerDown();
        }

        // Make sure the grace period has passed after the sequencer is back up.
        uint256 timeSinceUp = block.timestamp - startedAt;
        if (timeSinceUp <= GRACE_PERIOD_TIME) {
            revert GracePeriodNotOver();
        }
    }

    /**
     * @notice Returns USD price in quote token.
     * @dev supports 18 decimal token
     * @return price of token in decimal 8
     */
    function latestAnswer() external view virtual override returns (int256 price) {
        checkSequencerFeed();
        (, int256 answer,, uint256 updatedAt,) = chainlinkFeed.latestRoundData();
        validate(answer, updatedAt);
        price = answer;
    }
}
