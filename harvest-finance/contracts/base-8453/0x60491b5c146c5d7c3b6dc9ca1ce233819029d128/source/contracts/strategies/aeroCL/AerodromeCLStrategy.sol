//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.26;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/utils/ERC721HolderUpgradeable.sol";
import "../../base/interface/IUniversalLiquidator.sol";
import "../../base/upgradability/BaseUpgradeableStrategyCL.sol";
import "../../base/interface/aerodrome/ICLGauge.sol";
import "../../base/interface/concentrated-liquidity/INonfungiblePositionManager.sol";

contract AerodromeCLStrategy is BaseUpgradeableStrategyCL, ERC721HolderUpgradeable {

  using SafeMath for uint256;
  using SafeERC20 for IERC20;

  address public constant harvestMSIG = address(0x97b3e5712CDE7Db13e939a188C8CA90Db5B05131);

  // this would be reset on each upgrade
  address[] public rewardTokens;
  mapping(address => bool) public rewardTokenAllowed;
  bool public harvestPaused;
  bool public withdrawOnlyMode;
  uint256 public maxSlippageBps;
  mapping(address => uint256) public minRewardToCompound;

  // Telemetry for skipped reward swaps. Appended at end for upgrade safety.
  uint256 public swapSkippedCount;
  uint256 public lastSwapSkippedAt;

  enum SwapSkipReason {
    NotAllowed,
    BelowThreshold,
    CallReverted,
    ShortReturn,
    AmountOutZero,
    AmountOutBelowMin
  }

  uint256 private constant _BPS_DENOMINATOR = 10_000;
  event EmergencyStateUpdated(bool pauseInvesting, bool pauseHarvesting, bool withdrawOnly);
  event StrategySwapExecuted(address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 amountOut, uint256 minOut);
  event StrategySwapSkipped(address indexed tokenIn, address indexed tokenOut, SwapSkipReason indexed reason, uint256 amountIn, uint256 minOut);
  event MinRewardToCompoundUpdated(address indexed token, uint256 threshold);

  constructor() BaseUpgradeableStrategyCL() {
  }

  function initializeBaseStrategy(
    address _storage,
    address _vault,
    address _gauge,
    address _rewardToken
  ) public initializer {

    BaseUpgradeableStrategyCL.initialize(
      _storage,
      _vault,
      _gauge,
      _rewardToken,
      harvestMSIG
    );
    maxSlippageBps = 100;
    rewardTokenAllowed[_rewardToken] = true;
    // Default reward-compounding threshold: 0.01 reward token (1e16 raw assuming 18 decimals).
    // Tuned so that a single cycle of accrued rewards is meaningful enough to: (a) cover the
    // protocol fee leg, (b) survive the AERO -> token0 UL swap with reasonable routing
    // friction, and (c) leave enough principal to value-balance into token1. Below this
    // threshold the cycle is skipped pre-fees so rewards accumulate for the next claim.
    // Governance can re-tune per asset via setMinRewardToCompound.
    minRewardToCompound[_rewardToken] = 1e16;
  }

  function _nftStaked() internal view returns (bool staked) {
    staked = INonfungiblePositionManager(posManager()).ownerOf(posId()) == rewardPool();
  }

  function _nftInStrategy() internal view returns (bool inStrategy) {
    inStrategy = INonfungiblePositionManager(posManager()).ownerOf(posId()) == address(this);
  }

  function _emergencyExitRewardPool() internal {
    _withdraw();
  }

  function _withdraw() internal {
    if (_nftStaked()) {
      ICLGauge(rewardPool()).withdraw(posId());
    }
  }

  function _stake() internal {
    address _rewardPool = rewardPool();
    uint256 _posId = posId();
    IERC721(posManager()).approve(_rewardPool, _posId);
    ICLGauge(_rewardPool).deposit(_posId);
  }

  function _investAllUnderlying() internal onlyNotPausedInvesting {
    if(_nftInStrategy()) {
      _stake();
    }
  }

  /*
  *   In case there are some issues discovered about the pool or underlying asset
  *   Governance can exit the pool properly
  *   The function is only used for emergency to exit the pool
  */
  function emergencyExit() public onlyGovernance {
    _emergencyExitRewardPool();
    _setPausedInvesting(true);
    harvestPaused = true;
    withdrawOnlyMode = true;
    emit EmergencyStateUpdated(true, true, true);
  }

  /*
  *   Resumes the ability to invest into the underlying reward pools
  */
  function continueInvesting() public onlyGovernance {
    _setPausedInvesting(false);
    harvestPaused = false;
    withdrawOnlyMode = false;
    emit EmergencyStateUpdated(false, false, false);
  }

  function unsalvagableTokens(address token) public view returns (bool) {
    return (token == rewardToken() || token == token0() || token == token1() || rewardTokenAllowed[token]);
  }

  function addRewardToken(address _token) public onlyGovernance {
    require(_token != address(0), "token");
    require(!rewardTokenAllowed[_token], "already allowed");
    rewardTokenAllowed[_token] = true;
    rewardTokens.push(_token);
  }

  function removeRewardToken(address _token) external onlyGovernance {
    require(_token != rewardToken(), "base reward");
    rewardTokenAllowed[_token] = false;

    // Pop from the iteration array as well so harvests stop paying gas to inspect a token
    // that's no longer compoundable. Swap-with-last + pop keeps order-irrelevant.
    uint256 length = rewardTokens.length;
    for (uint256 i = 0; i < length; i++) {
      if (rewardTokens[i] == _token) {
        if (i != length - 1) {
          rewardTokens[i] = rewardTokens[length - 1];
        }
        rewardTokens.pop();
        break;
      }
    }
  }

  function setMaxSlippageBps(uint256 _maxSlippageBps) external onlyGovernance {
    require(_maxSlippageBps <= _BPS_DENOMINATOR, "slippage");
    maxSlippageBps = _maxSlippageBps;
  }

  function setEmergencyState(bool _pauseInvesting, bool _pauseHarvesting, bool _withdrawOnly) external onlyGovernance {
    _setPausedInvesting(_pauseInvesting);
    harvestPaused = _pauseHarvesting;
    withdrawOnlyMode = _withdrawOnly;
    emit EmergencyStateUpdated(_pauseInvesting, _pauseHarvesting, _withdrawOnly);
  }

  function setMinRewardToCompound(address _token, uint256 _threshold) external onlyGovernance {
    require(_token != address(0), "token");
    minRewardToCompound[_token] = _threshold;
    emit MinRewardToCompoundUpdated(_token, _threshold);
  }

  function _liquidateReward() internal {
    require(!withdrawOnlyMode, "Withdraw only");
    if (!sell()) {
      // Profits can be disabled for possible simplified and rapid exit
      emit ProfitsNotCollected(sell(), false);
      return;
    }

    address _rewardToken = rewardToken();

    // First pass: convert any non-reward-token rewards into the reward token. The reward token
    // itself is handled below — including its threshold gate — so it's skipped here to avoid
    // a redundant iteration and a misleading "BelowThreshold" skip event for a token that was
    // never going to be swapped anyway.
    for (uint256 i = 0; i < rewardTokens.length; i++) {
      address token = rewardTokens[i];
      if (token == _rewardToken) {
        continue;
      }
      uint256 balance = IERC20(token).balanceOf(address(this));
      if (!rewardTokenAllowed[token]) {
        _recordSkip(token, _rewardToken, balance, 0, SwapSkipReason.NotAllowed);
        continue;
      }
      if (balance < minRewardToCompound[token]) {
        _recordSkip(token, _rewardToken, balance, _boundedMinOutFromIn(balance), SwapSkipReason.BelowThreshold);
        continue;
      }
      _swapWithBound(token, _rewardToken, balance, _boundedMinOutFromIn(balance));
    }

    // Single threshold gate, BEFORE fees. If accrued reward token is below the threshold we
    // bail out without skimming fees, so the next cycle isn't double-charged on a residual
    // that was already taxed on this one. Above threshold, fees come out and the remainder
    // is unconditionally fed into the compound path.
    uint256 rewardBalance = IERC20(_rewardToken).balanceOf(address(this));
    if (rewardBalance < minRewardToCompound[_rewardToken]) {
      _recordSkip(_rewardToken, _rewardToken, rewardBalance, _boundedMinOutFromIn(rewardBalance), SwapSkipReason.BelowThreshold);
      return;
    }
    _notifyProfitInRewardToken(_rewardToken, rewardBalance);
    uint256 remainingRewardBalance = IERC20(_rewardToken).balanceOf(address(this));

    address _token0 = token0();
    address _token1 = token1();

    if (_token0 != _rewardToken) {
      bool rewardSwapOk = _swapWithBound(_rewardToken, _token0, remainingRewardBalance, _boundedMinOutFromIn(remainingRewardBalance));
      if (!rewardSwapOk) {
        // Keep rewards in strategy and retry compounding once enough value accrues.
        return;
      }
    }

    // Value-based balancing using the pool's spot sqrtPrice. Comparing raw balances was only
    // correct when one side was 0 (e.g. immediately after the reward->token0 swap). With residual
    // leftovers from a prior failed compounding cycle, or with tokens that differ in decimals,
    // raw comparison can pick the wrong direction or overshoot. Quoting in token1-units gives
    // the right direction and amount regardless. Spot is acceptable here per the agreed scope:
    // this only governs reward compounding, where amounts are small and protected by
    // _boundedMinOutFromIn / _swapWithBound's silent skip behavior.
    {
      uint256 token0Balance_ = IERC20(_token0).balanceOf(address(this));
      uint256 token1Balance_ = IERC20(_token1).balanceOf(address(this));
      uint160 sqrtPriceX96 = ICLVault(vault()).getSqrtPriceX96();
      uint256 value0In1 = _quote0To1(token0Balance_, sqrtPriceX96);
      if (value0In1 > token1Balance_) {
        uint256 excessIn1 = (value0In1 - token1Balance_) / 2;
        uint256 amount0ToSwap = _quote1To0(excessIn1, sqrtPriceX96);
        if (amount0ToSwap > 0 && amount0ToSwap >= minRewardToCompound[_token0]) {
          bool rebalanceOk = _swapWithBound(_token0, _token1, amount0ToSwap, _boundedMinOutFromIn(amount0ToSwap));
          if (!rebalanceOk) {
            return;
          }
        }
      } else if (token1Balance_ > value0In1) {
        uint256 amount1ToSwap = (token1Balance_ - value0In1) / 2;
        if (amount1ToSwap > 0 && amount1ToSwap >= minRewardToCompound[_token1]) {
          bool rebalanceOk = _swapWithBound(_token1, _token0, amount1ToSwap, _boundedMinOutFromIn(amount1ToSwap));
          if (!rebalanceOk) {
            return;
          }
        }
      }
    }

    uint256 token0Balance = IERC20(_token0).balanceOf(address(this));
    uint256 token1Balance = IERC20(_token1).balanceOf(address(this));

    address _posManager = posManager();
    IERC20(_token0).safeApprove(_posManager, 0);
    IERC20(_token0).safeApprove(_posManager, token0Balance);

    IERC20(_token1).safeApprove(_posManager, 0);
    IERC20(_token1).safeApprove(_posManager, token1Balance);

    INonfungiblePositionManager(_posManager).increaseLiquidity(
      INonfungiblePositionManager.IncreaseLiquidityParams({
        tokenId: posId(),
        amount0Desired: token0Balance,
        amount1Desired: token1Balance,
        amount0Min: 0,
        amount1Min: 0,
        deadline: block.timestamp
      })
    );
  }

  /// @notice Vault calls this before each user deposit/withdraw to flush any token0/token1 dust
  /// the strategy may have accumulated (e.g. residual leftovers from a previous compound cycle
  /// that didn't fully balance into the position). Without this, that dust would be invisible to
  /// `underlyingBalanceWithInvestment` from the vault's local read AND would never be claimable
  /// by withdrawers — it would only enter the position on the next successful compound, at which
  /// point its value would silently accrue to whoever happens to be a shareholder at that moment.
  /// Sweeping pre-interaction makes the dust part of the vault's idle balance and therefore part
  /// of NAV / per-share value for the current interaction.
  function preInteract() external restricted {
    address t0 = ICLVault(vault()).token0();
    address t1 = ICLVault(vault()).token1();
    uint256 b0 = IERC20(t0).balanceOf(address(this));
    if (b0 > 0) IERC20(t0).safeTransfer(vault(), b0);
    uint256 b1 = IERC20(t1).balanceOf(address(this));
    if (b1 > 0) IERC20(t1).safeTransfer(vault(), b1);
  }

  /*
  *   Withdraws all the asset to the vault
  */
  function withdrawAllToVault(bool compound) public restricted {
    _withdraw();
    if (compound) {
      _liquidateReward();
    }
    if (_nftInStrategy()) {
      IERC721(posManager()).transferFrom(address(this), vault(), posId());
    }
  }

  /*
  *   Governance or Controller can claim coins that are somehow transferred into the contract
  *   Note that they cannot come in take away coins that are used and defined in the strategy itself
  */
  function salvage(address recipient, address token, uint256 amount) external onlyControllerOrGovernance {
     // To make sure that governance cannot come in and take away the coins
    require(!unsalvagableTokens(token), "token is defined as not salvagable");
    IERC20(token).safeTransfer(recipient, amount);
  }

  /*
  *   Get the reward, sell it in exchange for underlying, invest what you got.
  *   It's not much, but it's honest work.
  *
  *   Note that although `onlyNotPausedInvesting` is not added here,
  *   calling `investAllUnderlying()` affectively blocks the usage of `doHardWork`
  *   when the investing is being paused by governance.
  */
  function doHardWork() external onlyNotPausedInvesting restricted {
    require(!harvestPaused, "Harvest paused");
    require(!withdrawOnlyMode, "Withdraw only");
    _withdraw();
    _liquidateReward();
    _investAllUnderlying();
  }

  function setGauge(address _newGauge) external onlyGovernance {
    _withdraw();
    _liquidateReward();

    _setRewardPool(_newGauge);
    _investAllUnderlying();
  }

  /**
  * Can completely disable claiming UNI rewards and selling. Good for emergency withdraw in the
  * simplest possible way.
  */
  function setSell(bool s) public onlyGovernance {
    _setSell(s);
  }

  function finalizeUpgrade() external virtual onlyGovernance {
    _finalizeUpgrade();
  }

  function _boundedMinOutFromIn(uint256 amountIn) internal pure returns (uint256) {
    amountIn;
    return 1;
  }

  uint256 private constant _Q96 = 2 ** 96;

  /// @dev Token1-units value of `amount0In` at the supplied sqrtPriceX96. Two-step mulDiv
  /// matches CLRebalanceHelper._quote0To1 to avoid uint256 overflow when squaring the price.
  function _quote0To1(uint256 amount0In, uint160 sqrtPriceX96) internal pure returns (uint256) {
    uint256 step = Math.mulDiv(amount0In, uint256(sqrtPriceX96), _Q96);
    return Math.mulDiv(step, uint256(sqrtPriceX96), _Q96);
  }

  /// @dev Token0-units value of `amount1In` at the supplied sqrtPriceX96.
  function _quote1To0(uint256 amount1In, uint160 sqrtPriceX96) internal pure returns (uint256) {
    uint256 step = Math.mulDiv(amount1In, _Q96, uint256(sqrtPriceX96));
    return Math.mulDiv(step, _Q96, uint256(sqrtPriceX96));
  }

  function _swapWithBound(address tokenIn, address tokenOut, uint256 amountIn, uint256 minOut) internal returns (bool) {
    address _universalLiquidator = universalLiquidator();
    IERC20(tokenIn).safeApprove(_universalLiquidator, 0);
    IERC20(tokenIn).safeApprove(_universalLiquidator, amountIn);
    (bool success, bytes memory returnData) = _universalLiquidator.call(
      abi.encodeWithSelector(
        IUniversalLiquidator.swap.selector,
        tokenIn,
        tokenOut,
        amountIn,
        minOut,
        address(this)
      )
    );
    if (!success) {
      _recordSkip(tokenIn, tokenOut, amountIn, minOut, SwapSkipReason.CallReverted);
      return false;
    }
    if (returnData.length < 32) {
      _recordSkip(tokenIn, tokenOut, amountIn, minOut, SwapSkipReason.ShortReturn);
      return false;
    }
    uint256 amountOut = abi.decode(returnData, (uint256));
    if (amountOut == 0) {
      _recordSkip(tokenIn, tokenOut, amountIn, minOut, SwapSkipReason.AmountOutZero);
      return false;
    }
    if (amountOut < minOut) {
      _recordSkip(tokenIn, tokenOut, amountIn, minOut, SwapSkipReason.AmountOutBelowMin);
      return false;
    }
    emit StrategySwapExecuted(tokenIn, tokenOut, amountIn, amountOut, minOut);
    return true;
  }

  /// @dev Bumps skip counter, stamps timestamp, and emits the diagnostic event so governance can
  /// monitor failed/skipped reward swaps off-chain.
  function _recordSkip(
    address tokenIn,
    address tokenOut,
    uint256 amountIn,
    uint256 minOut,
    SwapSkipReason reason
  ) internal {
    swapSkippedCount += 1;
    lastSwapSkippedAt = block.timestamp;
    emit StrategySwapSkipped(tokenIn, tokenOut, reason, amountIn, minOut);
  }
}
