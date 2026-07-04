// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC4626 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import { IGauge } from "./interfaces/IGauge.sol";
import { IRouter } from "./interfaces/IRouter.sol";
import { IPool } from "./interfaces/IPool.sol";
import { IWETH } from "./interfaces/IWETH.sol";
import { TopazV2ZapLib } from "./TopazV2ZapLib.sol";

/// @title TopazV2Vault
/// @notice ERC4626 vault that holds a Topaz v2 LP (an arbitrary token paired
///         with USDT or WBNB), stakes it in the Topaz gauge, and auto-compounds
///         TOPAZ emissions back into more LP.
/// @dev Users deposit LP -> receive vault shares; compounding increases the LP
///      backing each share. The reward token is read from the gauge and the
///      pool kind (stable/volatile) from the pool, so a single implementation
///      serves any Topaz gauge. Routing (TOPAZ -> WBNB -> base -> LP) comes from
///      {TopazV2ZapLib}. The public config getters let the shared generic zapper
///      route for this vault without per-vault wiring.
contract TopazV2Vault is ERC4626, ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using TopazV2ZapLib for TopazV2ZapLib.Ctx;

    // ============ Constants ============

    /// @notice Maximum performance fee (20%)
    uint256 public constant MAX_PERFORMANCE_FEE = 2000;

    /// @notice Maximum settable slippage tolerance (10%)
    uint256 public constant MAX_SLIPPAGE = 1000;

    /// @notice Minimum initial deposit to harden against the inflation attack
    uint256 public constant MINIMUM_INITIAL_DEPOSIT = 1000;

    // ============ Immutables ============

    /// @notice The liquid pool leg (USDT or WBNB) all routing flows through
    IERC20 public immutable base;

    /// @notice The arbitrary (non-base) pool leg
    IERC20 public immutable other;

    /// @notice Wrapped native (WBNB); routing hub for the reward token
    IWETH public immutable wbnb;

    /// @notice The Topaz v2 LP pool (== the vault asset)
    IPool public immutable pool;

    /// @notice The Topaz v2 Router
    IRouter public immutable router;

    /// @notice The Topaz PoolFactory
    address public immutable poolFactory;

    /// @notice Pool kind — true if stable, false if volatile (read from the pool)
    bool public immutable stable;

    /// @notice The gauge reward token (TOPAZ) — read from the gauge at deploy
    IERC20 public immutable reward;

    /// @notice The Topaz gauge the LP is staked in
    IGauge public immutable gauge;

    // ============ State ============

    /// @notice Performance fee in basis points (e.g., 1000 = 10%)
    uint256 public performanceFee;

    /// @notice Address receiving performance fees
    address public feeRecipient;

    /// @notice Slippage tolerance applied to every compound leg (bps, default 1%)
    uint256 public slippageTolerance = 100;

    // ============ Events ============

    event Compounded(uint256 rewardClaimed, uint256 lpGained, uint256 totalAssets);
    event CompoundZapFailed(uint256 rewardAmount);
    event PerformanceFeeCollected(uint256 amount);
    event PerformanceFeeUpdated(uint256 newFee);
    event FeeRecipientUpdated(address indexed newRecipient);
    event SlippageToleranceUpdated(uint256 newTolerance);

    // ============ Errors ============

    error ZeroAddress();
    error ZeroShares();
    error FeeTooHigh();
    error InvalidSlippage();
    error InitialDepositTooSmall();
    error NotPoolToken();
    error OnlySelf();
    error TooMuchSlippage();

    // ============ Constructor ============

    /// @param _base Base asset (USDT or WBNB) — must be one of the pool tokens
    /// @param _other The other (arbitrary) pool token
    /// @param _wbnb WBNB address (reward routing hub)
    /// @param _pool Topaz v2 LP pool (the vault asset)
    /// @param _gauge Topaz gauge for the pool
    /// @param _router Topaz v2 Router
    /// @param _poolFactory Topaz PoolFactory
    /// @param _feeRecipient Address to receive performance fees
    /// @param _name Vault share name
    /// @param _symbol Vault share symbol
    constructor(
        address _base,
        address _other,
        address _wbnb,
        address _pool,
        address _gauge,
        address _router,
        address _poolFactory,
        address _feeRecipient,
        string memory _name,
        string memory _symbol
    ) ERC4626(IERC20(_pool)) ERC20(_name, _symbol) Ownable(msg.sender) {
        if (
            _base == address(0) ||
            _other == address(0) ||
            _wbnb == address(0) ||
            _pool == address(0) ||
            _gauge == address(0) ||
            _router == address(0) ||
            _poolFactory == address(0) ||
            _feeRecipient == address(0)
        ) revert ZeroAddress();

        // `base` and `other` must be exactly the two tokens of the pool.
        address t0 = IPool(_pool).token0();
        address t1 = IPool(_pool).token1();
        if (!((_base == t0 && _other == t1) || (_base == t1 && _other == t0))) revert NotPoolToken();

        address _reward = IGauge(_gauge).rewardToken();
        if (_reward == address(0)) revert ZeroAddress();

        base = IERC20(_base);
        other = IERC20(_other);
        wbnb = IWETH(_wbnb);
        pool = IPool(_pool);
        router = IRouter(_router);
        poolFactory = _poolFactory;
        stable = IPool(_pool).stable();
        gauge = IGauge(_gauge);
        reward = IERC20(_reward);
        feeRecipient = _feeRecipient;
        performanceFee = 1000; // 10%

        // Gauge spends LP for staking; router spends the tokens we route through.
        IERC20(_pool).forceApprove(_gauge, type(uint256).max);
        IERC20(_pool).forceApprove(_router, type(uint256).max);
        IERC20(_base).forceApprove(_router, type(uint256).max);
        IERC20(_other).forceApprove(_router, type(uint256).max);
        IERC20(_wbnb).forceApprove(_router, type(uint256).max);
        IERC20(_reward).forceApprove(_router, type(uint256).max);
    }

    // ============ ERC4626 Overrides ============

    /// @dev Virtual-share offset hardens the vault against the first-deposit
    ///      inflation/donation attack (in addition to MINIMUM_INITIAL_DEPOSIT).
    function _decimalsOffset() internal pure override returns (uint8) {
        return 6;
    }

    /// @notice Total LP managed by the vault (staked in the gauge)
    function totalAssets() public view override returns (uint256) {
        return gauge.balanceOf(address(this));
    }

    /// @dev Deposit LP and stake in the gauge. Compounds first so new depositors
    ///      do not dilute existing holders' pending rewards.
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override nonReentrant {
        if (shares == 0) revert ZeroShares();

        if (totalSupply() == 0 && assets < MINIMUM_INITIAL_DEPOSIT) {
            revert InitialDepositTooSmall();
        }

        _compound(0);

        SafeERC20.safeTransferFrom(IERC20(asset()), caller, address(this), assets);
        gauge.deposit(assets);
        _mint(receiver, shares);

        emit Deposit(caller, receiver, assets, shares);
    }

    /// @dev Withdraw LP from the gauge.
    function _withdraw(
        address caller,
        address receiver,
        address owner_,
        uint256 assets,
        uint256 shares
    ) internal override nonReentrant {
        if (shares == 0) revert ZeroShares();

        if (caller != owner_) {
            _spendAllowance(owner_, caller, shares);
        }

        _burn(owner_, shares);
        gauge.withdraw(assets);
        SafeERC20.safeTransfer(IERC20(asset()), receiver, assets);

        emit Withdraw(caller, receiver, owner_, assets, shares);
    }

    // ============ Compounding ============

    /// @notice Claim TOPAZ, take the fee, zap into LP, and restake (best-effort).
    /// @dev Permissionless. Bounds each swap leg by a spot quote × (1 − slippage),
    ///      which is fine for the small amounts produced by frequent compounding;
    ///      use {compound(uint256)} to harvest a larger accumulation with a
    ///      caller-supplied sandwich bound.
    function compound() external nonReentrant {
        _compound(0);
    }

    /// @notice Same as {compound}, but reverts unless at least `minLpOut` LP is
    ///         compounded — pass a `callStatic`-derived bound to harvest a large
    ///         accumulation without sandwich risk (mirrors the CL strategy's
    ///         `harvest(minOut)`). Still permissionless.
    function compound(uint256 minLpOut) external nonReentrant {
        _compound(minLpOut);
    }

    /// @dev Internal compound. Never reverts on a claim/zap failure (so it is safe
    ///      to call on every deposit), but DOES revert if a successful compound
    ///      yields less than `_minLpOut` (the caller's sandwich bound; 0 disables).
    function _compound(uint256 _minLpOut) internal {
        uint256 rewardBefore = reward.balanceOf(address(this));
        try gauge.getReward(address(this)) {} catch {
            return;
        }
        uint256 claimed = reward.balanceOf(address(this)) - rewardBefore;

        // Performance fee is charged only on the newly claimed amount, so reward
        // recycled from a prior failed zap is never fee-charged twice.
        if (claimed > 0) {
            uint256 fee = (claimed * performanceFee) / TopazV2ZapLib.BPS;
            if (fee > 0) {
                reward.safeTransfer(feeRecipient, fee);
                emit PerformanceFeeCollected(fee);
            }
        }

        // Nothing to compound (no new reward and nothing stranded from before).
        if (reward.balanceOf(address(this)) == 0) return;

        uint256 lpGained;
        try this.zapRewardToLPExternal() returns (uint256 lp) {
            lpGained = lp;
        } catch {
            // Reward stays in the vault and is retried on the next compound.
            emit CompoundZapFailed(reward.balanceOf(address(this)));
            return;
        }

        if (lpGained < _minLpOut) revert TooMuchSlippage();
        if (lpGained > 0) gauge.deposit(lpGained);

        emit Compounded(claimed, lpGained, totalAssets());
    }

    /// @dev External wrapper enabling try/catch around the reward zap. Only the
    ///      vault itself may call it.
    function zapRewardToLPExternal() external returns (uint256) {
        if (msg.sender != address(this)) revert OnlySelf();
        return _zapRewardToLP();
    }

    /// @dev Convert the vault's full reward + leftover balances into LP:
    ///      TOPAZ -> WBNB -> base -> LP, then recycle any zap-in dust so nothing
    ///      strands (operating on full balances also retries reward left by an
    ///      earlier failed zap).
    function _zapRewardToLP() internal returns (uint256 liquidity) {
        TopazV2ZapLib.Ctx memory c = _ctx();

        uint256 rewardBal = reward.balanceOf(address(this));
        if (rewardBal > 0) {
            uint256 wbnbAmount = address(reward) == address(wbnb)
                ? rewardBal
                : c.swapVolatile(address(reward), address(wbnb), rewardBal);
            if (address(base) != address(wbnb)) {
                c.swapVolatile(address(wbnb), address(base), wbnbAmount);
            }
        }

        // Zap the full base balance (freshly swapped + any prior leftover base),
        // then recycle the base+other the zap refunds.
        liquidity = c.zapTokenToLP(address(base), base.balanceOf(address(this)));
        liquidity += c.addLeftoverLiquidity();
    }

    function _ctx() internal view returns (TopazV2ZapLib.Ctx memory) {
        return
            TopazV2ZapLib.Ctx({
                router: router,
                poolFactory: poolFactory,
                pool: pool,
                base: address(base),
                other: address(other),
                stable: stable,
                slippageBps: slippageTolerance
            });
    }

    // ============ Views ============

    /// @notice Pending gauge rewards for this vault
    function pendingRewards() external view returns (uint256) {
        return gauge.earned(address(this));
    }

    /// @notice LP value of a user's shares
    function userLPValue(address user) external view returns (uint256) {
        uint256 shares = balanceOf(user);
        if (shares == 0) return 0;
        return convertToAssets(shares);
    }

    // ============ Admin ============

    /// @notice Update the performance fee (max 2000 = 20%)
    function setPerformanceFee(uint256 _fee) external onlyOwner {
        if (_fee > MAX_PERFORMANCE_FEE) revert FeeTooHigh();
        performanceFee = _fee;
        emit PerformanceFeeUpdated(_fee);
    }

    /// @notice Update the fee recipient
    function setFeeRecipient(address _recipient) external onlyOwner {
        if (_recipient == address(0)) revert ZeroAddress();
        feeRecipient = _recipient;
        emit FeeRecipientUpdated(_recipient);
    }

    /// @notice Update the compound slippage tolerance (max 1000 = 10%)
    function setSlippageTolerance(uint256 _slippageTolerance) external onlyOwner {
        if (_slippageTolerance > MAX_SLIPPAGE) revert InvalidSlippage();
        slippageTolerance = _slippageTolerance;
        emit SlippageToleranceUpdated(_slippageTolerance);
    }
}
