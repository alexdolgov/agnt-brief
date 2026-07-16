// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IVoter} from "../interfaces/IVoter.sol";
import {VotingReward} from "./VotingReward.sol";

/// @notice Bribes pay out rewards for a given pool based on the votes that were received from the user (goes hand in hand with Voter.vote())
contract BribeVotingReward is VotingReward {
    constructor(address _forwarder) VotingReward(_forwarder) {
        _disableInitializers();
    }

    function initialize(
        address _initialAuthority,
        address _governanceRegistry,
        address[] memory _rewards
    ) public initializer {
        __VotingReward_init(_initialAuthority, _governanceRegistry, _rewards);
    }

    /// @inheritdoc VotingReward
    function notifyRewardAmount(address token, uint256 amount) external override nonReentrant {
        address sender = _msgSender();

        if (!isReward[token]) {
            if (!IVoter(voter()).isWhitelistedToken(token)) revert NotWhitelisted();
            isReward[token] = true;
            rewards.push(token);
        }

        _notifyRewardAmount(sender, token, amount);
    }
}
