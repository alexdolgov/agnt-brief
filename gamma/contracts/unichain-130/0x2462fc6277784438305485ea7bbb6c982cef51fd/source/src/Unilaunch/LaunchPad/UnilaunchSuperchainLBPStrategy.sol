// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {LBPStrategyBasic} from "./base/LBPStrategyBasic.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {MigrationData} from "liquidity-launcher/src/types/MigrationData.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {Currency, CurrencyLibrary} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {IERC20} from "@openzeppelin-latest/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-latest/contracts/token/ERC20/utils/SafeERC20.sol";
import {UnilaunchOrderBookFactory} from "../LimitOrderBook/UnilaunchOrderBookFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {ISuperchainLBPStrategy} from "./interfaces/ISuperchainLBPStrategy.sol";
import {IOrderBookFactory} from "../LimitOrderBook/interfaces/IOrderBookFactory.sol";
import {BaseHook} from "@uniswap/v4-periphery/src/utils/BaseHook.sol";
import {UnilaunchCallOptionFactory} from "./UnilaunchCallOptionFactory.sol";
import {UnilaunchBuyback} from "./UnilaunchBuyback.sol";

/// @title UnilaunchSuperchainLBPStrategy
/// @notice Strategy to distribute tokens via CCA auction and migrate liquidity to MultiPositionManager
/// @dev Extends LBPStrategyBasic but overrides migration to use UnilaunchOrderBookFactory
contract UnilaunchSuperchainLBPStrategy is LBPStrategyBasic, ISuperchainLBPStrategy {
    using CurrencyLibrary for Currency;
    using SafeERC20 for IERC20;

    struct StrategyInitParams {
        address token;
        uint128 totalSupply;
        MigratorParameters migratorParams;
        bytes auctionParams;
        IPositionManager positionManager;
        IPoolManager poolManager;
        UnilaunchOrderBookFactory orderBookFactory;
        IMultiPositionManager.RebalanceParams rebalanceParams;
        string mpmName;
        bytes32 hookSalt;
        bytes32 callerSalt;
        address callOptionFactory;
        address buyback;
    }

    struct DepositParams {
        Currency currency0;
        Currency currency1;
        uint256 deposit0Desired;
        uint256 deposit1Desired;
        uint256 ethValue;
    }

    /// @notice The UnilaunchOrderBookFactory used to deploy pool + MultiPositionManager
    UnilaunchOrderBookFactory private immutable unilaunchOrderBookFactory;

    /// @notice Rebalance parameters for the MPM strategy configuration
    IMultiPositionManager.RebalanceParams public rebalanceParams;

    /// @notice Name for the MPM token
    string public mpmName;

    /// @notice Pre-computed salt for hook deployment (used during lazy deployment)
    bytes32 public hookSalt;

    /// @notice Caller-unique salt from LiquidityLauncher (emitted with reservation)
    bytes32 public callerSalt;

    /// @notice Call option contract to set strike on migration
    UnilaunchCallOptionFactory public immutable callOptionFactory;

    /// @notice Buyback contract to set poolKey on migration
    UnilaunchBuyback public immutable buyback;

    /// @notice Deployed MultiPositionManager address (set during migration)
    address public deployedMPM;


    constructor(StrategyInitParams memory init)
        LBPStrategyBasic(
            init.token,
            init.totalSupply,
            init.migratorParams,
            init.auctionParams,
            init.positionManager,
            init.poolManager
        )
    {
        if (address(init.orderBookFactory) == address(0)) revert InvalidOrderBookFactory();
        if (init.rebalanceParams.strategy == address(0)) revert InvalidStrategy();
        if (init.callOptionFactory == address(0) || init.buyback == address(0)) revert InvalidOrderBookFactory();

        unilaunchOrderBookFactory = init.orderBookFactory;
        rebalanceParams = init.rebalanceParams;
        mpmName = init.mpmName;
        hookSalt = init.hookSalt;
        callerSalt = init.callerSalt;
        callOptionFactory = UnilaunchCallOptionFactory(payable(init.callOptionFactory));
        buyback = UnilaunchBuyback(payable(init.buyback));
    }

    /// @dev Override to skip hook address validation
    /// @notice Unilaunch uses UnilaunchOrderBookFactory for pool management
    ///         The strategy itself is not used as a hook for any pool
    function validateHookAddress(BaseHook) internal pure virtual override {}

    /// @inheritdoc ISuperchainLBPStrategy
    function strategy() external view override returns (address) {
        return rebalanceParams.strategy;
    }

    /// @inheritdoc ISuperchainLBPStrategy
    function orderBookFactory() external view override returns (IOrderBookFactory) {
        return IOrderBookFactory(address(unilaunchOrderBookFactory));
    }

    /// @inheritdoc ISuperchainLBPStrategy
    function strategyData() external view override returns (bytes memory) {
        return abi.encode(rebalanceParams);
    }

    /// @notice Overridden to prevent pool initialization (OrderBookFactory will initialize)
    /// @dev Returns a PoolKey without initializing the pool
    function _initializePool(MigrationData memory data) internal view override returns (PoolKey memory key) {
        address poolToken = getPoolToken();

        key = PoolKey({
            currency0: Currency.wrap(currency < poolToken ? currency : poolToken),
            currency1: Currency.wrap(currency < poolToken ? poolToken : currency),
            fee: poolLPFee,
            tickSpacing: poolTickSpacing,
            hooks: IHooks(address(0)) // No hook needed - OrderBookFactory manages hooks
        });

        // Do NOT initialize pool here - OrderBookFactory will do it
        return key;
    }

    /// @notice Overridden to skip position plan creation (not needed for OrderBookFactory)
    function _createPositionPlan(MigrationData memory) internal pure override returns (bytes memory) {
        // OrderBookFactory doesn't use position plans
        return "";
    }

    /// @notice Overridden to call OrderBookFactory instead of V4 PositionManager
    /// @dev This is the critical override that redirects migration to MultiPositionManager
    function _transferAssetsAndExecutePlan(MigrationData memory data, bytes memory) internal override {
        (PoolKey memory poolKey, address mpm) = _deployPoolAndMPM(data);
        deployedMPM = mpm;
        uint256 shares = IERC20(mpm).balanceOf(positionRecipient);
        emit MPMDeployed(mpm, shares);
        emit MigrationPoolCreated(poolKey, data.sqrtPriceX96, mpm);

        callOptionFactory.setStrike(data.sqrtPriceX96);
        buyback.setPoolKey(poolKey);
    }

    /// @notice Deploys pool and MPM via OrderBookFactory
    /// @param data Migration data with amounts and price
    /// @return poolKey The deployed pool key
    /// @return mpm The deployed MultiPositionManager address
    function _deployPoolAndMPM(MigrationData memory data) private returns (PoolKey memory poolKey, address mpm) {
        (uint128 tokenAmount, uint128 currencyAmount) = _calculateTransferAmounts(data);
        DepositParams memory depositParams = _buildDepositParams(tokenAmount, currencyAmount);
        _approveTokens(depositParams);
        (poolKey, mpm) = _callFactory(data, depositParams);
    }

    /// @notice Calculates transfer amounts
    function _calculateTransferAmounts(MigrationData memory data)
        private view returns (uint128 tokenAmount, uint128 currencyAmount)
    {
        // Transfer all available tokens (max of reserve and auction result)
        tokenAmount = reserveSupply > data.initialTokenAmount ? reserveSupply : data.initialTokenAmount;

        // Include leftover currency if one-sided currency position is enabled
        // Note: We use shouldCreateOneSided instead of hasOneSidedParams because
        // _createPositionPlan is overridden to return empty (OrderBookFactory handles positions),
        // so hasOneSidedParams is never set in the base class
        currencyAmount = data.leftoverCurrency > 0 && data.shouldCreateOneSided
            ? data.initialCurrencyAmount + data.leftoverCurrency
            : data.initialCurrencyAmount;
    }

    /// @notice Prepares currencies and deposit amounts
    function _buildDepositParams(uint128 tokenAmount, uint128 currencyAmount)
        private
        view
        returns (DepositParams memory params)
    {
        address poolToken = getPoolToken();
        bool currencyIsToken0 = currency < poolToken;

        params.currency0 = Currency.wrap(currencyIsToken0 ? currency : poolToken);
        params.currency1 = Currency.wrap(currencyIsToken0 ? poolToken : currency);
        params.deposit0Desired = currencyIsToken0 ? currencyAmount : tokenAmount;
        params.deposit1Desired = currencyIsToken0 ? tokenAmount : currencyAmount;
        params.ethValue = Currency.wrap(currency).isAddressZero() ? currencyAmount : 0;
    }

    /// @notice Approves tokens for OrderBookFactory
    function _approveTokens(DepositParams memory params) private {
        if (!params.currency0.isAddressZero()) {
            IERC20(Currency.unwrap(params.currency0)).forceApprove(address(unilaunchOrderBookFactory), params.deposit0Desired);
        }
        if (!params.currency1.isAddressZero()) {
            IERC20(Currency.unwrap(params.currency1)).forceApprove(address(unilaunchOrderBookFactory), params.deposit1Desired);
        }
    }

    function _callFactory(MigrationData memory data, DepositParams memory params)
        private
        returns (PoolKey memory poolKey, address mpm)
    {
        uint256[2][] memory inMin = new uint256[2][](0);
        UnilaunchOrderBookFactory.VolatilityDynamicPoolParams memory poolParams =
            UnilaunchOrderBookFactory.VolatilityDynamicPoolParams({
                currency0: params.currency0,
                currency1: params.currency1,
                tickSpacing: poolTickSpacing,
                sqrtPriceX96: data.sqrtPriceX96,
                deposit0Desired: params.deposit0Desired,
                deposit1Desired: params.deposit1Desired,
                managerOwner: positionRecipient,
                name: mpmName,
                to: positionRecipient,
                inMin: inMin,
                rebalanceParams: rebalanceParams
            });

        (poolKey, mpm) =
            unilaunchOrderBookFactory.createVolatilityDynamicLimitOrderPoolWithManager{value: params.ethValue}(poolParams);
    }
}
