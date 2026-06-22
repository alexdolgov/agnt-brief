// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

/**
 * @title LpManagerStorage
 * @notice This contract stores the state variables and common functions used by LpManager contract and its child contracts.
 */
interface ILPManager {

    struct LpPosition {
        uint256 qty; // LP position qty
    }

    struct Account {
        int256 paidValue; // paid value of the account
        UserStatusMap userStatusMap; // user status bitmap
    }

    struct UserStatusMap {
        /**
         * even number bit: Indicates if user owns position
         * odd number bit: Indicates if user has the collateral
         */
        uint256 data;
    }

    function positions(address lpUser) external view returns (LpPosition memory);

    function getAccount(
        address user
    ) external view returns (Account memory);

    function getLpPositionPrice() external view returns (uint256 _price);

    function entryPrices(address user) external view returns (uint256 _entryPrice);
}