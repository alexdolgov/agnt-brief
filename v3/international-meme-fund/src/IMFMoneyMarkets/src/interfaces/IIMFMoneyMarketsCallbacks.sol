// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title IIMFMoneyMarketsLiquidateCallback
/// @notice Interface that liquidators willing to use `liquidate`'s callback must implement.
interface IIMFMoneyMarketsLiquidateCallback {
    /// @notice Callback called when a liquidation occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param repaidAssets The amount of repaid assets.
    /// @param data Arbitrary data passed to the `liquidate` function.
    function onIMFMoneyMarketsLiquidate(uint256 repaidAssets, bytes calldata data) external;
}

/// @title IIMFMoneyMarketsRepayCallback
/// @notice Interface that users willing to use `repay`'s callback must implement.
interface IIMFMoneyMarketsRepayCallback {
    /// @notice Callback called when a repayment occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of repaid assets.
    /// @param data Arbitrary data passed to the `repay` function.
    function onIMFMoneyMarketsRepay(uint256 assets, bytes calldata data) external;
}

/// @title IIMFMoneyMarketsSupplyCallback
/// @notice Interface that users willing to use `supply`'s callback must implement.
interface IIMFMoneyMarketsSupplyCallback {
    /// @notice Callback called when a supply occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of supplied assets.
    /// @param data Arbitrary data passed to the `supply` function.
    function onIMFMoneyMarketsSupply(uint256 assets, bytes calldata data) external;
}

/// @title IIMFMoneyMarketsSupplyCollateralCallback
/// @notice Interface that users willing to use `supplyCollateral`'s callback must implement.
interface IIMFMoneyMarketsSupplyCollateralCallback {
    /// @notice Callback called when a supply of collateral occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of supplied collateral.
    /// @param data Arbitrary data passed to the `supplyCollateral` function.
    function onIMFMoneyMarketsSupplyCollateral(uint256 assets, bytes calldata data) external;
}

/// @title IIMFMoneyMarketsFlashLoanCallback
/// @notice Interface that users willing to use `flashLoan`'s callback must implement.
interface IIMFMoneyMarketsFlashLoanCallback {
    /// @notice Callback called when a flash loan occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of assets that was flash loaned.
    /// @param data Arbitrary data passed to the `flashLoan` function.
    function onIMFMoneyMarketsFlashLoan(uint256 assets, bytes calldata data) external;
}
