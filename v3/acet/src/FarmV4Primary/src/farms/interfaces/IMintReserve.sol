// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Shared reservation / mint coordinator for the 3 final farms.
/// Holds the only AcetAdaptor pool registration and the only BALANCE_MANAGER_ROLE
/// grant. Enforces the global 3,000,000,000 ACT terminal cap across all farms.
interface IMintReserve {
    function reserve(uint256 amount) external;
    function releaseReservation(uint256 amount) external;
    function mintAndCredit(address user, uint256 amount) external;
    function creditBuyBalance(address user, uint256 amount) external;
    function debitBuyBalance(address user, uint256 amount) external;

    function totalReserved() external view returns (uint256);
    function totalMinted() external view returns (uint256);
    function remainingMintable() external view returns (uint256);
}
