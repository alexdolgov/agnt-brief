// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";

/**
 * @title IPrincipalTokenModule
 * @notice Interface for PrincipalTokenModule - handles Principal Token and IBT operations for the router
 */
interface IPrincipalTokenModule {
    /**
     * @notice Deposits assets into IBT
     * @param ibt The address of the IBT
     * @param assets The amount of assets to deposit
     * @param recipient The address of the recipient
     */
    function depositAssetInIBT(address ibt, uint256 assets, address recipient) external payable;

    /**
     * @notice Deposits assets into PT
     * @param pt The address of the PT
     * @param assets The amount of assets to deposit
     * @param ptRecipient The address of the PT recipient
     * @param ytRecipient The address of the YT recipient
     * @param minShares The minimum amount of shares to receive
     */
    function depositAssetInPT(address pt, uint256 assets, address ptRecipient, address ytRecipient, uint256 minShares)
        external
        payable;

    /**
     * @notice Deposits IBT into PT
     * @param pt The address of the PT
     * @param ibts The amount of IBTs to deposit
     * @param ptRecipient The address of the PT recipient
     * @param ytRecipient The address of the YT recipient
     * @param minShares The minimum amount of shares to receive
     */
    function depositIBTInPT(address pt, uint256 ibts, address ptRecipient, address ytRecipient, uint256 minShares)
        external
        payable;

    /**
     * @notice Redeems IBT for underlying assets
     * @param ibt The address of the IBT
     * @param shares The amount of shares to redeem
     * @param recipient The address of the recipient
     */
    function redeemIBTForAsset(address ibt, uint256 shares, address recipient) external payable;

    /**
     * @notice Redeems PT for underlying assets
     * @param pt The address of the PT
     * @param shares The amount of shares to redeem
     * @param recipient The address of the recipient
     * @param minOut The minimum amount of assets to receive
     */
    function redeemPTForAsset(address pt, uint256 shares, address recipient, uint256 minOut) external payable;

    /**
     * @notice Redeems PT for IBT
     * @param pt The address of the PT
     * @param shares The amount of shares to redeem
     * @param recipient The address of the recipient
     * @param minOut The minimum amount of IBTs to receive
     */
    function redeemPTForIBT(address pt, uint256 shares, address recipient, uint256 minOut) external payable;

    // PREVIEW FUNCTIONS

    /**
     * @notice Previews depositing assets into IBT
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewDepositAssetInIBT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @notice Previews depositing assets into PT
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewDepositAssetInPT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @notice Previews depositing IBT into PT
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewDepositIBTInPT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @notice Previews redeeming IBT for assets
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewRedeemIBTForAsset(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @notice Previews redeeming PT for assets
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewRedeemPTForAsset(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);

    /**
     * @notice Previews redeeming PT for IBT
     * @param _inputs Encoded input parameters
     * @param _spot Whether to use spot pricing
     * @param balances Array of token balances
     * @return Exchange rate and updated balances
     */
    function previewRedeemPTForIBT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory);
}
