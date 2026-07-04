// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { SignedMath } from "@openzeppelin/contracts/utils/math/SignedMath.sol";

import { ICLPool } from "./interfaces/ICLPool.sol";
import { ICLGauge } from "./interfaces/ICLGauge.sol";
import { INonfungiblePositionManager as INFPM } from "./interfaces/INonfungiblePositionManager.sol";
import { ISwapRouter } from "./interfaces/ISwapRouter.sol";
import { ITopazCLStrategyFactory } from "./interfaces/ITopazCLStrategyFactory.sol";
import { ITopazCLStrategy } from "./interfaces/ITopazCLStrategy.sol";
import { TickMath } from "./libraries/TickMath.sol";
import { LiquidityAmounts } from "./libraries/LiquidityAmounts.sol";
import { TickUtils } from "./libraries/TickUtils.sol";
import { FullMath } from "./libraries/FullMath.sol";

/// @title TopazCLStrategy
/// @notice Passive concentrated-liquidity manager for a Topaz Slipstream pool —
///         a faithful port of Beefy's StrategyPassiveManagerVelodrome adapted to
///         Topaz on BNB Chain. Holds a main (symmetric) + alt (single-sided)
///         position staked in the CLGauge for TOPAZ emissions, auto-rebalances
///         around the live tick (TWAP-gated), and AUTO-COMPOUNDS emissions back
///         into the positions (TOPAZ → base → token0/token1 → re-add).
/// @dev Non-upgradeable (immutables + constructor), unlike Beefy's proxy design.
///      One leg of the pool is always the `base` (USDT or WBNB); harvest swaps
///      route through it. Access mirrors Beefy: owner config, factory keeper for
///      panic, factory rebalancers (or permissionless-on-drift) for moveTicks.
contract TopazCLStrategy is ITopazCLStrategy, Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    uint256 private constant PRECISION = 1e36;
    uint256 private constant SQRT_PRECISION = 1e18;
    uint256 private constant BPS = 10_000;
    uint16 public constant MAX_PERFORMANCE_FEE = 2000; // 20%
    uint16 public constant MAX_SLIPPAGE = 1000; // 10%
    uint16 public constant MAX_CALL_FEE = 100; // 1% — harvest incentive
    int56 private constant MIN_TICK = -887272;
    int56 private constant MAX_TICK = 887272;

    // ============ Immutables ============

    address public immutable pool;
    INFPM public immutable nftManager;
    ICLGauge public immutable gauge;
    ISwapRouter public immutable swapRouter;
    ITopazCLStrategyFactory public immutable factory;

    address public immutable lpToken0;
    address public immutable lpToken1;
    address public immutable base; // USDT or WBNB — one of the pool tokens
    address public immutable reward; // TOPAZ
    int24 public immutable tickSpacing;

    // ============ Config (owner-settable) ============

    address public vault; // set once after deploy
    int24 public positionWidth; // half-width multiplier of tickSpacing
    int56 public maxTickDeviation; // TWAP calm band (< 4 * tickSpacing)
    uint32 public twapInterval; // seconds; >= 60
    uint16 public performanceFeeBps;
    uint16 public callFeeBps; // harvest incentive paid to the caller (in TOPAZ)
    uint16 public slippageBps;
    int24 public rebalanceThresholdTicks; // permissionless-rebalance drift buffer
    bytes public rewardToBasePath; // v3 path TOPAZ -> base

    // ============ State ============

    struct Position {
        uint256 nftId;
        int24 tickLower;
        int24 tickUpper;
    }

    Position public positionMain;
    Position public positionAlt;

    bool private initTicks;
    bool public paused;
    uint256 public lastHarvest;

    // ============ Events ============

    event TVL(uint256 bal0, uint256 bal1);
    event Harvest(uint256 compounded, uint256 perfFee, uint256 callFee);
    event SetCallFee(uint16 fee);
    event SetPositionWidth(int24 oldWidth, int24 newWidth);
    event SetDeviation(int56 maxTickDeviation);
    event SetTwapInterval(uint32 oldInterval, uint32 newInterval);
    event SetPerformanceFee(uint16 fee);
    event SetSlippage(uint16 slippage);
    event SetRebalanceThreshold(int24 threshold);
    event SetRewardToBasePath(bytes path);
    event Paused();
    event Unpaused();
    event PositionMintSkipped(bool isMain, int24 tickLower, int24 tickUpper, uint256 amount0, uint256 amount1);
    event NativeSwept(address indexed to, uint256 amount);

    // ============ Errors ============

    error ZeroAddress();
    error NotPoolToken();
    error NoGauge();
    error NotVault();
    error NotManager();
    error NotAuthorized();
    error NotCalm();
    error InvalidInput();
    error VaultAlreadySet();
    error NothingToHarvest();
    error ProtectedToken();
    error TooMuchSlippage();
    error InvalidRewardPath();
    error NativeTransferFailed();

    // ============ Constructor ============

    /// @param _pool Topaz Slipstream CL pool
    /// @param _nftManager NonfungiblePositionManager
    /// @param _swapRouter Topaz v3 SwapRouter
    /// @param _factory TopazCLStrategyFactory (keeper/rebalancers/pause/fees)
    /// @param _gauge The pool's CLGauge (resolve off-chain via Voter.gauges(pool))
    /// @param _base Base asset (USDT or WBNB) — must be a pool token
    /// @param _positionWidth Half-width multiplier of tickSpacing for the main range
    /// @param _maxTickDeviation TWAP calm band (must be < 4 * tickSpacing)
    /// @param _rewardToBasePath v3 swap path TOPAZ -> base
    /// @param _owner Strategy owner (protocol multisig)
    constructor(
        address _pool,
        address _nftManager,
        address _swapRouter,
        address _factory,
        address _gauge,
        address _base,
        int24 _positionWidth,
        int56 _maxTickDeviation,
        bytes memory _rewardToBasePath,
        address _owner
    ) Ownable(_owner) {
        if (
            _pool == address(0) ||
            _nftManager == address(0) ||
            _swapRouter == address(0) ||
            _factory == address(0) ||
            _gauge == address(0)
        ) revert ZeroAddress();

        pool = _pool;
        nftManager = INFPM(_nftManager);
        swapRouter = ISwapRouter(_swapRouter);
        factory = ITopazCLStrategyFactory(_factory);

        address t0 = ICLPool(_pool).token0();
        address t1 = ICLPool(_pool).token1();
        if (_base != t0 && _base != t1) revert NotPoolToken();
        lpToken0 = t0;
        lpToken1 = t1;
        base = _base;
        tickSpacing = ICLPool(_pool).tickSpacing();

        // The gauge must be the one bound to this pool.
        if (ICLGauge(_gauge).pool() != _pool) revert NoGauge();
        gauge = ICLGauge(_gauge);
        address _reward = ICLGauge(_gauge).rewardToken();
        if (_reward == address(0)) revert ZeroAddress();
        reward = _reward;

        if (_maxTickDeviation >= int56(tickSpacing) * 4) revert InvalidInput();

        positionWidth = _positionWidth;
        maxTickDeviation = _maxTickDeviation;
        twapInterval = 120;
        performanceFeeBps = 1000;
        callFeeBps = 25; // 0.25% to whoever triggers the harvest
        slippageBps = 100;
        rebalanceThresholdTicks = 0;
        _validateRewardToBasePath(_rewardToBasePath, _reward, _base);
        rewardToBasePath = _rewardToBasePath;

        _giveAllowances();
    }

    // ============ Access ============

    function _onlyVault() private view {
        if (msg.sender != vault) revert NotVault();
    }

    function _onlyManager() private view {
        if (msg.sender != owner() && msg.sender != factory.keeper()) revert NotManager();
    }

    function _onlyCalmPeriods() private view {
        if (!isCalm()) revert NotCalm();
    }

    modifier onlyCalmPeriods() {
        _onlyCalmPeriods();
        _;
    }

    /// @notice Live tick must sit within `maxTickDeviation` of the TWAP tick.
    function isCalm() public view returns (bool) {
        int24 tick = currentTick();
        int56 twapTick = twap();
        int56 minCalmTick = int56(SignedMath.max(twapTick - maxTickDeviation, MIN_TICK));
        int56 maxCalmTick = int56(SignedMath.min(twapTick + maxTickDeviation, MAX_TICK));
        if (minCalmTick > tick || maxCalmTick < tick) return false;
        return true;
    }

    function setVault(address _vault) external onlyOwner {
        if (vault != address(0)) revert VaultAlreadySet();
        if (_vault == address(0)) revert ZeroAddress();
        vault = _vault;
    }

    // ============ Vault hooks ============

    /// @notice Evacuate all liquidity to idle balances before a deposit/withdraw.
    /// @dev `gauge.withdraw` auto-claims TOPAZ, which accrues for the next harvest.
    function beforeAction() external {
        _onlyVault();
        _removeLiquidity();
    }

    /// @notice Re-deploy idle balances into the positions after a deposit.
    function deposit() external onlyCalmPeriods {
        _onlyVault();
        if (!initTicks) {
            _setTicks();
            initTicks = true;
        }
        _addLiquidity();
        (uint256 bal0, uint256 bal1) = balances();
        emit TVL(bal0, bal1);
    }

    /// @notice Send the vault its share, then re-deploy the remainder.
    function withdraw(uint256 _amount0, uint256 _amount1) external {
        _onlyVault();
        if (_amount0 > 0) IERC20(lpToken0).safeTransfer(vault, _amount0);
        if (_amount1 > 0) IERC20(lpToken1).safeTransfer(vault, _amount1);
        if (!paused) _addLiquidity();
        (uint256 bal0, uint256 bal1) = balances();
        emit TVL(bal0, bal1);
    }

    // ============ Liquidity ============

    function _addLiquidity() private {
        if (paused || factory.globalPause()) revert NotAuthorized();

        (uint256 bal0, uint256 bal1) = balancesOfThis();
        uint160 sqrtprice = sqrtPrice();

        uint128 liquidity;
        uint256 amount0;
        uint256 amount1;

        {
            uint160 lowerSqrt = TickMath.getSqrtRatioAtTick(positionMain.tickLower);
            uint160 upperSqrt = TickMath.getSqrtRatioAtTick(positionMain.tickUpper);
            liquidity = LiquidityAmounts.getLiquidityForAmounts(sqrtprice, lowerSqrt, upperSqrt, bal0, bal1);
            (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(sqrtprice, lowerSqrt, upperSqrt, liquidity);
        }

        if (liquidity > 0 && amount0 > 0 && amount1 > 0) {
            _mintPosition(positionMain.tickLower, positionMain.tickUpper, amount0, amount1, true);
            (bal0, bal1) = balancesOfThis();
        }

        // Skip the alt when its range is degenerate (e.g. an exactly-balanced
        // deposit leaves it unset) — avoids a divide-by-zero in the liquidity math.
        if (positionAlt.tickLower != positionAlt.tickUpper) {
            uint160 lowerSqrt = TickMath.getSqrtRatioAtTick(positionAlt.tickLower);
            uint160 upperSqrt = TickMath.getSqrtRatioAtTick(positionAlt.tickUpper);
            liquidity = LiquidityAmounts.getLiquidityForAmounts(sqrtprice, lowerSqrt, upperSqrt, bal0, bal1);
            (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(sqrtprice, lowerSqrt, upperSqrt, liquidity);

            if (liquidity > 0 && (amount0 > 0 || amount1 > 0)) {
                _mintPosition(positionAlt.tickLower, positionAlt.tickUpper, amount0, amount1, false);
            }
        }

        if (positionMain.nftId != 0) gauge.deposit(positionMain.nftId);
        if (positionAlt.nftId != 0) gauge.deposit(positionAlt.nftId);
    }

    function _mintPosition(int24 _tickLower, int24 _tickUpper, uint256 _amount0, uint256 _amount1, bool _main) private {
        INFPM.MintParams memory params = INFPM.MintParams({
            token0: lpToken0,
            token1: lpToken1,
            tickSpacing: tickSpacing,
            tickLower: _tickLower,
            tickUpper: _tickUpper,
            amount0Desired: _amount0,
            amount1Desired: _amount1,
            amount0Min: 0,
            amount1Min: 0,
            recipient: address(this),
            deadline: block.timestamp,
            sqrtPriceX96: 0
        });

        // A mint can revert (e.g. a single-sided alt that rounds to zero effective
        // liquidity makes the pool mint revert with empty data). A failed mint must
        // never brick harvest/deposit/withdraw/moveTicks — skip the position and
        // leave the tokens idle; they stay counted in balances() and are redeployed
        // on the next _addLiquidity.
        try nftManager.mint(params) returns (uint256 nftId, uint128, uint256, uint256) {
            if (_main) positionMain.nftId = nftId;
            else positionAlt.nftId = nftId;
            IERC721(address(nftManager)).approve(address(gauge), nftId);
        } catch {
            emit PositionMintSkipped(_main, _tickLower, _tickUpper, _amount0, _amount1);
        }
    }

    function _removeLiquidity() private {
        uint128 liquidity;
        uint128 liquidityAlt;
        if (positionMain.nftId != 0) {
            (, , , , , , , liquidity, , , , ) = nftManager.positions(positionMain.nftId);
            gauge.withdraw(positionMain.nftId);
        }
        if (positionAlt.nftId != 0) {
            (, , , , , , , liquidityAlt, , , , ) = nftManager.positions(positionAlt.nftId);
            gauge.withdraw(positionAlt.nftId);
        }

        if (liquidity > 0) {
            _decreaseAndBurn(positionMain.nftId, liquidity);
            positionMain.nftId = 0;
        }
        if (liquidityAlt > 0) {
            _decreaseAndBurn(positionAlt.nftId, liquidityAlt);
            positionAlt.nftId = 0;
        }
    }

    function _decreaseAndBurn(uint256 _nftId, uint128 _liquidity) private {
        nftManager.decreaseLiquidity(
            INFPM.DecreaseLiquidityParams({
                tokenId: _nftId,
                liquidity: _liquidity,
                amount0Min: 0,
                amount1Min: 0,
                deadline: block.timestamp
            })
        );
        nftManager.collect(
            INFPM.CollectParams({
                tokenId: _nftId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
        nftManager.burn(_nftId);
    }

    // ============ Rebalance ============

    /// @notice Re-center the positions around the live tick. Callable by a
    ///         factory rebalancer at any calm time, or permissionlessly once the
    ///         price has drifted past `rebalanceThresholdTicks` of the range edge
    ///         (where the position earns nothing). Both paths are TWAP-gated; no
    ///         external swap happens here, so calm is sufficient MEV protection.
    function moveTicks() external nonReentrant onlyCalmPeriods {
        if (!factory.rebalancers(msg.sender) && !_driftedOut()) revert NotAuthorized();
        _removeLiquidity();
        _setTicks();
        _addLiquidity();
        (uint256 bal0, uint256 bal1) = balances();
        emit TVL(bal0, bal1);
    }

    function _driftedOut() private view returns (bool) {
        int24 tick = currentTick();
        return
            tick <= positionMain.tickLower + rebalanceThresholdTicks ||
            tick >= positionMain.tickUpper - rebalanceThresholdTicks;
    }

    // ============ Harvest (auto-compound) ============

    /// @notice Permissionless harvest (Beefy-style): claim TOPAZ, take the perf +
    ///         call fee, compound the rest. The caller receives the call fee.
    /// @dev Defaults the external reward→base swap to min-out 0 (like Beefy), so
    ///      run frequent/small harvests; use `harvest(minOut)` for a bounded swap.
    function harvest() external nonReentrant {
        _harvest(msg.sender, 0);
    }

    /// @notice Harvest with a caller-supplied min-out for the TOPAZ→base hop (an
    ///         off-chain QuoterV2 bound) — for harvesting larger accumulations
    ///         without sandwich risk. Still permissionless; call fee to caller.
    function harvest(uint256 rewardToBaseMinOut) external nonReentrant {
        _harvest(msg.sender, rewardToBaseMinOut);
    }

    /// @dev Claim → perf fee + call fee → compound (swap TOPAZ→base→token0/token1)
    ///      → re-deploy. TWAP-gated so the in-pool swap and re-mint can't be
    ///      sandwiched. The in-pool base→token hop is bounded on-chain from price().
    function _harvest(address _callFeeRecipient, uint256 _rewardToBaseMinOut) private onlyCalmPeriods {
        _claimEarnings();
        uint256 rewardBal = IERC20(reward).balanceOf(address(this));
        if (rewardBal == 0) revert NothingToHarvest();

        uint256 perfFee = (rewardBal * performanceFeeBps) / BPS;
        uint256 callFee = (rewardBal * callFeeBps) / BPS;
        if (perfFee > 0) IERC20(reward).safeTransfer(factory.feeRecipient(), perfFee);
        if (callFee > 0) IERC20(reward).safeTransfer(_callFeeRecipient, callFee);
        uint256 toCompound = rewardBal - perfFee - callFee;

        if (toCompound > 0) _swapRewardToTokens(toCompound, _rewardToBaseMinOut);

        _removeLiquidity();
        _addLiquidity();

        lastHarvest = block.timestamp;
        emit Harvest(toCompound, perfFee, callFee);
    }

    function _claimEarnings() private {
        if (positionMain.nftId != 0) gauge.getReward(positionMain.nftId);
        if (positionAlt.nftId != 0) gauge.getReward(positionAlt.nftId);
    }

    /// @dev TOPAZ → base (configured path, keeper min) → swap half of the base
    ///      gained into the other leg so the compound lands mostly in the main.
    function _swapRewardToTokens(uint256 _amount, uint256 _rewardToBaseMinOut) private {
        uint256 baseGained;
        if (reward == base) {
            baseGained = _amount;
        } else {
            uint256 beforeBal = IERC20(base).balanceOf(address(this));
            swapRouter.exactInput(
                ISwapRouter.ExactInputParams({
                    path: rewardToBasePath,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: _amount,
                    amountOutMinimum: _rewardToBaseMinOut
                })
            );
            baseGained = IERC20(base).balanceOf(address(this)) - beforeBal;
        }

        address other = base == lpToken0 ? lpToken1 : lpToken0;
        uint256 half = baseGained / 2;
        if (half > 0) {
            swapRouter.exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: base,
                    tokenOut: other,
                    tickSpacing: tickSpacing,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: half,
                    amountOutMinimum: _quoteInPool(base, half),
                    sqrtPriceLimitX96: 0
                })
            );
        }
    }

    /// @dev On-chain min-out for an in-pool swap, from the pool spot price ×
    ///      (1 − slippage). Safe because every swap path here is TWAP-gated.
    function _quoteInPool(address _from, uint256 _amountIn) private view returns (uint256 minOut) {
        uint256 p = price();
        uint256 expected = _from == lpToken0
            ? FullMath.mulDiv(_amountIn, p, PRECISION)
            : FullMath.mulDiv(_amountIn, PRECISION, p);
        minOut = (expected * (BPS - slippageBps)) / BPS;
    }

    // ============ Balances / valuation ============

    function balances() public view returns (uint256 token0Bal, uint256 token1Bal) {
        (uint256 thisBal0, uint256 thisBal1) = balancesOfThis();
        (uint256 poolBal0, uint256 poolBal1) = balancesOfPool();
        token0Bal = thisBal0 + poolBal0;
        token1Bal = thisBal1 + poolBal1;
    }

    function balancesOfThis() public view returns (uint256 token0Bal, uint256 token1Bal) {
        token0Bal = IERC20(lpToken0).balanceOf(address(this));
        token1Bal = IERC20(lpToken1).balanceOf(address(this));
    }

    function balancesOfPool() public view returns (uint256 token0Bal, uint256 token1Bal) {
        uint160 sqrtPriceX96 = sqrtPrice();
        (uint256 mainAmount0, uint256 mainAmount1) = _positionAmounts(positionMain, sqrtPriceX96);
        (uint256 altAmount0, uint256 altAmount1) = _positionAmounts(positionAlt, sqrtPriceX96);
        token0Bal = mainAmount0 + altAmount0;
        token1Bal = mainAmount1 + altAmount1;
    }

    function _positionAmounts(Position memory _pos, uint160 _sqrtPriceX96)
        private
        view
        returns (uint256 amount0, uint256 amount1)
    {
        if (_pos.nftId == 0) return (0, 0);
        (, , , , , , , uint128 liquidity, , , uint256 owed0, uint256 owed1) = nftManager.positions(_pos.nftId);
        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
            _sqrtPriceX96,
            TickMath.getSqrtRatioAtTick(_pos.tickLower),
            TickMath.getSqrtRatioAtTick(_pos.tickUpper),
            liquidity
        );
        amount0 += owed0;
        amount1 += owed1;
    }

    // ============ Ticks ============

    function _setTicks() private onlyCalmPeriods {
        int24 tick = currentTick();
        int24 distance = tickSpacing;
        int24 width = positionWidth * distance;
        _setMainTick(tick, distance, width);
        _setAltTick(tick, distance, width);
    }

    function _setMainTick(int24 tick, int24 distance, int24 width) private {
        (positionMain.tickLower, positionMain.tickUpper) = TickUtils.baseTicks(tick, width, distance);
    }

    function _setAltTick(int24 tick, int24 distance, int24 width) private {
        (uint256 bal0, uint256 bal1) = balancesOfThis();
        uint256 amount0AsToken1;
        if (bal0 > 0) amount0AsToken1 = (bal0 * price()) / PRECISION;

        if (amount0AsToken1 < bal1) {
            // token1 dominates — single-sided range below the current tick
            (positionAlt.tickLower, ) = TickUtils.baseTicks(tick, width, distance);
            (positionAlt.tickUpper, ) = TickUtils.baseTicks(tick, distance, distance);
        } else if (bal1 < amount0AsToken1) {
            // token0 dominates — single-sided range above the current tick
            (, positionAlt.tickLower) = TickUtils.baseTicks(tick, distance, distance);
            (, positionAlt.tickUpper) = TickUtils.baseTicks(tick, width, distance);
        }
    }

    // ============ Views ============

    function currentTick() public view returns (int24 tick) {
        (, tick, , , , ) = ICLPool(pool).slot0();
    }

    function sqrtPrice() public view returns (uint160 sqrtPriceX96) {
        (sqrtPriceX96, , , , , ) = ICLPool(pool).slot0();
    }

    function price() public view returns (uint256 _price) {
        _price = FullMath.mulDiv(uint256(sqrtPrice()), SQRT_PRECISION, (2 ** 96)) ** 2;
    }

    function swapFee() external view returns (uint256 fee) {
        fee = (uint256(ICLPool(pool).fee()) * SQRT_PRECISION) / 1e6;
    }

    /// @notice The price range covered by the main position (token1 per token0, 1e36).
    function range() external view returns (uint256 lowerPrice, uint256 upperPrice) {
        lowerPrice = FullMath.mulDiv(uint256(TickMath.getSqrtRatioAtTick(positionMain.tickLower)), SQRT_PRECISION, 2 ** 96) ** 2;
        upperPrice = FullMath.mulDiv(uint256(TickMath.getSqrtRatioAtTick(positionMain.tickUpper)), SQRT_PRECISION, 2 ** 96) ** 2;
    }

    function twap() public view returns (int56 twapTick) {
        uint32[] memory secondsAgo = new uint32[](2);
        secondsAgo[0] = uint32(twapInterval);
        secondsAgo[1] = 0;
        (int56[] memory tickCuml, ) = ICLPool(pool).observe(secondsAgo);
        twapTick = (tickCuml[1] - tickCuml[0]) / int32(twapInterval);
    }

    // ============ Owner config ============

    function setPositionWidth(int24 _width) external onlyOwner {
        emit SetPositionWidth(positionWidth, _width);
        _removeLiquidity();
        positionWidth = _width;
        _setTicks();
        _addLiquidity();
    }

    function setDeviation(int56 _maxDeviation) external onlyOwner {
        if (_maxDeviation >= int56(tickSpacing) * 4) revert InvalidInput();
        maxTickDeviation = _maxDeviation;
        emit SetDeviation(_maxDeviation);
    }

    function setTwapInterval(uint32 _interval) external onlyOwner {
        if (_interval < 60) revert InvalidInput();
        emit SetTwapInterval(twapInterval, _interval);
        twapInterval = _interval;
    }

    function setPerformanceFee(uint16 _fee) external onlyOwner {
        if (_fee > MAX_PERFORMANCE_FEE) revert InvalidInput();
        performanceFeeBps = _fee;
        emit SetPerformanceFee(_fee);
    }

    function setCallFee(uint16 _fee) external onlyOwner {
        if (_fee > MAX_CALL_FEE) revert InvalidInput();
        callFeeBps = _fee;
        emit SetCallFee(_fee);
    }

    function setSlippage(uint16 _slippage) external onlyOwner {
        if (_slippage > MAX_SLIPPAGE) revert InvalidInput();
        slippageBps = _slippage;
        emit SetSlippage(_slippage);
    }

    function setRebalanceThreshold(int24 _threshold) external onlyOwner {
        if (_threshold < 0) revert InvalidInput();
        rebalanceThresholdTicks = _threshold;
        emit SetRebalanceThreshold(_threshold);
    }

    function setRewardToBasePath(bytes calldata _path) external onlyOwner {
        _validateRewardToBasePath(_path, reward, base);
        rewardToBasePath = _path;
        emit SetRewardToBasePath(_path);
    }

    /// @dev Validate a packed v3 path (`token | tickSpacing(3B) | token | ...`):
    ///      it must start at `reward`, end at `base`, be correctly sized, and
    ///      carry only positive tick spacings — so a malformed/typo'd path can't
    ///      silently swap TOPAZ into the wrong token. An empty path is only valid
    ///      when reward == base (no external hop needed).
    function _validateRewardToBasePath(bytes memory path, address _reward, address _base) private pure {
        if (_reward == _base) {
            if (path.length != 0) revert InvalidRewardPath();
            return;
        }
        if (path.length < 43 || (path.length - 20) % 23 != 0) revert InvalidRewardPath();
        if (_pathTokenAt(path, 0) != _reward) revert InvalidRewardPath();
        if (_pathTokenAt(path, path.length - 20) != _base) revert InvalidRewardPath();
        for (uint256 offset = 20; offset < path.length - 20; offset += 23) {
            if (_pathTickSpacingAt(path, offset) <= 0) revert InvalidRewardPath();
        }
    }

    function _pathTokenAt(bytes memory path, uint256 offset) private pure returns (address token) {
        assembly {
            token := shr(96, mload(add(add(path, 0x20), offset)))
        }
    }

    function _pathTickSpacingAt(bytes memory path, uint256 offset) private pure returns (int24 spacing) {
        uint24 raw;
        assembly {
            raw := shr(232, mload(add(add(path, 0x20), offset)))
        }
        spacing = int24(uint24(raw));
    }

    // ============ Emergency ============

    /// @notice Unstake + remove all liquidity to idle and pause (owner or keeper).
    function panic(uint256 _minAmount0, uint256 _minAmount1) external nonReentrant {
        _onlyManager();
        _removeLiquidity();
        _removeAllowances();
        paused = true;
        emit Paused();
        (uint256 bal0, uint256 bal1) = balances();
        if (bal0 < _minAmount0 || bal1 < _minAmount1) revert TooMuchSlippage();
    }

    /// @notice Re-enable, re-approve, and re-deploy (owner or keeper).
    function unpause() external nonReentrant onlyCalmPeriods {
        _onlyManager();
        _giveAllowances();
        paused = false;
        emit Unpaused();
        _setTicks();
        _addLiquidity();
    }

    /// @notice Recover a stray ERC20 (never token0/token1/reward).
    function recoverERC20(address _token) external onlyOwner {
        if (_token == lpToken0 || _token == lpToken1 || _token == reward) revert ProtectedToken();
        IERC20(_token).safeTransfer(owner(), IERC20(_token).balanceOf(address(this)));
    }

    /// @notice Recover a stray position NFT (never the live main/alt positions).
    function recoverNFT(uint256 _tokenId) external onlyOwner {
        if (_tokenId == positionMain.nftId || _tokenId == positionAlt.nftId) revert ProtectedToken();
        IERC721(address(nftManager)).safeTransferFrom(address(this), owner(), _tokenId);
    }

    /// @notice Accept native so a force-fed balance (e.g. via the position
    ///         manager's ETH-refund path) can never DoS a position mint.
    receive() external payable {}

    /// @notice Recover native that landed on the strategy (refunds / griefing).
    function sweepNative() external onlyOwner {
        uint256 amount = address(this).balance;
        (bool ok, ) = payable(owner()).call{ value: amount }("");
        if (!ok) revert NativeTransferFailed();
        emit NativeSwept(owner(), amount);
    }

    // ============ Allowances ============

    function _giveAllowances() private {
        IERC20(lpToken0).forceApprove(address(nftManager), type(uint256).max);
        IERC20(lpToken1).forceApprove(address(nftManager), type(uint256).max);
        IERC20(reward).forceApprove(address(swapRouter), type(uint256).max);
        IERC20(base).forceApprove(address(swapRouter), type(uint256).max);
    }

    function _removeAllowances() private {
        IERC20(lpToken0).forceApprove(address(nftManager), 0);
        IERC20(lpToken1).forceApprove(address(nftManager), 0);
        IERC20(reward).forceApprove(address(swapRouter), 0);
        IERC20(base).forceApprove(address(swapRouter), 0);
    }

    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
