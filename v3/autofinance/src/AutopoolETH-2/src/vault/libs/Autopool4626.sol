// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { AutopoolFees } from "src/vault/libs/AutopoolFees.sol";
import { AutopoolToken } from "src/vault/libs/AutopoolToken.sol";
import { AutopoolDebt } from "src/vault/libs/AutopoolDebt.sol";
import { IAutopool } from "src/interfaces/vault/IAutopool.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { StructuredLinkedList } from "src/strategy/StructuredLinkedList.sol";
import { WithdrawalQueue } from "src/strategy/WithdrawalQueue.sol";
import { AutopoolState, AutopoolStorage } from "src/vault/libs/AutopoolState.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { Math } from "openzeppelin-contracts/utils/math/Math.sol";

library Autopool4626 {
    using Math for uint256;
    using SafeERC20 for IERC20Metadata;
    using WithdrawalQueue for StructuredLinkedList.List;
    using AutopoolToken for AutopoolToken.TokenData;
    using AutopoolFees for AutopoolState;
    using AutopoolDebt for AutopoolState;
    using EnumerableSet for EnumerableSet.AddressSet;

    /// =====================================================
    /// Errors
    /// =====================================================

    error InvalidTotalAssetPurpose();
    error InvalidShutdownStatus(IAutopool.VaultShutdownStatus status);
    error RecoveryFailed();

    /// =====================================================
    /// Events
    /// =====================================================

    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);
    event Nav(uint256 idle, uint256 debt, uint256 totalSupply);
    event TokensRecovered(address[] tokens, uint256[] amounts, address[] destinations);
    event Shutdown(IAutopool.VaultShutdownStatus reason);
    event RewarderSet(address newRewarder, address oldRewarder);
    event SymbolAndDescSet(string symbol, string desc);

    /// @notice Mints Vault shares to receiver by depositing exactly amount of underlying tokens
    /// @dev No nav/share changing operations, debt reportings or rebalances,
    /// can be happening throughout the entire system
    function deposit(
        AutopoolState storage $,
        address baseAsset,
        uint256 assets,
        address receiver,
        bool paused,
        uint256 _baseAssetDecimals
    ) external returns (uint256 shares) {
        Errors.verifyNotZero(assets, "assets");

        uint256 ta = $.totalAssetsTimeChecked(IAutopool.TotalAssetPurpose.Deposit);

        // Handles the vault being paused, returns 0
        uint256 maxDepositAmount = maxDeposit($, receiver, paused, _baseAssetDecimals);
        if (assets > maxDepositAmount) {
            revert IAutopool.ERC4626DepositExceedsMax(assets, maxDepositAmount);
        }

        // Factor in base Asset decimals
        shares = convertToShares(assets, ta, totalSupply(), Math.Rounding.Down, _baseAssetDecimals);
        Errors.verifyNotZero(shares, "shares");

        transferAndMint($, IERC20Metadata(baseAsset), assets, shares, receiver);
    }

    /// @notice Returns the amount of tokens owned by account.
    /// @dev Subtracts any unlocked profit shares that will be burned when account is the Vault itself
    function balanceOf(AutopoolState storage $, address account) public view returns (uint256) {
        if (account == address(this)) {
            return $.token.balances[account] - $.unlockedShares();
        }
        return $.token.balances[account];
    }

    /// @notice Returns the total amount of the underlying asset that is “managed” by Vault.
    /// @dev Utilizes the "Global" purpose internally
    function totalAssets(
        IAutopool.AssetBreakdown storage assetBreakdown
    ) public view returns (uint256) {
        return totalAssets(assetBreakdown, IAutopool.TotalAssetPurpose.Global);
    }

    /// @notice Returns the total amount of the underlying asset that is “managed” by the Vault with respect to its
    /// usage
    /// @dev Value changes based on purpose. Global is an avg. Deposit is valued higher. Withdraw is valued lower.
    /// @param purpose The calculation the total assets will be used in
    function totalAssets(
        IAutopool.AssetBreakdown storage assetBreakdown,
        IAutopool.TotalAssetPurpose purpose
    ) public view returns (uint256) {
        if (purpose == IAutopool.TotalAssetPurpose.Global) {
            return assetBreakdown.totalIdle + assetBreakdown.totalDebt;
        } else if (purpose == IAutopool.TotalAssetPurpose.Deposit) {
            return assetBreakdown.totalIdle + assetBreakdown.totalDebtMax;
        } else if (purpose == IAutopool.TotalAssetPurpose.Withdraw) {
            return assetBreakdown.totalIdle + assetBreakdown.totalDebtMin;
        } else {
            revert InvalidTotalAssetPurpose();
        }
    }

    // @notice Scale the amount from existing decimals to newDecimals
    function changeDecimals(
        uint256 amount,
        uint256 existingDecimals,
        uint256 newDecimals
    ) internal pure returns (uint256) {
        if (existingDecimals == newDecimals) {
            return amount;
        }
        if (existingDecimals > newDecimals) {
            return amount / (10 ** (existingDecimals - newDecimals));
        } else {
            return amount * (10 ** (newDecimals - existingDecimals));
        }
    }

    /// @notice Returns the amount of shares that the Vault would exchange for the amount of assets provided,
    /// in an ideal scenario where all the conditions are met
    function convertToShares(
        uint256 assets,
        uint256 totalAssetsForPurpose,
        uint256 supply,
        Math.Rounding rounding,
        uint256 baseAssetDecimals
    ) internal pure returns (uint256 shares) {
        // slither-disable-next-line incorrect-equality
        shares = (assets == 0 || supply == 0)
            ? changeDecimals(assets, baseAssetDecimals, 18)
            : assets.mulDiv(supply, totalAssetsForPurpose, rounding);
    }

    /// @notice Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an
    /// ideal
    /// scenario where all the conditions are met.
    function convertToAssets(
        uint256 shares,
        uint256 totalAssetsForPurpose,
        uint256 supply,
        Math.Rounding rounding,
        uint256 baseAssetDecimals
    ) internal pure returns (uint256 assets) {
        // slither-disable-next-line incorrect-equality
        assets = (supply == 0)
            ? changeDecimals(shares, 18, baseAssetDecimals)
            : shares.mulDiv(totalAssetsForPurpose, supply, rounding);
    }

    /// @notice Returns the maximum amount of the underlying asset that can be
    /// deposited into the Vault for the receiver, through a deposit call
    function maxDeposit(
        AutopoolState storage $,
        address wallet,
        bool paused,
        uint256 baseAssetDecimals
    ) public returns (uint256 maxAssets) {
        uint256 aptTotalAssets = $.totalAssetsTimeChecked(IAutopool.TotalAssetPurpose.Deposit);
        uint256 maxMintShares = maxMint($, wallet, paused);
        maxAssets = convertToAssets(maxMintShares, aptTotalAssets, totalSupply(), Math.Rounding.Up, baseAssetDecimals);
    }

    /// @notice Returns the maximum amount of the Vault shares that
    /// can be minted for the receiver, through a mint call.
    function maxMint(AutopoolState storage $, address, bool paused) public returns (uint256) {
        // If we are temporarily paused, or in full shutdown mode,
        // no new shares are able to be minted
        if (paused || $.shutdown) {
            return 0;
        }

        // First deposit
        uint256 ts = totalSupply();
        if (ts == 0) {
            return type(uint112).max;
        }

        // We know totalSupply greater than zero now so if totalAssets is zero
        // the vault is in an invalid state and users would be able to mint shares for free
        uint256 ta = AutopoolDebt.totalAssetsTimeChecked($, IAutopool.TotalAssetPurpose.Deposit);
        if (ta == 0) {
            return 0;
        }

        if (ts > type(uint112).max) {
            return 0;
        }

        return type(uint112).max - ts;
    }

    /// @notice Set the rewarder contract used by the vault.
    /// @param _rewarder Address of new rewarder.
    function setRewarder(AutopoolState storage $, address _rewarder) external {
        Errors.verifyNotZero(_rewarder, "rewarder");

        address toBeReplaced = address($.rewarder);
        // Check that the new rewarder has not been a rewarder before, and that the current rewarder and
        //      new rewarder addresses are not the same.
        if ($.pastRewarders.contains(_rewarder) || toBeReplaced == _rewarder) {
            revert Errors.ItemExists();
        }

        if (toBeReplaced != address(0)) {
            // slither-disable-next-line unused-return
            $.pastRewarders.add(toBeReplaced);
        }

        $.rewarder = IMainRewarder(_rewarder);
        emit RewarderSet(_rewarder, toBeReplaced);
    }

    /// @notice Returns the amount of tokens in existence.
    /// @dev Subtracts any unlocked profit shares that will be burned
    function totalSupply() public view returns (uint256 shares) {
        AutopoolState storage $ = AutopoolStorage.load();
        shares = $.token.totalSupply - $.unlockedShares();
    }

    function transferAndMint(
        AutopoolState storage $,
        IERC20Metadata baseAsset,
        uint256 assets,
        uint256 shares,
        address receiver
    ) public {
        // From OZ documentation:
        // ----------------------
        // If _asset is ERC777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth

        Errors.verifyNotZero(assets, "assets");

        baseAsset.safeTransferFrom(msg.sender, address(this), assets);

        uint256 newIdle = $.assetBreakdown.totalIdle + assets;
        $.assetBreakdown.totalIdle = newIdle;

        $.token.mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);

        emit Nav(newIdle, $.assetBreakdown.totalDebt, totalSupply());
    }

    /// @notice Initiate the shutdown procedures for this vault
    function shutdownVault(AutopoolState storage $, IAutopool.VaultShutdownStatus reason) external {
        if (reason == IAutopool.VaultShutdownStatus.Active) {
            revert InvalidShutdownStatus(reason);
        }

        $.shutdown = true;
        $.shutdownStatus = reason;

        emit Shutdown(reason);
    }

    /// @notice Allow the updating of symbol/desc for the vault (only AFTER shutdown)
    /// @param newSymbol Symbol the Autopool will use going forward
    /// @param newName Name the Autopool will use going forward
    function setSymbolAndDescAfterShutdown(
        AutopoolState storage $,
        string memory newSymbol,
        string memory newName
    ) external {
        Errors.verifyNotEmpty(newSymbol, "newSymbol");
        Errors.verifyNotEmpty(newName, "newName");

        // make sure the vault is no longer active
        if ($.shutdownStatus == IAutopool.VaultShutdownStatus.Active) {
            revert InvalidShutdownStatus($.shutdownStatus);
        }

        emit SymbolAndDescSet(newSymbol, newName);

        $.symbol = newSymbol;
        $.name = newName;
    }

    /// @notice Transfer out non-tracked tokens
    function recover(address[] calldata tokens, uint256[] calldata amounts, address[] calldata destinations) external {
        // Makes sure our params are valid
        uint256 len = tokens.length;

        Errors.verifyNotZero(len, "len");
        Errors.verifyArrayLengths(len, amounts.length, "tokens+amounts");
        Errors.verifyArrayLengths(len, destinations.length, "tokens+destinations");

        emit TokensRecovered(tokens, amounts, destinations);

        //IAutopool autoPool = IAutopool(address(this));

        for (uint256 i = 0; i < len; ++i) {
            (address tokenAddress, uint256 amount, address destination) = (tokens[i], amounts[i], destinations[i]);

            // Ensure this isn't an asset we care about
            // if (
            //     tokenAddress == address(this) || tokenAddress == autoPool.asset()
            //         || autoPool.isDestinationRegistered(tokenAddress)
            //         || autoPool.isDestinationQueuedForRemoval(tokenAddress)
            // ) {
            //     revert Errors.AssetNotAllowed(tokenAddress);
            // }

            if (tokenAddress != 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE) {
                IERC20Metadata(tokenAddress).safeTransfer(destination, amount);
            } else {
                // solhint-disable-next-line avoid-low-level-calls
                (bool result,) = payable(destination).call{ value: amount }("");
                if (!result) {
                    revert RecoveryFailed();
                }
            }
        }
    }
}
