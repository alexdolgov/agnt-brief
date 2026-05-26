//Copyright Open Trade Technology Ltd. 2023. All rights reserved.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../factories/interfaces/IVaultFactory.sol";
import "../interfaces/IPool.sol";
import "./interfaces/IWithdrawController.sol";
import "./interfaces/IPoolController.sol";
import "../libraries/PoolLib.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "../upgrades/BeaconImplementation.sol";
import "hardhat/console.sol";

/**
 * @title A Pool's withdraw controller.
 * @dev Deployed as a beacon proxy contract.
 */

contract WithdrawController is IWithdrawController, BeaconImplementation {
  using SafeMath for uint256;
  using EnumerableSet for EnumerableSet.AddressSet;

  uint256 public constant RAY = 10 ** 27;

  /**
   * @dev A reference to the pool for this withdraw state
   */
  IPool private _pool;

  IVault public _feeVault;

  IVault public _borrowerVault;
  address public _borrowerWallet;

  EnumerableSet.AddressSet private withdrawableLenders;

  mapping(address => IPoolRolloverWithdrawState) private _withdrawRolloverState;

  IPoolRolloverWithdrawState private _globalWithdrawRolloverState;

  mapping(address => ICrossChainTransferTermState) private _crossChainTransferAssetsMap;

  error CrossChainWCError();
  /**
   * @dev Modifier that checks that the caller is a pool lender
   */
  modifier onlyPool() {
    require(address(_pool) == msg.sender, "WithdrawController: Not Pool");
    _;
  }

  modifier onlyNotPaused() {
    require(!_pool.serviceConfiguration().paused(), "Pool: Protocol paused");
    _;
  }

  modifier onlyMaturedLoan() {
    require(_pool.maturedLoan() == msg.sender, "Loan not matured");
    _;
  }
  modifier onlyRequestedLoan() {
    require(_pool.requestedLoan() == msg.sender, "Loan not requested");
    _;
  }

  function version() public pure returns (uint16) {
    return 256 * 1 + 1;
  }

  /**
   * @dev Initializer for a Pool's withdraw state
   */
  function initialize(address pool_, address vaultFactory, address borrowerWalletAddress) public initializer {
    _pool = IPool(pool_);

    _feeVault = IVault(IVaultFactory(vaultFactory).createVault(address(this), IVaultType.FeeVault));

    _borrowerWallet = borrowerWalletAddress;

    _borrowerVault = IVault(IVaultFactory(vaultFactory).createVault(address(this), IVaultType.BorrowerVault));
  }

  function pool() external view override returns (address) {
    return address(_pool);
  }

  function borrowerWallet() external view override returns (address) {
    return address(_borrowerWallet);
  }

  function feeVault() external view override returns (address) {
    return address(_feeVault);
  }

  function borrowerVault() external view override returns (address) {
    return address(_borrowerVault);
  }

  function payFees(uint256 feeVaultAmount) external onlyMaturedLoan onlyNotPaused {
    _borrowerVault.payFees(IPool(_pool).asset(), feeVaultAmount);
  }

  function repayLoan(uint256 assetsToReturnToPool) external onlyMaturedLoan onlyNotPaused {
    _borrowerVault.repayLoan(IPool(_pool).asset(), assetsToReturnToPool);
  }

  function drawDownToBorrowerWallet(uint256 amount) external onlyNotPaused onlyRequestedLoan {
    address liquidityAsset = _pool.asset();

    require(amount <= IERC20(liquidityAsset).balanceOf(address(_borrowerVault)), "Insufficient balance in vault");

    _borrowerVault.withdrawERC20ToBorrowerWallet(liquidityAsset, amount);
  }

  function withdrawFeeVault(uint256 amount, address receiver) external onlyNotPaused onlyPool {
    _feeVault.withdrawERC20(address(_pool.asset()), amount, receiver);
  }

  /*//////////////////////////////////////////////////////////////
                               State Views
    //////////////////////////////////////////////////////////////*/

  function redemptionState() public view returns (IRedemptionState memory _redemptionState) {
    address[] memory redemptionLenders = withdrawableLenders.values();
    uint256[] memory requestedShares = new uint256[](withdrawableLenders.length());
    uint256[] memory redeemableShares = new uint256[](withdrawableLenders.length());

    for (uint256 i = 0; i < withdrawableLenders.length(); i++) {
      requestedShares[i] = _withdrawRolloverState[redemptionLenders[i]].requestedShares;
      redeemableShares[i] = _withdrawRolloverState[redemptionLenders[i]].redeemableShares;
    }
    return IRedemptionState(redemptionLenders, requestedShares, redeemableShares);
  }

  /*//////////////////////////////////////////////////////////////
                             Rollover functionality
    //////////////////////////////////////////////////////////////*/

  function releaseRolloverRedemption(address owner) external onlyPool returns (uint256 shares, uint256 assets) {
    require(_withdrawRolloverState[owner].requestedShares > 0, "Pool: No rollover redemption");
    require(_withdrawRolloverState[owner].requestedAssets > 0, "Pool: No rollover redemption");
    shares = _withdrawRolloverState[owner].requestedShares;
    assets = _withdrawRolloverState[owner].requestedAssets;
    _globalWithdrawRolloverState.redeemableShares += _withdrawRolloverState[owner].requestedShares;
    _globalWithdrawRolloverState.withdrawableAssets += _withdrawRolloverState[owner].requestedAssets;
    _globalWithdrawRolloverState.requestedShares -= _withdrawRolloverState[owner].requestedShares;
    _globalWithdrawRolloverState.requestedAssets -= _withdrawRolloverState[owner].requestedAssets;

    _withdrawRolloverState[owner].redeemableShares += _withdrawRolloverState[owner].requestedShares;
    _withdrawRolloverState[owner].withdrawableAssets += _withdrawRolloverState[owner].requestedAssets;
    _withdrawRolloverState[owner].requestedShares = 0;
    _withdrawRolloverState[owner].requestedAssets = 0;
  }

  /*//////////////////////////////////////////////////////////////
                            Balance Views
    //////////////////////////////////////////////////////////////*/

  /**
   * @inheritdoc IWithdrawController
   */
  function requestedSharesOf(address owner) external view returns (uint256 shares) {
    shares = _withdrawRolloverState[owner].requestedShares;
  }

  function requestedAssetsOf(address owner) external view returns (uint256 assets) {
    assets = _withdrawRolloverState[owner].requestedAssets;
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function totalRequestedShares() external view returns (uint256 shares) {
    shares = _globalWithdrawRolloverState.requestedShares;
  }

  function totalRequestedAssets() external view returns (uint256 assets) {
    assets = _globalWithdrawRolloverState.requestedAssets;
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function redeemableSharesOf(address owner) external view returns (uint256 shares) {
    shares = _withdrawRolloverState[owner].redeemableShares;
  }

  function withdrawableAssetsOf(address owner) external view returns (uint256 assets) {
    assets = _withdrawRolloverState[owner].withdrawableAssets;
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function totalRedeemableShares() external view returns (uint256 shares) {
    shares = _globalWithdrawRolloverState.redeemableShares;
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function totalWithdrawableAssets() external view returns (uint256 assets) {
    assets = _globalWithdrawRolloverState.withdrawableAssets;
  }

  function totalEarlyRequestedShares() external view returns (uint256 shares) {
    shares = _globalWithdrawRolloverState.earlyRequestedShares;
  }

  function totalEarlyRequestedAssets() external view returns (uint256 assets) {
    assets = _globalWithdrawRolloverState.earlyRequestedAssets;
  }

  function totalEarlyAcceptedShares() external view returns (uint256 shares) {
    shares = _globalWithdrawRolloverState.earlyAcceptedShares;
  }

  function totalEarlyAcceptedAssets() external view returns (uint256 assets) {
    assets = _globalWithdrawRolloverState.earlyAcceptedAssets;
  }

  function earlyRequestedSharesOf(address owner) external view returns (uint256 shares) {
    shares = _withdrawRolloverState[owner].earlyRequestedShares;
  }

  function earlyRequestedAssetsOf(address owner) external view returns (uint256 assets) {
    assets = _withdrawRolloverState[owner].earlyRequestedAssets;
  }

  function earlyAcceptedSharesOf(address owner) external view returns (uint256 shares) {
    shares = _withdrawRolloverState[owner].earlyAcceptedShares;
  }

  function earlyAcceptedAssetsOf(address owner) external view returns (uint256 assets) {
    assets = _withdrawRolloverState[owner].earlyAcceptedAssets;
  }

  /*//////////////////////////////////////////////////////////////
                            Max Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @inheritdoc IWithdrawController
   */
  function maxRedeemRequest(address owner) external view returns (uint256 maxShares) {
    maxShares =
      _pool.balanceOf(owner) -
      _withdrawRolloverState[owner].requestedShares -
      _withdrawRolloverState[owner].redeemableShares -
      _withdrawRolloverState[owner].earlyRequestedShares -
      _withdrawRolloverState[owner].earlyAcceptedShares;
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function maxRedeem(address owner) public view returns (uint256 maxShares) {
    maxShares = _withdrawRolloverState[owner].redeemableShares;
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function maxWithdraw(address owner) external view returns (uint256 assets) {
    assets = _withdrawRolloverState[owner].withdrawableAssets;
  }

  /*//////////////////////////////////////////////////////////////
                            Preview Methods
    //////////////////////////////////////////////////////////////*/

  /**
   * @inheritdoc IWithdrawController
   */
  function previewRedeem(address owner, uint256 shares) external view returns (uint256 assets) {
    require(
      shares <= _withdrawRolloverState[owner].redeemableShares && assets > 0,
      "Pool: Insufficient RequestedBalance"
    );
    assets = shares.mul(_withdrawRolloverState[owner].withdrawableAssets).div(
      _withdrawRolloverState[owner].redeemableShares
    );
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function previewWithdraw(address owner, uint256 assets) external view returns (uint256 shares) {
    require(
      assets <= _withdrawRolloverState[owner].withdrawableAssets && shares > 0,
      "Pool: Insufficient RequestedBalance"
    );
    shares = assets.mul(_withdrawRolloverState[owner].redeemableShares).div(
      _withdrawRolloverState[owner].withdrawableAssets
    );
  }

  /*//////////////////////////////////////////////////////////////
                            Request Methods
    //////////////////////////////////////////////////////////////*/

  function performRequest(address owner, uint256 shares, uint256 assets) external onlyPool {
    require(this.maxRedeemRequest(owner) >= shares, "Pool: InsufficientBalance");
    require(shares > 0, "Pool: Zero Shares");

    IPoolRolloverWithdrawState memory _ownerState = _withdrawRolloverState[owner];

    _ownerState.requestedShares = _ownerState.requestedShares + shares;
    _globalWithdrawRolloverState.requestedShares = _globalWithdrawRolloverState.requestedShares + shares;

    _ownerState.requestedAssets = _ownerState.requestedAssets + assets;
    _globalWithdrawRolloverState.requestedAssets = _globalWithdrawRolloverState.requestedAssets + assets;

    _withdrawRolloverState[owner] = _ownerState;
    if (_ownerState.requestedShares > 0) {
      withdrawableLenders.add(owner);
    }
  }

  /*//////////////////////////////////////////////////////////////
                            Withdraw / Redeem
    //////////////////////////////////////////////////////////////*/

  /**
   * @inheritdoc IWithdrawController
   */
  function redeem(address owner, uint256 shares) external onlyPool returns (uint256 assets) {
    require(shares > 0, "Pool: 0 redeem not allowed");
    require(maxRedeem(owner) >= shares, "Pool: InsufficientBalance");

    if (_withdrawRolloverState[owner].redeemableShares == shares) {
      assets = _withdrawRolloverState[owner].withdrawableAssets;
      withdrawableLenders.remove(owner);
    } else {
      uint256 rate = _withdrawRolloverState[owner].withdrawableAssets.mul(RAY).div(
        _withdrawRolloverState[owner].redeemableShares
      );
      assets = rate.mul(shares).div(RAY);
    }
    _performRolloverWithdraw(owner, shares, assets);
  }

  /**
   * @inheritdoc IWithdrawController
   */
  function withdraw(address owner, uint256 assets) external onlyPool returns (uint256 shares) {
    require(assets > 0, "Pool: 0 withdraw not allowed");
    require(this.maxWithdraw(owner) >= assets, "Pool: InsufficientBalance");
    if (_withdrawRolloverState[owner].withdrawableAssets == assets) {
      shares = _withdrawRolloverState[owner].redeemableShares;
      withdrawableLenders.remove(owner);
    } else {
      uint256 rate = _withdrawRolloverState[owner].redeemableShares.mul(RAY).div(
        _withdrawRolloverState[owner].withdrawableAssets
      );
      shares = rate.mul(assets).div(RAY);
    }
    _performRolloverWithdraw(owner, shares, assets);
  }

  function _performRolloverWithdraw(address owner, uint256 shares, uint256 assets) internal {
    require(assets <= _withdrawRolloverState[owner].withdrawableAssets, "Pool: InsufficientBalance");

    require(shares <= _withdrawRolloverState[owner].redeemableShares, "Pool: InsufficientBalance");

    _withdrawRolloverState[owner].redeemableShares -= shares;
    _withdrawRolloverState[owner].withdrawableAssets -= assets;
    _globalWithdrawRolloverState.redeemableShares -= shares;
    _globalWithdrawRolloverState.withdrawableAssets -= assets;
  }

  function min(uint256 a, uint256 b) private pure returns (uint256) {
    return a <= b ? a : b;
  }

  /*//////////////////////////////////////////////////////////////
                              Early Withdraw
       //////////////////////////////////////////////////////////////*/
  function requestEarlyRedeem(address owner, uint256 shares) external onlyPool returns (uint256 principal) {
    address _activeLoanAddr = _pool.activeLoan();
    ILoan _activeLoan = ILoan(_activeLoanAddr);
    uint256 exchangeRateAtMaturity = _activeLoan.exchangeRateAtMaturity();
    uint256 exchangeRateAtDeposit = _activeLoan.exchangeRateAtDeposit();

    require(_activeLoanAddr != address(0), "Pool: No Active Loan");
    require(block.timestamp < _activeLoan.earlyRedeemRequestClosingTimestamp(), "Pool: Early Redeem Window Ended");

    require(this.maxRedeemRequest(owner) >= shares, "Pool: InsufficientBalance");
    require(shares > 0, "Pool: Zero Shares");

    IPoolRolloverWithdrawState memory _ownerState = _withdrawRolloverState[owner];

    _ownerState.earlyRequestedShares = _ownerState.earlyRequestedShares + shares;
    _globalWithdrawRolloverState.earlyRequestedShares = _globalWithdrawRolloverState.earlyRequestedShares + shares;
    uint256 assetsAtMaturity = shares.mul(exchangeRateAtMaturity).div(1e18);
    principal = shares.mul(exchangeRateAtDeposit).div(1e18);

    _ownerState.earlyRequestedAssets = _ownerState.earlyRequestedAssets + assetsAtMaturity;
    _globalWithdrawRolloverState.earlyRequestedAssets =
      _globalWithdrawRolloverState.earlyRequestedAssets +
      assetsAtMaturity;

    _withdrawRolloverState[owner] = _ownerState;
  }

  function acceptEarlyRedeemRequest(
    address investorAddr
  ) external override onlyPool returns (uint256 shares, uint256 principal) {
    address _activeLoanAddr = _pool.activeLoan();
    ILoan _activeLoan = ILoan(_activeLoanAddr);
    uint256 exchangeRateAtMaturity = _activeLoan.exchangeRateAtMaturity();

    IPoolRolloverWithdrawState memory _ownerState = _withdrawRolloverState[investorAddr];
    shares = min(_globalWithdrawRolloverState.earlyRequestedShares, _ownerState.earlyRequestedShares);

    _ownerState.earlyAcceptedShares += shares;
    _globalWithdrawRolloverState.earlyAcceptedShares += shares;
    _globalWithdrawRolloverState.earlyRequestedShares -= shares;

    uint256 assets = shares.mul(exchangeRateAtMaturity).div(1e18);

    assets = min(_globalWithdrawRolloverState.earlyRequestedAssets, assets);
    _ownerState.earlyAcceptedAssets += assets;
    _globalWithdrawRolloverState.earlyAcceptedAssets += assets;
    _globalWithdrawRolloverState.earlyRequestedAssets -= assets;

    _ownerState.earlyRequestedShares = 0;
    _ownerState.earlyRequestedAssets = 0;

    _withdrawRolloverState[investorAddr] = _ownerState;

    uint256 exchangeRateAtDeposit = _activeLoan.exchangeRateAtDeposit();
    principal = shares.mul(exchangeRateAtDeposit).div(1e18);
  }

  function repayEarlyWithdraw(
    address investorAddr,
    uint256 amount,
    IPoolAccountings memory accountings
  )
    external
    returns (
      uint256 principal,
      uint256 repayment,
      uint256 redeemedShares,
      uint256 fees,
      uint256 assetReduction,
      address feeReciever
    )
  {
    IPoolRolloverWithdrawState memory _ownerState = _withdrawRolloverState[investorAddr];

    ILoan _activeLoan = ILoan(_pool.activeLoan());

    // Shares and assets if held to maturity
    uint256 acceptedShares = _ownerState.earlyAcceptedShares;
    assetReduction = min(_ownerState.earlyAcceptedAssets, accountings.totalAvailableAssets);
    uint256 exchangeRateAtDeposit = _activeLoan.exchangeRateAtDeposit();
    // original principal
    principal = min(acceptedShares.mul(exchangeRateAtDeposit).div(1e18), accountings.outstandingLoanPrincipals);
    fees = principal.mul(_pool.settings().earlyWithdrawFeeBps).div(10000);

    repayment = amount - fees;
    redeemedShares = acceptedShares;

    _ownerState.earlyAcceptedAssets = 0;
    _ownerState.earlyAcceptedShares = 0;
    _globalWithdrawRolloverState.earlyAcceptedAssets -= min(
      _globalWithdrawRolloverState.earlyAcceptedAssets,
      assetReduction
    );
    _globalWithdrawRolloverState.earlyAcceptedShares -= min(
      _globalWithdrawRolloverState.earlyAcceptedShares,
      acceptedShares
    );
    _withdrawRolloverState[investorAddr] = _ownerState;

    _borrowerVault.payFees(IPool(_pool).asset(), fees);
    _borrowerVault.repayLoan(IPool(_pool).asset(), repayment);

    feeReciever = _pool.serviceConfiguration().getPoolAdminWallet();

    _feeVault.withdrawERC20(address(_pool.asset()), fees, feeReciever);
  }

  function principalForWallet(address walletAddr) internal view returns (uint256 principal) {
    IPool poolContract = IPool(_pool);
    uint256 shares = _pool.balanceOf(walletAddr) -
      _withdrawRolloverState[walletAddr].requestedShares -
      _withdrawRolloverState[walletAddr].redeemableShares -
      _withdrawRolloverState[walletAddr].earlyRequestedShares -
      _withdrawRolloverState[walletAddr].earlyAcceptedShares;

    console.log("WC principalForWallet", shares, poolContract.exchangeRateAtDeposit());

    principal = shares.mul(poolContract.exchangeRateAtDeposit()).div(1e18);
  }
  function crossChainTransferApproveSource(address sourceWalletAddr, uint256 amount) external override onlyPool {
    IPool poolContract = IPool(_pool);

    console.log("WC principalForWallet", principalForWallet(sourceWalletAddr), amount);
    if (
      poolContract.state() != IPoolLifeCycleState.Active ||
      poolContract.activeLoan() == address(0) ||
      principalForWallet(sourceWalletAddr) < amount ||
      _crossChainTransferAssetsMap[sourceWalletAddr].amount != 0 ||
      amount == 0
    ) {
      revert CrossChainWCError();
    }

    ICrossChainTransferTermState memory transferState;
    transferState.amount = amount;
    transferState.isCrossChainSource = true;
    _crossChainTransferAssetsMap[sourceWalletAddr] = transferState;
  }
  function crossChainTransferApproveDestination(
    address destinationWalletAddr,
    uint256 amount
  ) external override onlyPool {
    IPool poolContract = IPool(_pool);
    if (
      poolContract.state() != IPoolLifeCycleState.Active ||
      poolContract.activeLoan() == address(0) ||
      _crossChainTransferAssetsMap[destinationWalletAddr].amount != 0 ||
      amount == 0
    ) {
      revert CrossChainWCError();
    }

    ICrossChainTransferTermState memory transferState;
    transferState.amount = amount;
    transferState.isCrossChainSource = false;

    _crossChainTransferAssetsMap[destinationWalletAddr] = transferState;
  }

  function crossChainTransferBurnSource(address sourceWalletAddr, uint256 amount) external override onlyPool {
    IPool poolContract = IPool(_pool);
    console.log(
      "WC crossChainTransferBurnSource",
      poolContract.maxWithdrawRequest(sourceWalletAddr) < amount,
      poolContract.state() != IPoolLifeCycleState.Active,
      poolContract.activeLoan() == address(0)
    );

    console.log(
      "WC crossChainTransferBurnSource",
      _crossChainTransferAssetsMap[sourceWalletAddr].amount != amount,
      _crossChainTransferAssetsMap[sourceWalletAddr].isCrossChainSource == false
    );

    if (
      principalForWallet(sourceWalletAddr) < amount ||
      poolContract.state() != IPoolLifeCycleState.Active ||
      poolContract.activeLoan() == address(0) ||
      _crossChainTransferAssetsMap[sourceWalletAddr].amount != amount ||
      _crossChainTransferAssetsMap[sourceWalletAddr].isCrossChainSource == false ||
      amount == 0
    ) {
      revert CrossChainWCError();
    }
    delete _crossChainTransferAssetsMap[sourceWalletAddr];
  }
  function crossChainTransferMintDestination(address destinationWalletAddr, uint256 amount) external override onlyPool {
    IPool poolContract = IPool(_pool);
    if (
      poolContract.state() != IPoolLifeCycleState.Active ||
      poolContract.activeLoan() == address(0) ||
      _crossChainTransferAssetsMap[destinationWalletAddr].amount != amount ||
      _crossChainTransferAssetsMap[destinationWalletAddr].isCrossChainSource == true ||
      amount == 0
    ) {
      revert CrossChainWCError();
    }

    delete _crossChainTransferAssetsMap[destinationWalletAddr];
  }
}
