// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

interface ISprBTCVaultRepository {
    // ==================== SETTERS ====================

    /// @notice Set the wBTC token address
    function setWBTCToken(address token) external;

    /// @notice Set the custodian address (MPC vault)
    function setCustodian(address custodian) external;

    /// @notice Set the treasury address for fees
    function setTreasury(address treasury) external;

    /// @notice Set the deposit fee (in 1e18 precision, 0 = no fee)
    function setDepositFee(uint256 fee) external;

    /// @notice Set the withdrawal fee (in 1e18 precision)
    function setWithdrawalFee(uint256 fee) external;

    /// @notice Set the exchange rate and timestamp
    function setExchangeRate(uint256 rate, uint256 timestamp) external;

    /// @notice Set max queue size
    function setMaxQueueSize(uint256 maxSize) external;

    /// @notice Set minimum deposit amount
    function setMinimumDeposit(uint256 amount) external;

    /// @notice Set minimum withdrawal amount
    function setMinimumWithdrawal(uint256 amount) external;

    /// @notice Set the reward distributor address
    function setRewardDistributor(address distributor) external;

    // ==================== GETTERS ====================

    /// @notice Get the wBTC token address
    function getWBTCToken() external view returns (address);

    /// @notice Get the custodian address
    function getCustodian() external view returns (address);

    /// @notice Get the treasury address
    function getTreasury() external view returns (address);

    /// @notice Get the deposit fee
    function getDepositFee() external view returns (uint256);

    /// @notice Get the withdrawal fee
    function getWithdrawalFee() external view returns (uint256);

    /// @notice Get the exchange rate and last update timestamp
    function getExchangeRate() external view returns (uint256 rate, uint256 lastUpdated);

    /// @notice Get max queue size
    function getMaxQueueSize() external view returns (uint256);

    /// @notice Get minimum deposit amount
    function getMinimumDeposit() external view returns (uint256);

    /// @notice Get minimum withdrawal amount
    function getMinimumWithdrawal() external view returns (uint256);

    /// @notice Get the reward distributor address
    function getRewardDistributor() external view returns (address);
}
