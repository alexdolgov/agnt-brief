// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.26;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { ERC20, ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { SafeCallback } from "v4-periphery/src/base/SafeCallback.sol";

import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { ILaunchpadPositionManager } from "./interfaces/ILaunchpadPositionManager.sol";
import { ILaunchpadPositionFactory } from "./interfaces/ILaunchpadPositionFactory.sol";
import { PoolManagerUtils } from "./libraries/PoolManagerUtils.sol";
import { LaunchpadPoolManagerUtils } from "./libraries/LaunchpadPoolManagerUtils.sol";
import { Multicall } from "./base/Multicall.sol";
import { SharedStructs } from "./base/SharedStructs.sol";
import { LaunchpadRebalanceLogic } from "./libraries/LaunchpadRebalanceLogic.sol";
import { LaunchpadDepositLogic } from "./libraries/LaunchpadDepositLogic.sol";
import { PositionLogic } from "./libraries/PositionLogic.sol";


/**
 * @title LimitedPositionManager
 * @notice Fork of MultiPositionManager with locked liquidity (no withdrawals)
 * @dev Key differences from MultiPositionManager:
 *      - No withdraw() or withdrawCustom() functions
 *      - No compound() or compoundSwap() functions
 *      - Rebalance requires minimum tick parameters from factory
 *      - Fee split: 75% to owner, 25% to factory.feeRecipient()
 */
contract LaunchpadPositionManager is
  ILaunchpadPositionManager,
  Initializable,
  ERC20Permit,
  ReentrancyGuard,
  Ownable,
  SafeCallback,
  Multicall
{
  using SafeERC20 for IERC20;
  using StateLibrary for IPoolManager;
  using PoolIdLibrary for PoolKey;

  uint256 public constant PRECISION = 1e36;
  int24 public constant CENTER_AT_CURRENT_TICK = type(int24).max;

  event RebalancerGranted(address indexed account);
  event RebalancerRevoked(address indexed account);

  SharedStructs.ManagerStorage internal s;

  error UnauthorizedCaller();
  error InvalidAction();

  event FeeChanged(uint16 newFee);


  /**
   * @notice Constructor for LimitedPositionManager
   * @dev Sets all immutable values and initializes the contract
   * @param _poolManager The Uniswap V4 pool manager
   * @param _poolKey The pool key defining the pool
   * @param _owner The owner address
   * @param _factory The factory address
   * @param _name Token name
   * @param _symbol Token symbol
   * @param _fee The protocol fee denominator (always 4 for 25%)
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
    s.poolKey = _poolKey;
    s.poolId = _poolKey.toId();
    s.currency0 = _poolKey.currency0;
    s.currency1 = _poolKey.currency1;
    s.factory = _factory;
    s.fee = _fee;
  }

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


  modifier onlyOwnerOrFactory() {
    require(msg.sender == owner() || msg.sender == s.factory);
    _;
  }

  modifier onlyOwnerOrRebalancerOrFactory() {
    require(msg.sender == owner() || s.rebalancers[msg.sender] || msg.sender == s.factory);
    _;
  }

  receive() external payable {}


  /**
   * @notice Deposit tokens to vault (idle balance). Use rebalance() to add to positions.
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
    (shares, deposit0, deposit1) = LaunchpadDepositLogic.processDeposit(
      s,
      poolManager,
      deposit0Desired,
      deposit1Desired,
      to,
      from,
      totalSupply(),
      msg.value
    );

    _mint(to, shares);
    _transferIn(from, s.currency0, deposit0);
    _transferIn(from, s.currency1, deposit1);
  }



  /**
   * @notice Unified rebalance function with optional weighted token distribution
   * @param params Rebalance parameters including optional weights
   * @param outMin Minimum output amounts for withdrawals
   * @param inMin Minimum input amounts for new positions (slippage protection)
   * @dev If weights are not specified or are both 0, defaults to 50/50 distribution
   * @dev Enforces factory minimum tick parameters and disallows limit orders
   */
  function rebalance(
    IMultiPositionManager.RebalanceParams calldata params,
    uint256[2][] memory outMin,
    uint256[2][] memory inMin
  ) public onlyOwnerOrRebalancerOrFactory {
    // Enforce LaunchpadPositionManager restrictions
    ILaunchpadPositionFactory factoryContract = ILaunchpadPositionFactory(s.factory);
    require(params.tLeft >= factoryContract.minTicksLeft(), "tLeft too small");
    require(params.tRight >= factoryContract.minTicksRight(), "tRight too small");
    require(params.limitWidth == 0, "limitWidth must be 0");
    require(params.weight0 == 0, "weight0 must be 0");
    require(params.weight1 == 0, "weight1 must be 0");

    (
      IMultiPositionManager.Range[] memory baseRanges,
      uint128[] memory liquidities,
      int24 limitWidth
    ) = LaunchpadRebalanceLogic.rebalance(s, poolManager, params, outMin, inMin);

    bytes memory encodedParams = abi.encode(baseRanges, liquidities, limitWidth, inMin, outMin, params);
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
    if (msg.sender == owner()) {
      poolManager.unlock(
        abi.encode(IMultiPositionManager.Action.CLAIM_FEE, abi.encode(msg.sender))
      );
    } else if (ILaunchpadPositionFactory(s.factory).hasRoleOrOwner(
      ILaunchpadPositionFactory(s.factory).CLAIM_MANAGER(),
      msg.sender
    )) {
      poolManager.unlock(
        abi.encode(IMultiPositionManager.Action.CLAIM_FEE, abi.encode(address(0)))
      );
    } else {
      revert UnauthorizedCaller();
    }
  }


  function setFee(uint16 newFee) external {
    ILaunchpadPositionFactory factoryContract = ILaunchpadPositionFactory(s.factory);
    require(factoryContract.hasRole(factoryContract.FEE_MANAGER(), msg.sender));
    s.fee = newFee;
    emit FeeChanged(newFee);
  }

  /**
   * @notice Grant rebalancer role to an address
   * @param account The address to grant the role to
   */
  function grantRebalancerRole(address account) external onlyOwner {
    require(account != address(0));
    if (!s.rebalancers[account]) {
      s.rebalancers[account] = true;
      emit RebalancerGranted(account);
    }
  }

  /**
   * @notice Revoke rebalancer role from an address
   * @param account The address to revoke the role from
   */
  function revokeRebalancerRole(address account) external onlyOwner {
    if (s.rebalancers[account]) {
      s.rebalancers[account] = false;
      emit RebalancerRevoked(account);
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
    // Use getTotalAmountsForLimitedManager since we don't have WithdrawLogic
    return _getTotalAmounts();
  }

  function currentTick() public view returns (int24 tick) {
    (, tick, , ) = poolManager.getSlot0(s.poolKey.toId());
  }

  function getRatios() external view returns (
    uint256 pool0Ratio,
    uint256 pool1Ratio,
    uint256 total0Ratio,
    uint256 total1Ratio,
    uint256 inPositionRatio,
    uint256 outOfPositionRatio,
    uint256 baseRatio,
    uint256 limitRatio,
    uint256 base0Ratio,
    uint256 base1Ratio,
    uint256 limit0Ratio,
    uint256 limit1Ratio
  ) {
    PositionLogic.Ratios memory ratios = PositionLogic.getRatios(s, poolManager);
    return (
      ratios.pool0Ratio,
      ratios.pool1Ratio,
      ratios.total0Ratio,
      ratios.total1Ratio,
      ratios.inPositionRatio,
      ratios.outOfPositionRatio,
      ratios.baseRatio,
      ratios.limitRatio,
      ratios.base0Ratio,
      ratios.base1Ratio,
      ratios.limit0Ratio,
      ratios.limit1Ratio
    );
  }




  function _unlockCallback(bytes calldata data) internal override returns (bytes memory) {
    (IMultiPositionManager.Action selector, bytes memory params) = abi.decode(
      data,
      (IMultiPositionManager.Action, bytes)
    );
    bytes memory result = _executeActionWithoutUnlock(selector, params);
    _closePair();
    return result;
  }



  function _executeActionWithoutUnlock(
    IMultiPositionManager.Action selector,
    bytes memory params
  ) internal returns (bytes memory result) {
    if (selector == IMultiPositionManager.Action.REBALANCE) {
      // Perform custom zeroBurn with fee split before rebalancing
      _performZeroBurnWithSplitIfNeeded();
      return LaunchpadRebalanceLogic.processRebalanceInCallback(s, poolManager, params, totalSupply());
    } else if (selector == IMultiPositionManager.Action.ZERO_BURN) {
      _performZeroBurnWithSplitIfNeeded();
      return "";
    } else if (selector == IMultiPositionManager.Action.CLAIM_FEE) {
      address caller = abi.decode(params, (address));
      _processClaimFee(caller);
      return "";
    } else revert InvalidAction();
  }


  /**
   * @notice Perform zeroBurn with custom fee split if there are active positions
   * @dev Uses LaunchpadPoolManagerUtils.zeroBurnAllWithSplit for 75/25 fee split
   */
  function _performZeroBurnWithSplitIfNeeded() private {
    uint256 baseLength = s.basePositionsLength;
    // Check cheaper condition first for short-circuit optimization
    if (baseLength != 0 || s.limitPositionsLength != 0) {

      // Get ranges for zeroBurn
      IMultiPositionManager.Range[] memory baseRangesArray = new IMultiPositionManager.Range[](baseLength);
      for (uint8 i = 0; i < baseLength; ) {
        baseRangesArray[i] = s.basePositions[i];
        unchecked { ++i; }
      }
      IMultiPositionManager.Range[2] memory limitRangesArray = [s.limitPositions[0], s.limitPositions[1]];

      // Use LimitedPoolManagerUtils for custom fee split
      LaunchpadPoolManagerUtils.zeroBurnAllWithSplit(
        poolManager,
        s.poolKey,
        baseRangesArray,
        limitRangesArray,
        s.currency0,
        s.currency1,
        s.fee,
        owner(),
        s.factory
      );
    }
  }

  /**
   * @notice Process fee claim with custom fee split
   * @param caller The address calling claimFee (owner or address(0) for protocol-only claim)
   */
  function _processClaimFee(address caller) private {
    if (caller == owner()) {
      // Owner is calling - perform zeroBurn with custom split and claim all
      (uint256 totalFee0, uint256 totalFee1) = _performZeroBurnWithSplitAndReturn();

      // After zeroBurnAll, treasury portion is minted as ERC-6909 to contract
      // The owner's portion creates negative deltas that are settled by close
      PoolManagerUtils.close(poolManager, s.currency1);
      PoolManagerUtils.close(poolManager, s.currency0);
    } else {
      // Protocol-only claim - just close existing ERC-6909 balances
      // (This handles previously minted treasury fees from zeroBurn)
      uint256 currencyId0 = uint256(uint160(Currency.unwrap(s.currency0)));
      uint256 currencyId1 = uint256(uint160(Currency.unwrap(s.currency1)));

      address feeRecipient = ILaunchpadPositionFactory(s.factory).feeRecipient();

      uint256 balance0 = poolManager.balanceOf(feeRecipient, currencyId0);
      uint256 balance1 = poolManager.balanceOf(feeRecipient, currencyId1);

      if (balance0 > 0) {
        poolManager.burn(feeRecipient, currencyId0, balance0);
        poolManager.take(s.currency0, feeRecipient, balance0);
      }
      if (balance1 > 0) {
        poolManager.burn(feeRecipient, currencyId1, balance1);
        poolManager.take(s.currency1, feeRecipient, balance1);
      }
    }
  }

  /**
   * @notice Perform zeroBurn with split and return fee amounts
   * @return totalFee0 Total fee0 collected
   * @return totalFee1 Total fee1 collected
   */
  function _performZeroBurnWithSplitAndReturn() private returns (uint256 totalFee0, uint256 totalFee1) {
    uint256 baseLength = s.basePositionsLength;
    if (baseLength == 0 && s.limitPositionsLength == 0) {
      return (0, 0);
    }

    IMultiPositionManager.Range[] memory baseRangesArray = new IMultiPositionManager.Range[](baseLength);
    for (uint8 i = 0; i < baseLength; ) {
      baseRangesArray[i] = s.basePositions[i];
      unchecked { ++i; }
    }
    IMultiPositionManager.Range[2] memory limitRangesArray = [s.limitPositions[0], s.limitPositions[1]];

    return LaunchpadPoolManagerUtils.zeroBurnAllWithSplit(
      poolManager,
      s.poolKey,
      baseRangesArray,
      limitRangesArray,
      s.currency0,
      s.currency1,
      s.fee,
      owner(),
      s.factory
    );
  }

  /**
   * @notice Get total amounts including positions and fees
   * @dev Simplified version without WithdrawLogic dependency
   */
  function _getTotalAmounts() private view returns (
    uint256 total0,
    uint256 total1,
    uint256 totalFee0,
    uint256 totalFee1
  ) {
    // Get amounts from base positions
    for (uint256 i = 0; i < s.basePositionsLength; ) {
      (
        ,
        uint256 amount0,
        uint256 amount1,
        uint256 feesOwed0,
        uint256 feesOwed1
      ) = PoolManagerUtils.getAmountsOf(
        poolManager,
        s.poolKey,
        s.basePositions[i]
      );
      total0 += amount0;
      total1 += amount1;
      totalFee0 += feesOwed0;
      totalFee1 += feesOwed1;
      unchecked { ++i; }
    }

    // Get amounts from limit positions
    for (uint256 i = 0; i < s.limitPositionsLength; ) {
      (
        ,
        uint256 amount0,
        uint256 amount1,
        uint256 feesOwed0,
        uint256 feesOwed1
      ) = PoolManagerUtils.getAmountsOf(
        poolManager,
        s.poolKey,
        s.limitPositions[i]
      );
      total0 += amount0;
      total1 += amount1;
      totalFee0 += feesOwed0;
      totalFee1 += feesOwed1;
      unchecked { ++i; }
    }

    // Add idle balances
    total0 += s.currency0.balanceOfSelf();
    total1 += s.currency1.balanceOfSelf();
  }


  function _closePair() internal {
    PoolManagerUtils.close(poolManager, s.currency1);
    PoolManagerUtils.close(poolManager, s.currency0);
  }

  function _transferIn(address from, Currency currency, uint256 amount) internal {
    if (currency.isAddressZero()) {
      require(msg.value >= amount);
      if (msg.value > amount)
        payable(msg.sender).transfer(msg.value - amount);
    } else if (amount != 0) {
      IERC20(Currency.unwrap(currency)).safeTransferFrom(from, address(this), amount);
    }
  }

}
