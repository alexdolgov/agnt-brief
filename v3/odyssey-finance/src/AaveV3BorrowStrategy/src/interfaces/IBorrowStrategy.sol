// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IStrategy} from "./IStrategy.sol";

interface IBorrowStrategy is IStrategy {
    /// @notice Get Loan-to-value
    /// @return _ltv The `debt/collateral` ratio (e.g., 50% == 0.5e18)
    function ltv() external view returns (uint256 _ltv);

    /// @notice Deposit collateral and borrow
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `depositAndBorrow` from the target strategy's implementation).
    function depositAndBorrow(bytes memory params_) external;

    /// @notice Repay debt and withdraw collateral
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `repayAndWithdraw` from the target strategy's implementation).
    function repayAndWithdraw(bytes memory params_) external;

    /// @notice Deposit collateral
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `deposit` from the target strategy's implementation).
    function deposit(bytes memory params_) external;

    /// @notice Withdraw collateral
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `withdraw` from the target strategy's implementation).
    function withdraw(bytes memory params_) external;

    /// @notice Borrow token
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `borrow` from the target strategy's implementation).
    function borrow(bytes memory params_) external;

    /// @notice Repay debt
    /// @param params_ The feature's params
    /// The `params_` is protocol-related encoded params (See: `repay` from the target strategy's implementation).
    function repay(bytes memory params_) external;

    /// @notice Get borrow token
    /// @return The borrow token
    function borrowToken() external view returns (IERC20);

    /// @notice Get collateral balance
    /// @return The deposited amount (in `asset`)
    function depositedAmount() external view returns (uint256);

    /// @notice Debt balance
    /// @return The borrowed amount (in `borrowToken`)
    function borrowedAmount() external view returns (uint256);

    /// @notice Get collateral factor of the deposit token (e.g. 0.7e18 = 70%)
    /// @return The collateral factor
    function collateralFactor() external view returns (uint256);

    /// @notice Interest rate of the borrow token (e.g. 0.1e18 = 10%)
    /// @return The interest rate
    function interestRate() external view returns (uint256);

    /// @notice Health factor of the position (i.e., >= 1e18 means healthy position)
    /// @return The health factor
    function healthFactor() external view returns (uint256);

    /// @notice Preview position's borrow params
    /// This function is useful to calculate leverage and APY before opening a position
    /// @param positionParams_ The positions' params (i.e., collateral asset and target protocol config).
    /// The `positionParams_` is encoded by `abi.encode(_genericParams, _customParams)` where `_genericParams` is `abi.encode(collateral)`,
    /// and `_customParams` is protocol-related encoded params (See: `_setCustomParams` from the target strategy's implementation).
    /// @return _collateralFactor The collateral factor of the deposit token (e.g. 0.7e18 = 70%)
    /// @return _interestRate The interest rate of the borrow token (e.g. 0.1e18 = 10%)
    function previewBorrowParams(
        bytes memory positionParams_
    ) external view returns (uint256 _collateralFactor, uint256 _interestRate);
}
