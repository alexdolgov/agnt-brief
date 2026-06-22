// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IMorpho, MarketParams, Id, Market} from "morpho-blue/src/interfaces/IMorpho.sol";
import {MorphoLib} from "morpho-blue/src/libraries/periphery/MorphoLib.sol";
import {SharesMathLib} from "morpho-blue/src/libraries/SharesMathLib.sol";
import {MarketParamsLib} from "morpho-blue/src/libraries/MarketParamsLib.sol";
import {Call} from "bundler3/src/interfaces/IBundler3.sol";
import {GeneralAdapter1} from "bundler3/src/adapters/GeneralAdapter1.sol";
import {IBundler3} from "bundler3/src/interfaces/IBundler3.sol";
import {CallBuilder} from "../libraries/CallBuilder.sol";
import {MorphoVaultLib} from "./MorphoVaultLib.sol";
import {RebalanceData, RebalanceAssetsPerShare} from "../types/RebalanceTypes.sol";
import {MarketConfig} from "../types/StrategyTypes.sol";

/**
 * @title MorphoLeverageLib
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Library for leverage operations on Morpho vaults
 * @dev This library is used to increase and decrease leverage on Morpho vaults
 */
library MorphoLeverageLib {
    using SafeERC20 for IERC20;
    using SharesMathLib for uint256;
    using MarketParamsLib for MarketParams;
    using CallBuilder for Call;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when invalid amount is provided for decrease operation
    error InvalidAmount();

    /**
     * @notice Increases allocation in a market by supplying collateral and borrowing assets
     * @param vault The vault to operate on
     * @param marketConfig The market configuration to operate in
     * @param rebalanceData The rebalance data for the operation
     * @param generalAdapter The general adapter to use
     * @param bundler3 The bundler3 contract to use
     * @param morpho The Morpho contract to use
     * @return amountRebalanced The amount of assets that were rebalanced
     * @dev Creates a callback bundle with 5 operations: transfer, flashloan callback, supply collateral, borrow, and withdraw enough loan token to cover the flashloan
     * @dev Uses flashloan mechanics to execute the entire operation atomically
     */
    function _increaseLeverageAllocation(
        address vault,
        MarketConfig memory marketConfig,
        RebalanceData memory rebalanceData,
        GeneralAdapter1 generalAdapter,
        IBundler3 bundler3,
        IMorpho morpho
    ) internal returns (uint256 amountRebalanced) {
        address safeAddress = address(this);
        uint256 amount = rebalanceData.amount;

        (RebalanceAssetsPerShare memory rebalanceAssetsPerShare, bytes memory extraData) =
            MorphoVaultLib._unpackPriceData(rebalanceData.extraData);

        MarketParams memory marketParams = morpho.idToMarketParams(Id.wrap(marketConfig.marketId));
        address vaultToken = IERC4626(vault).asset();
        uint256 currentBalanceOnGeneralAdapter = IERC20(vaultToken).balanceOf(address(generalAdapter));

        // Check if collateral token is a MarketWrapper and use underlying asset if so
        bool isWrapped = marketConfig.isWrapped;
        address collateralToken = marketParams.collateralToken;
        if (isWrapped) {
            collateralToken = address(ERC4626(collateralToken).asset());
        }

        // Create call bundle with conditional wrapper deposit (includes approval + deposit)
        Call[] memory callBundle = new Call[](isWrapped ? 6 : 5);
        uint256 callIndex = 0;

        callBundle[callIndex] = CallBuilder.erc20Transfer(
            address(generalAdapter), marketParams.loanToken, address(marketConfig.adapter), amount
        );
        unchecked {
            ++callIndex;
        }

        callBundle[callIndex] = CallBuilder.swapToCollateral(
            address(marketConfig.adapter),
            marketParams.loanToken,
            collateralToken,
            address(generalAdapter),
            marketConfig.data,
            extraData
        );
        unchecked {
            ++callIndex;
        }

        // If it's a wrapper, deposit to get wrapper tokens
        if (isWrapped) {
            callBundle[callIndex] = CallBuilder.erc4626Deposit(
                address(generalAdapter),
                marketParams.collateralToken,
                type(uint256).max,
                rebalanceAssetsPerShare.wrappedCollateralAssetsPerShare,
                address(generalAdapter)
            );
            unchecked {
                ++callIndex;
            }
        }

        callBundle[callIndex] = CallBuilder.morphoSupplyCollateral(
            address(generalAdapter), marketParams, type(uint256).max, safeAddress, hex""
        );
        unchecked {
            ++callIndex;
        }

        callBundle[callIndex] = CallBuilder.morphoBorrow(
            address(generalAdapter),
            marketParams,
            MorphoVaultLib._borrowAmount(marketConfig.leverage, amount),
            0,
            rebalanceAssetsPerShare.morphoBorrowAssetsPerShare,
            address(generalAdapter)
        );
        unchecked {
            ++callIndex;
        }

        uint256 requiredVaultTokens = MorphoVaultLib._userAmount(marketConfig.leverage, amount);
        if (requiredVaultTokens > currentBalanceOnGeneralAdapter) {
            callBundle[callIndex] = CallBuilder.erc4626Withdraw(
                address(generalAdapter),
                vault,
                requiredVaultTokens - currentBalanceOnGeneralAdapter,
                rebalanceAssetsPerShare.vaultWithdrawAssetsPerShare,
                address(generalAdapter),
                safeAddress
            );
            unchecked {
                ++callIndex;
            }
        }

        IERC20(vault).forceApprove(address(generalAdapter), type(uint256).max);

        _flashloanAndMulticall(vaultToken, amount, callBundle, generalAdapter, bundler3);

        IERC20(vault).forceApprove(address(generalAdapter), 0);
        IERC20(marketParams.collateralToken).forceApprove(address(generalAdapter), 0);
        IERC20(vaultToken).forceApprove(address(generalAdapter), 0);

        amountRebalanced = amount;
    }

    /**
     * @notice Decreases allocation in a market by repaying debt and withdrawing collateral
     * @param marketConfig The market configuration to operate in
     * @param rebalanceData The rebalance data for the operation
     * @param generalAdapter The general adapter to use
     * @param morpho The Morpho contract to use
     * @param bundler3 The bundler3 contract to use
     * @return amountRebalanced The amount of assets that were rebalanced
     * @dev Uses flashloan mechanics to execute the entire operation atomically
     * @dev When amount is type(uint256).max, closes the entire position
     */
    function _decreaseLeverageAllocation(
        MarketConfig memory marketConfig,
        RebalanceData memory rebalanceData,
        GeneralAdapter1 generalAdapter,
        IMorpho morpho,
        IBundler3 bundler3
    ) internal returns (uint256 amountRebalanced) {
        uint256 amount = rebalanceData.amount;
        (RebalanceAssetsPerShare memory rebalanceAssetsPerShare, bytes memory extraData) =
            MorphoVaultLib._unpackPriceData(rebalanceData.extraData);

        // Core addresses and market parameters
        address safeAddress = address(this);
        MarketParams memory marketParams = morpho.idToMarketParams(Id.wrap(marketConfig.marketId));

        // Check if collateral token is a MarketWrapper and use underlying asset if so
        bool isWrapped = marketConfig.isWrapped;
        address collateralToken = marketParams.collateralToken;
        if (isWrapped) {
            collateralToken = address(ERC4626(collateralToken).asset());
        }

        // Update market state and get current position data
        morpho.accrueInterest(marketParams);

        uint256 totalSuppliedCollateral = MorphoLib.collateral(morpho, marketParams.id(), safeAddress);

        Market memory market = morpho.market(marketParams.id());
        uint256 borrowShares = MorphoLib.borrowShares(morpho, marketParams.id(), safeAddress);
        uint256 totalBorrowedAssets = borrowShares.toAssetsUp(market.totalBorrowAssets, market.totalBorrowShares);

        // Validate withdrawal amount
        bool isPositionClosure = amount == type(uint256).max;
        require(isPositionClosure || amount < totalSuppliedCollateral, InvalidAmount());

        // Build flashloan callback bundle with conditional wrapper unwrap
        Call[] memory callBundle = new Call[](isWrapped ? (isPositionClosure ? 4 : 5) : (isPositionClosure ? 3 : 4));
        uint256 callIndex = 0;

        // Core decrease operations: repay debt, withdraw collateral, optionally unwrap, swap to loan token
        callBundle[callIndex] = CallBuilder.morphoRepay(
            address(generalAdapter),
            marketParams,
            0,
            type(uint256).max,
            rebalanceAssetsPerShare.morphoRepayAssetsPerShare,
            safeAddress,
            hex""
        );
        unchecked {
            ++callIndex;
        }

        // If it's a wrapper, withdraw to wrapper adapter, otherwise directly to market adapter
        callBundle[callIndex] = CallBuilder.morphoWithdrawCollateral(
            address(generalAdapter),
            marketParams,
            amount,
            isWrapped ? address(generalAdapter) : address(marketConfig.adapter)
        );
        unchecked {
            ++callIndex;
        }

        // If it's a wrapper, unwrap the tokens and send underlying to market adapter
        if (isWrapped) {
            callBundle[callIndex] = CallBuilder.erc4626Redeem(
                address(generalAdapter),
                marketParams.collateralToken,
                type(uint256).max,
                rebalanceAssetsPerShare.wrappedCollateralAssetsPerShare,
                address(marketConfig.adapter),
                address(generalAdapter)
            );
            unchecked {
                ++callIndex;
            }
        }

        callBundle[callIndex] = CallBuilder.swapToLoanToken(
            address(marketConfig.adapter),
            marketParams.loanToken,
            collateralToken,
            address(generalAdapter),
            marketConfig.data,
            extraData
        );
        unchecked {
            ++callIndex;
        }

        // If not closing position, re-establish leverage with remaining collateral
        if (!isPositionClosure) {
            uint256 collateralRemainingPercentage = (totalSuppliedCollateral - amount) * 1e18 / totalSuppliedCollateral;
            uint256 borrowAmountRemaining = collateralRemainingPercentage * totalBorrowedAssets / 1e18;

            callBundle[callIndex] = CallBuilder.morphoBorrow(
                address(generalAdapter),
                marketParams,
                borrowAmountRemaining,
                0,
                rebalanceAssetsPerShare.morphoBorrowAssetsPerShare,
                address(generalAdapter)
            );
            unchecked {
                ++callIndex;
            }
        }

        // Execute flashloan with collateral token approval
        IERC20(collateralToken).forceApprove(address(generalAdapter), type(uint256).max);

        _flashloanAndMulticall(marketParams.loanToken, totalBorrowedAssets, callBundle, generalAdapter, bundler3);

        IERC20(collateralToken).forceApprove(address(generalAdapter), 0);

        // Set the rebalance data amount to the total supplied collateral if closing position so that our event
        // can show the correct amount of intented to be withdrawn. Otherwise, later in the code we will be emitting
        // the provided amount of the withdraw, which is uint256.max for closing position.
        amountRebalanced = isPositionClosure ? totalSuppliedCollateral : amount;
    }

    /**
     * @notice Executes a flashloan with multicall operations
     * @param loanToken The token to take a flashloan in
     * @param amount The amount of flashloan to take
     * @param callbackBundle Array of Call structs to execute during flashloan
     * @param generalAdapter The general adapter to use
     * @param bundler3 The bundler3 contract to use
     * @dev Creates a single-call bundle containing the flashloan operation
     * @dev Uses keccak256 hash of callbackBundle as the callback hash for security
     * @dev Executes the bundle through Bundler3's multicall function
     */
    function _flashloanAndMulticall(
        address loanToken,
        uint256 amount,
        Call[] memory callbackBundle,
        GeneralAdapter1 generalAdapter,
        IBundler3 bundler3
    ) internal {
        bytes32 callbackHash = keccak256(abi.encode(callbackBundle));
        Call[] memory calls = new Call[](1);
        calls[0] = CallBuilder.morphoFlashLoan(
            address(generalAdapter), loanToken, amount, abi.encode(callbackBundle), callbackHash
        );

        bundler3.multicall(calls);
    }

    /**
     * @notice Cleans up the general adapter
     * @param vault The vault to operate on
     * @param vaultToken The token to deposit back into the vault
     * @param rebalanceAssetsPerShare The amount of assets to deposit back into the vault
     * @param generalAdapter The general adapter to clean up
     * @param bundler3 The bundler3 contract to use
     */
    function _cleanGeneralAdapter(
        IERC4626 vault,
        IERC20 vaultToken,
        uint256 rebalanceAssetsPerShare,
        GeneralAdapter1 generalAdapter,
        IBundler3 bundler3
    ) internal {
        // Clean up: deposit any remaining vault tokens back into the vault
        // This ensures all vault tokens are properly deposited and available for users
        uint256 balanceOfGeneralAdapter = vaultToken.balanceOf(address(generalAdapter));
        if (balanceOfGeneralAdapter > 0) {
            Call[] memory calls = new Call[](1);
            calls[0] = CallBuilder.erc4626Deposit(
                address(generalAdapter), address(vault), balanceOfGeneralAdapter, rebalanceAssetsPerShare, address(this)
            );

            vaultToken.forceApprove(address(generalAdapter), type(uint256).max);
            bundler3.multicall(calls);
            vaultToken.forceApprove(address(generalAdapter), 0);
        }
    }
}
