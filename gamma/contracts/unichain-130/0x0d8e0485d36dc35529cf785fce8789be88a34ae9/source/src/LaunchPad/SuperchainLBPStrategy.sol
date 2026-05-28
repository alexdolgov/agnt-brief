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
import {OrderBookFactory} from "../LimitOrderBook/OrderBookFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {ISuperchainLBPStrategy} from "./interfaces/ISuperchainLBPStrategy.sol";
import {LBPDeploymentLib} from "./libraries/LBPDeploymentLib.sol";
import {BaseHook} from "@uniswap/v4-periphery/src/utils/BaseHook.sol";

/// @title SuperchainLBPStrategy
/// @notice Strategy to distribute tokens via CCA auction and migrate liquidity to MultiPositionManager
/// @dev Extends LBPStrategyBasic but overrides migration to use OrderBookFactory instead of V4 PositionManager
contract SuperchainLBPStrategy is LBPStrategyBasic, ISuperchainLBPStrategy {
    using CurrencyLibrary for Currency;
    using SafeERC20 for IERC20;

    /// @notice The OrderBookFactory used to deploy pool + MultiPositionManager
    OrderBookFactory public immutable orderBookFactory;

    /// @notice Rebalance parameters for the MPM strategy configuration
    IMultiPositionManager.RebalanceParams public rebalanceParams;

    /// @notice Name for the MPM token
    string public mpmName;

    /// @notice Pre-computed salt for hook deployment (used during lazy deployment)
    bytes32 public hookSalt;

    /// @notice Deployed MultiPositionManager address (set during migration)
    address public deployedMPM;

    constructor(
        address _token,
        uint128 _totalSupply,
        MigratorParameters memory _migratorParams,
        bytes memory _auctionParams,
        IPositionManager _positionManager,
        IPoolManager _poolManager,
        OrderBookFactory _orderBookFactory,
        IMultiPositionManager.RebalanceParams memory _rebalanceParams,
        string memory _mpmName,
        bytes32 _hookSalt
    ) LBPStrategyBasic(_token, _totalSupply, _migratorParams, _auctionParams, _positionManager, _poolManager) {
        if (address(_orderBookFactory) == address(0)) revert InvalidOrderBookFactory();
        if (_rebalanceParams.strategy == address(0)) revert InvalidStrategy();

        orderBookFactory = _orderBookFactory;
        rebalanceParams = _rebalanceParams;
        mpmName = _mpmName;
        hookSalt = _hookSalt;
    }

    /// @dev Override to skip hook address validation
    /// @notice SuperchainLBPStrategy uses OrderBookFactory for pool management, not direct hook integration
    ///         The strategy itself is not used as a hook for any pool - OrderBookFactory deploys separate hooks
    function validateHookAddress(BaseHook) internal pure virtual override {}

    /// @inheritdoc ISuperchainLBPStrategy
    function strategy() external view override returns (address) {
        return rebalanceParams.strategy;
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
        address mpm = _deployPoolAndMPM(data);
        deployedMPM = mpm;
        uint256 shares = IERC20(mpm).balanceOf(positionRecipient);
        emit MPMDeployed(mpm, shares);
    }

    /// @notice Deploys pool and MPM via OrderBookFactory
    /// @param data Migration data with amounts and price
    /// @return mpm The deployed MultiPositionManager address
    function _deployPoolAndMPM(MigrationData memory data) private returns (address mpm) {
        // Calculate amounts in scoped block
        (uint128 tokenAmount, uint128 currencyAmount) = _calculateTransferAmounts(data);

        // Prepare currencies and deposits in scoped block
        (Currency currency0, Currency currency1, uint256 deposit0Desired, uint256 deposit1Desired, uint256 ethValue) =
            _prepareCurrenciesAndDeposits(tokenAmount, currencyAmount);

        // Empty inMin array - RebalanceLogic will create zero-filled array of correct size
        // No slippage protection needed since hook prevents trading until the block after the pool is initialized
        uint256[2][] memory inMin = new uint256[2][](0);

        // Approve tokens
        _approveTokens(currency0, currency1, deposit0Desired, deposit1Desired);

        // Build deployment context and call factory via library
        // hookOwner is the positionRecipient (original token creator) - they control hook fees
        LBPDeploymentLib.DeploymentContext memory ctx = LBPDeploymentLib.DeploymentContext({
            token: token,
            currency: currency,
            poolLPFee: poolLPFee,
            poolTickSpacing: poolTickSpacing,
            positionRecipient: positionRecipient,
            mpmName: mpmName,
            rebalanceParams: rebalanceParams,
            hookOwner: positionRecipient,
            hookSalt: hookSalt
        });

        mpm = LBPDeploymentLib.callFactoryFunction(
            orderBookFactory, data, currency0, currency1, deposit0Desired, deposit1Desired, ethValue, inMin, ctx
        );
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
    function _prepareCurrenciesAndDeposits(uint128 tokenAmount, uint128 currencyAmount)
        private view returns (Currency currency0, Currency currency1, uint256 deposit0, uint256 deposit1, uint256 ethValue)
    {
        address poolToken = getPoolToken();
        bool currencyIsToken0 = currency < poolToken;

        currency0 = Currency.wrap(currencyIsToken0 ? currency : poolToken);
        currency1 = Currency.wrap(currencyIsToken0 ? poolToken : currency);

        deposit0 = currencyIsToken0 ? currencyAmount : tokenAmount;
        deposit1 = currencyIsToken0 ? tokenAmount : currencyAmount;

        ethValue = Currency.wrap(currency).isAddressZero() ? currencyAmount : 0;
    }

    /// @notice Approves tokens for OrderBookFactory
    function _approveTokens(Currency currency0, Currency currency1, uint256 amount0, uint256 amount1) private {
        if (!currency0.isAddressZero()) {
            IERC20(Currency.unwrap(currency0)).forceApprove(address(orderBookFactory), amount0);
        }
        if (!currency1.isAddressZero()) {
            IERC20(Currency.unwrap(currency1)).forceApprove(address(orderBookFactory), amount1);
        }
    }

}
