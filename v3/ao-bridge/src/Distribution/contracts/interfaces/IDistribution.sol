// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * Lean interface for the single-vault Distribution contract.
 */
interface IDistribution {
    /** Per-user accounting. */
    struct UserData {
        uint128 lastStake;
        uint256 deposited;
    }

    // ————————————————————————————— Events —————————————————————————————
    event CalculateOverplusResult(uint256 totalAssets, uint256 overplus);
    event UserStaked(address indexed user, uint256 amount, bytes32 arweaveAddress);
    event UserWithdrawn(address indexed user, uint256 amount, bytes32 arweaveAddress);
    event OverplusBridged(uint256 amount);

    // —————————————————————————— External API ——————————————————————————

    function Distribution_init(
        address aoDistributionWallet_,
        uint128 withdrawLockPeriodAfterStake_,
        uint256 minimalStake_,
        uint128 lastUpdate_,
        address refunderAddress,
        address fallbackAddress,
        uint16 depositReferralCode_
    ) external;

    function stake(uint256 amount_, bytes32 arweaveAddress_) external;

    function withdraw(uint256 amount_, bytes32 arweaveAddress_) external;

    function calculateOverplus() external returns (uint256);

    function bridgeOverplus() external;

    function removeUpgradeability() external;

    function isNotUpgradeable() external view returns (bool);

    function depositToken() external view returns (address);

    function aoDistributionWallet() external view returns (address);

    function totalDepositedInVault() external view returns (uint256);

    function usersData(address user) external view returns (UserData memory);

    function ejectStakedFunds(address user) external;
}
