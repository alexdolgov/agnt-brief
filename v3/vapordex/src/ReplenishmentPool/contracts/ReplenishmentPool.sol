// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

error Replenishment__Unauthorized();
error Replenishment__BalanceTooLow();
error Replenishment__InvalidAddress();
error Replenishment__InvalidRewardsRate();
error Replenishment__TooEarly();
error Replenishment__RecoverFailed();

/// @title Replenishment Pool
/// @notice Replenishment contract
/// @dev Utilizes 'Ownable' and 'IERC20'
contract ReplenishmentPool is Ownable {
    //////////////
    /// EVENTS ///
    //////////////

    event DailyTransfer(uint256 amount);

    IERC20 public usdc;
    address public stakingRewardPool;
    address public gelato;
    uint256 public lastUpdatedTime;
    uint256 public immutable DEPLOYMENT_TIMESTAMP;
    uint256 public constant INITIAL_REWARD = 100 * 1e6;

    ///////////////////
    /// CONSTRUCTOR ///
    ///////////////////

    constructor(address _usdc, address _rewardsPool, address _owner) {
        if (_usdc == address(0) || _rewardsPool == address(0) || _owner == address(0)) {
            revert Replenishment__InvalidAddress();
        }

        DEPLOYMENT_TIMESTAMP = block.timestamp;

        lastUpdatedTime = DEPLOYMENT_TIMESTAMP;
        usdc = IERC20(_usdc);
        stakingRewardPool = _rewardsPool;
        _transferOwnership(_owner);
    }

    //////////////////////
    /// EXTERNAL LOGIC ///
    //////////////////////

    /// @notice Daily transfer USDC tokens to Rewards Pool
    /// @notice Only callable by Gelato
    function dailyTransfer() external {
        if (msg.sender != gelato) revert Replenishment__Unauthorized();

        if (block.timestamp < (lastUpdatedTime + 84600)) revert Replenishment__TooEarly(); // After 24 hours


        lastUpdatedTime = block.timestamp;

        uint256 usdcAmountToTransfer = rewardToTransfer();

        uint256 currentBalance = usdc.balanceOf(address(this));
        if (currentBalance < usdcAmountToTransfer) revert Replenishment__BalanceTooLow();

        usdc.transfer(stakingRewardPool, usdcAmountToTransfer);

        emit DailyTransfer(usdcAmountToTransfer);
    }

    function rewardToTransfer() public view  returns(uint256) {
        uint256 dailyDiffRewards = (block.timestamp - DEPLOYMENT_TIMESTAMP) / 1 days;
        if (dailyDiffRewards > 30) {
            dailyDiffRewards = 30;
        }
        uint256 monthlyDiffRewards = 0;
        if (block.timestamp - DEPLOYMENT_TIMESTAMP >= 30 days) {
            monthlyDiffRewards = ((block.timestamp - DEPLOYMENT_TIMESTAMP) / 30 days) - 1;
        }
        uint256 totalRewards = INITIAL_REWARD + dailyDiffRewards * 1e6 + monthlyDiffRewards * 1e6;
        return totalRewards;
    }

    ////////////////
    /// SETTINGS ///
    ////////////////

    /// @notice Update Gelato address
    /// @param _newGelato New Gelato address
    function updateGelato(address _newGelato) external onlyOwner {
        if (_newGelato == address(0)) revert Replenishment__InvalidAddress();

        gelato = _newGelato;
    }

    /// @notice Update Rewards Pool address
    /// @param _newRewardsPool New Rewards Pool address
    function updateRewardsPool(address _newRewardsPool) external onlyOwner {
        if (_newRewardsPool == address(0)) revert Replenishment__InvalidAddress();

        stakingRewardPool = _newRewardsPool;
    }

    //////////////////////////
    /// EMERGENCY RECOVERY ///
    //////////////////////////

    /// @notice Recover native tokens
    /// @param _amount Amount of native tokens to recover
    function recoverNative(uint256 _amount) external onlyOwner {
        (bool success, ) = payable(owner()).call{ value: _amount }("");
        if (!success) revert Replenishment__RecoverFailed();
    }

    /// @notice Recover ERC20 tokens
    /// @param _token Address of ERC20 token
    /// @param _amount Amount of ERC20 tokens to recover
    function recoverERC20(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).transfer(owner(), _amount);
    }

    ///////////////
    /// GETTERS ///
    ///////////////

    /// @notice Get the address of Rewards Pool
    function rewardsPool() public view returns (address) {
        return stakingRewardPool;
    }

    /// @notice Get the current balance of USDC tokens
    function usdcBalance() public view returns (uint256) {
        return usdc.balanceOf(address(this));
    }

    /// @notice Get the time stamp of the last update
    function lastUpdated() public view returns (uint256) {
        return lastUpdatedTime;
    }
}