// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20 } from '@oz/token/ERC20/IERC20.sol';
import { SafeERC20 } from '@oz/token/ERC20/utils/SafeERC20.sol';
import { Math } from '@oz/utils/math/Math.sol';

import { AccessControlEnumerableUpgradeable } from
  '@ozu/access/extensions/AccessControlEnumerableUpgradeable.sol';
import { UUPSUpgradeable } from '@ozu/proxy/utils/UUPSUpgradeable.sol';
import { ReentrancyGuardUpgradeable } from '@ozu/utils/ReentrancyGuardUpgradeable.sol';

import { StdError } from '@mito-mainnet/lib/StdError.sol';

import { IListaCDPPool } from '../../external/lista/IListaCDPPool.sol';
import { IListaCDPRewardDistributor } from '../../external/lista/IListaCDPRewardDistributor.sol';
import { IListaStaking } from '../../external/lista/IListaStaking.sol';
import { IWBNB } from '../../external/lista/IWBNB.sol';
import { IManager } from '../interfaces/IManager.sol';

/**
 * DEPOSIT FLOW (in one function - deposit)
 *
 * 1. WBNB -> StrategyManager
 * 2. WBNB -> BNB -> slisBNB -> slisBNBx
 *
 * WITHDRAW FLOW
 *
 * 1. slisBNBx -> slisBNB -> WithdrawalRequest (requestWithdraw)
 * 2. WithdrawalRequest -> BNB -> WBNB (claimWithdraw)
 * 3. WBNB -> Vault (withdraw)
 */
contract ListaCDPStrategyManager is
  IManager,
  AccessControlEnumerableUpgradeable,
  ReentrancyGuardUpgradeable,
  UUPSUpgradeable
{
  using SafeERC20 for IERC20;

  event Deposit(address indexed asset, address indexed sender, uint256 amount);
  event Withdraw(address indexed asset, address indexed receiver, uint256 amount);
  event DelegationUpdated(address indexed newDelegator);

  event WithdrawalRequested(uint256 amount, uint256 released);
  event WithdrawalClaimed(uint256 requestCount, uint256 claimed);
  event ListaEmissionClaimed(address indexed receiver, uint64 indexed epochId, uint256 amount);

  error ListaCDPStrategyManager__DelegationRoleNotRevoked();
  error ListaCDPStrategyManager__NoLP();
  error ListaCDPStrategyManager__MaxWithdrawalRequestCountExceeded();

  uint256 public constant MAX_WITHDRAWAL_REQUEST_COUNT = 50;

  /// @notice Role for asset withdrawal to account (keccak256("WITHDRAWAL_ROLE"))
  bytes32 public constant WITHDRAWAL_ROLE =
    0x0744af9828f5bfd2e0f842fd62674fe7c160a394d457c33e1a56eeae3a44a9ef;

  /// @notice Role for withdraw from Lista (keccak256("OPERATOR_ROLE"))
  bytes32 public constant OPERATOR_ROLE =
    0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929;

  /// @notice Role for delegating to account (keccak256("DELEGATION_ROLE"))
  bytes32 public constant DELEGATION_ROLE =
    0xe7ba029c99635f624089fc11702bfd9689dddb46c558b5dd501e06889fef4e54;

  /// @notice Role for claiming emission from Lista (keccak256("EMISSION_MANAGER_ROLE"))
  bytes32 public constant EMISSION_MANAGER_ROLE =
    0x541d13973c0d167d21f83a909fd41d7b6554ef2ca705aa7edd7644cad79463c9;

  address public immutable asset;
  address public immutable slisBnb;
  IListaCDPPool public immutable pool;
  IListaStaking public immutable staking;
  IListaCDPRewardDistributor public immutable rewardDistributor;

  fallback() external payable {
    revert StdError.Unauthorized();
  }

  receive() external payable {
    // avoid infinite loop
    // if the contract intended to unwrap WBNB, it won't be wrapped again
    if (_msgSender() != asset) IWBNB(asset).deposit{ value: msg.value }();
  }

  // @dev asset should be WBNB
  // mainnet: 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c
  // testnet: 0xae13d989daC2f0dEbFf460aC112a837C89BAa7cd
  constructor(address _asset, address _pool, address _staking, address _rewardDistributor) {
    _disableInitializers();
    pool = IListaCDPPool(_pool);
    staking = IListaStaking(_staking);
    asset = _asset;
    (, slisBnb,) = staking.getContracts();
    rewardDistributor = IListaCDPRewardDistributor(_rewardDistributor);
  }

  function initialize(address admin, address delegator) external initializer {
    __AccessControlEnumerable_init();
    __ReentrancyGuard_init();
    __UUPSUpgradeable_init();

    super._grantRole(DEFAULT_ADMIN_ROLE, admin);
    super._grantRole(DELEGATION_ROLE, delegator);
  }

  function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }

  function _grantRole(bytes32 role, address account) internal override returns (bool) {
    if (role == DELEGATION_ROLE) return false; // prevent delegation role from being granted
    return super._grantRole(role, account);
  }

  function _revokeRole(bytes32 role, address account) internal override returns (bool) {
    if (role == DELEGATION_ROLE) return false; // prevent delegation role from being revoked
    return super._revokeRole(role, account);
  }

  function delegation() external view returns (address) {
    return _delegation();
  }

  function _delegation() internal view returns (address) {
    return getRoleMember(DELEGATION_ROLE, 0);
  }

  function updateDelegation(address newDelegator) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(pool.userLp(address(this)) > 0, ListaCDPStrategyManager__NoLP());

    require(
      super._revokeRole(DELEGATION_ROLE, getRoleMember(DELEGATION_ROLE, 0)),
      ListaCDPStrategyManager__DelegationRoleNotRevoked()
    );
    super._grantRole(DELEGATION_ROLE, newDelegator);
    pool.delegateAllTo(newDelegator);

    emit DelegationUpdated(newDelegator);
  }

  function totalBalance() external view returns (uint256) {
    // in slisX
    uint256 lp = pool.userLp(address(this));
    if (lp == 0) return 0;

    // in BNB
    uint256 totalPendingWithdrawal = 0;
    IListaStaking.WithdrawalRequest[] memory requests =
      staking.getUserWithdrawalRequests(address(this));

    for (uint256 i = 0; i < requests.length; i++) {
      (, uint256 amount) = staking.getUserRequestStatus(address(this), i);
      totalPendingWithdrawal += amount;
    }

    return convertSlisXToBnb(lp) + totalPendingWithdrawal + IWBNB(asset).balanceOf(address(this));
  }

  function deposit(uint256 amount) external nonReentrant {
    require(amount > 0, StdError.ZeroAmount());

    // fetch wbnb & unwrap

    IERC20(asset).safeTransferFrom(_msgSender(), address(this), amount);
    IWBNB(asset).withdraw(amount);

    // convert to slis

    staking.deposit{ value: amount }();
    uint256 provideAmount = IERC20(slisBnb).balanceOf(address(this));

    // slis to slisX

    address delegateTo = _delegation();

    IERC20(slisBnb).forceApprove(address(pool), provideAmount);
    pool.provide(provideAmount, delegateTo);
    IERC20(slisBnb).forceApprove(address(pool), 0);

    emit Deposit(asset, _msgSender(), amount);
  }

  function withdraw(uint256 amount, address receiver)
    external
    onlyRole(WITHDRAWAL_ROLE)
    nonReentrant
  {
    require(amount > 0, StdError.ZeroAmount());

    uint256 balance = IERC20(asset).balanceOf(address(this));
    require(balance >= amount, StdError.InvalidParameter('amount'));

    IERC20(asset).safeTransfer(receiver, amount);
    emit Withdraw(asset, receiver, amount);
  }

  function requestWithdrawToLista(uint256 amount) external onlyRole(OPERATOR_ROLE) nonReentrant {
    require(amount > 0, StdError.ZeroAmount());

    uint256 requestCount = staking.getUserWithdrawalRequests(address(this)).length;
    require(
      requestCount < MAX_WITHDRAWAL_REQUEST_COUNT,
      ListaCDPStrategyManager__MaxWithdrawalRequestCountExceeded()
    );

    // in slis, not slisX
    uint256 releaseAmount = convertBnbToSlis(amount);
    require(releaseAmount > 0, StdError.ZeroAmount());

    uint256 released = pool.release(address(this), releaseAmount);

    IERC20(slisBnb).forceApprove(address(staking), released);
    staking.requestWithdraw(released);
    IERC20(slisBnb).forceApprove(address(staking), 0);

    emit WithdrawalRequested(amount, released);
  }

  // NOTE: this can be called by anyone
  function claimWithdrawFromLista() external onlyRole(OPERATOR_ROLE) nonReentrant {
    uint256 totalClaimed = 0;
    uint256 requestCount = 0;
    IListaStaking.WithdrawalRequest[] memory requests =
      staking.getUserWithdrawalRequests(address(this));

    for (; requestCount < requests.length; requestCount++) {
      (bool isClaimable, uint256 amount) = staking.getUserRequestStatus(address(this), requestCount);

      // they're using swap-and-pop pattern, so we can assume that the request queue is not ordered.
      // therefore, we need to iterate through the entire queue to find the claimable requests.
      if (!isClaimable) continue;

      staking.claimWithdraw(requestCount);
      totalClaimed += amount;
    }

    emit WithdrawalClaimed(requestCount, totalClaimed);
  }

  function claimListaEmission(
    address receiver,
    uint64 epochId,
    uint256 amount,
    bytes32[] memory proof
  ) external onlyRole(EMISSION_MANAGER_ROLE) nonReentrant {
    // claim -> send native -> wrapping in receiver -> return
    rewardDistributor.claim(epochId, address(this), amount, proof);

    IERC20(asset).safeTransfer(receiver, amount);

    emit ListaEmissionClaimed(receiver, epochId, amount);
  }

  // @dev
  // 1 -> 0.99037
  // userLpRate (0.97)
  // exchangeRate (1.021)
  // amount * userLpRate * exchangeRate = share
  // amount = share / (userLpRate * exchangeRate)
  function convertSlisXToSlis(uint256 slisX) public view returns (uint256) {
    uint256 userLpRate = pool.userLpRate();
    uint256 exchangeRate = pool.exchangeRate();
    uint256 denominator = pool.RATE_DENOMINATOR();

    return Math.mulDiv(slisX, denominator ** 2, exchangeRate * userLpRate);
  }

  function convertSlisToSlisX(uint256 slis) public view returns (uint256) {
    uint256 userLpRate = pool.userLpRate();
    uint256 exchangeRate = pool.exchangeRate();
    uint256 denominator = pool.RATE_DENOMINATOR();

    return Math.mulDiv(slis, exchangeRate * userLpRate, denominator ** 2);
  }

  function convertBnbToSlis(uint256 bnb) public view returns (uint256) {
    return staking.convertBnbToSnBnb(bnb);
  }

  function convertSlisToBnb(uint256 slis) public view returns (uint256) {
    return staking.convertSnBnbToBnb(slis);
  }

  function convertBnbToSlisX(uint256 bnb) public view returns (uint256) {
    return convertSlisToSlisX(convertBnbToSlis(bnb));
  }

  function convertSlisXToBnb(uint256 slisX) public view returns (uint256) {
    return convertSlisToBnb(convertSlisXToSlis(slisX));
  }
}
