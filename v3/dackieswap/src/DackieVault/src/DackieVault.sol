// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import "./interfaces/IDackieVault.sol";
import "./interfaces/IUniswapV3.sol";
import "./interfaces/IWETH.sol";

interface IDackieVaultRewardSync {
    function syncFromVault(address user) external;
}

/**
 * @title DackieVault
 * @notice A vault for managing full-range V3 liquidity positions on WETH/DACKIE pair
 * with automatic fee collection and conversion to cbBTC
 */
contract DackieVault is IDackieVault, Ownable, ReentrancyGuard, Pausable, IERC721Receiver {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                               CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice WETH token address on Base
    address public constant WETH = 0x4200000000000000000000000000000000000006;
    /// @notice DACKIE token address on Base
    address public constant DACKIE = 0x73326b4d0225c429bed050c11C4422d91470AaF4;
    /// @notice cbBTC token address on Base
    address public constant cbBTC = 0xcbB7C0000aB88B473b1f5aFd9ef808440eed33Bf;
    /// @notice V3 fee tier (1%)
    uint24 public constant FEE_TIER = 10000;
    /// @notice Precision for fee accumulator calculations
    uint256 public constant PRECISION = 1e18;
    /// @notice Maximum treasury fee in basis points (50%)
    uint16 public constant MAX_TREASURY_FEE_BPS = 5000;
    /// @notice Maximum lock duration (~2 years)
    uint32 public constant MAX_LOCK_DURATION = 730 days;

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice V3 Position Manager
    INonfungiblePositionManager public immutable positionManager;
    /// @notice V3 Swap Router
    ISwapRouter public swapRouter;
    /// @notice V3 Factory
    IUniswapV3Factory public immutable factory;

    /// @notice Token ID of the shared V3 position (0 if no position exists)
    uint256 public tokenId;
    /// @notice Total liquidity in the shared position
    uint128 public totalLiquidity;

    /// @notice User position information including normal and locked liquidity
    struct UserPosition {
        uint128 normalLiquidity; // withdrawable anytime
        uint128 lockedLiquidity; // withdrawable only after lockedUntil
        uint64 lockedUntil; // unix timestamp when locked liquidity becomes withdrawable
        uint256 feeDebt0; // for per-user fee accounting
        uint256 feeDebt1; // for per-user fee accounting
        uint256 rewardDebt; // for DACKIE reward accounting
        uint256 lockMultiplier; // Q1e18 multiplier applied to locked liquidity (default 1e18)
    }

    /// @notice Track user positions
    mapping(address => UserPosition) private userPositions;

    /// @notice Fee accumulator for token0 (per unit of liquidity)
    uint256 public accFee0PerLiquidity;
    /// @notice Fee accumulator for token1 (per unit of liquidity)
    uint256 public accFee1PerLiquidity;

    /// @notice Swap path for WETH to cbBTC
    bytes public pathWETHToCbBTC;
    /// @notice Swap path for DACKIE to cbBTC
    bytes public pathDACKIEToCbBTC;

    /// @notice Tick spacing for the fee tier
    int24 public immutable tickSpacing;
    /// @notice Lower tick for full-range position
    int24 public immutable tickLower;
    /// @notice Upper tick for full-range position
    int24 public immutable tickUpper;

    /// @notice Whether token0 is WETH (true) or DACKIE (false)
    bool public immutable isWETHToken0;

    /// @notice Treasury address to receive fee split
    address public treasuryAddress;
    /// @notice Treasury fee in basis points (e.g., 2000 = 20%)
    uint16 public treasuryFeeBps;

    /*//////////////////////////////////////////////////////////////
                        DACKIE REWARD STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Latest reward period number
    uint256 public latestPeriodNumber;
    /// @notice Latest reward period start time
    uint256 public latestPeriodStartTime;
    /// @notice Latest reward period end time
    uint256 public latestPeriodEndTime;
    /// @notice DACKIE emission rate per second for current period
    uint256 public latestPeriodDACKIEPerSecond;
    /// @notice Accumulated DACKIE rewards per unit of reward weight
    uint256 public accDACKIERewardPerLiquidity;

    /// @notice Total reward weight across all users (normal + locked with multiplier)
    uint256 public totalRewardWeight;

    /// @notice Receiver contract for DACKIE harvesting
    address public receiver;
    /// @notice Reward contract to sync user weights on LP changes
    address public rewardContract;

    /// @notice Precision for reward calculations
    uint256 public constant REWARD_PRECISION = 1e18;
    /// @notice Max lock multiplier (5.0x)
    uint256 public constant MAX_LOCK_MULTIPLIER = 5e18;
    /// @notice Minimum reward duration
    uint256 public constant MIN_REWARD_DURATION = 1 days;
    /// @notice Maximum reward duration
    uint256 public constant MAX_REWARD_DURATION = 30 days;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initialize the DackieVault
     * @param _positionManager Address of V3 Position Manager
     * @param _swapRouter Address of V3 Swap Router
     * @param _treasuryAddress Address to receive treasury fee split
     * @param _receiver Address of the receiver contract for DACKIE rewards
     */
    constructor(
        address _positionManager,
        address _swapRouter,
        address _treasuryAddress,
        address _receiver
    ) Ownable(msg.sender) {
        if (_positionManager == address(0) || _swapRouter == address(0)) {
            revert InvalidRouter();
        }

        positionManager = INonfungiblePositionManager(_positionManager);
        swapRouter = ISwapRouter(_swapRouter);
        factory = IUniswapV3Factory(positionManager.factory());

        // Get tick spacing for the fee tier
        tickSpacing = factory.feeAmountTickSpacing(FEE_TIER);

        // Ensure we have a valid tick spacing
        if (tickSpacing == 0) {
            tickSpacing = 200; // Default for 1% fee tier
        }

        // Calculate full-range ticks
        tickLower = (TickMath.MIN_TICK / tickSpacing) * tickSpacing;
        tickUpper = (TickMath.MAX_TICK / tickSpacing) * tickSpacing;

        // Determine token order
        isWETHToken0 = WETH < DACKIE;

        // Set default swap paths (direct routes for Base)
        // WETH -> cbBTC (assuming 0.3% fee pool exists)
        pathWETHToCbBTC = abi.encodePacked(WETH, uint24(500), cbBTC);
        // DACKIE -> WETH -> cbBTC (via 1% and 0.3% pools)
        pathDACKIEToCbBTC = abi.encodePacked(DACKIE, FEE_TIER, WETH, uint24(500), cbBTC);

        // Set treasury configuration
        if (_treasuryAddress == address(0)) {
            revert InvalidRouter(); // Reuse existing error for simplicity
        }
        treasuryAddress = _treasuryAddress;
        treasuryFeeBps = 2000; // Default 20%

        // Set receiver address
        if (_receiver == address(0)) {
            revert InvalidReceiver();
        }
        receiver = _receiver;

        // Approve tokens for position manager and swap router
        IERC20(WETH).approve(_positionManager, type(uint256).max);
        IERC20(DACKIE).approve(_positionManager, type(uint256).max);
        IERC20(WETH).approve(_swapRouter, type(uint256).max);
        IERC20(DACKIE).approve(_swapRouter, type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlyReceiver() {
        if (msg.sender != receiver) revert InvalidReceiver();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            MAIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IDackieVault
     */
    function deposit(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (amountWETHDesired == 0 || amountDACKIEDesired == 0) revert ZeroAmount();

        // Transfer tokens from user
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), amountWETHDesired);
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amountDACKIEDesired);

        (uint256 actualWETH, uint256 actualDACKIE) = _depositInternalNoRefund(
            amountWETHDesired,
            amountDACKIEDesired,
            amountWETHMin,
            amountDACKIEMin,
            deadline,
            false
        );

        // Refund unused tokens for regular deposit
        uint256 refundWETH = amountWETHDesired - actualWETH;
        uint256 refundDACKIE = amountDACKIEDesired - actualDACKIE;

        if (refundWETH > 0) {
            IERC20(WETH).safeTransfer(msg.sender, refundWETH);
        }
        if (refundDACKIE > 0) {
            IERC20(DACKIE).safeTransfer(msg.sender, refundDACKIE);
        }
        _syncReward(msg.sender);
    }

    /**
     * @notice Deposit ETH and DACKIE tokens to the vault (ETH version)
     * @param amountDACKIEDesired Amount of DACKIE tokens desired
     * @param amountETHMin Minimum ETH amount to use
     * @param amountDACKIEMin Minimum DACKIE amount to use
     * @param deadline Transaction deadline
     */
    function depositETH(
        uint256 amountDACKIEDesired,
        uint256 amountETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external payable nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (msg.value == 0 || amountDACKIEDesired == 0) revert ZeroAmount();

        // Wrap ETH to WETH
        _wrapETH(msg.value);

        // Transfer DACKIE from user
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amountDACKIEDesired);

        // Call the internal deposit function (no refunds in internal)
        (uint256 actualWETH, uint256 actualDACKIE) = _depositInternalNoRefund(
            msg.value,
            amountDACKIEDesired,
            amountETHMin,
            amountDACKIEMin,
            deadline,
            false
        );

        // Refund excess ETH if any
        uint256 excessETH = msg.value - actualWETH;
        if (excessETH > 0) {
            // Unwrap excess WETH to ETH and send to user
            IWETH(WETH).withdraw(excessETH);
            (bool success, ) = payable(msg.sender).call{ value: excessETH }("");
            require(success, "ETH refund failed");
        }

        // Refund excess DACKIE if any
        uint256 excessDACKIE = amountDACKIEDesired - actualDACKIE;
        if (excessDACKIE > 0) {
            IERC20(DACKIE).safeTransfer(msg.sender, excessDACKIE);
        }
        _syncReward(msg.sender);
    }

    /**
     * @notice Internal deposit function shared by deposit and depositETH
     * @param amountWETHDesired Amount of WETH tokens desired
     * @param amountDACKIEDesired Amount of DACKIE tokens desired
     * @param amountWETHMin Minimum WETH amount to use
     * @param amountDACKIEMin Minimum DACKIE amount to use
     * @param deadline Transaction deadline
     * @param isLocked Whether this is a locked deposit
     */
    function _depositInternalNoRefund(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        bool isLocked
    ) internal returns (uint256 actualWETH, uint256 actualDACKIE) {
        // Update global fees and rewards before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        uint128 liquidityAdded;
        uint256 amount0;
        uint256 amount1;

        if (tokenId == 0) {
            // First deposit - mint new position
            (uint256 amount0Desired, uint256 amount1Desired) = isWETHToken0
                ? (amountWETHDesired, amountDACKIEDesired)
                : (amountDACKIEDesired, amountWETHDesired);

            (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
                ? (amountWETHMin, amountDACKIEMin)
                : (amountDACKIEMin, amountWETHMin);

            (tokenId, liquidityAdded, amount0, amount1) = positionManager.mint(
                INonfungiblePositionManager.MintParams({
                    token0: isWETHToken0 ? WETH : DACKIE,
                    token1: isWETHToken0 ? DACKIE : WETH,
                    fee: FEE_TIER,
                    tickLower: tickLower,
                    tickUpper: tickUpper,
                    amount0Desired: amount0Desired,
                    amount1Desired: amount1Desired,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    recipient: address(this),
                    deadline: deadline
                })
            );
        } else {
            // Add to existing position
            (uint256 amount0Desired, uint256 amount1Desired) = isWETHToken0
                ? (amountWETHDesired, amountDACKIEDesired)
                : (amountDACKIEDesired, amountWETHDesired);

            (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
                ? (amountWETHMin, amountDACKIEMin)
                : (amountDACKIEMin, amountWETHMin);

            (liquidityAdded, amount0, amount1) = positionManager.increaseLiquidity(
                INonfungiblePositionManager.IncreaseLiquidityParams({
                    tokenId: tokenId,
                    amount0Desired: amount0Desired,
                    amount1Desired: amount1Desired,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    deadline: deadline
                })
            );
        }

        // Update user and total liquidity
        totalLiquidity += liquidityAdded;
        if (isLocked) {
            userPositions[msg.sender].lockedLiquidity += liquidityAdded;
        } else {
            userPositions[msg.sender].normalLiquidity += liquidityAdded;
        }

        // Update user fee debt to prevent fee crowding
        userPositions[msg.sender].feeDebt0 += Math.mulDiv(uint256(liquidityAdded), accFee0PerLiquidity, PRECISION);
        userPositions[msg.sender].feeDebt1 += Math.mulDiv(uint256(liquidityAdded), accFee1PerLiquidity, PRECISION);

        // Update reward weights and debt based on locked or normal
        if (isLocked) {
            // For locked path, weight is updated in _depositLockedInternal; do nothing here
        } else {
            // Normal deposit: add 1x weight
            uint256 weightDelta = liquidityAdded;
            totalRewardWeight += weightDelta;
            _updateUserRewardDebt(msg.sender, int256(weightDelta));
        }

        // Calculate actual amounts used
        (actualWETH, actualDACKIE) = isWETHToken0 ? (amount0, amount1) : (amount1, amount0);

        emit Deposit(msg.sender, liquidityAdded, actualWETH, actualDACKIE);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function withdraw(
        uint256 liquidityToRemove,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (liquidityToRemove == 0) revert ZeroAmount();
        // Auto-unlock expired liquidity
        _autoUnlockExpired(msg.sender);

        if (liquidityToRemove > userPositions[msg.sender].normalLiquidity) revert InsufficientNormalLiquidity();

        // Update global fees and rewards before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        // Auto-collect and convert pending fees to cbBTC before withdrawal
        (uint256 pendingWETH, uint256 pendingDACKIE) = pendingFees(msg.sender);
        if (pendingWETH > 0 || pendingDACKIE > 0) {
            _collectAndConvertFeesInternal(msg.sender, pendingWETH, pendingDACKIE, deadline);
        }

        // Decrease liquidity from position
        (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
            ? (amountWETHMin, amountDACKIEMin)
            : (amountDACKIEMin, amountWETHMin);

        (uint256 amount0, uint256 amount1) = positionManager.decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: uint128(liquidityToRemove),
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: deadline
            })
        );

        // Collect the principal amounts
        (uint256 collected0, uint256 collected1) = positionManager.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: uint128(amount0),
                amount1Max: uint128(amount1)
            })
        );

        // Update state
        totalLiquidity -= uint128(liquidityToRemove);
        userPositions[msg.sender].normalLiquidity -= uint128(liquidityToRemove);

        // Update user fee debt
        uint256 feeDebtReduction0 = Math.mulDiv(liquidityToRemove, accFee0PerLiquidity, PRECISION);
        uint256 feeDebtReduction1 = Math.mulDiv(liquidityToRemove, accFee1PerLiquidity, PRECISION);

        // Handle underflow protection
        if (userPositions[msg.sender].feeDebt0 > feeDebtReduction0) {
            userPositions[msg.sender].feeDebt0 -= feeDebtReduction0;
        } else {
            userPositions[msg.sender].feeDebt0 = 0;
        }

        if (userPositions[msg.sender].feeDebt1 > feeDebtReduction1) {
            userPositions[msg.sender].feeDebt1 -= feeDebtReduction1;
        } else {
            userPositions[msg.sender].feeDebt1 = 0;
        }

        // Update reward weight and reward debt after liquidity removal (normal = 1x)
        if (liquidityToRemove > 0) {
            uint256 weightDeltaNeg = liquidityToRemove; // 1x
            if (totalRewardWeight >= weightDeltaNeg) totalRewardWeight -= weightDeltaNeg;
            else totalRewardWeight = 0;
            _updateUserRewardDebt(msg.sender, -int256(weightDeltaNeg));
        }

        // Transfer principal back to user
        (uint256 withdrawnWETH, uint256 withdrawnDACKIE) = isWETHToken0
            ? (collected0, collected1)
            : (collected1, collected0);

        // Unwrap WETH to ETH and send to user
        _unwrapAndSendETH(msg.sender, withdrawnWETH);
        IERC20(DACKIE).safeTransfer(msg.sender, withdrawnDACKIE);

        emit Withdraw(msg.sender, uint128(liquidityToRemove), withdrawnWETH, withdrawnDACKIE);
        _syncReward(msg.sender);
    }

    /**
     * @notice Emergency withdraw without fee collection (faster, gas-efficient)
     * @param liquidityToRemove Amount of liquidity to remove
     * @param amountWETHMin Minimum WETH to receive
     * @param amountDACKIEMin Minimum DACKIE to receive
     * @param deadline Transaction deadline
     */
    function withdrawEmergency(
        uint256 liquidityToRemove,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external nonReentrant {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (liquidityToRemove == 0) revert ZeroAmount();
        // Auto-unlock expired liquidity
        _autoUnlockExpired(msg.sender);

        if (liquidityToRemove > userPositions[msg.sender].normalLiquidity) revert InsufficientNormalLiquidity();

        // Update global fees before any state changes (but don't collect)
        _updateGlobalFees();
        _updateDACKIERewards();

        // Decrease liquidity from position
        (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
            ? (amountWETHMin, amountDACKIEMin)
            : (amountDACKIEMin, amountWETHMin);

        (uint256 amount0, uint256 amount1) = positionManager.decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: uint128(liquidityToRemove),
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: deadline
            })
        );

        // Collect the principal amounts
        (uint256 collected0, uint256 collected1) = positionManager.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: uint128(amount0),
                amount1Max: uint128(amount1)
            })
        );

        // Update state
        totalLiquidity -= uint128(liquidityToRemove);
        userPositions[msg.sender].normalLiquidity -= uint128(liquidityToRemove);

        // Update user fee debt
        uint256 feeDebtReduction0 = Math.mulDiv(liquidityToRemove, accFee0PerLiquidity, PRECISION);
        uint256 feeDebtReduction1 = Math.mulDiv(liquidityToRemove, accFee1PerLiquidity, PRECISION);

        // Handle underflow protection
        if (userPositions[msg.sender].feeDebt0 > feeDebtReduction0) {
            userPositions[msg.sender].feeDebt0 -= feeDebtReduction0;
        } else {
            userPositions[msg.sender].feeDebt0 = 0;
        }

        if (userPositions[msg.sender].feeDebt1 > feeDebtReduction1) {
            userPositions[msg.sender].feeDebt1 -= feeDebtReduction1;
        } else {
            userPositions[msg.sender].feeDebt1 = 0;
        }

        // Update reward weight and reward debt after liquidity removal (normal = 1x)
        if (liquidityToRemove > 0) {
            uint256 weightDeltaNeg = liquidityToRemove; // 1x
            if (totalRewardWeight >= weightDeltaNeg) totalRewardWeight -= weightDeltaNeg;
            else totalRewardWeight = 0;
            _updateUserRewardDebt(msg.sender, -int256(weightDeltaNeg));
        }

        // Transfer principal back to user
        (uint256 withdrawnWETH, uint256 withdrawnDACKIE) = isWETHToken0
            ? (collected0, collected1)
            : (collected1, collected0);

        // Unwrap WETH to ETH and send to user
        _unwrapAndSendETH(msg.sender, withdrawnWETH);
        IERC20(DACKIE).safeTransfer(msg.sender, withdrawnDACKIE);

        emit Withdraw(msg.sender, uint128(liquidityToRemove), withdrawnWETH, withdrawnDACKIE);
        _syncReward(msg.sender);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function collectAndConvertFees(
        uint256 minWETH,
        uint256 minDACKIE,
        uint256 minCbBTC,
        uint256 deadline
    ) external nonReentrant whenNotPaused returns (uint256 cbBTCSentToUser, uint256 cbBTCSentToTreasury) {
        if (block.timestamp > deadline) revert DeadlineExpired();

        // Ensure expired locks are unlocked before reward/fee calculations
        _autoUnlockExpired(msg.sender);

        // Update global fees and rewards to get latest
        _updateGlobalFees();
        _updateDACKIERewards();

        // Try to distribute DACKIE rewards (with rollback protection)
        _distributeDACKIEReward(msg.sender);

        // Calculate user's pending fees
        (uint256 pendingWETH, uint256 pendingDACKIE) = pendingFees(msg.sender);

        // Check minimum fee requirements
        if (minWETH > 0 && pendingWETH < minWETH) revert InsufficientFees();
        if (minDACKIE > 0 && pendingDACKIE < minDACKIE) revert InsufficientFees();

        if (pendingWETH == 0 && pendingDACKIE == 0) {
            return (0, 0);
        }

        // Update user fee debt
        uint128 userLiq = userPositions[msg.sender].normalLiquidity + userPositions[msg.sender].lockedLiquidity;
        userPositions[msg.sender].feeDebt0 = (userLiq * accFee0PerLiquidity) / PRECISION;
        userPositions[msg.sender].feeDebt1 = (userLiq * accFee1PerLiquidity) / PRECISION;

        // Get actual fee amounts based on token order
        (uint256 feeWETH, uint256 feeDACKIE) = isWETHToken0
            ? (pendingWETH, pendingDACKIE)
            : (pendingDACKIE, pendingWETH);

        uint256 totalCbBTC = 0;

        // Swap WETH fees to cbBTC
        if (feeWETH > 0) {
            totalCbBTC += _swapToCbBTC(WETH, feeWETH, pathWETHToCbBTC, deadline);
        }

        // Swap DACKIE fees to cbBTC
        if (feeDACKIE > 0) {
            totalCbBTC += _swapToCbBTC(DACKIE, feeDACKIE, pathDACKIEToCbBTC, deadline);
        }

        if (totalCbBTC < minCbBTC) revert SlippageExceeded();

        // Calculate treasury split
        cbBTCSentToTreasury = (treasuryAddress != address(0) && treasuryFeeBps > 0)
            ? (totalCbBTC * treasuryFeeBps) / 10000
            : 0;
        cbBTCSentToUser = totalCbBTC - cbBTCSentToTreasury;

        // Transfer cbBTC to treasury and user
        if (cbBTCSentToTreasury > 0) {
            IERC20(cbBTC).safeTransfer(treasuryAddress, cbBTCSentToTreasury);
        }
        if (cbBTCSentToUser > 0) {
            IERC20(cbBTC).safeTransfer(msg.sender, cbBTCSentToUser);
        }

        emit FeesCollected(msg.sender, feeWETH, feeDACKIE);
        emit FeesConverted(msg.sender, feeWETH, feeDACKIE, cbBTCSentToUser, cbBTCSentToTreasury);

        return (cbBTCSentToUser, cbBTCSentToTreasury);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function depositLocked(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        uint32 lockDuration
    ) external nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (amountWETHDesired == 0 || amountDACKIEDesired == 0) revert ZeroAmount();

        // Calculate lock expiry
        uint64 newLockedUntil = _calculateLockExpiry(userPositions[msg.sender].lockedUntil, lockDuration);

        // Transfer tokens from user
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), amountWETHDesired);
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amountDACKIEDesired);

        (uint256 actualWETH, uint256 actualDACKIE) = _depositLockedInternal(
            amountWETHDesired,
            amountDACKIEDesired,
            amountWETHMin,
            amountDACKIEMin,
            deadline,
            newLockedUntil
        );

        // Refund unused tokens for regular locked deposit
        uint256 refundWETH = amountWETHDesired - actualWETH;
        uint256 refundDACKIE = amountDACKIEDesired - actualDACKIE;

        if (refundWETH > 0) {
            IERC20(WETH).safeTransfer(msg.sender, refundWETH);
        }
        if (refundDACKIE > 0) {
            IERC20(DACKIE).safeTransfer(msg.sender, refundDACKIE);
        }
        _syncReward(msg.sender);
    }

    /**
     * @notice Deposit ETH and DACKIE tokens to the vault with lock (ETH version)
     * @param amountDACKIEDesired Amount of DACKIE tokens desired
     * @param amountETHMin Minimum ETH amount to use
     * @param amountDACKIEMin Minimum DACKIE amount to use
     * @param deadline Transaction deadline
     * @param lockDuration Lock duration in seconds
     */
    function depositLockedETH(
        uint256 amountDACKIEDesired,
        uint256 amountETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        uint32 lockDuration
    ) external payable nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (msg.value == 0 || amountDACKIEDesired == 0) revert ZeroAmount();

        // Calculate lock expiry
        uint64 newLockedUntil = _calculateLockExpiry(userPositions[msg.sender].lockedUntil, lockDuration);

        // Wrap ETH to WETH
        _wrapETH(msg.value);

        // Transfer DACKIE from user
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amountDACKIEDesired);

        (uint256 actualWETH, uint256 actualDACKIE) = _depositLockedInternal(
            msg.value,
            amountDACKIEDesired,
            amountETHMin,
            amountDACKIEMin,
            deadline,
            newLockedUntil
        );

        // Refund excess ETH if any
        uint256 excessETH = msg.value - actualWETH;
        if (excessETH > 0) {
            // Unwrap excess WETH to ETH and send to user
            IWETH(WETH).withdraw(excessETH);
            (bool success, ) = payable(msg.sender).call{ value: excessETH }("");
            require(success, "ETH refund failed");
        }

        // Refund excess DACKIE if any
        uint256 excessDACKIE = amountDACKIEDesired - actualDACKIE;
        if (excessDACKIE > 0) {
            IERC20(DACKIE).safeTransfer(msg.sender, excessDACKIE);
        }
        _syncReward(msg.sender);
    }

    /**
     * @notice Internal locked deposit function
     * @param amountWETHDesired Amount of WETH tokens desired
     * @param amountDACKIEDesired Amount of DACKIE tokens desired
     * @param amountWETHMin Minimum WETH amount to use
     * @param amountDACKIEMin Minimum DACKIE amount to use
     * @param deadline Transaction deadline
     * @param newLockedUntil New lock expiry timestamp
     */
    function _depositLockedInternal(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        uint64 newLockedUntil
    ) internal returns (uint256 actualWETH, uint256 actualDACKIE) {
        // Update global fees before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        uint128 liquidityAdded;
        uint256 amount0;
        uint256 amount1;

        // Snapshot existing locked state and multiplier BEFORE mutation
        UserPosition storage u = userPositions[msg.sender];
        uint128 prevLocked = u.lockedLiquidity;
        uint256 oldMultiplier = u.lockMultiplier == 0 ? REWARD_PRECISION : u.lockMultiplier;

        if (tokenId == 0) {
            // First deposit - mint new position
            (uint256 amount0Desired, uint256 amount1Desired) = isWETHToken0
                ? (amountWETHDesired, amountDACKIEDesired)
                : (amountDACKIEDesired, amountWETHDesired);

            (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
                ? (amountWETHMin, amountDACKIEMin)
                : (amountDACKIEMin, amountWETHMin);

            (tokenId, liquidityAdded, amount0, amount1) = positionManager.mint(
                INonfungiblePositionManager.MintParams({
                    token0: isWETHToken0 ? WETH : DACKIE,
                    token1: isWETHToken0 ? DACKIE : WETH,
                    fee: FEE_TIER,
                    tickLower: tickLower,
                    tickUpper: tickUpper,
                    amount0Desired: amount0Desired,
                    amount1Desired: amount1Desired,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    recipient: address(this),
                    deadline: deadline
                })
            );
        } else {
            // Add to existing position
            (uint256 amount0Desired, uint256 amount1Desired) = isWETHToken0
                ? (amountWETHDesired, amountDACKIEDesired)
                : (amountDACKIEDesired, amountWETHDesired);

            (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
                ? (amountWETHMin, amountDACKIEMin)
                : (amountDACKIEMin, amountWETHMin);

            (liquidityAdded, amount0, amount1) = positionManager.increaseLiquidity(
                INonfungiblePositionManager.IncreaseLiquidityParams({
                    tokenId: tokenId,
                    amount0Desired: amount0Desired,
                    amount1Desired: amount1Desired,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    deadline: deadline
                })
            );
        }

        // Update user and total liquidity
        totalLiquidity += liquidityAdded;
        u.lockedLiquidity = uint128(uint256(u.lockedLiquidity) + liquidityAdded);
        u.lockedUntil = newLockedUntil;

        // Update user fee debt to prevent fee crowding
        userPositions[msg.sender].feeDebt0 += Math.mulDiv(uint256(liquidityAdded), accFee0PerLiquidity, PRECISION);
        userPositions[msg.sender].feeDebt1 += Math.mulDiv(uint256(liquidityAdded), accFee1PerLiquidity, PRECISION);

        // Calculate multiplier and update totalRewardWeight/rewardDebt by weight delta
        uint256 newMultiplier = _calcLockMultiplier(uint32(newLockedUntil - uint64(block.timestamp)));
        // Increase weight for EXISTING locked position (exclude newly added) if multiplier grows
        if (prevLocked > 0 && newMultiplier > oldMultiplier) {
            uint256 bonusDelta = Math.mulDiv(uint256(prevLocked), (newMultiplier - oldMultiplier), REWARD_PRECISION);
            if (bonusDelta > 0) {
                totalRewardWeight += bonusDelta;
                _updateUserRewardDebt(msg.sender, int256(bonusDelta));
            }
        }
        // Add weight for newly added liquidity with newMultiplier
        uint256 weightDeltaNew = Math.mulDiv(uint256(liquidityAdded), newMultiplier, REWARD_PRECISION);
        if (weightDeltaNew > 0) {
            totalRewardWeight += weightDeltaNew;
            _updateUserRewardDebt(msg.sender, int256(weightDeltaNew));
        }
        u.lockMultiplier = newMultiplier;

        // Calculate actual amounts used
        (actualWETH, actualDACKIE) = isWETHToken0 ? (amount0, amount1) : (amount1, amount0);

        emit Deposit(msg.sender, liquidityAdded, actualWETH, actualDACKIE);
        emit LiquidityLocked(msg.sender, liquidityAdded, newLockedUntil);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function convertToLocked(uint128 liquidityToConvert, uint32 lockDuration) external nonReentrant whenNotPaused {
        if (liquidityToConvert == 0) revert ZeroAmount();
        if (liquidityToConvert > userPositions[msg.sender].normalLiquidity) revert InsufficientNormalLiquidity();

        // Update global fees before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        // Calculate new lock expiry (use current state before mutation)
        uint64 oldLockedUntilSnap = userPositions[msg.sender].lockedUntil;
        uint64 newLockedUntil = _calculateLockExpiry(oldLockedUntilSnap, lockDuration);

        // Move liquidity from normal to locked
        userPositions[msg.sender].normalLiquidity -= liquidityToConvert;
        userPositions[msg.sender].lockedLiquidity += liquidityToConvert;
        userPositions[msg.sender].lockedUntil = newLockedUntil;

        // Adjust weights: remove normal weight, add locked weight with multiplier
        UserPosition storage u = userPositions[msg.sender];
        uint256 newMultiplier = _calcLockMultiplier(uint32(newLockedUntil - uint64(block.timestamp)));
        uint256 multiplier = newMultiplier;
        uint256 removeWeight = uint256(liquidityToConvert); // normal = 1x
        uint256 addWeight = Math.mulDiv(uint256(liquidityToConvert), multiplier, REWARD_PRECISION);
        if (addWeight >= removeWeight) {
            uint256 delta = addWeight - removeWeight;
            if (delta > 0) {
                totalRewardWeight += delta;
                _updateUserRewardDebt(msg.sender, int256(delta));
            }
        } else {
            uint256 deltaNeg = removeWeight - addWeight;
            if (deltaNeg > 0) {
                if (totalRewardWeight >= deltaNeg) totalRewardWeight -= deltaNeg;
                else totalRewardWeight = 0;
                _updateUserRewardDebt(msg.sender, -int256(deltaNeg));
            }
        }
        u.lockMultiplier = multiplier;

        emit LiquidityConvertedToLocked(msg.sender, liquidityToConvert, newLockedUntil);
        _syncReward(msg.sender);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function increaseLockedLiquidity(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (amountWETHDesired == 0 || amountDACKIEDesired == 0) revert ZeroAmount();
        // Check if user has locked liquidity and lock is not expired
        UserPosition storage u = userPositions[msg.sender];
        if (u.lockedLiquidity == 0) revert ZeroAmount();
        if (block.timestamp >= u.lockedUntil) revert LockExpired();

        // Update global fees before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        // Transfer tokens from user
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), amountWETHDesired);
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amountDACKIEDesired);

        // Add to existing position (similar to regular deposit)
        (uint256 amount0Desired, uint256 amount1Desired) = isWETHToken0
            ? (amountWETHDesired, amountDACKIEDesired)
            : (amountDACKIEDesired, amountWETHDesired);

        (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
            ? (amountWETHMin, amountDACKIEMin)
            : (amountDACKIEMin, amountWETHMin);

        (uint128 liquidityAdded, uint256 amount0, uint256 amount1) = positionManager.increaseLiquidity(
            INonfungiblePositionManager.IncreaseLiquidityParams({
                tokenId: tokenId,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: deadline
            })
        );

        // Update user and total liquidity (do not change lockedUntil)
        totalLiquidity += liquidityAdded;
        userPositions[msg.sender].lockedLiquidity += liquidityAdded;

        // Update user fee debt to prevent fee crowding
        userPositions[msg.sender].feeDebt0 += Math.mulDiv(uint256(liquidityAdded), accFee0PerLiquidity, PRECISION);
        userPositions[msg.sender].feeDebt1 += Math.mulDiv(uint256(liquidityAdded), accFee1PerLiquidity, PRECISION);

        // Update totalRewardWeight and user reward debt by weight delta at current multiplier
        uint256 multiplier = u.lockMultiplier == 0 ? REWARD_PRECISION : u.lockMultiplier;
        uint256 weightDelta = Math.mulDiv(uint256(liquidityAdded), multiplier, REWARD_PRECISION);
        if (weightDelta > 0) {
            totalRewardWeight += weightDelta;
            _updateUserRewardDebt(msg.sender, int256(weightDelta));
        }

        // Calculate actual amounts used
        (uint256 actualWETH, uint256 actualDACKIE) = isWETHToken0 ? (amount0, amount1) : (amount1, amount0);

        // Refund unused tokens
        uint256 refundWETH = amountWETHDesired - actualWETH;
        uint256 refundDACKIE = amountDACKIEDesired - actualDACKIE;

        if (refundWETH > 0) {
            IERC20(WETH).safeTransfer(msg.sender, refundWETH);
        }
        if (refundDACKIE > 0) {
            IERC20(DACKIE).safeTransfer(msg.sender, refundDACKIE);
        }

        emit Deposit(msg.sender, liquidityAdded, actualWETH, actualDACKIE);
        emit LockedLiquidityIncreased(msg.sender, liquidityAdded, userPositions[msg.sender].lockedUntil);
        _syncReward(msg.sender);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function extendLockDuration(uint32 lockDuration) external nonReentrant whenNotPaused {
        _extendLockDurationMerged(lockDuration);
        _syncReward(msg.sender);
    }

    function _extendLockDurationMerged(uint32 lockDuration) internal {
        UserPosition storage u = userPositions[msg.sender];
        if (u.lockedLiquidity == 0) revert ZeroAmount();

        // Update global fees before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        uint64 oldLockedUntil = u.lockedUntil;

        if (block.timestamp >= oldLockedUntil) {
            // Expired path: behave like previous extendExpiredLock
            if (lockDuration == 0 || lockDuration > MAX_LOCK_DURATION) {
                revert InvalidLockDuration();
            }

            uint64 newLockedUntil = uint64(block.timestamp) + uint64(lockDuration);
            if (newLockedUntil > uint64(block.timestamp) + uint64(MAX_LOCK_DURATION)) {
                newLockedUntil = uint64(block.timestamp) + uint64(MAX_LOCK_DURATION);
            }

            // Remove any old bonus weight that might remain after expiry (multiplier > 1e18)
            uint256 oldMultiplier = u.lockMultiplier == 0 ? REWARD_PRECISION : u.lockMultiplier;
            if (oldMultiplier > REWARD_PRECISION && u.lockedLiquidity > 0) {
                uint256 oldBonus = Math.mulDiv(
                    uint256(u.lockedLiquidity),
                    (oldMultiplier - REWARD_PRECISION),
                    REWARD_PRECISION
                );
                if (oldBonus > 0) {
                    if (totalRewardWeight >= oldBonus) totalRewardWeight -= oldBonus;
                    else totalRewardWeight = 0;
                    _updateUserRewardDebt(msg.sender, -int256(oldBonus));
                }
            }

            // Compute and apply new multiplier/bonus for the renewed lock
            uint256 newMultiplier = _calcLockMultiplier(uint32(newLockedUntil - uint64(block.timestamp)));
            if (u.lockedLiquidity > 0) {
                uint256 newBonus = Math.mulDiv(
                    uint256(u.lockedLiquidity),
                    (newMultiplier - REWARD_PRECISION),
                    REWARD_PRECISION
                );
                if (newBonus > 0) {
                    totalRewardWeight += newBonus;
                    _updateUserRewardDebt(msg.sender, int256(newBonus));
                }
            }

            u.lockMultiplier = newMultiplier;
            u.lockedUntil = newLockedUntil;

            emit ExpiredLockExtended(msg.sender, newLockedUntil);
        } else {
            // Active lock path: behave like previous extendLockDuration
            uint64 newLockedUntil = _calculateLockExpiry(oldLockedUntil, lockDuration);

            uint256 oldMultiplier2 = u.lockMultiplier == 0 ? REWARD_PRECISION : u.lockMultiplier;
            uint256 newMultiplier2 = _calcLockMultiplier(uint32(newLockedUntil - uint64(block.timestamp)));
            if (u.lockedLiquidity > 0 && newMultiplier2 > oldMultiplier2) {
                uint256 bonusDelta = Math.mulDiv(
                    uint256(u.lockedLiquidity),
                    (newMultiplier2 - oldMultiplier2),
                    REWARD_PRECISION
                );
                if (bonusDelta > 0) {
                    totalRewardWeight += bonusDelta;
                    _updateUserRewardDebt(msg.sender, int256(bonusDelta));
                }
            }
            u.lockMultiplier = newMultiplier2;
            u.lockedUntil = newLockedUntil;

            emit LockDurationExtended(msg.sender, oldLockedUntil, newLockedUntil);
        }
    }

    /**
     * @inheritdoc IDackieVault
     */
    function increaseLockedLiquidityAndExtend(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        uint32 lockDuration
    ) external nonReentrant whenNotPaused {
        if (block.timestamp > deadline) revert DeadlineExpired();
        if (amountWETHDesired == 0 || amountDACKIEDesired == 0) revert ZeroAmount();
        if (userPositions[msg.sender].lockedLiquidity == 0) revert ZeroAmount();

        // Calculate new lock expiry (use current state before mutation)
        uint64 oldLockedUntilSnap = userPositions[msg.sender].lockedUntil;
        uint64 newLockedUntil = _calculateLockExpiry(oldLockedUntilSnap, lockDuration);

        // Update global fees before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        // Transfer tokens from user
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), amountWETHDesired);
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amountDACKIEDesired);

        // Add to existing position
        (uint256 amount0Desired, uint256 amount1Desired) = isWETHToken0
            ? (amountWETHDesired, amountDACKIEDesired)
            : (amountDACKIEDesired, amountWETHDesired);

        (uint256 amount0Min, uint256 amount1Min) = isWETHToken0
            ? (amountWETHMin, amountDACKIEMin)
            : (amountDACKIEMin, amountWETHMin);

        (uint128 liquidityAdded, uint256 amount0, uint256 amount1) = positionManager.increaseLiquidity(
            INonfungiblePositionManager.IncreaseLiquidityParams({
                tokenId: tokenId,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: deadline
            })
        );

        // Snapshot existing locked state and multiplier BEFORE mutation
        UserPosition storage u = userPositions[msg.sender];
        uint128 prevLocked = u.lockedLiquidity;
        uint256 oldMultiplier = u.lockMultiplier == 0 ? REWARD_PRECISION : u.lockMultiplier;

        // Update user and total liquidity
        totalLiquidity += liquidityAdded;
        u.lockedLiquidity += liquidityAdded;

        // Update user fee debt to prevent fee crowding
        userPositions[msg.sender].feeDebt0 += (liquidityAdded * accFee0PerLiquidity) / PRECISION;
        userPositions[msg.sender].feeDebt1 += (liquidityAdded * accFee1PerLiquidity) / PRECISION;

        // Compute new multiplier
        uint256 newMultiplier = _calcLockMultiplier(uint32(newLockedUntil - uint64(block.timestamp)));

        // Handle expired vs active lock for EXISTING locked portion
        if (block.timestamp >= oldLockedUntilSnap) {
            // Expired: remove old bonus entirely then add new bonus from base 1e18
            if (oldMultiplier > REWARD_PRECISION && prevLocked > 0) {
                uint256 oldBonus = Math.mulDiv(
                    uint256(prevLocked),
                    (oldMultiplier - REWARD_PRECISION),
                    REWARD_PRECISION
                );
                if (oldBonus > 0) {
                    if (totalRewardWeight >= oldBonus) totalRewardWeight -= oldBonus;
                    else totalRewardWeight = 0;
                    _updateUserRewardDebt(msg.sender, -int256(oldBonus));
                }
            }
            if (prevLocked > 0 && newMultiplier > REWARD_PRECISION) {
                uint256 newBonus = Math.mulDiv(
                    uint256(prevLocked),
                    (newMultiplier - REWARD_PRECISION),
                    REWARD_PRECISION
                );
                if (newBonus > 0) {
                    totalRewardWeight += newBonus;
                    _updateUserRewardDebt(msg.sender, int256(newBonus));
                }
            }
        } else {
            // Active: only add delta when multiplier increases
            if (prevLocked > 0 && newMultiplier > oldMultiplier) {
                uint256 bonusDelta = Math.mulDiv(
                    uint256(prevLocked),
                    (newMultiplier - oldMultiplier),
                    REWARD_PRECISION
                );
                if (bonusDelta > 0) {
                    totalRewardWeight += bonusDelta;
                    _updateUserRewardDebt(msg.sender, int256(bonusDelta));
                }
            }
        }

        // Add weight for newly added liquidity with new multiplier
        uint256 weightDeltaNew = Math.mulDiv(uint256(liquidityAdded), newMultiplier, REWARD_PRECISION);
        if (weightDeltaNew > 0) {
            totalRewardWeight += weightDeltaNew;
            _updateUserRewardDebt(msg.sender, int256(weightDeltaNew));
        }

        // Update lock params at the end
        u.lockMultiplier = newMultiplier;
        u.lockedUntil = newLockedUntil;

        // Calculate actual amounts used
        (uint256 actualWETH, uint256 actualDACKIE) = isWETHToken0 ? (amount0, amount1) : (amount1, amount0);

        // Refund unused tokens
        uint256 refundWETH = amountWETHDesired - actualWETH;
        uint256 refundDACKIE = amountDACKIEDesired - actualDACKIE;

        if (refundWETH > 0) {
            IERC20(WETH).safeTransfer(msg.sender, refundWETH);
        }
        if (refundDACKIE > 0) {
            IERC20(DACKIE).safeTransfer(msg.sender, refundDACKIE);
        }

        emit Deposit(msg.sender, liquidityAdded, actualWETH, actualDACKIE);
        emit LockedLiquidityIncreasedAndExtended(msg.sender, liquidityAdded, newLockedUntil);
        _syncReward(msg.sender);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IDackieVault
     */
    function pendingFees(address user) public view returns (uint256 pendingWETH, uint256 pendingDACKIE) {
        UserPosition storage userPos = userPositions[user];
        uint256 userLiq = uint256(userPos.normalLiquidity) + uint256(userPos.lockedLiquidity);
        if (userLiq == 0) return (0, 0);

        uint256 accrued0 = Math.mulDiv(userLiq, accFee0PerLiquidity, PRECISION);
        uint256 accrued1 = Math.mulDiv(userLiq, accFee1PerLiquidity, PRECISION);

        uint256 pending0 = accrued0 >= userPos.feeDebt0 ? accrued0 - userPos.feeDebt0 : 0;
        uint256 pending1 = accrued1 >= userPos.feeDebt1 ? accrued1 - userPos.feeDebt1 : 0;

        (pendingWETH, pendingDACKIE) = isWETHToken0 ? (pending0, pending1) : (pending1, pending0);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function position() external view returns (uint256, uint128) {
        return (tokenId, totalLiquidity);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function userInfo(
        address user
    )
        external
        view
        returns (
            uint128 normalLiquidity,
            uint128 lockedLiquidity,
            uint64 lockedUntil,
            uint256 pendingWETH,
            uint256 pendingDACKIE
        )
    {
        UserPosition storage userPos = userPositions[user];
        (pendingWETH, pendingDACKIE) = pendingFees(user);
        return (userPos.normalLiquidity, userPos.lockedLiquidity, userPos.lockedUntil, pendingWETH, pendingDACKIE);
    }

    /**
     * @notice Get user's current lock multiplier (defaults to 1e18 if unset)
     */
    function userLockMultiplier(address user) external view returns (uint256) {
        uint256 m = userPositions[user].lockMultiplier;
        return m == 0 ? REWARD_PRECISION : m;
    }

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IDackieVault
     */
    function setSwapPaths(bytes calldata pathWETHToCbBTC_, bytes calldata pathDACKIEToCbBTC_) external onlyOwner {
        if (pathWETHToCbBTC_.length == 0 || pathDACKIEToCbBTC_.length == 0) {
            revert InvalidPath();
        }
        pathWETHToCbBTC = pathWETHToCbBTC_;
        pathDACKIEToCbBTC = pathDACKIEToCbBTC_;

        emit SwapPathsUpdated(pathWETHToCbBTC_, pathDACKIEToCbBTC_);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function setSwapRouter(address swapRouter_) external onlyOwner {
        if (swapRouter_ == address(0)) revert InvalidRouter();

        // Revoke old approvals
        IERC20(WETH).approve(address(swapRouter), 0);
        IERC20(DACKIE).approve(address(swapRouter), 0);

        swapRouter = ISwapRouter(swapRouter_);

        // Approve new router
        IERC20(WETH).approve(swapRouter_, type(uint256).max);
        IERC20(DACKIE).approve(swapRouter_, type(uint256).max);

        emit SwapRouterUpdated(swapRouter_);
    }

    /**
     * @notice Set reward contract to be notified on user LP changes
     * @param _reward Address of reward contract
     */
    function setRewardContract(address _reward) external onlyOwner {
        rewardContract = _reward;
    }

    /**
     * @notice Pause the contract (emergency function)
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause the contract
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Set treasury address for fee splitting
     * @param _treasury New treasury address
     */
    function setTreasuryAddress(address _treasury) external onlyOwner {
        if (_treasury == address(0)) {
            revert InvalidRouter(); // Reuse existing error
        }
        treasuryAddress = _treasury;
        emit TreasuryUpdated(treasuryAddress, treasuryFeeBps);
    }

    /**
     * @notice Set treasury fee in basis points
     * @param _bps New treasury fee in basis points
     */
    function setTreasuryFeeBps(uint16 _bps) external onlyOwner {
        if (_bps > MAX_TREASURY_FEE_BPS) {
            revert InvalidRouter(); // Reuse existing error
        }
        treasuryFeeBps = _bps;
        emit TreasuryUpdated(treasuryAddress, treasuryFeeBps);
    }

    /**
     * @notice Emergency function to rescue tokens (not core tokens if user shares exist)
     * @param token Token address to rescue
     * @param recipient Address to send tokens to
     */
    function rescueTokens(address token, address recipient) external onlyOwner {
        // Don't allow rescuing core tokens if users have shares
        if (totalLiquidity > 0) {
            require(token != WETH && token != DACKIE && token != cbBTC, "Cannot rescue core tokens");
        }

        IERC20(token).safeTransfer(recipient, IERC20(token).balanceOf(address(this)));
    }

    /*//////////////////////////////////////////////////////////////
                        LOCK EXPIRY FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IDackieVault
     */
    function unlockExpired() external {
        _autoUnlockExpired(msg.sender);
        _syncReward(msg.sender);
    }

    /**
     * @notice Update global fee accumulators by syncing with V3 position
     * @dev Can be called by anyone to ensure fees are up-to-date
     */
    function updateGlobalFees() external {
        _updateGlobalFees();
    }

    /**
     * @inheritdoc IDackieVault
     */
    function convertExpiredLockedToNormal() external nonReentrant {
        UserPosition storage userPos = userPositions[msg.sender];
        if (userPos.lockedLiquidity == 0) revert ZeroAmount();
        if (block.timestamp < userPos.lockedUntil) revert LiquidityStillLocked();

        // Update global fees before any state changes
        _updateGlobalFees();
        _updateDACKIERewards();

        // Auto-collect and convert pending fees to cbBTC before conversion
        (uint256 pendingWETH, uint256 pendingDACKIE) = pendingFees(msg.sender);
        if (pendingWETH > 0 || pendingDACKIE > 0) {
            _collectAndConvertFeesInternal(msg.sender, pendingWETH, pendingDACKIE, block.timestamp + 600);
        }

        uint128 liquidityToConvert = userPos.lockedLiquidity;
        // Adjust totalRewardWeight by removing bonus weight of locked portion
        uint256 multiplier = userPos.lockMultiplier == 0 ? REWARD_PRECISION : userPos.lockMultiplier;
        if (multiplier > REWARD_PRECISION) {
            uint256 bonusWeight = (uint256(liquidityToConvert) * (multiplier - REWARD_PRECISION)) / REWARD_PRECISION;
            if (bonusWeight > 0) {
                if (totalRewardWeight >= bonusWeight) {
                    totalRewardWeight -= bonusWeight;
                } else {
                    totalRewardWeight = 0;
                }
                _updateUserRewardDebt(msg.sender, -int256(bonusWeight));
            }
        }
        userPos.normalLiquidity += liquidityToConvert;
        userPos.lockedLiquidity = 0;
        userPos.lockedUntil = 0;
        userPos.lockMultiplier = REWARD_PRECISION;

        emit ExpiredLockedConvertedToNormal(msg.sender, liquidityToConvert);
        _syncReward(msg.sender);
    }

    /**
     * @inheritdoc IDackieVault
     */
    // extendExpiredLock removed. Use extendLockDuration for both expired and active locks.

    /*//////////////////////////////////////////////////////////////
                        DACKIE REWARD FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IDackieVault
     */
    function upkeep(uint256 amount, uint256 duration) external onlyReceiver {
        if (amount == 0) revert ZeroAmount();
        if (duration < MIN_REWARD_DURATION || duration > MAX_REWARD_DURATION) {
            revert InvalidRewardDuration();
        }

        // Pull DACKIE from the receiver (receiver must approve the vault beforehand)
        IERC20(DACKIE).safeTransferFrom(msg.sender, address(this), amount);

        // Update reward state before any calculations
        _updateDACKIERewards();

        uint256 currentTime = block.timestamp;
        uint256 endTime = currentTime + duration;
        uint256 dackiePerSecond;
        uint256 totalAmount = amount;

        // Handle remaining rewards from previous period
        if (latestPeriodEndTime > currentTime) {
            uint256 remainingTime = latestPeriodEndTime - currentTime;
            uint256 remainingRewards = (remainingTime * latestPeriodDACKIEPerSecond) / REWARD_PRECISION;
            totalAmount += remainingRewards;
        }

        // Calculate new emission rate
        dackiePerSecond = (totalAmount * REWARD_PRECISION) / duration;

        // Update period state
        latestPeriodNumber++;
        latestPeriodStartTime = currentTime;
        latestPeriodEndTime = endTime;
        latestPeriodDACKIEPerSecond = dackiePerSecond;

        emit DACKIERewardPeriodStarted(latestPeriodNumber, currentTime, endTime, dackiePerSecond, totalAmount);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function pendingDACKIEReward(address user) external view returns (uint256 pending) {
        UserPosition storage userPos = userPositions[user];
        uint256 userWeight = _userRewardWeight(user);

        if (userWeight == 0) return 0;

        // Calculate what the accumulated reward per liquidity would be if updated now
        uint256 currentAccDACKIERewardPerLiquidity = accDACKIERewardPerLiquidity;

        // Add rewards that would be accumulated if _updateDACKIERewards was called
        if (totalRewardWeight > 0 && latestPeriodStartTime < block.timestamp && latestPeriodStartTime > 0) {
            uint256 effectiveEndTime = block.timestamp > latestPeriodEndTime ? latestPeriodEndTime : block.timestamp;
            uint256 timeElapsed = effectiveEndTime - latestPeriodStartTime;
            uint256 rewardToDistribute = (timeElapsed * latestPeriodDACKIEPerSecond) / REWARD_PRECISION;
            currentAccDACKIERewardPerLiquidity += (rewardToDistribute * REWARD_PRECISION) / totalRewardWeight;
        }

        // Calculate pending rewards based on liquidity proportion
        uint256 accumulatedReward = (userWeight * currentAccDACKIERewardPerLiquidity) / REWARD_PRECISION;
        if (accumulatedReward >= userPos.rewardDebt) {
            pending = accumulatedReward - userPos.rewardDebt;
        } else {
            pending = 0;
        }
    }

    /**
     * @inheritdoc IDackieVault
     */
    function getLatestRewardPeriod()
        external
        view
        returns (uint256 periodNumber, uint256 startTime, uint256 endTime, uint256 dackiePerSecond)
    {
        return (latestPeriodNumber, latestPeriodStartTime, latestPeriodEndTime, latestPeriodDACKIEPerSecond);
    }

    /**
     * @inheritdoc IDackieVault
     */
    function setReceiver(address _receiver) external onlyOwner {
        if (_receiver == address(0)) revert InvalidReceiver();
        receiver = _receiver;
        emit ReceiverUpdated(_receiver);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Update global fee accumulators by collecting all fees from the position
     */
    function _updateGlobalFees() internal {
        if (tokenId == 0 || totalLiquidity == 0) return;

        // Collect all fees from the position
        (uint256 collected0, uint256 collected1) = positionManager.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );

        // Update accumulators with newly collected fees
        if (collected0 > 0) {
            accFee0PerLiquidity += Math.mulDiv(collected0, PRECISION, totalLiquidity);
        }
        if (collected1 > 0) {
            accFee1PerLiquidity += Math.mulDiv(collected1, PRECISION, totalLiquidity);
        }
    }

    /**
     * @notice Swap tokens to cbBTC using the configured path
     * @param amountIn Amount of input token
     * @param path Swap path
     * @return amountOut Amount of cbBTC received
     */
    function _swapToCbBTC(
        address /* tokenIn */,
        uint256 amountIn,
        bytes memory path,
        uint256 /* deadline */
    ) internal returns (uint256 amountOut) {
        try
            swapRouter.exactInput(
                ISwapRouter.ExactInputParams({
                    path: path,
                    recipient: address(this),
                    amountIn: amountIn,
                    amountOutMinimum: 0 // We handle slippage at the total level
                })
            )
        returns (uint256 output) {
            return output;
        } catch {
            revert SwapFailed();
        }
    }

    /**
     * @notice Auto-unlock expired locked liquidity for a user
     * @param user Address of the user
     */
    function _autoUnlockExpired(address user) internal {
        UserPosition storage userPos = userPositions[user];
        if (userPos.lockedLiquidity > 0 && block.timestamp >= userPos.lockedUntil) {
            // Before changing weights, update rewards
            _updateDACKIERewards();
            // Adjust totalRewardWeight by removing bonus weight of locked portion
            uint256 multiplier = userPos.lockMultiplier == 0 ? REWARD_PRECISION : userPos.lockMultiplier;
            if (multiplier > REWARD_PRECISION) {
                uint256 bonusWeight = Math.mulDiv(
                    uint256(userPos.lockedLiquidity),
                    (multiplier - REWARD_PRECISION),
                    REWARD_PRECISION
                );
                if (bonusWeight > 0) {
                    // Reduce totalRewardWeight and rewardDebt accordingly
                    if (totalRewardWeight >= bonusWeight) {
                        totalRewardWeight -= bonusWeight;
                    } else {
                        totalRewardWeight = 0;
                    }
                    _updateUserRewardDebt(user, -int256(bonusWeight));
                }
            }
            uint128 liquidityToUnlock = userPos.lockedLiquidity;
            userPos.normalLiquidity += liquidityToUnlock;
            userPos.lockedLiquidity = 0;
            userPos.lockedUntil = 0;
            userPos.lockMultiplier = REWARD_PRECISION;

            emit LockedLiquidityUnlocked(user, liquidityToUnlock);
        }
    }

    /**
     * @notice Notify reward contract to sync weight for a user
     */
    function _syncReward(address user) internal {
        if (rewardContract == address(0)) return;
        try IDackieVaultRewardSync(rewardContract).syncFromVault(user) {} catch {}
    }

    /**
     * @notice Calculate new lock expiry timestamp
     * @param currentExpiry Current lock expiry (0 if no lock)
     * @param lockDuration Additional lock duration in seconds
     * @return newExpiry New lock expiry timestamp
     */
    function _calculateLockExpiry(uint64 currentExpiry, uint32 lockDuration) internal view returns (uint64 newExpiry) {
        if (lockDuration == 0 || lockDuration > MAX_LOCK_DURATION) {
            revert InvalidLockDuration();
        }

        uint64 newFromNow = uint64(block.timestamp) + uint64(lockDuration);
        if (newFromNow > uint64(block.timestamp) + uint64(MAX_LOCK_DURATION)) {
            newFromNow = uint64(block.timestamp) + uint64(MAX_LOCK_DURATION);
        }

        return currentExpiry > newFromNow ? currentExpiry : newFromNow;
    }

    /**
     * @notice Calculate lock multiplier based on duration (linear 1.0x → 5.0x)
     */
    function _calcLockMultiplier(uint32 lockDuration) internal pure returns (uint256) {
        uint256 base = REWARD_PRECISION; // 1e18
        if (lockDuration == 0) return base;
        if (lockDuration >= MAX_LOCK_DURATION) return MAX_LOCK_MULTIPLIER;
        uint256 bonus = Math.mulDiv((MAX_LOCK_MULTIPLIER - base), lockDuration, MAX_LOCK_DURATION);
        return base + bonus;
    }

    /**
     * @notice Compute user's reward weight (normal 1x + locked * multiplier)
     */
    function _userRewardWeight(address user) internal view returns (uint256) {
        UserPosition storage u = userPositions[user];
        uint256 multiplier = u.lockMultiplier == 0 ? REWARD_PRECISION : u.lockMultiplier;
        return uint256(u.normalLiquidity) + (uint256(u.lockedLiquidity) * multiplier) / REWARD_PRECISION;
    }

    /**
     * @notice Update DACKIE reward accumulators based on time elapsed
     */
    function _updateDACKIERewards() internal {
        if (latestPeriodStartTime == 0) return;

        uint256 currentTime = block.timestamp;
        if (currentTime <= latestPeriodStartTime) return;

        uint256 effectiveEndTime = currentTime > latestPeriodEndTime ? latestPeriodEndTime : currentTime;
        uint256 effectiveTimeElapsed = effectiveEndTime - latestPeriodStartTime;

        if (effectiveTimeElapsed > 0) {
            // Only update accumulator if there's reward weight to distribute to
            if (totalRewardWeight > 0) {
                uint256 rewardToDistribute = Math.mulDiv(
                    effectiveTimeElapsed,
                    latestPeriodDACKIEPerSecond,
                    REWARD_PRECISION
                );
                accDACKIERewardPerLiquidity += Math.mulDiv(rewardToDistribute, REWARD_PRECISION, totalRewardWeight);
            }
            // Always update start time to track elapsed time, even if no liquidity
            latestPeriodStartTime = effectiveEndTime;
        }
    }

    /**
     * @notice Distribute DACKIE rewards to user with rollback protection
     * @param user User address
     * @return success Whether the reward distribution was successful
     */
    function _distributeDACKIEReward(address user) internal returns (bool success) {
        UserPosition storage userPos = userPositions[user];
        uint256 userWeight = _userRewardWeight(user);

        if (userWeight == 0) {
            return true;
        }

        // Calculate pending rewards with underflow clamp
        uint256 accumulatedReward = Math.mulDiv(userWeight, accDACKIERewardPerLiquidity, REWARD_PRECISION);
        uint256 pending;
        if (accumulatedReward >= userPos.rewardDebt) {
            pending = accumulatedReward - userPos.rewardDebt;
        } else {
            pending = 0;
        }

        if (pending > 0) {
            // Update reward debt first
            userPos.rewardDebt = accumulatedReward;
            IERC20(DACKIE).safeTransfer(user, pending);
            emit DACKIERewardDistributed(user, pending);
            return true;
        }

        // Update reward debt even if no pending rewards
        userPos.rewardDebt = accumulatedReward;
        return true;
    }

    /**
     * @notice Update user reward debt after liquidity changes
     * @param user User address
     * @param liquidityDelta Change in liquidity (positive for increase, negative for decrease)
     */
    function _updateUserRewardDebt(address user, int256 liquidityDelta) internal {
        UserPosition storage userPos = userPositions[user];

        if (liquidityDelta > 0) {
            // Increase weight - add to reward debt to prevent reward farming
            uint256 increase = Math.mulDiv(uint256(liquidityDelta), accDACKIERewardPerLiquidity, REWARD_PRECISION);
            userPos.rewardDebt += increase;
        } else if (liquidityDelta < 0) {
            // Decrease weight - reduce reward debt proportionally
            uint256 rewardDebtReduction = Math.mulDiv(
                uint256(-liquidityDelta),
                accDACKIERewardPerLiquidity,
                REWARD_PRECISION
            );
            if (userPos.rewardDebt > rewardDebtReduction) {
                userPos.rewardDebt -= rewardDebtReduction;
            } else {
                userPos.rewardDebt = 0;
            }
        }
    }

    /**
     * @notice Internal function to collect and convert fees to cbBTC
     * @param user User address
     * @param pendingWETH Amount of pending WETH fees
     * @param pendingDACKIE Amount of pending DACKIE fees
     * @param deadline Transaction deadline
     */
    function _collectAndConvertFeesInternal(
        address user,
        uint256 pendingWETH,
        uint256 pendingDACKIE,
        uint256 deadline
    ) internal {
        if (pendingWETH == 0 && pendingDACKIE == 0) return;

        // Try to distribute DACKIE rewards (with rollback protection)
        _distributeDACKIEReward(user);

        // Update user fee debt
        uint128 userLiq = userPositions[user].normalLiquidity + userPositions[user].lockedLiquidity;
        userPositions[user].feeDebt0 = (userLiq * accFee0PerLiquidity) / PRECISION;
        userPositions[user].feeDebt1 = (userLiq * accFee1PerLiquidity) / PRECISION;

        // Get actual fee amounts based on token order
        (uint256 feeWETH, uint256 feeDACKIE) = isWETHToken0
            ? (pendingWETH, pendingDACKIE)
            : (pendingDACKIE, pendingWETH);

        uint256 totalCbBTC = 0;

        // Swap WETH fees to cbBTC
        if (feeWETH > 0) {
            totalCbBTC += _swapToCbBTC(WETH, feeWETH, pathWETHToCbBTC, deadline);
        }

        // Swap DACKIE fees to cbBTC
        if (feeDACKIE > 0) {
            totalCbBTC += _swapToCbBTC(DACKIE, feeDACKIE, pathDACKIEToCbBTC, deadline);
        }

        if (totalCbBTC > 0) {
            // Calculate treasury split
            uint256 cbBTCSentToTreasury = (treasuryAddress != address(0) && treasuryFeeBps > 0)
                ? (totalCbBTC * treasuryFeeBps) / 10000
                : 0;
            uint256 cbBTCSentToUser = totalCbBTC - cbBTCSentToTreasury;

            // Transfer cbBTC to treasury and user
            if (cbBTCSentToTreasury > 0) {
                IERC20(cbBTC).safeTransfer(treasuryAddress, cbBTCSentToTreasury);
            }
            if (cbBTCSentToUser > 0) {
                IERC20(cbBTC).safeTransfer(user, cbBTCSentToUser);
            }

            emit FeesCollected(user, feeWETH, feeDACKIE);
            emit FeesConverted(user, feeWETH, feeDACKIE, cbBTCSentToUser, cbBTCSentToTreasury);
        }
    }

    /**
     * @notice Handle receipt of NFT from position manager
     */
    function onERC721Received(address, address, uint256, bytes calldata) external pure override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    /**
     * @notice Receive ETH function to accept ETH deposits
     */
    receive() external payable {
        // Allow receiving ETH for wrapping purposes
    }

    /**
     * @notice Wrap ETH to WETH
     * @param amount Amount of ETH to wrap
     */
    function _wrapETH(uint256 amount) internal {
        if (amount > 0) {
            IWETH(WETH).deposit{ value: amount }();
        }
    }

    /**
     * @notice Unwrap WETH to ETH and send to recipient
     * @param recipient Address to receive ETH
     * @param amount Amount of WETH to unwrap
     */
    function _unwrapAndSendETH(address recipient, uint256 amount) internal {
        if (amount > 0) {
            IWETH(WETH).withdraw(amount);
            (bool success, ) = payable(recipient).call{ value: amount }("");
            require(success, "ETH transfer failed");
        }
    }
}
