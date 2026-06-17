// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { ILendingPoolAddressesProvider } from "@radiant-v2-core/interfaces/ILendingPoolAddressesProvider.sol";
import {
    RizLendingPoolAddressesProvider, IRizLendingPoolAddressesProvider
} from "./RizLendingPoolAddressesProvider.sol";
import { ILendingPoolCollateralManager } from "@radiant-v2-core/interfaces/ILendingPoolCollateralManager.sol";
import { IAToken } from "@radiant-v2-core/interfaces/IAToken.sol";
import { RizAToken } from "../tokenization/RizAToken.sol";
import { IVariableDebtToken } from "@radiant-v2-core/interfaces/IVariableDebtToken.sol";
import { IPriceOracleGetter } from "@radiant-v2-core/interfaces/IPriceOracleGetter.sol";
import { IStableDebtToken } from "@radiant-v2-core/interfaces/IStableDebtToken.sol";
import { ILendingPool } from "@radiant-v2-core/interfaces/ILendingPool.sol";
import { ILeverager } from "@radiant-v2-core/interfaces/ILeverager.sol";
import { VersionedInitializable } from
    "@radiant-v2-core/lending/libraries/aave-upgradeability/VersionedInitializable.sol";
import { Helpers } from "@radiant-v2-core/lending/libraries/helpers/Helpers.sol";
import { Errors } from "@radiant-v2-core/lending/libraries/helpers/Errors.sol";
import { Errors as RizErrors } from "../libraries/Errors.sol";
import { WadRayMath } from "@radiant-v2-core/lending/libraries/math/WadRayMath.sol";
import { PercentageMath } from "@radiant-v2-core/lending/libraries/math/PercentageMath.sol";
import { ReserveLogic } from "@radiant-v2-core/lending/libraries/logic/ReserveLogic.sol";
import { GenericLogic } from "@radiant-v2-core/lending/libraries/logic/GenericLogic.sol";
import { ValidationLogic } from "@radiant-v2-core/lending/libraries/logic/ValidationLogic.sol";
import { ReserveConfiguration } from "@radiant-v2-core/lending/libraries/configuration/ReserveConfiguration.sol";
import { UserConfiguration } from "@radiant-v2-core/lending/libraries/configuration/UserConfiguration.sol";
import { DataTypes } from "@radiant-v2-core/lending/libraries/types/DataTypes.sol";
import { RizLendingPoolStorage } from "./RizLendingPoolStorage.sol";
import { IRizLendingPool } from "../interfaces/Riz/IRizLendingPool.sol";
import { BadDebtManager } from "../BadDebtManager.sol";
import { OracleRouter } from "../OracleRouter.sol";
import { EmergencyWithdraw } from "../libraries/EmergencyWithdraw.sol";

/**
 * @title LendingPool contract
 * @dev Main point of interaction with an Aave protocol's market
 * - Users can:
 *   # Deposit
 *   # Withdraw
 *   # Borrow
 *   # Repay
 *   # Swap their loans between variable and stable rate
 *   # Enable/disable their deposits as collateral rebalance stable rate borrow positions
 *   # Liquidate positions
 * - To be covered by a proxy contract, owned by the LendingPoolAddressesProvider of the specific market
 * - All admin functions are callable by the LendingPoolConfigurator contract defined also in the
 *   RizLendingPoolAddressesProvider
 * @author Aave
 *
 */
contract RizLendingPool is VersionedInitializable, IRizLendingPool, RizLendingPoolStorage {
    using SafeMath for uint256;
    using WadRayMath for uint256;
    using PercentageMath for uint256;
    using SafeERC20 for IERC20;
    using ReserveLogic for DataTypes.ReserveData;
    using ReserveConfiguration for DataTypes.ReserveConfigurationMap;
    using UserConfiguration for DataTypes.UserConfigurationMap;
    using EmergencyWithdraw for EmergencyWithdraw.Params;

    uint256 public constant LENDINGPOOL_REVISION = 0x1;
    uint256 public constant BIPS_DIVISOR = 10_000;

    modifier whenNotPaused() {
        _whenNotPaused();
        _;
    }

    modifier whenNotPausedOrShutdown() {
        _whenNotPaused();
        _whenNotShutdown();
        _;
    }

    modifier onlyLendingPoolConfigurator() {
        _onlyLendingPoolConfigurator();
        _;
    }

    function _whenNotPaused() internal view {
        require(!_paused, Errors.LP_IS_PAUSED);
    }

    function _whenNotShutdown() internal view {
        if (_shutdown) {
            revert RizErrors.PoolDisabled();
        }
    }

    function _onlyLendingPoolConfigurator() internal view {
        require(
            _addressesProvider.getLendingPoolConfigurator() == msg.sender,
            Errors.LP_CALLER_NOT_LENDING_POOL_CONFIGURATOR
        );
    }

    function getRevision() internal pure override returns (uint256) {
        return LENDINGPOOL_REVISION;
    }

    // constructor() {
    //     _disableInitializers();
    // }

    /**
     * @dev Function is invoked by the proxy contract when the LendingPool contract is added to the
     * RizLendingPoolAddressesProvider of the market.
     * - Caching the address of the LendingPoolAddressesProvider in order to reduce gas consumption
     *   on subsequent operations
     * @param provider The address of the RizLendingPoolAddressesProvider
     *
     */
    function initialize(IRizLendingPoolAddressesProvider provider) public override initializer {
        _addressesProvider = provider;
        _maxStableRateBorrowSizePercent = 2500;
        _maxNumberOfReserves = 4;
    }

    /**
     * @dev Deposits an `amount` of underlying asset into the reserve, receiving in return overlying aTokens.
     * - E.g. User deposits 100 USDC and gets in return 100 aUSDC
     * @param asset The address of the underlying asset to deposit
     * @param amount The amount to be deposited
     * @param onBehalfOf The address that will receive the aTokens, same as msg.sender if the user
     *   wants to receive them on his own wallet, or a different address if the beneficiary of aTokens
     *   is a different wallet
     * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
     *   0 if the action is executed directly by the user, without any middle-man
     *
     */
    function deposit(address asset, uint256 amount, address onBehalfOf, uint16 referralCode)
        public
        virtual
        whenNotPausedOrShutdown
    {
        DataTypes.ReserveData storage reserve = _reserves[asset];

        ValidationLogic.validateDeposit(reserve, amount);

        address aToken = reserve.aTokenAddress;

        reserve.updateState();
        reserve.updateInterestRates(asset, aToken, amount, 0);

        IERC20(asset).safeTransferFrom(msg.sender, aToken, amount);

        if (IAToken(aToken).balanceOf(onBehalfOf) == 0) {
            _usersConfig[onBehalfOf].setUsingAsCollateral(reserve.id, true);
            emit ReserveUsedAsCollateralEnabled(asset, onBehalfOf);
        }

        /// @custom:borrow-and-supply-caps
        ValidationLogic.validateSupplyCap(reserve, amount);

        IAToken(aToken).mint(onBehalfOf, amount, reserve.liquidityIndex);

        emit Deposit(asset, msg.sender, onBehalfOf, amount, referralCode);
    }

    /**
     * @dev Withdraws an `amount` of underlying asset from the reserve, burning the equivalent aTokens owned
     * E.g. User has 100 aUSDC, calls withdraw() and receives 100 USDC, burning the 100 aUSDC
     * @notice Emergency withdrawal logic in case pool is bricked. This flow is different from the normal withdraw,
     * as when pool is bricked, users can no longer choose which assets they are going to withdraw. Instead, we are
     * going
     * to distribute the assets in the pool to the users in a "fair" way, by slashing withdrawal amount
     * Also, it is important to note, that each user will get a proportion of assets based on their ratio in the pool
     * The formula to calculate the amount to be withdrawn is:
     * amountToWithdraw = (userDeposit - userDebt)
     * @param asset The address of the underlying asset to withdraw
     * @param amount The underlying amount to be withdrawn
     *   - Send the value type(uint256).max in order to withdraw the whole aToken balance
     * @param to Address that will receive the underlying, same as msg.sender if the user
     *   wants to receive it on his own wallet, or a different address if the beneficiary is a
     *   different wallet
     * @return The final amount withdrawn
     *
     */
    function withdraw(address asset, uint256 amount, address to) external virtual whenNotPaused returns (uint256) {
        // If pool is bricked, we have to perform the emergency withdrawal. User doesn't decide the amount to withdraw
        // and the assets to withdraw
        if (_shutdown) {
            _emergencyWithdraw(msg.sender, to);
            return 0;
        }
        DataTypes.ReserveData storage reserve = _reserves[asset];

        address aToken = reserve.aTokenAddress;

        uint256 userBalance = IAToken(aToken).balanceOf(msg.sender);

        uint256 amountToWithdraw = amount;

        if (amount == type(uint256).max) {
            amountToWithdraw = userBalance;
        }
        ValidationLogic.validateWithdraw(
            asset,
            amountToWithdraw,
            userBalance,
            _reserves,
            _usersConfig[msg.sender],
            _reservesList,
            _reservesCount,
            _addressesProvider.getPriceOracle()
        );

        reserve.updateState();

        reserve.updateInterestRates(asset, aToken, 0, amountToWithdraw);

        if (amountToWithdraw == userBalance) {
            _usersConfig[msg.sender].setUsingAsCollateral(reserve.id, false);
            emit ReserveUsedAsCollateralDisabled(asset, msg.sender);
        }

        IAToken(aToken).burn(msg.sender, to, amountToWithdraw, reserve.liquidityIndex);

        emit Withdraw(asset, msg.sender, to, amountToWithdraw);

        return amountToWithdraw;
    }

    /// @dev Emergency withdrawal
    function _emergencyWithdraw(address owner, address to) internal {
        address[] memory reservesList = new address[](_reservesCount);

        for (uint256 i = 0; i < _reservesCount; i++) {
            reservesList[i] = _reservesList[i];
        }

        EmergencyWithdraw.Params memory params = EmergencyWithdraw.Params({
            totalUserDepositsUSD: 0,
            totalUserDebtsUSD: 0,
            reservesList: reservesList,
            reservesCount: _reservesCount,
            badDebtManagerAddress: _addressesProvider.getBadDebtManager()
        });

        EmergencyWithdraw.emergencyWithdraw(owner, to, params, _reserves);
    }

    /**
     * @dev Allows users to borrow a specific `amount` of the reserve underlying asset, provided that the borrower
     * already deposited enough collateral, or he was given enough allowance by a credit delegator on the
     * corresponding debt token (StableDebtToken or VariableDebtToken)
     * - E.g. User borrows 100 USDC passing as `onBehalfOf` his own address, receiving the 100 USDC in his wallet
     *   and 100 stable/variable debt tokens, depending on the `interestRateMode`
     * @param asset The address of the underlying asset to borrow
     * @param amount The amount to be borrowed
     * @param interestRateMode The interest rate mode at which the user wants to borrow: 1 for Stable, 2 for Variable
     * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
     *   0 if the action is executed directly by the user, without any middle-man
     * @param onBehalfOf Address of the user who will receive the debt. Should be the address of the borrower itself
     * calling the function if he wants to borrow against his own collateral, or the address of the credit delegator
     * if he has been given credit delegation allowance
     *
     */
    function borrow(address asset, uint256 amount, uint256 interestRateMode, uint16 referralCode, address onBehalfOf)
        external
        virtual
        whenNotPausedOrShutdown
    {
        DataTypes.ReserveData storage reserve = _reserves[asset];

        _executeBorrow(
            ExecuteBorrowParams(
                asset, msg.sender, onBehalfOf, amount, interestRateMode, reserve.aTokenAddress, referralCode, true
            )
        );
    }

    /**
     * @notice Repays a borrowed `amount` on a specific reserve, burning the equivalent debt tokens owned
     * - E.g. User repays 100 USDC, burning 100 variable/stable debt tokens of the `onBehalfOf` address
     * @param asset The address of the borrowed underlying asset previously borrowed
     * @param amount The amount to repay
     * - Send the value type(uint256).max in order to repay the whole debt for `asset` on the specific `debtMode`
     * @param rateMode The interest rate mode at of the debt the user wants to repay: 1 for Stable, 2 for Variable
     * @param onBehalfOf Address of the user who will get his debt reduced/removed. Should be the address of the
     * user calling the function if he wants to reduce/remove his own debt, or the address of any other
     * other borrower whose debt should be removed
     * @return The final amount repaid
     *
     */
    function repay(address asset, uint256 amount, uint256 rateMode, address onBehalfOf)
        external
        virtual
        whenNotPausedOrShutdown
        returns (uint256)
    {
        DataTypes.ReserveData storage reserve = _reserves[asset];

        (uint256 stableDebt, uint256 variableDebt) = Helpers.getUserCurrentDebt(onBehalfOf, reserve);

        DataTypes.InterestRateMode interestRateMode = DataTypes.InterestRateMode(rateMode);

        ValidationLogic.validateRepay(reserve, amount, interestRateMode, onBehalfOf, stableDebt, variableDebt);

        uint256 paybackAmount = interestRateMode == DataTypes.InterestRateMode.STABLE ? stableDebt : variableDebt;

        if (amount < paybackAmount) {
            paybackAmount = amount;
        }

        reserve.updateState();

        if (interestRateMode == DataTypes.InterestRateMode.STABLE) {
            IStableDebtToken(reserve.stableDebtTokenAddress).burn(onBehalfOf, paybackAmount);
        } else {
            IVariableDebtToken(reserve.variableDebtTokenAddress).burn(
                onBehalfOf, paybackAmount, reserve.variableBorrowIndex
            );
        }

        address aToken = reserve.aTokenAddress;
        reserve.updateInterestRates(asset, aToken, paybackAmount, 0);

        if (stableDebt.add(variableDebt).sub(paybackAmount) == 0) {
            _usersConfig[onBehalfOf].setBorrowing(reserve.id, false);
        }

        IERC20(asset).safeTransferFrom(msg.sender, aToken, paybackAmount);

        IAToken(aToken).handleRepayment(msg.sender, paybackAmount);

        emit Repay(asset, onBehalfOf, msg.sender, paybackAmount);

        return paybackAmount;
    }

    /**
     * @dev Allows a borrower to swap his debt between stable and variable mode, or viceversa
     * @param asset The address of the underlying asset borrowed
     * @param rateMode The rate mode that the user wants to swap to
     *
     */
    function swapBorrowRateMode(address asset, uint256 rateMode) external virtual whenNotPausedOrShutdown {
        DataTypes.ReserveData storage reserve = _reserves[asset];

        (uint256 stableDebt, uint256 variableDebt) = Helpers.getUserCurrentDebt(msg.sender, reserve);

        DataTypes.InterestRateMode interestRateMode = DataTypes.InterestRateMode(rateMode);

        ValidationLogic.validateSwapRateMode(
            reserve, _usersConfig[msg.sender], stableDebt, variableDebt, interestRateMode
        );

        reserve.updateState();

        if (interestRateMode == DataTypes.InterestRateMode.STABLE) {
            IStableDebtToken(reserve.stableDebtTokenAddress).burn(msg.sender, stableDebt);
            IVariableDebtToken(reserve.variableDebtTokenAddress).mint(
                msg.sender, msg.sender, stableDebt, reserve.variableBorrowIndex
            );
        } else {
            IVariableDebtToken(reserve.variableDebtTokenAddress).burn(
                msg.sender, variableDebt, reserve.variableBorrowIndex
            );
            IStableDebtToken(reserve.stableDebtTokenAddress).mint(
                msg.sender, msg.sender, variableDebt, reserve.currentStableBorrowRate
            );
        }

        reserve.updateInterestRates(asset, reserve.aTokenAddress, 0, 0);

        emit Swap(asset, msg.sender, rateMode);
    }

    /**
     * @dev Rebalances the stable interest rate of a user to the current stable rate defined on the reserve.
     * - Users can be rebalanced if the following conditions are satisfied:
     *     1. Usage ratio is above 95%
     *     2. the current deposit APY is below REBALANCE_UP_THRESHOLD * maxVariableBorrowRate, which means that too much
     * has been
     *        borrowed at a stable rate and depositors are not earning enough
     * @param asset The address of the underlying asset borrowed
     * @param user The address of the user to be rebalanced
     *
     */
    function rebalanceStableBorrowRate(address asset, address user) external virtual whenNotPausedOrShutdown {
        DataTypes.ReserveData storage reserve = _reserves[asset];

        IERC20 stableDebtToken = IERC20(reserve.stableDebtTokenAddress);
        IERC20 variableDebtToken = IERC20(reserve.variableDebtTokenAddress);
        address aTokenAddress = reserve.aTokenAddress;

        uint256 stableDebt = IERC20(stableDebtToken).balanceOf(user);

        ValidationLogic.validateRebalanceStableBorrowRate(
            reserve, asset, stableDebtToken, variableDebtToken, aTokenAddress
        );

        reserve.updateState();

        IStableDebtToken(address(stableDebtToken)).burn(user, stableDebt);
        IStableDebtToken(address(stableDebtToken)).mint(user, user, stableDebt, reserve.currentStableBorrowRate);

        reserve.updateInterestRates(asset, aTokenAddress, 0, 0);

        emit RebalanceStableBorrowRate(asset, user);
    }

    /**
     * @dev Allows depositors to enable/disable a specific deposited asset as collateral
     * @param asset The address of the underlying asset deposited
     * @param useAsCollateral `true` if the user wants to use the deposit as collateral, `false` otherwise
     *
     */
    function setUserUseReserveAsCollateral(address asset, bool useAsCollateral)
        external
        virtual
        whenNotPausedOrShutdown
    {
        DataTypes.ReserveData storage reserve = _reserves[asset];

        ValidationLogic.validateSetUseReserveAsCollateral(
            reserve,
            asset,
            useAsCollateral,
            _reserves,
            _usersConfig[msg.sender],
            _reservesList,
            _reservesCount,
            _addressesProvider.getPriceOracle()
        );

        _usersConfig[msg.sender].setUsingAsCollateral(reserve.id, useAsCollateral);

        if (useAsCollateral) {
            emit ReserveUsedAsCollateralEnabled(asset, msg.sender);
        } else {
            emit ReserveUsedAsCollateralDisabled(asset, msg.sender);
        }
    }

    /**
     * @dev Function to liquidate a non-healthy position collateral-wise, with Health Factor below 1
     * - The caller (liquidator) covers `debtToCover` amount of debt of the user getting liquidated, and receives
     *   a proportionally amount of the `collateralAsset` plus a bonus to cover market risk
     * @param collateralAsset The address of the underlying asset used as collateral, to receive as result of the
     * liquidation
     * @param debtAsset The address of the underlying borrowed asset to be repaid with the liquidation
     * @param user The address of the borrower getting liquidated
     * @param debtToCover The debt amount of borrowed `asset` the liquidator wants to cover
     * @param receiveAToken `true` if the liquidators wants to receive the collateral aTokens, `false` if he wants
     * to receive the underlying collateral asset directly
     *
     */
    function liquidationCall(
        address collateralAsset,
        address debtAsset,
        address user,
        uint256 debtToCover,
        bool receiveAToken
    ) external virtual whenNotPausedOrShutdown {
        address collateralManager = _addressesProvider.getLendingPoolCollateralManager();
        address liquidationFeeTo = _addressesProvider.getLiquidationFeeTo();
        if (liquidationFeeTo == address(0)) {
            liquidationFeeTo = msg.sender;
        }

        //solium-disable-next-line
        (bool success, bytes memory result) = collateralManager.delegatecall(
            abi.encodeCall(
                ILendingPoolCollateralManager.liquidationCall,
                (collateralAsset, debtAsset, user, debtToCover, receiveAToken, liquidationFeeTo)
            )
        );

        require(success, Errors.LP_LIQUIDATION_CALL_FAILED);

        (uint256 returnCode, string memory returnMessage) = abi.decode(result, (uint256, string));

        require(returnCode == 0, string(abi.encodePacked(returnMessage)));
    }

    /**
     * @dev Returns the state and configuration of the reserve
     * @param asset The address of the underlying asset of the reserve
     * @return The state of the reserve
     *
     */
    function getReserveData(address asset) external view returns (DataTypes.ReserveData memory) {
        return _reserves[asset];
    }

    /**
     * @dev Returns the user account data across all the reserves
     * @param user The address of the user
     * @return totalCollateral the total collateral in USD to 8 decimals of the user
     * @return totalDebt the total debt in USD to 8 decimals of the user
     * @return availableBorrows the borrowing power left of the user
     * @return currentLiquidationThreshold the liquidation threshold of the user
     * @return ltv the loan to value of the user
     * @return healthFactor the current health factor of the user
     *
     */
    function getUserAccountData(address user)
        external
        view
        returns (
            uint256 totalCollateral,
            uint256 totalDebt,
            uint256 availableBorrows,
            uint256 currentLiquidationThreshold,
            uint256 ltv,
            uint256 healthFactor
        )
    {
        (totalCollateral, totalDebt, ltv, currentLiquidationThreshold, healthFactor) = GenericLogic
            .calculateUserAccountData(
            user, _reserves, _usersConfig[user], _reservesList, _reservesCount, _addressesProvider.getPriceOracle()
        );

        // The GenericLogic library retains the method name `calculateAvailableBorrowsETH` for
        // historical reasons but returns the amount in usd to 8 decimals
        availableBorrows = GenericLogic.calculateAvailableBorrowsETH(totalCollateral, totalDebt, ltv);
    }

    /**
     * @dev Returns the configuration of the reserve
     * @param asset The address of the underlying asset of the reserve
     * @return The configuration of the reserve
     *
     */
    function getConfiguration(address asset) external view returns (DataTypes.ReserveConfigurationMap memory) {
        return _reserves[asset].configuration;
    }

    /**
     * @dev Returns the configuration of the user across all the reserves
     * @param user The user address
     * @return The configuration of the user
     *
     */
    function getUserConfiguration(address user) external view returns (DataTypes.UserConfigurationMap memory) {
        return _usersConfig[user];
    }

    /**
     * @dev Returns the normalized income per unit of asset
     * @param asset The address of the underlying asset of the reserve
     * @return The reserve's normalized income
     */
    function getReserveNormalizedIncome(address asset) external view virtual returns (uint256) {
        return _reserves[asset].getNormalizedIncome();
    }

    /**
     * @dev Returns the normalized variable debt per unit of asset
     * @param asset The address of the underlying asset of the reserve
     * @return The reserve normalized variable debt
     */
    function getReserveNormalizedVariableDebt(address asset) external view returns (uint256) {
        return _reserves[asset].getNormalizedDebt();
    }

    /**
     * @dev Returns if the LendingPool is paused
     */
    function paused() external view returns (bool) {
        return _paused;
    }

    /// @notice Returns the shutdown state of the pool
    function isShutdown() external view returns (bool) {
        return _shutdown;
    }

    /**
     * @dev Returns the list of the initialized reserves
     *
     */
    function getReservesList() external view returns (address[] memory) {
        address[] memory _activeReserves = new address[](_reservesCount);

        for (uint256 i = 0; i < _reservesCount;) {
            _activeReserves[i] = _reservesList[i];
            unchecked {
                i++;
            }
        }
        return _activeReserves;
    }

    /**
     * @dev Returns the cached LendingPoolAddressesProvider connected to this contract
     *
     */
    function getAddressesProvider() external view returns (IRizLendingPoolAddressesProvider) {
        return _addressesProvider;
    }

    /**
     * @dev Returns the percentage of available liquidity that can be borrowed at once at stable rate
     */
    function MAX_STABLE_RATE_BORROW_SIZE_PERCENT() public view returns (uint256) {
        return _maxStableRateBorrowSizePercent;
    }

    /**
     * @dev Returns the maximum number of reserves supported to be listed in this LendingPool
     */
    function MAX_NUMBER_RESERVES() public view returns (uint256) {
        return _maxNumberOfReserves;
    }

    /**
     * @dev Validates and finalizes an aToken transfer
     * - Only callable by the overlying aToken of the `asset`
     * @param asset The address of the underlying asset of the aToken
     * @param from The user from which the aTokens are transferred
     * @param to The user receiving the aTokens
     * @param amount The amount being transferred/withdrawn
     * @param balanceFromBefore The aToken balance of the `from` user before the transfer
     * @param balanceToBefore The aToken balance of the `to` user before the transfer
     */
    function finalizeTransfer(
        address asset,
        address from,
        address to,
        uint256 amount,
        uint256 balanceFromBefore,
        uint256 balanceToBefore
    ) external whenNotPausedOrShutdown {
        require(msg.sender == _reserves[asset].aTokenAddress, Errors.LP_CALLER_MUST_BE_AN_ATOKEN);

        ValidationLogic.validateTransfer(
            from, _reserves, _usersConfig[from], _reservesList, _reservesCount, _addressesProvider.getPriceOracle()
        );

        uint256 reserveId = _reserves[asset].id;

        if (from != to) {
            if (balanceFromBefore.sub(amount) == 0) {
                DataTypes.UserConfigurationMap storage fromConfig = _usersConfig[from];
                fromConfig.setUsingAsCollateral(reserveId, false);
                emit ReserveUsedAsCollateralDisabled(asset, from);
            }

            if (balanceToBefore == 0 && amount != 0) {
                DataTypes.UserConfigurationMap storage toConfig = _usersConfig[to];
                toConfig.setUsingAsCollateral(reserveId, true);
                emit ReserveUsedAsCollateralEnabled(asset, to);
            }
        }
    }

    /**
     * @dev Initializes a reserve, activating it, assigning an aToken and debt tokens and an
     * interest rate strategy
     * - Only callable by the LendingPoolConfigurator contract
     * @param asset The address of the underlying asset of the reserve
     * @param aTokenAddress The address of the aToken that will be assigned to the reserve
     * @param stableDebtAddress The address of the StableDebtToken that will be assigned to the reserve
     * @param aTokenAddress The address of the VariableDebtToken that will be assigned to the reserve
     * @param interestRateStrategyAddress The address of the interest rate strategy contract
     *
     */
    function initReserve(
        address asset,
        address aTokenAddress,
        address stableDebtAddress,
        address variableDebtAddress,
        address interestRateStrategyAddress
    ) external onlyLendingPoolConfigurator {
        require(Address.isContract(asset), Errors.LP_NOT_CONTRACT);
        _reserves[asset].init(aTokenAddress, stableDebtAddress, variableDebtAddress, interestRateStrategyAddress);
        _addReserveToList(asset);
    }

    /**
     * @dev Updates the address of the interest rate strategy contract
     * - Only callable by the LendingPoolConfigurator contract
     * @param asset The address of the underlying asset of the reserve
     * @param rateStrategyAddress The address of the interest rate strategy contract
     *
     */
    function setReserveInterestRateStrategyAddress(address asset, address rateStrategyAddress)
        external
        onlyLendingPoolConfigurator
    {
        _reserves[asset].interestRateStrategyAddress = rateStrategyAddress;
    }

    /**
     * @dev Sets the configuration bitmap of the reserve as a whole
     * - Only callable by the LendingPoolConfigurator contract
     * @param asset The address of the underlying asset of the reserve
     * @param configuration The new configuration bitmap
     *
     */
    function setConfiguration(address asset, uint256 configuration) external onlyLendingPoolConfigurator {
        _reserves[asset].configuration.data = configuration;
    }

    /**
     * @dev Set the _pause state of a reserve
     * - Only callable by the LendingPoolConfigurator contract
     * @param val `true` to pause the reserve, `false` to un-pause it
     */
    function setPause(bool val) external onlyLendingPoolConfigurator {
        _paused = val;
        if (_paused) {
            emit Paused();
        } else {
            emit Unpaused();
        }
    }

    /// @notice Shuts down the lending pool
    /// @notice Warning: this operation is irreversible, and the lending pool will not be able to operate anymore except
    /// for withdrawal
    /// @param badDebt The amount of bad debt to be recorded
    function shutdown(uint256 badDebt) external onlyLendingPoolConfigurator {
        if (_shutdown) {
            return;
        }
        _shutdown = true;
        // Get bad debt manager
        address badDebtManager = IRizLendingPoolAddressesProvider(_addressesProvider).getBadDebtManager();
        BadDebtManager(badDebtManager).snapshot(badDebt);
    }

    struct ExecuteBorrowParams {
        address asset;
        address user;
        address onBehalfOf;
        uint256 amount;
        uint256 interestRateMode;
        address aTokenAddress;
        uint16 referralCode;
        bool releaseUnderlying;
    }

    function _executeBorrow(ExecuteBorrowParams memory vars) internal {
        DataTypes.ReserveData storage reserve = _reserves[vars.asset];
        DataTypes.UserConfigurationMap storage userConfig = _usersConfig[vars.onBehalfOf];

        address oracle = _addressesProvider.getPriceOracle();

        uint256 amountInETH = IPriceOracleGetter(oracle).getAssetPrice(vars.asset).mul(vars.amount).div(
            10 ** reserve.configuration.getDecimals()
        );

        ValidationLogic.validateBorrow(
            vars.asset,
            reserve,
            vars.onBehalfOf,
            vars.amount,
            amountInETH,
            vars.interestRateMode,
            _maxStableRateBorrowSizePercent,
            _reserves,
            userConfig,
            _reservesList,
            _reservesCount,
            oracle
        );

        reserve.updateState();
        /// @custom:borrow-and-supply-caps
        ValidationLogic.validateBorrowCap(reserve, vars.amount);
        uint256 currentStableRate = 0;

        bool isFirstBorrowing = false;
        if (DataTypes.InterestRateMode(vars.interestRateMode) == DataTypes.InterestRateMode.STABLE) {
            currentStableRate = reserve.currentStableBorrowRate;

            isFirstBorrowing = IStableDebtToken(reserve.stableDebtTokenAddress).mint(
                vars.user, vars.onBehalfOf, vars.amount, currentStableRate
            );
        } else {
            isFirstBorrowing = IVariableDebtToken(reserve.variableDebtTokenAddress).mint(
                vars.user, vars.onBehalfOf, vars.amount, reserve.variableBorrowIndex
            );
        }

        if (isFirstBorrowing) {
            userConfig.setBorrowing(reserve.id, true);
        }

        reserve.updateInterestRates(vars.asset, vars.aTokenAddress, 0, vars.releaseUnderlying ? vars.amount : 0);

        if (vars.releaseUnderlying) {
            IAToken(vars.aTokenAddress).transferUnderlyingTo(vars.user, vars.amount);
        }

        emit Borrow(
            vars.asset,
            vars.user,
            vars.onBehalfOf,
            vars.amount,
            vars.interestRateMode,
            DataTypes.InterestRateMode(vars.interestRateMode) == DataTypes.InterestRateMode.STABLE
                ? currentStableRate
                : reserve.currentVariableBorrowRate,
            vars.referralCode
        );
    }

    function _addReserveToList(address asset) internal {
        uint256 reservesCount = _reservesCount;

        require(reservesCount < _maxNumberOfReserves, Errors.LP_NO_MORE_RESERVES_ALLOWED);

        bool reserveAlreadyAdded = _reserves[asset].id != 0 || _reservesList[0] == asset;

        if (!reserveAlreadyAdded) {
            _reserves[asset].id = uint8(reservesCount);
            _reservesList[reservesCount] = asset;

            _reservesCount = reservesCount + 1;
        }
    }
}
