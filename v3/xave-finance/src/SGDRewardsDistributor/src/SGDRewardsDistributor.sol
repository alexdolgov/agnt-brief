// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

/// @notice Will point to only one fxpool
contract SGDRewardsDistributor is Ownable {
    using SafeERC20 for IERC20;
    struct RewardData {
        uint256 rewardsEarned;
        bool isClaimed;
    }

    // for FE to call
    mapping(address => RewardData) public rewardees;

    // Distribution parameters
    uint256 public currentDistributionRound = 0;
    uint256 public claimingDeadline = 0;
    address public immutable xsgdAddress;
    // identifier for this contract
    string public fxpoolName;
    bool public isInitialized = false;

    event RewardsClaimed(address indexed user, uint256 indexed rewardsClaimed);
    event RewardsDistributed(address indexed distributor, uint256 indexed timeDistributed);
    event Initialize(address indexed admin, uint256 indexed timestamp);
    event Withdraw(address indexed withdrawer, uint256 indexed amount);
    event DataCleared(address indexed admin, uint256 indexed addressesCleared);

    modifier initialized() {
        require(isInitialized == true, 'distributor/not-initialized');
        _;
    }

    constructor(address _xsgdAddress, string memory _fxpoolName) {
        xsgdAddress = _xsgdAddress;
        fxpoolName = _fxpoolName;
    }

    /// @notice initialize contract and set the first distribution data
    function intialize(
        address[] memory userAddresses,
        uint256[] memory rewardsEarned,
        uint256 deadline
    ) external onlyOwner {
        require(isInitialized == false, 'distributor/already-initialized');
        require(userAddresses.length == rewardsEarned.length, 'distributor/mismatched-length');

        // configure first distribution information
        claimingDeadline = deadline;
        currentDistributionRound++;

        for (uint256 i = 0; i < userAddresses.length; i++) {
            address user = userAddresses[i];
            rewardees[user] = RewardData(rewardsEarned[i], false);
        }

        // initialize contract
        isInitialized = true;

        emit Initialize(msg.sender, block.timestamp);
    }

    /// @notice create subsequent distribution after initializing
    function createDistribution(
        address[] memory userAddresses,
        address[] memory oldRewardees,
        uint256[] memory rewardsEarned,
        uint256 deadline
    ) external onlyOwner initialized {
        require(userAddresses.length == rewardsEarned.length, 'distributor/mismatched-length');

        // Clear data first from initial data
        for (uint i = 0; i < oldRewardees.length; i++) {
            rewardees[oldRewardees[i]] = RewardData(0, false);
        }
        // change to new deadline
        claimingDeadline = deadline;
        // increment current distribution
        currentDistributionRound++;

        // add information for the latest distribution
        for (uint256 i = 0; i < userAddresses.length; i++) {
            address user = userAddresses[i];
            rewardees[user] = RewardData(rewardsEarned[i], false);
        }

        emit RewardsDistributed(msg.sender, block.timestamp);
    }

    /// @notice called by the user to claim rewards
    function claimRewards() external initialized {
        require(block.timestamp < claimingDeadline, 'distributor/deadline-passed');
        require(rewardees[msg.sender].isClaimed == false, 'distributor/already-claimed');

        rewardees[msg.sender].isClaimed = true;

        IERC20(xsgdAddress).safeTransfer(msg.sender, rewardees[msg.sender].rewardsEarned);

        emit RewardsClaimed(msg.sender, rewardees[msg.sender].rewardsEarned);
    }

    /// @notice withdraw function for admin
    function withdraw(uint256 amount) external onlyOwner {
        IERC20(xsgdAddress).safeTransfer(msg.sender, amount);

        emit Withdraw(msg.sender, amount);
    }
}
