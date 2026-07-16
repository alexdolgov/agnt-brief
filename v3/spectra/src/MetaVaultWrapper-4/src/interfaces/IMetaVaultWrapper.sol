// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import {IERC7540} from "./I7540.sol";

/**
 * @title IMetaVaultWrapper
 * @notice Wrapper that custodies the infra-vault shares and exposes the full ERC‑7540 interface.
 *         The main goal of this wrapper is to provide a unified interface for users
 *         and to allow underlying infrastructure vault migration without affecting users. The wrapper will need to be upgraded and audited every time 
 *         the underlying infra vault is changed. An isolated part of the wrapper will contain specific storage and logic for the specific infra vault used.
 *        The storage structure of the infra vault can be deprecated upon migration, and a new storage pointer can be created.
 *
 * @dev This interface EXTENDS IERC7540.
 */
interface IMetaVaultWrapper is IERC7540 {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when wrapper migrates to a new underlying vault.
    /// @param currentVault Address of the previous underlying vault
    /// @param newVault     Address of the new underlying vault
    event Migrate(address indexed currentVault, address indexed newVault);

    /// @notice Emitted when a user decreases a request deposit.
    /// @param epochId The id of the epoch.
    /// @param owner The address of the user that requested.
    /// @param previousRequestedAssets The amount of assets requested by the user
    /// before the new request.
    /// @param newRequestedAssets The amount of assets requested by the user.
    event DecreaseDepositRequest(
        uint256 indexed epochId,
        address indexed owner,
        uint256 indexed previousRequestedAssets,
        uint256 newRequestedAssets
    );

    /// @notice Emitted when a user requests a decrease redeem.
    /// @param epochId The id of the epoch.
    /// @param owner The address of the user that made the request.
    /// @param previousRequestedShares The amount of shares requested by the user
    /// before the new request.
    /// @param newRequestedShares The amount of shares requested by the user.
    event DecreaseRedeemRequest(
        uint256 indexed epochId,
        address indexed owner,
        uint256 indexed previousRequestedShares,
        uint256 newRequestedShares
    );

    /// @notice Emitted when a user claims a pending deposit.
    /// @param epochId The id of the epoch.
    /// @param assetsClaimed The amount of assets claimed by the user.
    /// @param wrapperSharesReceived The amount of wrapper shares received by the user.
    event ClaimPendingDeposit(
        uint256 indexed epochId,
        uint256 indexed assetsClaimed,
        uint256 indexed wrapperSharesReceived
    );

    /// @notice Emitted when a user claims a pending redeem.
    /// @param epochId The id of the epoch.
    /// @param wrapperSharesClaimed The amount of wrapper shares claimed by the user.
    /// @param assetsReceived The amount of assets received by the user.
    event ClaimPendingRedeem(
        uint256 indexed epochId,
        uint256 indexed wrapperSharesClaimed,
        uint256 indexed assetsReceived
    );

    /// @notice Emitted when the wrapper is initialized.
    /// @param owner The address of the owner of the wrapper.
    /// @param infraVault The address of the infra vault used by the wrapper.
    /// @param wrapper The address of the wrapper.
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

    /// @notice Infra vault address used by the wrapper.
    function getInfraVault() external view returns (address);

    /// @notice Total Infra vault shares held by the wrapper.
    function totalVaultShares() external view returns (uint256);

    /// @notice Converts wrapper shares to assets based on the epoch `epochId` snapshot.
    function convertToAssets(
        uint256 shares,
        uint256 epochId
    ) external view returns (uint256 assets);

    /// @notice Converts assets to shares based on the epoch `epochId` snapshot.
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
     *      SHOULD preserve shares equivalence.
     *      SHOULD be empty at first and make sure the implementation of the wrapper has been upgraded to support the new vault before migration.
     * @param newVault Address of the new underlying vault implementation.
     */
    function migrate(address newVault) external;
}
