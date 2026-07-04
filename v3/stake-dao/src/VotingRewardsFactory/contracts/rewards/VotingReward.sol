// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Reward} from "./Reward.sol";
import {IVotingEscrow} from "../interfaces/IVotingEscrow.sol";
import {ISpectraVotingEscrowAggregator} from "../interfaces/ISpectraVotingEscrowAggregator.sol";
import {IGovernanceRegistry} from "../interfaces/IGovernanceRegistry.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {VelodromeTimeLibrary} from "../libraries/VelodromeTimeLibrary.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

abstract contract VotingReward is Reward {
    using SafeERC20 for IERC20;

    constructor(address _forwarder) Reward(_forwarder) {
        _disableInitializers();
    }

    function __VotingReward_init(
        address _initialAuthority,
        address _governanceRegistry,
        address[] memory _rewards
    ) public onlyInitializing {
        __Reward_init(_initialAuthority, _governanceRegistry);
        uint256 _length = _rewards.length;
        for (uint256 i; i < _length; i++) {
            if (_rewards[i] != address(0)) {
                isReward[_rewards[i]] = true;
                rewards.push(_rewards[i]);
            }
        }
    }

    /// @inheritdoc Reward
    function getReward(address ve, uint256 tokenId, address[] memory tokens) public override nonReentrant {
        address sender = _msgSender();
        if (!IVotingEscrow(ve).isApprovedOrOwner(sender, tokenId) && sender != voter()) revert NotAuthorized();

        address _owner = IVotingEscrow(ve).ownerOf(tokenId);
        _getReward(_owner, ve, tokenId, tokens);
    }

    /// @inheritdoc Reward
    function notifyRewardAmount(address token, uint256 amount) external virtual override {}

    function _notifyRewardAmount(address sender, address token, uint256 amount) internal {
        if (amount == 0) revert ZeroAmount();
        IERC20(token).safeTransferFrom(sender, address(this), amount);

        uint256 epochStart = VelodromeTimeLibrary.epochStart(block.timestamp);
        (address[] memory votingEscrows, uint256 votingEscrowCount) = IGovernanceRegistry(governanceRegistry)
            .votingEscrowsAt(epochStart);
        if (votingEscrowCount == 0) revert NoVotingEscrows();
        if (votingEscrowCount == 1) {
            tokenRewardsPerEpoch[votingEscrows[0]][token][epochStart] += amount;
        } else {
            for (uint256 i = 0; i < votingEscrowCount; i++) {
                tokenRewardsPerEpoch[votingEscrows[i]][token][epochStart] += _splitAmountBetweenVE(
                    votingEscrows[i],
                    amount,
                    epochStart
                );
            }
        }

        emit NotifyReward(sender, token, epochStart, amount);
    }

    function _splitAmountBetweenVE(address ve, uint256 amount, uint256 epochStart) internal view returns (uint256) {
        address veAggregator = IGovernanceRegistry(governanceRegistry).veAggregator();
        uint256 veTotalVotingPower = ISpectraVotingEscrowAggregator(veAggregator).getTotalVotingPowerOfVEAt(
            ve,
            epochStart
        );
        uint256 totalVotingPower = ISpectraVotingEscrowAggregator(veAggregator).getTotalVotingPowerAt(epochStart);
        if (totalVotingPower == 0) revert ZeroTotalVotingPower();
        return (amount * veTotalVotingPower) / totalVotingPower;
    }
}
