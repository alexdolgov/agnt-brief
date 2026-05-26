// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.12;
pragma experimental ABIEncoderV2;

import { VersionedInitializable } from
    "@radiant-v2-core/lending/libraries/aave-upgradeability/VersionedInitializable.sol";
import { InitializableImmutableAdminUpgradeabilityProxy } from
    "@radiant-v2-core/lending/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol";
import { ReserveConfiguration } from "@radiant-v2-core/lending/libraries/configuration/ReserveConfiguration.sol";
import { ILendingPoolAddressesProvider } from "@radiant-v2-core/interfaces/ILendingPoolAddressesProvider.sol";
import { ILendingPool } from "@radiant-v2-core/interfaces/ILendingPool.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { Errors } from "../libraries/Errors.sol";
import { PercentageMath } from "@radiant-v2-core/lending/libraries/math/PercentageMath.sol";
import { DataTypes } from "@radiant-v2-core/lending/libraries/types/DataTypes.sol";
import { IInitializableDebtToken } from "@radiant-v2-core/interfaces/IInitializableDebtToken.sol";
import { IInitializableAToken } from "@radiant-v2-core/interfaces/IInitializableAToken.sol";
import { IAaveIncentivesController } from "@radiant-v2-core/interfaces/IAaveIncentivesController.sol";
import { ILendingPoolConfigurator } from "@radiant-v2-core/interfaces/ILendingPoolConfigurator.sol";
import { RizRegistry } from "../RizRegistry.sol";
import { IRizLendingPool } from "../interfaces/Riz/IRizLendingPool.sol";
import { IRizLendingPoolAddressesProvider } from "../interfaces/Riz/IRizLendingPoolAddressesProvider.sol";

/**
 * @title RizLendingPoolConfigurator contract
 * @author Radiant
 * @custom:security-contact security@radiant.capital
 * @dev Implements the configuration methods for the Radiant protocol
 */
contract RizLendingPoolConfigurator is VersionedInitializable, ILendingPoolConfigurator {
    using PercentageMath for uint256;
    using ReserveConfiguration for DataTypes.ReserveConfigurationMap;

    uint256 public constant BIPS_DIVISOR = 10_000;
    uint256 internal constant CONFIGURATOR_REVISION = 0x1;

    IRizLendingPoolAddressesProvider internal addressesProvider;
    ILendingPool internal pool;

    modifier onlyPoolAdmin() {
        if (addressesProvider.getPoolAdmin() != msg.sender) {
            revert(Errors.CALLER_NOT_POOL_ADMIN);
        }
        _;
    }

    modifier onlyEmergencyAdmin() {
        if (addressesProvider.getEmergencyAdmin() != msg.sender) {
            revert(Errors.LPC_CALLER_NOT_EMERGENCY_ADMIN);
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(IRizLendingPoolAddressesProvider provider) external initializer {
        addressesProvider = provider;
        pool = ILendingPool(addressesProvider.getLendingPool());
    }

    /**
     * @notice Initializes multiple reserves in a batch
     * @dev This function allows the pool admin to initialize multiple reserves at once
     * @param input An array of InitReserveInput structs containing the reserve initialization parameters
     */
    function batchInitReserve(InitReserveInput[] calldata input) external onlyPoolAdmin {
        ILendingPool cachedPool = pool;
        uint256 length = input.length;
        for (uint256 i = 0; i < length;) {
            _initReserve(cachedPool, input[i]);
            unchecked {
                i++;
            }
        }
    }

    /**
     * @dev Updates the aToken implementation for the reserve
     *
     */
    function updateAToken(UpdateATokenInput calldata input) external onlyPoolAdmin {
        ILendingPool cachedPool = pool;

        DataTypes.ReserveData memory reserveData = cachedPool.getReserveData(input.asset);

        (,,, uint256 decimals,) = cachedPool.getConfiguration(input.asset).getParamsMemory();
        if (decimals > type(uint8).max) {
            revert Errors.DecimalsOutOfRange(decimals);
        }

        bytes memory encodedCall = abi.encodeCall(
            IInitializableAToken.initialize,
            (
                cachedPool,
                input.treasury,
                input.asset,
                IAaveIncentivesController(input.incentivesController),
                uint8(decimals),
                input.name,
                input.symbol,
                input.params
            )
        );

        _upgradeTokenImplementation(reserveData.aTokenAddress, input.implementation, encodedCall);

        emit ATokenUpgraded(input.asset, reserveData.aTokenAddress, input.implementation);
    }

    /**
     * @dev Updates the stable debt token implementation for the reserve
     *
     */
    function updateStableDebtToken(UpdateDebtTokenInput calldata input) external onlyPoolAdmin {
        ILendingPool cachedPool = pool;

        DataTypes.ReserveData memory reserveData = cachedPool.getReserveData(input.asset);

        (,,, uint256 decimals,) = cachedPool.getConfiguration(input.asset).getParamsMemory();
        if (decimals > type(uint8).max) {
            revert Errors.DecimalsOutOfRange(decimals);
        }

        bytes memory encodedCall = abi.encodeCall(
            IInitializableDebtToken.initialize,
            (
                cachedPool,
                input.asset,
                IAaveIncentivesController(input.incentivesController),
                uint8(decimals),
                input.name,
                input.symbol,
                input.params
            )
        );

        _upgradeTokenImplementation(reserveData.stableDebtTokenAddress, input.implementation, encodedCall);

        emit StableDebtTokenUpgraded(input.asset, reserveData.stableDebtTokenAddress, input.implementation);
    }

    /**
     * @dev Updates the variable debt token implementation for the asset
     *
     */
    function updateVariableDebtToken(UpdateDebtTokenInput calldata input) external onlyPoolAdmin {
        ILendingPool cachedPool = pool;

        DataTypes.ReserveData memory reserveData = cachedPool.getReserveData(input.asset);

        (,,, uint256 decimals,) = cachedPool.getConfiguration(input.asset).getParamsMemory();
        if (decimals > type(uint8).max) {
            revert Errors.DecimalsOutOfRange(decimals);
        }

        bytes memory encodedCall = abi.encodeCall(
            IInitializableDebtToken.initialize,
            (
                cachedPool,
                input.asset,
                IAaveIncentivesController(input.incentivesController),
                uint8(decimals),
                input.name,
                input.symbol,
                input.params
            )
        );

        _upgradeTokenImplementation(reserveData.variableDebtTokenAddress, input.implementation, encodedCall);

        emit VariableDebtTokenUpgraded(input.asset, reserveData.variableDebtTokenAddress, input.implementation);
    }

    /**
     * @dev Enables borrowing on a reserve
     * @param asset The address of the underlying asset of the reserve
     * @param stableBorrowRateEnabled True if stable borrow rate needs to be enabled by default on this reserve
     *
     */
    function enableBorrowingOnReserve(address asset, bool stableBorrowRateEnabled) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setBorrowingEnabled(true);
        currentConfig.setStableRateBorrowingEnabled(stableBorrowRateEnabled);

        pool.setConfiguration(asset, currentConfig.data);

        emit BorrowingEnabledOnReserve(asset, stableBorrowRateEnabled);
    }

    /**
     * @dev Disables borrowing on a reserve
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function disableBorrowingOnReserve(address asset) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setBorrowingEnabled(false);

        pool.setConfiguration(asset, currentConfig.data);
        emit BorrowingDisabledOnReserve(asset);
    }

    /**
     * @dev Configures the reserve collateralization parameters
     * all the values are expressed in percentages with two decimals of precision. A valid value is 10000, which means
     * 100.00%
     * @param asset The address of the underlying asset of the reserve
     * @param ltv The loan to value of the asset when used as collateral
     * @param liquidationThreshold The threshold at which loans using this asset as collateral will be considered
     * undercollateralized
     * @param liquidationBonus The bonus liquidators receive to liquidate this asset. The values is always above 100%. A
     * value of 105%
     * means the liquidator will receive a 5% bonus
     *
     */
    function configureReserveAsCollateral(
        address asset,
        uint256 ltv,
        uint256 liquidationThreshold,
        uint256 liquidationBonus
    ) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        //validation of the parameters: the LTV can
        //only be lower or equal than the liquidation threshold
        //(otherwise a loan against the asset would cause instantaneous liquidation)
        if (ltv > liquidationThreshold) {
            revert(Errors.LPC_INVALID_CONFIGURATION);
        }

        if (liquidationThreshold != 0) {
            //liquidation bonus must be bigger than 100.00%, otherwise the liquidator would receive less
            //collateral than needed to cover the debt
            if (liquidationBonus <= PercentageMath.PERCENTAGE_FACTOR) {
                revert(Errors.LPC_INVALID_CONFIGURATION);
            }

            //if threshold * bonus is less than PERCENTAGE_FACTOR, it's guaranteed that at the moment
            //a loan is taken there is enough collateral available to cover the liquidation bonus
            if (liquidationThreshold.percentMul(liquidationBonus) > PercentageMath.PERCENTAGE_FACTOR) {
                revert(Errors.LPC_INVALID_CONFIGURATION);
            }
        } else {
            if (liquidationBonus != 0) {
                revert(Errors.LPC_INVALID_CONFIGURATION);
            }
            //if the liquidation threshold is being set to 0,
            // the reserve is being disabled as collateral. To do so,
            //we need to ensure no liquidity is deposited
            _checkNoLiquidity(asset);
        }

        currentConfig.setLtv(ltv);
        currentConfig.setLiquidationThreshold(liquidationThreshold);
        currentConfig.setLiquidationBonus(liquidationBonus);

        pool.setConfiguration(asset, currentConfig.data);

        emit CollateralConfigurationChanged(asset, ltv, liquidationThreshold, liquidationBonus);
    }

    /**
     * @dev Enable stable rate borrowing on a reserve
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function enableReserveStableRate(address asset) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setStableRateBorrowingEnabled(true);

        pool.setConfiguration(asset, currentConfig.data);

        emit StableRateEnabledOnReserve(asset);
    }

    /**
     * @dev Disable stable rate borrowing on a reserve
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function disableReserveStableRate(address asset) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setStableRateBorrowingEnabled(false);

        pool.setConfiguration(asset, currentConfig.data);

        emit StableRateDisabledOnReserve(asset);
    }

    /**
     * @dev Activates a reserve
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function activateReserve(address asset) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setActive(true);

        pool.setConfiguration(asset, currentConfig.data);

        emit ReserveActivated(asset);
    }

    /**
     * @dev Deactivates a reserve
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function deactivateReserve(address asset) external onlyPoolAdmin {
        _checkNoLiquidity(asset);

        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setActive(false);

        pool.setConfiguration(asset, currentConfig.data);

        emit ReserveDeactivated(asset);
    }

    /**
     * @dev Freezes a reserve. A frozen reserve doesn't allow any new deposit, borrow or rate swap
     *  but allows repayments, liquidations, rate rebalances and withdrawals
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function freezeReserve(address asset) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setFrozen(true);

        pool.setConfiguration(asset, currentConfig.data);

        emit ReserveFrozen(asset);
    }

    /**
     * @dev Unfreezes a reserve
     * @param asset The address of the underlying asset of the reserve
     *
     */
    function unfreezeReserve(address asset) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setFrozen(false);

        pool.setConfiguration(asset, currentConfig.data);

        emit ReserveUnfrozen(asset);
    }

    /**
     * @notice Updates the borrow cap of a reserve.
     * @param asset The address of the underlying asset of the reserve
     * @param newBorrowCap The new borrow cap of the reserve
     * @custom:borrow-and-supply-caps
     */
    function setBorrowCap(address asset, uint256 newBorrowCap) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);
        uint256 oldBorrowCap = currentConfig.getBorrowCap();
        currentConfig.setBorrowCap(newBorrowCap);
        pool.setConfiguration(asset, currentConfig.data);
        emit BorrowCapChanged(asset, oldBorrowCap, newBorrowCap);
    }

    /**
     * @notice Updates the supply cap of a reserve.
     * @param asset The address of the underlying asset of the reserve
     * @param newSupplyCap The new supply cap of the reserve
     * @custom:borrow-and-supply-caps
     */
    function setSupplyCap(address asset, uint256 newSupplyCap) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);
        uint256 oldSupplyCap = currentConfig.getSupplyCap();
        currentConfig.setSupplyCap(newSupplyCap);
        pool.setConfiguration(asset, currentConfig.data);
        emit SupplyCapChanged(asset, oldSupplyCap, newSupplyCap);
    }

    /**
     * @dev Updates the reserve factor of a reserve
     * @param asset The address of the underlying asset of the reserve
     * @param reserveFactor The new reserve factor of the reserve
     *
     */
    function setReserveFactor(address asset, uint256 reserveFactor) external onlyPoolAdmin {
        DataTypes.ReserveConfigurationMap memory currentConfig = pool.getConfiguration(asset);

        currentConfig.setReserveFactor(reserveFactor);

        pool.setConfiguration(asset, currentConfig.data);

        emit ReserveFactorChanged(asset, reserveFactor);
    }

    /**
     * @dev Sets the interest rate strategy of a reserve
     * @param asset The address of the underlying asset of the reserve
     * @param rateStrategyAddress The new address of the interest strategy contract
     *
     */
    function setReserveInterestRateStrategyAddress(address asset, address rateStrategyAddress) external onlyPoolAdmin {
        pool.setReserveInterestRateStrategyAddress(asset, rateStrategyAddress);
        emit ReserveInterestRateStrategyChanged(asset, rateStrategyAddress);
    }

    /**
     * @dev pauses or unpauses all the actions of the protocol, including aToken transfers
     * @param val true if protocol needs to be paused, false otherwise
     *
     */
    function setPoolPause(bool val) external onlyEmergencyAdmin {
        pool.setPause(val);
    }

    /// @dev Shuts down the pool
    /// @param badDebt The amount of bad debt to be set
    function poolShutdown(uint256 badDebt) external onlyEmergencyAdmin {
        IRizLendingPool(address(pool)).shutdown(badDebt);
        address rizRegistryAddress = IRizLendingPoolAddressesProvider(address(addressesProvider)).getRizRegistry();
        RizRegistry rizRegistry = RizRegistry(rizRegistryAddress);
        rizRegistry.updateLendingPoolStatus(address(addressesProvider), false);
    }

    function _initTokenWithProxy(address implementation, bytes memory initParams) internal returns (address) {
        InitializableImmutableAdminUpgradeabilityProxy proxy =
            new InitializableImmutableAdminUpgradeabilityProxy(address(this));

        proxy.initialize(implementation, initParams);

        return address(proxy);
    }

    function _initReserve(ILendingPool _pool, InitReserveInput calldata input) internal {
        address aTokenProxyAddress = _initTokenWithProxy(
            input.aTokenImpl,
            abi.encodeCall(
                IInitializableAToken.initialize,
                (
                    _pool,
                    input.treasury,
                    input.underlyingAsset,
                    IAaveIncentivesController(input.incentivesController),
                    input.underlyingAssetDecimals,
                    input.aTokenName,
                    input.aTokenSymbol,
                    input.params
                )
            )
        );
        address stableDebtTokenProxyAddress = _initTokenWithProxy(
            input.stableDebtTokenImpl,
            abi.encodeCall(
                IInitializableDebtToken.initialize,
                (
                    _pool,
                    input.underlyingAsset,
                    IAaveIncentivesController(input.incentivesController),
                    input.underlyingAssetDecimals,
                    input.stableDebtTokenName,
                    input.stableDebtTokenSymbol,
                    input.params
                )
            )
        );
        // stableDebt is not added to incentives controller
        // GEIST does not support stable lending

        address variableDebtTokenProxyAddress = _initTokenWithProxy(
            input.variableDebtTokenImpl,
            abi.encodeCall(
                IInitializableDebtToken.initialize,
                (
                    _pool,
                    input.underlyingAsset,
                    IAaveIncentivesController(input.incentivesController),
                    input.underlyingAssetDecimals,
                    input.variableDebtTokenName,
                    input.variableDebtTokenSymbol,
                    input.params
                )
            )
        );

        _pool.initReserve(
            input.underlyingAsset,
            aTokenProxyAddress,
            stableDebtTokenProxyAddress,
            variableDebtTokenProxyAddress,
            input.interestRateStrategyAddress
        );

        DataTypes.ReserveConfigurationMap memory currentConfig = _pool.getConfiguration(input.underlyingAsset);

        currentConfig.setDecimals(input.underlyingAssetDecimals);

        currentConfig.setActive(true);
        currentConfig.setFrozen(false);

        pool.setConfiguration(input.underlyingAsset, currentConfig.data);

        emit ReserveInitialized(
            input.underlyingAsset,
            aTokenProxyAddress,
            stableDebtTokenProxyAddress,
            variableDebtTokenProxyAddress,
            input.interestRateStrategyAddress
        );
    }

    function _upgradeTokenImplementation(address proxyAddress, address implementation, bytes memory initParams)
        internal
    {
        InitializableImmutableAdminUpgradeabilityProxy proxy =
            InitializableImmutableAdminUpgradeabilityProxy(payable(proxyAddress));

        proxy.upgradeToAndCall(implementation, initParams);
    }

    function _checkNoLiquidity(address asset) internal view {
        DataTypes.ReserveData memory reserveData = pool.getReserveData(asset);

        uint256 availableLiquidity = IERC20Metadata(asset).balanceOf(reserveData.aTokenAddress);

        if (availableLiquidity != 0 || reserveData.currentLiquidityRate != 0) {
            revert(Errors.LPC_RESERVE_LIQUIDITY_NOT_0);
        }
    }

    function getRevision() internal pure override returns (uint256) {
        return CONFIGURATOR_REVISION;
    }
}
