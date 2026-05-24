// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "./IOrderUtil.sol";
import {IAddressBook} from "./IAddressBook.sol";

interface IHedgedPool {
    function addressBook() external view returns (IAddressBook);

    function getCollateralBalance() external view returns (uint256);

    function strikeToken() external view returns (IERC20);

    function collateralToken() external view returns (IERC20);

    function getAllUnderlyings() external view returns (address[] memory);

    function getActiveOTokens() external view returns (address[] memory);

    function trade(
        IOrderUtil.Order calldata order,
        uint256 traderVaultId,
        bool autoCreateVault
    ) external returns (address);

    function keepers(address keeper) external view returns (bool);

    function depositToPool(address token, uint256 amount) external;

    function borrowFromPool(address token, uint256 amount) external;
}
