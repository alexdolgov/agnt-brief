// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./ILiquidityTree.sol";
import "@openzeppelin/contracts/interfaces/IERC721Enumerable.sol";

/**
 * @title Azuro Liquidity Vault Interface
 */
interface IVault is ILiquidityTree, IERC721Enumerable {
    event AdminChanged(address newAdmin);

    error DepositDoesNotExist();
    error IncorrectDeposit();
    error LiquidityIsLocked();
    error NotEnoughLiquidity();
    error NotEnoughLockedLiquidity();
    error OnlyAdmin();

    function initialize(address token_) external;

    function changeAdmin(address newAdmin) external;

    function addDeposit(
        address depositor,
        uint128 amount
    ) external returns (uint48);

    function addLiquidity(uint128 amount, uint48 depositId) external;

    function lockLiquidity(uint128 amount) external;

    function unlockLiquidity(uint128 amount) external;

    function withdrawDeposit(
        uint48 depositId,
        uint40 percent
    ) external returns (uint128 withdrawnAmount);

    function withdrawLiquidityFor(
        address to,
        uint128 amount,
        uint48 depositId
    ) external;

    function getReserve() external view returns (uint128);

    function getLastDepositId() external view returns (uint48 depositId);

    function isDepositExists(uint256 depositId) external view returns (bool);

    function token() external view returns (address);
}
