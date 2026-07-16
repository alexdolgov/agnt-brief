// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

interface IOrderBookFactory {
    function regularHookFeePercentage() external view returns (uint256);
    function dynamicHookFeePercentage() external view returns (uint256);
    function antiSnipeHookFeePercentage() external view returns (uint256);
    function antiSnipeDynamicHookFeePercentage() external view returns (uint256);

    /// @notice Returns the address of the strategy that reserved a pool, or address(0) if not reserved
    /// @param poolId The pool ID to check
    /// @return The address of the reserving strategy, or address(0)
    function reservedPools(bytes32 poolId) external view returns (address);

    /// @notice Deploy a volatility hook for a creator using a pre-computed salt
    /// @dev Salt must be computed off-chain. Verifies the resulting address has correct hook flags.
    /// @param hookOwner The owner of the hook
    /// @param salt The pre-computed salt from HookMiner
    /// @return hookAddr The deployed hook address
    function deployVolatilityHookWithSalt(address hookOwner, bytes32 salt) external returns (address hookAddr);
}