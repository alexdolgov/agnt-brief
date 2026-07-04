// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { UD60x18, ud } from "@prb/math/src/UD60x18.sol";
import "../libraries/accounts/AccountLib.sol";
import "./ILiquidationReceiver.sol";
import "./IAccountManager.sol";

interface ICollateralAccountManager {
    /// @notice A user has created an account.
    event AccountCreated(address indexed owner, address account);
    /// @notice A user has deposited WETH into the contract.
    event CollateralDeposit(address indexed owner, address account, address sender, uint256 amount);
    /// @notice A user has withdrawn WETH from the contract.
    event CollateralWithdrawal(address indexed owner, address account, address receiver, uint256 amount);
    /// @notice CollateralLiquidation
    event CollateralLiquidation(
        address account, uint256 collateralAmount, uint256 bonusCollateral, uint256 debtAmountNeeded
    );
    event LiquidationParametersUpdated(UD60x18 maxLtv, UD60x18 riskThreshold, UD60x18 liquidationThreshold);

    /// @dev Takes assets from `msg.sender`, deposits them into the contract, and mints shares to the receiver.
    /// The shares are nontransferrable and reside in the receiver's address, but are used to credit the receiver's
    /// account contract.
    function deposit(uint256 assets, address receiver) external returns (uint256 updatedAssets, uint256 shares);

    /// @dev Burns shares from the account of `msg.sender` and sends them to the receiver.
    /// `msg.sender` must be owner of account that owns the shares.
    function withdraw(
        uint256 shares,
        address receiver
    )
        external
        returns (uint256 updatedAssets, uint256 updatedShares);
}
