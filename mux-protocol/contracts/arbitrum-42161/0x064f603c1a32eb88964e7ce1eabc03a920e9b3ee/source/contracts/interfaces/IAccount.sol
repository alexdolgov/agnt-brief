// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.19;

/**
 * @title IAccount
 * @dev Interface for the Account contract.
 */
interface IAccount {
    /**
     * @dev Emitted when a trader deposits collateral into their sub-account.
     * @param subAccountId The ID of the sub-account.
     * @param trader The address of the trader who made the deposit.
     * @param collateralId The ID of the collateral being deposited.
     * @param rawAmount The raw amount of collateral being deposited.
     * @param wadAmount The wad amount of collateral being deposited.
     */
    event DepositCollateral(
        bytes32 indexed subAccountId,
        address indexed trader,
        uint8 collateralId,
        uint256 rawAmount,
        uint96 wadAmount
    );

    /**
     * @dev Emitted when a trader withdraws collateral from their sub-account.
     * @param subAccountId The ID of the sub-account.
     * @param trader The address of the trader who made the withdrawal.
     * @param collateralId The ID of the collateral being withdrawn.
     * @param rawAmount The raw amount of collateral being withdrawn.
     * @param wadAmount The wad amount of collateral being withdrawn.
     */
    event WithdrawCollateral(
        bytes32 indexed subAccountId,
        address indexed trader,
        uint8 collateralId,
        uint256 rawAmount,
        uint96 wadAmount
    );

    /**
     * @dev Deposits collateral into the sub-account.
     * @param subAccountId The ID of the sub-account.
     * @param rawAmount The amount of collateral to deposit.
     */
    function depositCollateral(
        bytes32 subAccountId,
        uint256 rawAmount // NOTE: OrderBook SHOULD transfer rawAmount collateral to LiquidityPool
    ) external;

    /**
     * @dev Withdraws collateral from the sub-account.
     * @param subAccountId The ID of the sub-account.
     * @param rawAmount The amount of collateral to withdraw.
     * @param collateralPrice The price of the collateral asset.
     * @param assetPrice The price of the asset being traded.
     */
    function withdrawCollateral(
        bytes32 subAccountId,
        uint256 rawAmount,
        uint96 collateralPrice,
        uint96 assetPrice
    ) external;

    /**
     * @dev Withdraws all collateral from the sub-account.
     * @param subAccountId The ID of the sub-account.
     */
    function withdrawAllCollateral(bytes32 subAccountId) external;
}
