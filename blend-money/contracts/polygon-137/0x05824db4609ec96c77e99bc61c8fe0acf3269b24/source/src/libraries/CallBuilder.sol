// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {Call} from "bundler3/src/interfaces/IBundler3.sol";
import {MarketParams} from "morpho-blue/src/interfaces/IMorpho.sol";
import {CoreAdapter} from "bundler3/src/adapters/CoreAdapter.sol";
import {GeneralAdapter1} from "bundler3/src/adapters/GeneralAdapter1.sol";
import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";

/**
 *  @title CallBuilder
 *  @author Variable Logic Labs, Corp (hello@blend.money)
 *  @notice A library that provides utility functions to build Call structs for use with Bundler3
 *  @dev This library is meant to be used by other libraries that need to create Call structs
 */
library CallBuilder {
    /// @notice Creates a Call to swap loan tokens to collateral tokens
    /// @param adapter The address of the market adapter
    /// @param loanToken The token being borrowed
    /// @param collateralToken The token being used as collateral
    /// @param receiver The address to receive the swapped tokens
    /// @param strategyData Additional data for the strategy.
    /// @param extraData Additional data required for the swap
    /// @return Call struct for the swap operation
    function swapToCollateral(
        address adapter,
        address loanToken,
        address collateralToken,
        address receiver,
        bytes memory strategyData,
        bytes memory extraData
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IMarketAdapterController.swapToCollateral.selector,
            loanToken,
            collateralToken,
            receiver,
            strategyData,
            extraData
        );
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to swap collateral tokens back to loan tokens
    /// @param adapter The address of the market adapter
    /// @param loanToken The token being borrowed
    /// @param collateralToken The token being used as collateral
    /// @param receiver The address to receive the swapped tokens
    /// @param strategyData Additional data for the strategy.
    /// @param extraData Additional data required for the swap
    /// @return Call struct for the swap operation
    function swapToLoanToken(
        address adapter,
        address loanToken,
        address collateralToken,
        address receiver,
        bytes memory strategyData,
        bytes memory extraData
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            IMarketAdapterController.swapToLoanToken.selector,
            loanToken,
            collateralToken,
            receiver,
            strategyData,
            extraData
        );
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to wrap native tokens
    /// @param adapter The address of the general adapter
    /// @param amount The amount of native tokens to wrap
    /// @param receiver The address to receive the wrapped tokens
    /// @return Call struct for the wrap operation
    function wrapNative(address adapter, uint256 amount, address receiver) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(GeneralAdapter1.wrapNative.selector, amount, receiver);
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to transfer ERC20 tokens
    /// @param adapter The address of the general adapter
    /// @param token The token to transfer
    /// @param receiver The recipient of the tokens
    /// @param amount The amount of tokens to transfer
    /// @return Call struct for the transfer operation
    function erc20Transfer(address adapter, address token, address receiver, uint256 amount)
        internal
        pure
        returns (Call memory)
    {
        bytes memory data = abi.encodeWithSelector(CoreAdapter.erc20Transfer.selector, token, receiver, amount);
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to deposit assets into an ERC4626 vault
    /// @param adapter The address of the general adapter
    /// @param vault The vault to deposit into
    /// @param assets The amount of assets to deposit
    /// @param maxSharePriceE27 Maximum acceptable share price in ray (1e27)
    /// @param receiver The address to receive the vault shares
    /// @return Call struct for the deposit operation
    function erc4626Deposit(address adapter, address vault, uint256 assets, uint256 maxSharePriceE27, address receiver)
        internal
        pure
        returns (Call memory)
    {
        bytes memory data =
            abi.encodeWithSelector(GeneralAdapter1.erc4626Deposit.selector, vault, assets, maxSharePriceE27, receiver);
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to withdraw assets from an ERC4626 vault
    /// @param adapter The address of the general adapter
    /// @param vault The vault to withdraw from
    /// @param assets The amount of assets to withdraw
    /// @param minSharePriceE27 Minimum acceptable share price in ray (1e27)
    /// @param receiver The address to receive the withdrawn assets
    /// @param owner The owner of the vault shares
    /// @return Call struct for the withdraw operation
    function erc4626Withdraw(
        address adapter,
        address vault,
        uint256 assets,
        uint256 minSharePriceE27,
        address receiver,
        address owner
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            GeneralAdapter1.erc4626Withdraw.selector, vault, assets, minSharePriceE27, receiver, owner
        );
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to redeem shares from an ERC4626 vault
    /// @param adapter The address of the general adapter
    /// @param vault The vault to withdraw from
    /// @param shares The amount of assets to withdraw
    /// @param minSharePriceE27 Minimum acceptable share price in ray (1e27)
    /// @param receiver The address to receive the withdrawn assets
    /// @param owner The owner of the vault shares
    /// @return Call struct for the withdraw operation
    function erc4626Redeem(
        address adapter,
        address vault,
        uint256 shares,
        uint256 minSharePriceE27,
        address receiver,
        address owner
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            GeneralAdapter1.erc4626Redeem.selector, vault, shares, minSharePriceE27, receiver, owner
        );
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to transfer ERC20 tokens using transferFrom
    /// @param adapter The address of the general adapter
    /// @param token The token to transfer
    /// @param receiver The recipient of the tokens
    /// @param amount The amount of tokens to transfer
    /// @return Call struct for the transferFrom operation
    function erc20TransferFrom(address adapter, address token, address receiver, uint256 amount)
        internal
        pure
        returns (Call memory)
    {
        bytes memory data = abi.encodeWithSelector(GeneralAdapter1.erc20TransferFrom.selector, token, receiver, amount);
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to supply collateral to Morpho
    /// @param adapter The address of the general adapter
    /// @param marketParams The market parameters for the Morpho market
    /// @param assets The amount of assets to supply as collateral
    /// @param onBehalf The address to supply collateral for
    /// @param data Additional data for the supply operation
    /// @return Call struct for the supply collateral operation
    function morphoSupplyCollateral(
        address adapter,
        MarketParams memory marketParams,
        uint256 assets,
        address onBehalf,
        bytes memory data
    ) internal pure returns (Call memory) {
        bytes memory callData = abi.encodeWithSelector(
            GeneralAdapter1.morphoSupplyCollateral.selector, marketParams, assets, onBehalf, data
        );
        return Call({to: adapter, data: callData, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to borrow assets from Morpho
    /// @param adapter The address of the general adapter
    /// @param marketParams The market parameters for the Morpho market
    /// @param assets The amount of assets to borrow
    /// @param shares The amount of shares to borrow (if using shares instead of assets)
    /// @param maxSharePriceE27 Maximum acceptable share price in ray (1e27)
    /// @param receiver The address to receive the borrowed assets
    /// @return Call struct for the borrow operation
    function morphoBorrow(
        address adapter,
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        uint256 maxSharePriceE27,
        address receiver
    ) internal pure returns (Call memory) {
        bytes memory data = abi.encodeWithSelector(
            GeneralAdapter1.morphoBorrow.selector, marketParams, assets, shares, maxSharePriceE27, receiver
        );
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to repay a Morpho loan
    /// @param adapter The address of the general adapter
    /// @param marketParams The market parameters for the Morpho market
    /// @param assets The amount of assets to repay
    /// @param shares The amount of shares to repay (if using shares instead of assets)
    /// @param maxSharePriceE27 Maximum acceptable share price in ray (1e27)
    /// @param onBehalf The address to repay for
    /// @param data Additional data for the repay operation
    /// @return Call struct for the repay operation
    function morphoRepay(
        address adapter,
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        uint256 maxSharePriceE27,
        address onBehalf,
        bytes memory data
    ) internal pure returns (Call memory) {
        bytes memory callData = abi.encodeWithSelector(
            GeneralAdapter1.morphoRepay.selector, marketParams, assets, shares, maxSharePriceE27, onBehalf, data
        );
        return Call({to: adapter, data: callData, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to withdraw collateral from Morpho
    /// @param adapter The address of the general adapter
    /// @param marketParams The market parameters for the Morpho market
    /// @param assets The amount of assets to withdraw
    /// @param receiver The address to receive the withdrawn collateral
    /// @return Call struct for the withdraw collateral operation
    function morphoWithdrawCollateral(
        address adapter,
        MarketParams memory marketParams,
        uint256 assets,
        address receiver
    ) internal pure returns (Call memory) {
        bytes memory data =
            abi.encodeWithSelector(GeneralAdapter1.morphoWithdrawCollateral.selector, marketParams, assets, receiver);
        return Call({to: adapter, data: data, value: 0, skipRevert: false, callbackHash: bytes32(0)});
    }

    /// @notice Creates a Call to execute a Morpho flashloan
    /// @param adapter The address of the general adapter
    /// @param token The token to flashloan
    /// @param assets The amount of assets to flashloan
    /// @param data Additional data for the flashloan operation
    /// @param callbackHash The hash used to verify the flashloan callback
    /// @return Call struct for the flashloan operation
    function morphoFlashLoan(address adapter, address token, uint256 assets, bytes memory data, bytes32 callbackHash)
        internal
        pure
        returns (Call memory)
    {
        bytes memory callData = abi.encodeWithSelector(GeneralAdapter1.morphoFlashLoan.selector, token, assets, data);
        return Call({to: adapter, data: callData, value: 0, skipRevert: false, callbackHash: callbackHash});
    }
}
