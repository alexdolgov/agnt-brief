// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {VaultController} from "../libraries/VaultController.sol";
import {MorphoVaultLib} from "../libraries/MorphoVaultLib.sol";
import {IBundler3} from "bundler3/src/interfaces/IBundler3.sol";
import {IMorpho, MarketParams} from "morpho-blue/src/interfaces/IMorpho.sol";
import {GeneralAdapter1} from "bundler3/src/adapters/GeneralAdapter1.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {MarketParamsLib} from "morpho-blue/src/libraries/MarketParamsLib.sol";
import {SharesMathLib} from "morpho-blue/src/libraries/SharesMathLib.sol";
import {RebalanceData, RebalanceAssetsPerShare} from "../types/RebalanceTypes.sol";
import {VaultConfig, MarketConfig} from "../types/StrategyTypes.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {StrategyManager} from "../libraries/StrategyManager.sol";
import {MorphoLeverageLib} from "../libraries/MorphoLeverageLib.sol";
import {MorphoSeedingLib} from "../libraries/MorphoSeedingLib.sol";
import {PriceLib} from "../libraries/PriceLib.sol";
import {IWNative} from "bundler3/src/interfaces/IWNative.sol";

/**
 * @title MorphoVaultController
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Adapter for Morpho actions
 * @dev Handles morpho actions using flashloans to increase and
 *      decrease user allocations.
 */
contract MorphoVaultController is VaultController {
    using MarketParamsLib for MarketParams;
    using SharesMathLib for uint256;
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    IBundler3 internal immutable BUNDLER3;
    GeneralAdapter1 internal immutable GENERAL_ADAPTER;
    IMorpho internal immutable MORPHO;

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor for the MorphoVaultController
     * @param _strategyManager The strategy manager contract
     * @param _generalAdapter The general adapter contract
     */
    constructor(StrategyManager _strategyManager, GeneralAdapter1 _generalAdapter) VaultController(_strategyManager) {
        require(address(_generalAdapter) != address(0), ZeroAddress());

        BUNDLER3 = IBundler3(address(_generalAdapter.BUNDLER3()));
        GENERAL_ADAPTER = _generalAdapter;
        MORPHO = IMorpho(address(_generalAdapter.MORPHO()));
    }

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier _setAuthorization() {
        MORPHO.setAuthorization(address(GENERAL_ADAPTER), true);
        _;
        MORPHO.setAuthorization(address(GENERAL_ADAPTER), false);
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Executes a rebalance on a vault using the specified configuration and rebalance data
     * @param vault The vault to rebalance
     * @param rebalanceData An array of rebalance instructions (amount, increase/decrease, etc.)
     */
    function executeRebalance(address vault, RebalanceData[] calldata rebalanceData)
        external
        override
        _validateRebalanceData(vault, rebalanceData)
        _setAuthorization
        _onlyDelegateCall
    {
        VaultConfig memory vaultConfig = STRATEGY_MANAGER.getVaultConfig(vault);

        uint256[] memory rebalanceAmounts = new uint256[](rebalanceData.length);
        bool[] memory rebalanceAreIncreases = new bool[](rebalanceData.length);

        // Unpack the rebalance assets per share
        (RebalanceAssetsPerShare memory rebalanceAssetsPerShare,) =
            MorphoVaultLib._unpackPriceData(rebalanceData[0].extraData);
        // Wrap native gas token if it's the vault token (e.g., ETH -> WETH)
        address vaultToken = IERC4626(vault).asset();
        uint256 nativeBalance = address(this).balance;

        IWNative wrappedNative = GENERAL_ADAPTER.WRAPPED_NATIVE();
        if (vaultToken == address(wrappedNative) && nativeBalance > 0) {
            wrappedNative.deposit{value: nativeBalance}();
        }

        // Deposit any existing vault tokens from the safe into the vault
        // This ensures all vault tokens are available for rebalancing operations
        MorphoVaultLib._depositAssets(
            IERC4626(vault), type(uint256).max, rebalanceAssetsPerShare.vaultDepositAssetsPerShare
        );

        // Process all decrease operations first (repay debt, withdraw collateral)
        // This adds funds to the general adapter, so we need to deposit less vault tokens
        for (uint256 i = 0; i < rebalanceData.length; ++i) {
            if (rebalanceData[i].amount > 0 && !rebalanceData[i].isIncrease) {
                MarketConfig memory marketConfig = vaultConfig.markets[i];
                rebalanceAmounts[i] = PriceLib.isLevered(marketConfig.leverage)
                    ? MorphoLeverageLib._decreaseLeverageAllocation(
                        marketConfig, rebalanceData[i], GENERAL_ADAPTER, MORPHO, BUNDLER3
                    )
                    : MorphoSeedingLib._decreaseSeedingAllocation(vault, marketConfig, rebalanceData[i]);
            }
        }

        // Process all increase operations (supply collateral, borrow assets)
        // This requires funds to be transferred out of the vault for the operations
        for (uint256 i = 0; i < rebalanceData.length; ++i) {
            if (rebalanceData[i].isIncrease) {
                if (rebalanceData[i].amount > 0) {
                    MarketConfig memory marketConfig = vaultConfig.markets[i];
                    rebalanceAmounts[i] = PriceLib.isLevered(marketConfig.leverage)
                        ? MorphoLeverageLib._increaseLeverageAllocation(
                            vault, marketConfig, rebalanceData[i], GENERAL_ADAPTER, BUNDLER3, MORPHO
                        )
                        : MorphoSeedingLib._increaseSeedingAllocation(vault, marketConfig, rebalanceData[i]);
                }
                rebalanceAreIncreases[i] = true;
            }
        }

        MorphoLeverageLib._cleanGeneralAdapter(
            IERC4626(vault),
            IERC20(vaultToken),
            rebalanceAssetsPerShare.vaultDepositAssetsPerShare,
            GENERAL_ADAPTER,
            BUNDLER3
        );

        // Emit rebalancing event with all operation details for transparency and tracking
        emit Rebalanced(address(this), vault, rebalanceAmounts, rebalanceAreIncreases);
    }
}
