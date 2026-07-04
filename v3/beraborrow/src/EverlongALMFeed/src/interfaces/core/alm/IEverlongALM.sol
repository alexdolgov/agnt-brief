// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import {IERC20, SafeERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IPriceFeed} from "src/interfaces/core/oracles/IPriceFeed.sol";
import {IALMGetters} from "src/core/alm/getters/ALMGetters.sol";
import {SwappersLib} from "src/libraries/SwappersLib.sol";

interface IEverlongALM {
    /**
     * @param pool Underlying Uniswap V3 pool address
     * @param manager Address of manager who can set parameters and call rebalance
     * @param rebalanceDelegate Address of an additional wallet that can call rebalance
     * @param maxTotalSupply Cap on the total supply of vault shares
     * @param wideRangeWeight Proportion of liquidity in wide range multiplied by 1e6
     * @param wideThreshold Half of the wide order width in ticks
     * @param baseThreshold Half of the base order width in ticks
     * @param limitThreshold Limit order width in ticks
     * @param period Can only rebalance if this length of time (in seconds) has passed
     * @param minTickMove Can only rebalance if price has moved at least this much
     * @param maxTwapDeviation Max deviation (in ticks) from the TWAP during rebalance or deposit
     * @param twapDuration TWAP duration in seconds for maxTwapDeviation check
     * @param protocolFee % Fee charged to cover protocol costs, in BP
     * @param name name of the vault to be created
     * @param symbol symbol of the vault to be created
     * @param debtRegulator Address of the debt regulator contract
     */
    struct VaultParams {
        address owner;
        address pool;
        address priceFeed;
        address manager;
        address rebalanceDelegate;
        address depositDelegate;
        uint24 protocolFee; // In 1e6
        uint256 maxTotalSupply;
        uint24 wideRangeWeight; // In 1e6
        int24 wideThreshold;
        int24 baseThreshold;
        int24 limitThreshold;
        uint32 period;
        int24 minTickMove;
        int24 maxTwapDeviation;
        uint32 twapDuration;
        string name;
        string symbol;
        uint24 swapDeviationThreshold; // In 1e6
        uint24 ratioDeviationThreshold; // In 1e6
        uint24 rebalanceDelegateCooldown; // In seconds
        uint24 maxRatioDeviationThresholdIncrease; // In 1e6
        address[] initialWhitelistedSwappers;
        address getters;
        address leverageRouter;
        address debtRegulator; // Same as DLV keeper for 'increase/decreaseLeverage'
    }

    struct EverlongALMStorage {
        address owner;
        IUniswapV3Pool pool;
        IPriceFeed priceFeed;
        IERC20 token0;
        IERC20 token1;
        address manager;
        address pendingManager;
        address rebalanceDelegate;
        address depositDelegate;
        uint256 maxTotalSupply;
        uint128 accruedProtocolFees0;
        uint128 accruedProtocolFees1;
        uint32 period;
        uint24 protocolFee;
        uint24 pendingProtocolFee;
        uint24 wideRangeWeight;
        int24 baseThreshold;
        int24 limitThreshold;
        int24 wideThreshold;
        int24 minTickMove;
        int24 tickSpacing;
        int24 maxTwapDeviation;
        uint32 twapDuration;
        int24 wideLower;
        int24 wideUpper;
        int24 baseLower;
        int24 baseUpper;
        int24 limitLower;
        int24 limitUpper;
        int24 lastTick;
        uint40 lastTimestamp;
        int24 maxTick;
        uint24 swapDeviationThreshold; // In 1e6
        uint24 ratioDeviationThreshold; // In 1e6
        uint24 rebalanceDelegateCooldown; // In seconds
        uint40 lastRatioDeviationThresholdUpdateTimestamp;
        uint24 maxRatioDeviationThresholdIncrease; // In 1e6
        SwappersLib.SwapperData swapperData;
        IALMGetters getters;
        address leverageRouter;
        address debtRegulator; // Same as DLV keeper for 'increase/decreaseLeverage'
        uint48 lastEmergencyBurnTimestamp;
        uint48 emergencyBurnCooldown;
    }

    struct BurnContext {
        uint256 wideAmount0;
        uint256 wideAmount1;
        uint256 baseAmount0;
        uint256 baseAmount1;
        uint256 limitAmount0;
        uint256 limitAmount1;
    }

    struct ExternalRebalanceParams {
        bool isZeroForOne;
        uint256 sentAmount;
        address swapper;
        bytes payload;
        uint256 minRebalanceOut;
        bool newCenterTick;
    }

    function deposit(
        uint256,
        uint256,
        uint256,
        uint256,
        address
    ) external returns (uint256, uint256, uint256);

    function withdraw(
        uint256,
        uint256,
        uint256,
        address
    ) external returns (uint256, uint256);

    function depositSingleSided(
        uint256 amountIn,
        bool isToken0,
        uint256 almSharePrice
    ) external returns (uint256 shares);

    function withdrawSingleSided(
        uint256 sharesAmount,
        bool isToken0,
        uint256 almSharePrice
    ) external returns (uint256);

    function extSloads(
        bytes32[] memory slots
    ) external view returns (bytes32[] memory values);

    function getTotalAmounts() external view returns (uint256, uint256);

    function getBalance0() external view returns (uint256);

    function getBalance1() external view returns (uint256);

    function rebalance() external;

    function activeRebalance(
        ExternalRebalanceParams memory swapParams
    ) external;

    function regulateDebt() external;

    function setLeverageRouter(address setLeverageRouter) external;

    function setDebtRegulator(address setDebtRegulator) external;

    // state variables
    function pool() external view returns (IUniswapV3Pool);

    function protocolFee() external view returns (uint24);

    function getPositions() external view returns (int24[2][3] memory);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function totalSupply() external view returns (uint256);

    function balanceOf(address) external view returns (uint256);

    event Deposit(
        address indexed sender,
        address indexed to,
        uint256 shares,
        uint256 amount0,
        uint256 amount1
    );
    event DepositSingleSided(
        uint256 shares,
        uint256 amount
    );
    event Withdraw(
        address indexed sender,
        address indexed to,
        uint256 shares,
        uint256 amount0,
        uint256 amount1
    );
    event WithdrawSingleSided(uint256 shares, uint256 amount);
    event CollectFees(
        uint256 feesToVault0,
        uint256 feesToVault1,
        uint256 feesToProtocol0,
        uint256 feesToProtocol1
    );
    event Snapshot(
        int24 tick,
        uint256 totalAmount0,
        uint256 totalAmount1,
        uint256 totalSupply
    );
    event CollectProtocol(uint256 amount0, uint256 amount1);

    event UpdateManager(address manager);
    event UpdatePendingManager(address manager);
    event UpdateRebalanceDelegate(address delegate);
    event UpdateDepositDelegate(address delegate);
    event UpdateProtocolFee(uint24 protocolFee);
    event UpdateBaseThreshold(int24 threshold);
    event UpdateLimitThreshold(int24 threshold);
    event UpdateWideRangeWeight(uint24 weight);
    event UpdateWideThreshold(int24 threshold);
    event UpdatePeriod(uint32 period);
    event UpdateMinTickMove(int24 minTickMove);
    event UpdateMaxTwapDeviation(int24 maxTwapDeviation);
    event UpdateTwapDuration(uint32 twapDuration);
    event UpdateMaxTotalSupply(uint256 maxTotalSupply);
    event UpdateSwapDeviationThreshold(uint24 swapDeviationThreshold);
    event UpdateRatioDeviationThreshold(uint24 ratioDeviationThreshold);
    event UpdateRebalanceDelegateCooldown(uint24 rebalanceDelegateCooldown);
    event UpdateMaxRatioDeviationThresholdIncrease(
        uint24 maxRatioDeviationThresholdIncrease
    );
    event UpdateGetters(address getters);
    event UpdateLeverageRouter(address leverageRouter);
    event UpdateDebtRegulator(address debtRegulator);
    event Swap(bool isZeroForOne, uint256 amountIn, uint256 amountOut, int24 tick, int24 newTick);
    event UpdateEmergencyBurnCooldown(uint48 emergencyBurnCooldown);
    event FullEmergencyBurn();

    // Errors
    error EV_ZeroTotalSupply();
    error EV_ZeroAddress();
    error EV_WideRangeWeight();
    error EV_MinTickMove();
    error EV_MaxTwapDeviation();
    error EV_TwapDuration();
    error EV_ThresholdsCannotBeSame();
    error EV_ThresholdNotPositive();
    error EV_ThresholdNotMultipleOfTickSpacing();
    error EV_NotDepositDelegate();
    error EV_ZeroDepositAmount();
    error EV_InvalidRecipient();
    error EV_ZeroShares();
    error EV_Amount0Min();
    error EV_Amount1Min();
    error EV_MaxTotalSupply();
    error EV_NotManagerOrRebalanceDelegate();
    error EV_NotPool();
    error EV_NotGovernance();
    error EV_ProtocolFee();
    error EV_ProtocolFeeTooHigh();
    error EV_NotManager();
    error EV_SweepToken();
    error EV_NotPendingManager();
    error EV_InsufficientBalance(uint256 available, uint256 required);
    error EV_SwapDeviationThreshold();
    error EV_RatioDeviationThreshold();
    error EV_RebalanceDelegateCooldown();
    error EV_MaxRatioDeviationThresholdIncrease();
    error EV_RatioDeviationThresholdIncreaseExceeded(
        uint24 proposedThreshold,
        uint256 maxAllowedThreshold
    );
    error EV_NotLeverageRouter();
    error EV_NotDebtRegulator();
    error EV_ZeroCross();
    error EV_ZeroSentAmount();
}
