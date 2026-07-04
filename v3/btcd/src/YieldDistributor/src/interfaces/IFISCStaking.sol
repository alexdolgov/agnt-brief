// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./IBaseStaking.sol";

interface IFISCStaking {
    // Events //
    /// @notice Event emitted when the rewards are received
    event RewardsReceived(uint256 amount);
    /// @notice Event emitted when the balance from an FULL_RESTRICTED_STAKER_ROLE user are redistributed
    event LockedAmountRedistributed(
        address indexed from,
        address indexed to,
        uint256 amount
    );
    // @notice Event emitted when cooldown duration updates
    event CooldownDurationUpdated(uint24 previousDuration, uint24 newDuration);
    /// @notice Event emitted when vesting duration updates
    event VestingDurationUpdated(uint24 previousDuration, uint24 newDuration);
    /// @notice Event emitted when a user claims BTCD rewards
    event RewardsClaimed(
        address indexed user,
        address indexed receiver,
        uint256 amount
    );

    // Errors //
    /// @notice Error emitted shares or assets equal zero.
    error InvalidAmount();
    /// @notice Error emitted when owner attempts to rescue USDe tokens.
    error InvalidToken();
    /// @notice Error emitted when a small non-zero share amount remains, which risks donations attack
    error MinSharesViolation();
    /// @notice Error emitted when owner is not allowed to perform an operation
    error OperationNotAllowed();
    /// @notice Error emitted when there is still unvested amount
    error StillVesting();
    /// @notice Error emitted when owner or blacklist manager attempts to blacklist owner
    error CantBlacklistOwner();
    /// @notice Error emitted when the shares amount to redeem is greater than the shares balance of the owner
    error ExcessiveRedeemAmount();
    /// @notice Error emitted when the shares amount to withdraw is greater than the shares balance of the owner
    error ExcessiveWithdrawAmount();
    /// @notice Error emitted when cooldown value is invalid
    error InvalidCooldown();
    /// @notice Error emitted when vesting period is invalid
    error InvalidVestingPeriod();
    /// @notice Error emitted when reward rate would be zero
    error InvalidRewardRate();

    function cooldownAssets(uint256 assets) external returns (uint256 shares);

    function cooldownShares(uint256 shares) external returns (uint256 assets);

    function unstake(address receiver) external;

    function setCooldownDuration(uint24 duration) external;

    function transferInRewards(uint256 amount) external;

    function rescueTokens(address token, uint256 amount, address to) external;

    function getUnvestedAmount() external view returns (uint256);

    function totalAssets() external view returns (uint256);

    function claimRewards(address receiver) external returns (uint256 amount);

    function getClaimableRewards(address account) external view returns (uint256);

    function rewardToken() external view returns (IERC20);
}
