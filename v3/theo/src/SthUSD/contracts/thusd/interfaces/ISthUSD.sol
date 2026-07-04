pragma solidity ^0.8.28;

interface ISthUSD {
    struct RedeemRequestData {
        uint256 assets;
        uint256 shares;
        uint256 claimableTimestamp;
    }

    ///
    /// EVENTS
    ///

    event LockupPeriodUpdated(uint256 oldLockupPeriod, uint256 newLockupPeriod);
    event VestingDurationUpdated(uint256 oldVestingDuration, uint256 newVestingDuration);
    event YieldDistributorUpdated(address indexed oldYieldDistributor, address indexed newYieldDistributor);
    event YieldTransferredIn(uint256 amount, uint256 vestingDuration);
    event RedeemRequest(address indexed destination, address indexed owner, address sender, uint256 shares, uint256 assets);
    event EmergencyPauserUpdated(address indexed oldEmergencyPauser, address indexed newEmergencyPauser);

    ///
    /// ERRORS
    ///

    error ZeroAssetsOrShares();
    error InvalidYieldDistributor();
    error MaxLockupPeriodExceeded();
    error MaxVestingDurationExceeded();
    error VestingInProgress();
    error VestingDurationNotSet();
    error NoClaimableRequest();
    error LockupNotElapsed();
    error ExceedsClaimable(uint256 requested, uint256 available);
    error NotAuthorizedToPause();
    error OwnerMustCompleteRedeem();

    ///
    /// Async Redeem Functions
    ///

    function initiateRedeem(uint256 shares, address owner) external;

    function pendingRedeemRequest(address owner) external view returns (uint256 shares);

    function claimableRedeemRequest(address owner) external view returns (uint256 shares);

    function currentRedeemRequest(address owner) external view returns (RedeemRequestData memory);

    ///
    /// Yield Functions
    ///
    function getUnvestedAmount() external view returns (uint256);

    function setLockupPeriod(uint256 lockupPeriod_) external;

    function setVestingDuration(uint256 vestingDuration_) external;

    function setYieldDistributor(address yieldDistributor_) external;

    function yieldDistributor() external view returns (address);

    function setYield(uint256 amount_) external;

    ///
    /// Pause Functions
    ///

    function emergencyPauser() external view returns (address);

    function setEmergencyPauser(address emergencyPauser_) external;

    function pause() external;

    function unpause() external;
}
