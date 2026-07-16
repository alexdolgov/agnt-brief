// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import {IERC7540} from "./I7540.sol";

/**
 * @title IMetaVaultWrapper
 * @notice Wrapper that *custodies* the infra-vault shares and exposes full ERC‑7540.
 *         The main goal of this wrapper is to provide a unified interface for users
 *         and to allow implementation vault migration without affecting users.
 *
 * @dev This interface EXTENDS IERC7540.
 */
interface IMetaVaultWrapper is IERC7540 {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when wrapper migrates its custodial position to a new underlying vault.
    /// @param currentVault Address of the previous underlying vault
    /// @param newVault     Address of the new underlying vault
    event Migrate(address indexed currentVault, address indexed newVault);

    /// @notice Emitted when a user request a deposit.
    /// @param epochId The id of the epoch.
    /// @param owner The address of the user that requested the deposit.
    /// @param previousRequestedAssets The amount of assets requested by the user
    /// before the new request.
    /// @param newRequestedAssets The amount of assets requested by the user.
    event DecreaseDepositRequest(
        uint256 indexed epochId,
        address indexed owner,
        uint256 indexed previousRequestedAssets,
        uint256 newRequestedAssets
    );

    /// @notice Emitted when a user request a redeem.
    /// @param epochId The id of the epoch.
    /// @param owner The address of the user that requested the redeem.
    /// @param previousRequestedShares The amount of shares requested by the user
    /// before the new request.
    /// @param newRequestedShares The amount of shares requested by the user.
    event DecreaseRedeemRequest(
        uint256 indexed epochId,
        address indexed owner,
        uint256 indexed previousRequestedShares,
        uint256 newRequestedShares
    );

    event ClaimPendingDeposit(
        uint256 indexed epochId,
        uint256 indexed assetsClaimed,
        uint256 indexed wrapperSharesReceived
    );

    event ClaimPendingRedeem(
        uint256 indexed epochId,
        uint256 indexed wrapperSharesClaimed,
        uint256 indexed assetsReceived
    );

    event MetaVaultWrapperInitialized(
        address indexed owner,
        address indexed infraVault,
        address indexed wrapper
    );

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error ZeroDecreaseAmount();
    error DecreaseAmountExceedsPending(uint256 pendingAmount, uint256 decreaseAmount);

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Infra vault address used by the wrapper for claims.
    function getInfraVault() external view returns (address);

    /// @notice Total Infra vault
    function totalVaultShares() external view returns (uint256);

    /// @notice Converts `shares` (in wrapper) to assets (in underlying) based on the epoch `epochId` snapshot.
    function convertToAssets(
        uint256 shares,
        uint256 epochId
    ) external view returns (uint256 assets);

    /// @notice Converts `assets` (in underlying) to shares (in wrapper) based on the epoch `epochId` snapshot.
    function convertToShares(
        uint256 assets,
        uint256 epochId
    ) external view returns (uint256 shares);

    /*//////////////////////////////////////////////////////////////
                              MIGRATION
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Migrate the wrapper’s infra-vault shares to `newVault`.
     * @dev SHOULD be governance-restricted
     *      SHOULD verify `newVault` has zero assets to avoid inflation attacks.
     *      MUST leave balance in currentVault == 0 after migration.
     *      SHOULD preserve shares equivalence.
     *      MUST make sure the implementation of the wrapper has been upgraded to support the new vault firsst.
     *      MUST emit {Migrate}.
     * @param newVault Address of the new underlying vault implementation.
     */
    function migrate(address newVault) external;
}
