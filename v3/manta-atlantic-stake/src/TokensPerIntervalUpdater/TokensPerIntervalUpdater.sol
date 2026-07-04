// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../staking/interfaces/IRewardTrackerV2.sol";
import "../staking/interfaces/IRewardDistributorV2.sol";
import "../access/Governable.sol";

contract TokensPerIntervalUpdater is Governable {
    address public rewardTracker;

    mapping(address => bool) public isHandler;

    constructor(address _rewardTracker) public {
        rewardTracker = _rewardTracker;
    }

    modifier onlyHandler() {
        require(isHandler[msg.sender], "TokensPerIntervalUpdater: ONLY HANDLER");
        _;
    }

    function setHandler(address _handler, bool _isActive) external onlyGov {
        isHandler[_handler] = _isActive;
    }

    function setTokensPerInterval(uint256 amount) external onlyHandler {
        address rewardDistributor = IRewardTracker(rewardTracker).distributor();
        IRewardTracker(rewardTracker).updateRewards();
        IRewardDistributor(rewardDistributor).updateLastDistributionTime();
        IRewardDistributor(rewardDistributor).setTokensPerInterval(amount);
    }
}
