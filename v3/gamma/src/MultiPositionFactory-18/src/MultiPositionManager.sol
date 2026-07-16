// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.26;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { ERC20, ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SignedMath } from "@openzeppelin/contracts/utils/math/SignedMath.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { TransientStateLibrary } from "v4-core/libraries/TransientStateLibrary.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { SafeCast } from "v4-core/libraries/SafeCast.sol";
import { SafeCallback } from "v4-periphery/src/base/SafeCallback.sol";
import { CurrencySettler } from "v4-periphery/lib/v4-core/test/utils/CurrencySettler.sol";

import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { IMultiPositionFactory } from "./interfaces/IMultiPositionFactory.sol";
import { PoolManagerUtils } from "./PoolManagerUtils.sol";
import { DepositRatioLib } from "./libraries/DepositRatioLib.sol";
import { Multicall } from "./base/Multicall.sol";
import { SwapAggregatorLib } from "./libraries/SwapAggregatorLib.sol";
import { SharedStructs } from "./base/SharedStructs.sol";
import { RebalanceLogic } from "./lib/RebalanceLogic.sol";
import { WithdrawLogic } from "./lib/WithdrawLogic.sol";
import { DepositLogic } from "./lib/DepositLogic.sol";
import { PositionLogic } from "./lib/PositionLogic.sol";


contract MultiPositionManager is
  IMultiPositionManager,
  Initializable,
  ERC20Permit,
  ReentrancyGuard,
  Ownable,
  SafeCallback,
  Multicall
{
  using SafeERC20 for IERC20;
  using StateLibrary for IPoolManager;
  using TransientStateLibrary for IPoolManager;
  using SignedMath for int256;
  using Math for uint256;
  using PoolIdLibrary for PoolKey;
  using SafeCast for *;
  using CurrencySettler for Currency;

  uint256 public constant PRECISION = 1e36;

  // Role management constant
  bytes32 public constant REBALANCER_ROLE = keccak256("REBALANCER");

  int24 public constant CENTER_AT_CURRENT_TICK = type(int24).max;

  // Events for role management
  event RebalancerGranted(address indexed account, address indexed granter);
  event RebalancerRevoked(address indexed account, address indexed revoker);

  // Single storage struct
  SharedStructs.ManagerStorage internal s;

  error InvalidFee();
  error ZeroAddress();
  error ZeroValue();
  error InvalidTickRange();
  error InvalidAction();
  error InvalidRebalanceParams();
  error InvalidPoolKeyTokens();
  error InvalidDepositAmount(uint256 amount);
  error CurrencyDeltaError();
  error DuplicatedRange(Range range);
  error NotANativeTokenPair();
  error InsufficientShares(uint256 shares, uint256 minShares);
  error UnauthorizedCaller();
  error InvalidRecipient();
  error NoSharesMinted();
  error InvalidInMinLength();
  error OutMinLengthMismatch();
  error AmountMustBePositive();
  error InsufficientBalance();
  error SlippageProtection();
  error NoStrategySpecified();
  error InvalidWeightSum();
  error WeightBelowMinimum();
  error RegistryNotSet();
  error NoSharesExist();
  error StrategyNotApproved();
  error CannotSendETHForERC20Pair();
  error CarpetRequiresBothTokens();
  error InsufficientLiquidityForCarpet();
  error SwapFailed();
  error InsufficientSwapOutput();

  event Deposit(
    address indexed from,
    address indexed to,
    uint256 shares,
    uint256 deposit0,
    uint256 deposit1
  );
  event Withdraw(
    address indexed sender,
    address indexed to,
    uint256 shares,
    uint256 amount0,
    uint256 amount1
  );
  event Burn(
    address indexed sender,
    uint256 shares,
    uint256 totalSupply,
    uint256 amount0,
    uint256 amount1
  );

  event WithdrawCustom(
    address indexed sender,
    address indexed to,
    uint256 shares,
    uint256 amount0Out,
    uint256 amount1Out
  );
  event Rebalance(Position[]);
  event FeeChanged(uint16 newFee);


  /**
   * @notice Constructor for MultiPositionManager
   * @dev Sets all immutable values and initializes the contract
   * @param _poolManager The Uniswap V4 pool manager
   * @param _poolKey The pool key defining the pool
   * @param _owner The owner address
   * @param _factory The factory address
   * @param _name Token name
   * @param _symbol Token symbol
   * @param _fee The protocol fee denominator
   */
  constructor(
    IPoolManager _poolManager,
    PoolKey memory _poolKey,
    address _owner,
    address _factory,
    string memory _name,
    string memory _symbol,
    uint16 _fee
  ) ERC20Permit(_name) ERC20(_name, _symbol) Ownable(_owner) SafeCallback(_poolManager) {

    // Initialize storage struct
    s.poolKey = _poolKey;
    s.poolId = _poolKey.toId();
    s.currency0 = _poolKey.currency0;
    s.currency1 = _poolKey.currency1;
    s.factory = _factory;
    s.fee = _fee;
  }

  // ============ Public Getters for Storage ============

  function poolKey() external view returns (PoolKey memory) {
    return s.poolKey;
  }


  function factory() external view returns (address) {
    return s.factory;
  }

  function fee() external view returns (uint16) {
    return s.fee;
  }

  function basePositionsLength() external view returns (uint256) {
    return s.basePositionsLength;
  }

  // function basePositions(uint256 index) external view returns (Range memory) {
  //   return s.basePositions[index];
  // }

  function limitPositions(uint256 index) external view returns (Range memory) {
    return s.limitPositions[index];
  }

  function limitPositionsLength() external view returns (uint256) {
    return s.limitPositionsLength;
  }

  function lastStrategyParams() external view returns (
    address strategy,
    int24 centerTick,
    uint24 ticksLeft,
    uint24 ticksRight,
    uint24 limitWidth,
    uint120 weight0,
    uint120 weight1,
    bool useCarpet
  ) {
    SharedStructs.StrategyParams memory params = s.lastStrategyParams;
    return (
      params.strategy,
      params.centerTick,
      params.ticksLeft,
      params.ticksRight,
      params.limitWidth,
      params.weight0,
      params.weight1,
      params.useCarpet
    );
  }

  function isRebalancer(address account) public view returns (bool) {
    return s.rebalancers[account];
  }

  /**
   * @notice Modifier to restrict access to factory owner only
   */
  modifier onlyFactoryOwner() {
    if (msg.sender != Ownable(s.factory).owner()) revert UnauthorizedCaller();
    _;
  }

  /**
   * @notice Modifier to restrict access to owner or rebalancer
   */
  modifier onlyOwnerOrRebalancer() {
    if (msg.sender != owner() && !s.rebalancers[msg.sender]) {
      revert UnauthorizedCaller();
    }
    _;
  }

  modifier onlyOwnerOrFactory() {
    if (msg.sender != owner() && msg.sender != s.factory) {
      revert UnauthorizedCaller();
    }
    _;
  }

  modifier onlyOwnerOrRebalancerOrFactory() {
    if (msg.sender != owner() && !s.rebalancers[msg.sender] && msg.sender != s.factory) {
      revert UnauthorizedCaller();
    }
    _;
  }

  receive() external payable {}
  

  /**
   * @notice Deposit tokens to vault (idle balance). Use compound() to add to positions.
   * @param deposit0Desired Maximum amount of token0 to deposit
   * @param deposit1Desired Maximum amount of token1 to deposit
   * @param to Address to which liquidity tokens are minted
   * @param from Address from which asset tokens are transferred
   * @return shares Number of shares minted
   * @return deposit0 Actual amount of token0 deposited
   * @return deposit1 Actual amount of token1 deposited
   */
  function deposit(
    uint256 deposit0Desired,
    uint256 deposit1Desired,
    address to,
    address from
  ) external payable onlyOwnerOrFactory returns (
    uint256 shares,
    uint256 deposit0,
    uint256 deposit1
  ) {
    // Delegate to DepositLogic library
    (shares, deposit0, deposit1) = DepositLogic.processDeposit(
      s,
      poolManager,
      deposit0Desired,
      deposit1Desired,
      to,
      from,
      totalSupply(),
      msg.value
    );

    // Effects: Mint shares first (checks-effects-interactions pattern)
    _mint(to, shares);

    // Interactions: Transfer tokens to vault
    _transferIn(from, s.currency0, deposit0);
    _transferIn(from, s.currency1, deposit1);

    emit Deposit(from, to, shares, deposit0, deposit1);
  }

  /**
   * @notice Compound idle vault balance + fees into existing positions
   * @dev Collects fees via zeroBurn, then adds all idle balance to positions
   * @param inMin Minimum amounts for each position (slippage protection)
   */
  function compound(uint256[2][] calldata inMin) external onlyOwnerOrFactory {
    poolManager.unlock(abi.encode(IMultiPositionManager.Action.COMPOUND, abi.encode(inMin)));
  }

  /**
   * @notice Compound with swap: collect fees, swap to target ratio, then add to positions
   * @param params CompoundSwapParams containing swap and slippage details
   */
  function compoundSwap(IMultiPositionManager.CompoundSwapParams calldata params) external payable onlyOwnerOrFactory {
    poolManager.unlock(abi.encode(IMultiPositionManager.Action.COMPOUND_SWAP, abi.encode(params, msg.value)));
  }

  /**
   *
   * @param shares Number of liquidity tokens to redeem as pool assets
   * @param to Address to which redeemed pool assets are sent (ignored if withdrawToWallet is false)
   * @param outMin min amount returned for shares of liq
   * @param withdrawToWallet If true, transfers tokens to 'to' and burns shares. If false, keeps tokens in contract and preserves shares.
   * @return amount0 Amount of token0 redeemed by the submitted liquidity tokens
   * @return amount1 Amount of token1 redeemed by the submitted liquidity tokens
   */
  function withdraw(
    uint256 shares,
    address to,
    uint256[2][] memory outMin,
    bool withdrawToWallet
  ) nonReentrant external returns (uint256 amount0, uint256 amount1) {
    // Delegate to WithdrawLogic library
    (amount0, amount1) = WithdrawLogic.processWithdraw(
      s,
      poolManager,
      shares,
      to,
      outMin,
      totalSupply(),
      msg.sender,
      withdrawToWallet
    );

    // Only burn shares if withdrawing to wallet
    if (withdrawToWallet) {
      _burn(msg.sender, shares);
    }
  }


  /**
   * @notice Withdraw custom amounts of both tokens
   * @param amount0Desired Amount of token0 to withdraw
   * @param amount1Desired Amount of token1 to withdraw
   * @param to Address to receive the tokens
   * @param outMin Minimum amounts per position for slippage protection
   * @return amount0Out Amount of token0 withdrawn
   * @return amount1Out Amount of token1 withdrawn
   * @return sharesBurned Number of shares burned
   */
  function withdrawCustom(
    uint256 amount0Desired,
    uint256 amount1Desired,
    address to,
    uint256[2][] memory outMin
  ) external nonReentrant returns (uint256 amount0Out, uint256 amount1Out, uint256 sharesBurned) {
    // Delegate to WithdrawLogic library
    WithdrawLogic.CustomWithdrawParams memory params = WithdrawLogic.CustomWithdrawParams({
      amount0Desired: amount0Desired,
      amount1Desired: amount1Desired,
      to: to,
      outMin: outMin,
      totalSupply: totalSupply(),
      senderBalance: balanceOf(msg.sender),
      sender: msg.sender
    });

    (amount0Out, amount1Out, sharesBurned) = WithdrawLogic.processWithdrawCustom(s, poolManager, params);

    // Burn shares after successful withdrawal
    _burn(msg.sender, sharesBurned);
  }


  /**
   * @notice Unified rebalance function with optional weighted token distribution
   * @param params Rebalance parameters including optional weights
   * @param outMin Minimum output amounts for withdrawals
   * @param inMin Minimum input amounts for new positions (slippage protection)
   * @dev If weights are not specified or are both 0, defaults to 50/50 distribution
   */
  function rebalance(
    IMultiPositionManager.RebalanceParams calldata params,
    uint256[2][] memory outMin,
    uint256[2][] memory inMin
  ) public onlyOwnerOrRebalancerOrFactory {
    // Delegate to RebalanceLogic library
    (
      IMultiPositionManager.Range[] memory baseRanges,
      uint128[] memory liquidities,
      int24 limitWidth
    ) = RebalanceLogic.rebalance(s, poolManager, params, outMin, inMin);

    // Execute rebalance with calculated parameters
    bytes memory encodedParams = abi.encode(baseRanges, liquidities, limitWidth, inMin, outMin);
    poolManager.unlock(
      abi.encode(IMultiPositionManager.Action.REBALANCE, encodedParams)
    );
  }


  /**
   * @notice Rebalances positions with an external DEX swap to achieve target weights
   * @param params Swap and rebalance parameters including aggregator address and swap data
   * @param outMin Minimum output amounts for burning current positions
   * @param inMin Minimum input amounts for new positions (slippage protection)
   * @dev Burns all positions first, then swaps to target ratio, then rebalances with new amounts
   */
  function rebalanceSwap(
    IMultiPositionManager.RebalanceSwapParams calldata params,
    uint256[2][] memory outMin,
    uint256[2][] memory inMin
  ) public onlyOwnerOrRebalancerOrFactory {
    // 1. Burn all existing positions first (inside unlock)
    if (totalSupply() > 0 && (s.basePositionsLength > 0 || s.limitPositionsLength > 0)) {
      poolManager.unlock(
        abi.encode(IMultiPositionManager.Action.BURN_ALL, abi.encode(outMin))
      );
    }

    // 2. Execute swap (if needed) and calculate ranges (outside unlock)
    (
      IMultiPositionManager.Range[] memory baseRanges,
      uint128[] memory liquidities,
      int24 limitWidth
    ) = RebalanceLogic.executeSwapAndCalculateRanges(s, poolManager, params);

    // 4. Rebalance with new ranges (inside unlock)
    bytes memory encodedParams = abi.encode(baseRanges, liquidities, limitWidth, inMin, outMin);
    poolManager.unlock(
      abi.encode(IMultiPositionManager.Action.REBALANCE, encodedParams)
    );
  }

  /**
   * @notice Claims fees
   * @dev If called by owner, performs zeroBurn and claims both owner and protocol fees
   * @dev If called by factory owner or CLAIM_MANAGER, only claims existing protocol fees
   */
  function claimFee() external {
    address caller;

    // Check if caller is the owner
    if (msg.sender == owner()) {
      // Owner can claim their portion + trigger protocol fee transfer
      caller = msg.sender;
    } else if (IMultiPositionFactory(s.factory).hasRoleOrOwner(
      IMultiPositionFactory(s.factory).CLAIM_MANAGER(),
      msg.sender
    )) {
      // Factory owner or CLAIM_MANAGER can only claim protocol fees (no zeroBurn)
      caller = address(0);
    } else {
      revert UnauthorizedCaller();
    }

    poolManager.unlock(
      abi.encode(IMultiPositionManager.Action.CLAIM_FEE, abi.encode(caller))
    );
  }


  function setFee(uint16 newFee) external onlyFactoryOwner {
    s.fee = newFee;
  }

  /**
   * @notice Grant rebalancer role to an address
   * @param account The address to grant the role to
   */
  function grantRebalancerRole(address account) external onlyOwner {
    // if (account == address(0)) revert ZeroAddress();
    if (!s.rebalancers[account]) {
      s.rebalancers[account] = true;
      // emit RebalancerGranted(account, msg.sender);
    }
  }

  /**
   * @notice Revoke rebalancer role from an address
   * @param account The address to revoke the role from
   */
  function revokeRebalancerRole(address account) external onlyOwner {
    if (s.rebalancers[account]) {
      s.rebalancers[account] = false;
      // emit RebalancerRevoked(account, msg.sender);
    }
  }



  function getBasePositions() public view returns (
    Range[] memory,
    PositionData[] memory
  ) {
    return PositionLogic.getBasePositions(s, poolManager);
  }

  function getPositions() public view returns (
    Range[] memory,
    PositionData[] memory
  ) {
    return PositionLogic.getPositions(s, poolManager);
  }

  function getTotalAmounts() external view returns (
    uint256 total0,
    uint256 total1,
    uint256 totalFee0,
    uint256 totalFee1
  ) {
    return WithdrawLogic.getTotalAmounts(s, poolManager);
  }
  
  function currentTick() public view returns (int24 tick) {
    (, tick, , ) = poolManager.getSlot0(s.poolKey.toId());
  }




  function _unlockCallback(bytes calldata data) internal override returns (bytes memory) {
    (Action selector, bytes memory params) = abi.decode(
      data,
      (Action, bytes)
    );
    bytes memory result = _executeActionWithoutUnlock(selector, params);
    _closePair();
    return result;
  }



  function _executeActionWithoutUnlock(
    Action selector,
    bytes memory params
  ) internal returns (bytes memory result) {
    if (selector == IMultiPositionManager.Action.WITHDRAW) {
      WithdrawLogic.zeroBurnAllWithoutUnlock(s, poolManager);
      (
        uint256 shares,
        uint256[2][] memory outMin
      ) = abi.decode(params, (uint256, uint256[2][]));
      (uint256 amountOut0, uint256 amountOut1) = PositionLogic.burnLiquidities(poolManager, s, shares, totalSupply(), outMin);
      return abi.encode(amountOut0, amountOut1);
    } else if (selector == IMultiPositionManager.Action.REBALANCE) {
      // Delegate entirely to RebalanceLogic
      return RebalanceLogic.processRebalanceInCallback(s, poolManager, params, totalSupply());
    } else if (selector == IMultiPositionManager.Action.ZERO_BURN) {
      // Collect fees into vault via zeroBurn
      WithdrawLogic.zeroBurnAllWithoutUnlock(s, poolManager);
      return "";
    } else if (selector == IMultiPositionManager.Action.CLAIM_FEE) {
      address caller = abi.decode(params, (address));
      WithdrawLogic.processClaimFee(s, poolManager, caller, owner());
      return "";
    } else if (selector == IMultiPositionManager.Action.WITHDRAW_CUSTOM) {
      // Delegate entirely to WithdrawLogic
      return WithdrawLogic.processWithdrawCustomComplete(s, poolManager, params, totalSupply());
    } else if (selector == IMultiPositionManager.Action.DIRECT_DEPOSIT) {
      // Delegate entirely to DepositLogic
      return DepositLogic.processDirectDepositInCallback(s, poolManager, params);
    } else if (selector == IMultiPositionManager.Action.BURN_ALL) {
      // Delegate entirely to WithdrawLogic
      return WithdrawLogic.processBurnAllInCallback(s, poolManager, totalSupply(), params);
    } else if (selector == IMultiPositionManager.Action.COMPOUND) {
      // Delegate to DepositLogic
      uint256[2][] memory inMin = abi.decode(params, (uint256[2][]));
      DepositLogic.processCompound(s, poolManager, inMin);
      return "";
    } else if (selector == IMultiPositionManager.Action.COMPOUND_SWAP) {
      // Delegate to DepositLogic
      (IMultiPositionManager.CompoundSwapParams memory swapParams, uint256 msgValue) =
        abi.decode(params, (IMultiPositionManager.CompoundSwapParams, uint256));
      DepositLogic.processCompoundSwap(s, poolManager, swapParams, msgValue);
      return "";
    } else revert InvalidAction();
  }


  /**
   * @notice Close both currency deltas with pool manager
   */
  function _closePair() internal {
    PoolManagerUtils.close(poolManager, s.currency1);
    PoolManagerUtils.close(poolManager, s.currency0);
  }

  /**
   * @notice Internal function to handle token transfers
   * @param from Address to transfer from
   * @param currency The currency to transfer
   * @param amount Amount to transfer
   */
  function _transferIn(address from, Currency currency, uint256 amount) internal {
    if (currency.isAddressZero()) {
      if (msg.value < amount) revert InsufficientBalance();
      if (msg.value > amount)
        payable(msg.sender).transfer(msg.value - amount);
    } else if (amount != 0) {
      IERC20(Currency.unwrap(currency)).safeTransferFrom(from, address(this), amount);
    }
  }
}
