// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";

/**
 * @title IWrapperModule
 * @notice Interface for WrapperModule contract that handles wrapper operations for the router
 */
interface IWrapperModule {
    /**
     * @dev Wraps vault shares in a 4626 adapter
     * @param wrapper The address of the wrapper
     * @param vaultShares The amount of vault shares to wrap
     * @param recipient The address of the recipient
     * @param minWrapperShares The minimum amount of wrapper shares to receive
     */
    function wrapVaultIn4626Adapter(address wrapper, uint256 vaultShares, address recipient, uint256 minWrapperShares)
        external
        payable;

    /**
     * @dev Unwraps vault from a 4626 adapter
     * @param wrapper The address of the wrapper
     * @param wrapperShares The amount of wrapper shares to unwrap
     * @param recipient The address of the recipient
     * @param minVaultShares The minimum amount of vault shares to receive
     */
    function unwrapVaultFrom4626Adapter(
        address wrapper,
        uint256 wrapperShares,
        address recipient,
        uint256 minVaultShares
    ) external payable;

    /**
     * @dev Deposits native token into wrapper
     * @param wrapper The address of the wrapper
     * @param amount The amount of native token to deposit
     */
    function depositNativeInWrapper(address wrapper, uint256 amount) external payable;

    /**
     * @dev Withdraws native token from wrapper
     * @param wrapper The address of the wrapper
     * @param amount The amount of native token to withdraw
     */
    function withdrawNativeFromWrapper(address wrapper, uint256 amount) external payable;

    /**
     * @dev Previews wrapping vault shares into 4626 wrapper shares
     * @param inputs ABI-encoded (wrapper, vaultShares, recipient)
     * @param _spot True for spot calculation, false for adjusted amount
     * @param balances Token balance array for calculations
     * @return rate The calculated wrapper rate
     * @return updatedBalances Updated token balance array
     */
    function previewWrapVaultIn4626Adapter(
        bytes memory inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256 rate, RouterCommandsUtilities.TokenBalance[] memory updatedBalances);

    /**
     * @dev Previews unwrapping vault shares from 4626 wrapper shares
     * @param inputs ABI-encoded (wrapper, wrapperShares, recipient)
     * @param _spot True for spot calculation, false for adjusted amount
     * @param balances Token balance array for calculations
     * @return rate The calculated wrapper rate
     * @return updatedBalances Updated token balance array
     */
    function previewUnwrapVaultFrom4626Adapter(
        bytes memory inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256 rate, RouterCommandsUtilities.TokenBalance[] memory updatedBalances);
}
