// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.26;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../../base/interface/IUniversalLiquidator.sol";
import "../../base/upgradability/BaseUpgradeableStrategy.sol";
import "../../base/interface/moonwell/MTokenInterfaces.sol";
import "../../base/interface/moonwell/ComptrollerInterface.sol";
import "../../base/interface/moonwell/IOracle.sol";
import "../../base/interface/balancer/IBVault.sol";
import "../../base/interface/weth/IWETH.sol";

contract Moonwell2AssetFoldStrategy is BaseUpgradeableStrategy {

  using SafeMath for uint256;
  using SafeERC20 for IERC20;

  event CollateralFactorNumeratorChanged(uint256 oldNumerator, uint256 newNumerator);
  event BorrowFactorNumeratorChanged(uint256 oldNumerator, uint256 newNumerator);
  event FoldToggled(bool fold);

  address public constant weth = address(0x4200000000000000000000000000000000000006);
  address public constant bVault = address(0xBA12222222228d8Ba445958a75a0704d566BF2C8);
  address public constant harvestMSIG = address(0x97b3e5712CDE7Db13e939a188C8CA90Db5B05131);

  // additional storage slots (on top of BaseUpgradeableStrategy ones) are defined here
  bytes32 internal constant _SUPPLY_MTOKEN_SLOT = 0x5919a20ea6473dc6aa03868193793804048516941eec843dfc4ebf83cdee8205;
  bytes32 internal constant _BORROW_ASSET_SLOT = 0x88668f0e8611a9b718d9bea94e199da292e353b63b6c67696d85391874de1323;
  bytes32 internal constant _BORROW_MTOKEN_SLOT = 0xd0502c60148b6da9766e2c3019450fd4c4e9b2a0a434a3542b5bb13b7ba432f2;
  bytes32 internal constant _STORED_BALANCE_SLOT = 0x36be27dce5926377a73445ec8b6a6c16c485af64395bbacfbf8aac4c71f8043b;
  bytes32 internal constant _PENDING_FEE_SLOT = 0x0af7af9f5ccfa82c3497f40c7c382677637aee27293a6243a22216b51481bd97;
  bytes32 internal constant _COLLATERALFACTORNUMERATOR_SLOT = 0x129eccdfbcf3761d8e2f66393221fa8277b7623ad13ed7693a0025435931c64a;
  bytes32 internal constant _BORROWTARGETFACTORNUMERATOR_SLOT = 0xa65533f4b41f3786d877c8fdd4ae6d27ada84e1d9c62ea3aca309e9aa03af1cd;
  bytes32 internal constant _FOLD_SLOT = 0x1841be4c16015a744c9fbf595f7c6b32d40278c16c1fc7cf2de88c6348de44ba;

  bool internal makingFlashDeposit;
  bool internal makingFlashWithdrawal;

  // this would be reset on each upgrade
  address[] public rewardTokens;

  constructor() BaseUpgradeableStrategy() {
    assert(_SUPPLY_MTOKEN_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.supplyMToken")) - 1));
    assert(_BORROW_ASSET_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.borrowAsset")) - 1));
    assert(_BORROW_MTOKEN_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.borrowMToken")) - 1));
    assert(_STORED_BALANCE_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.storedBalance")) - 1));
    assert(_PENDING_FEE_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.pendingFee")) - 1));
    assert(_COLLATERALFACTORNUMERATOR_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.collateralFactorNumerator")) - 1));
    assert(_BORROWTARGETFACTORNUMERATOR_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.borrowTargetFactorNumerator")) - 1));
    assert(_FOLD_SLOT == bytes32(uint256(keccak256("eip1967.strategyStorage.fold")) - 1));
  }

  function initializeBaseStrategy(
    address _storage,
    address _underlying,
    address _vault,
    address _supplyMToken,
    address _borrowAsset,
    address _borrowMToken,
    address _comptroller,
    address _rewardToken,
    uint256 _borrowTargetFactorNumerator,
    uint256 _collateralFactorNumerator,
    bool _fold
  )
  public initializer {
    BaseUpgradeableStrategy.initialize(
      _storage,
      _underlying,
      _vault,
      _comptroller,
      _rewardToken,
      harvestMSIG
    );

    require(MErc20Interface(_supplyMToken).underlying() == _underlying, "und");
    require(MErc20Interface(_borrowMToken).underlying() == _borrowAsset, "borrowAsset");

    _setSupplyMToken(_supplyMToken);
    _setBorrowAsset(_borrowAsset);
    _setBorrowMToken(_borrowMToken);

    require(_collateralFactorNumerator < uint(1000), "col");
    require(_borrowTargetFactorNumerator < _collateralFactorNumerator, "bor");
    setUint256(_COLLATERALFACTORNUMERATOR_SLOT, _collateralFactorNumerator);
    setUint256(_BORROWTARGETFACTORNUMERATOR_SLOT, _borrowTargetFactorNumerator);
    setBoolean(_FOLD_SLOT, _fold);
    address[] memory markets = new address[](1);
    markets[0] = _supplyMToken;
    ComptrollerInterface(_comptroller).enterMarkets(markets);
  }

  function getSupplyPriceInBorrow() public view returns (uint256) {
    uint256 supplyPrice = IOracle(ComptrollerInterface(rewardPool()).oracle())
      .getUnderlyingPrice(supplyMToken()).mul(10**ERC20(underlying()).decimals()).div(1e18);
    uint256 borrowPrice = IOracle(ComptrollerInterface(rewardPool()).oracle())
      .getUnderlyingPrice(borrowMToken()).mul(10**ERC20(borrowAsset()).decimals()).div(1e18);
    return supplyPrice.mul(1e18).div(borrowPrice);
  }

  function getBorrowPriceInSupply() public view returns (uint256) {
    uint256 supplyPrice = IOracle(ComptrollerInterface(rewardPool()).oracle())
      .getUnderlyingPrice(supplyMToken()).mul(10**ERC20(underlying()).decimals()).div(1e18);
    uint256 borrowPrice = IOracle(ComptrollerInterface(rewardPool()).oracle())
      .getUnderlyingPrice(borrowMToken()).mul(10**ERC20(borrowAsset()).decimals()).div(1e18);
    return borrowPrice.mul(1e18).div(supplyPrice);
  }

  function currentBalance() public returns (uint256) {
    // amount we supplied
    uint256 supplied = MTokenInterface(supplyMToken()).balanceOfUnderlying(address(this));
    // amount we borrowed
    uint256 borrowed = MTokenInterface(borrowMToken()).borrowBalanceCurrent(address(this)).mul(getBorrowPriceInSupply()).div(1e18);
    return supplied.sub(borrowed);
  }

  function positionHealth() public view returns (uint256) {
    (,uint256 supplied,,uint256 exchangeRate) = MTokenInterface(supplyMToken()).getAccountSnapshot(address(this));
    supplied = supplied.mul(exchangeRate).div(1e18);
    (,,uint256 borrowed,) = MTokenInterface(borrowMToken()).getAccountSnapshot(address(this));
    borrowed = borrowed.mul(getBorrowPriceInSupply()).div(1e18);
    if (borrowed == 0){
      return type(uint256).max;
    }

    return supplied.mul(1e18).mul(collateralFactorNumerator()).div(1000).div(borrowed);
  }

  function targetHealth() public view returns (uint256) {
    if (!fold() || borrowTargetFactorNumerator() == 0) {
      return type(uint256).max;
    }
    return uint256(collateralFactorNumerator()).mul(1e18).div(borrowTargetFactorNumerator());
  }

  function checker() external view returns (bool canExec, bytes memory execPayload) {
    canExec = positionHealth() < targetHealth().mul(98).div(100);
    execPayload = abi.encodeWithSelector(IController.doHardWork.selector, vault());
  }

  function storedBalance() public view returns (uint256) {
    return getUint256(_STORED_BALANCE_SLOT);
  }

  function _updateStoredBalance() internal {
    uint256 balance = currentBalance();
    setUint256(_STORED_BALANCE_SLOT, balance);
  }

  function totalFeeNumerator() public view returns (uint256) {
    return strategistFeeNumerator().add(platformFeeNumerator()).add(profitSharingNumerator());
  }

  function pendingFee() public view returns (uint256) {
    return getUint256(_PENDING_FEE_SLOT);
  }

  function _accrueFee() internal {
    uint256 fee;
    if (currentBalance() > storedBalance()) {
      uint256 balanceIncrease = currentBalance().sub(storedBalance());
      fee = balanceIncrease.mul(totalFeeNumerator()).div(feeDenominator());
    }
    setUint256(_PENDING_FEE_SLOT, pendingFee().add(fee));
    _updateStoredBalance();
  }

  function _handleFee() internal {
    _accrueFee();
    uint256 fee = pendingFee();
    if (fee > 1e13) {
      _redeem(fee);
      address _underlying = underlying();
      fee = Math.min(fee, IERC20(_underlying).balanceOf(address(this)));
      uint256 balanceIncrease = fee.mul(feeDenominator()).div(totalFeeNumerator());
      _notifyProfitInRewardToken(_underlying, balanceIncrease);
      setUint256(_PENDING_FEE_SLOT, pendingFee().sub(fee));
    }
  }

  function depositArbCheck() public pure returns (bool) {
    // there's no arb here.
    return true;
  }

  function unsalvagableTokens(address token) public view returns (bool) {
    return (
      token == rewardToken() ||
      token == underlying() ||
      token == supplyMToken() ||
      token == borrowAsset() ||
      token == borrowMToken()
    );
  }

  /**
  * The strategy invests by supplying the underlying as a collateral.
  */
  function _investAllUnderlying() internal onlyNotPausedInvesting {
    address _underlying = underlying();
    uint256 underlyingBalance = IERC20(_underlying).balanceOf(address(this));
    if (underlyingBalance > 0) {
      _supply(underlyingBalance);
    }
    if (fold()) {
      _depositWithFlashloan();
    }
  }

  /**
  * Exits Moonwell and transfers everything to the vault.
  */
  function withdrawAllToVault() public restricted {
    address _underlying = underlying();
    _withdrawMaximum(true);
    if (IERC20(_underlying).balanceOf(address(this)) > 0) {
      IERC20(_underlying).safeTransfer(vault(), IERC20(_underlying).balanceOf(address(this)).sub(pendingFee()));
    }
    _updateStoredBalance();
  }

  function emergencyExit() external onlyGovernance {
    _withdrawMaximum(false);
    _updateStoredBalance();
  }

  function _withdrawMaximum(bool claim) internal {
    if (claim) {
      _handleFee();
      _claimRewards();
      _liquidateRewards();
    } else {
      _accrueFee();
    }
    _redeemMaximum();
  }

  function withdrawToVault(uint256 amountUnderlying) public restricted {
    _accrueFee();
    address _underlying = underlying();
    uint256 balance = IERC20(_underlying).balanceOf(address(this));
    if (amountUnderlying <= balance) {
      IERC20(_underlying).safeTransfer(vault(), amountUnderlying);
      return;
    }
    uint256 toRedeem = amountUnderlying.sub(balance);
    // get some of the underlying
    _redeemPartial(toRedeem);
    // transfer the amount requested (or the amount we have) back to vault()
    IERC20(_underlying).safeTransfer(vault(), amountUnderlying);
    balance = IERC20(_underlying).balanceOf(address(this));
    if (balance > 0) {
      _investAllUnderlying();
    }
    _updateStoredBalance();
  }

  /**
  * Withdraws all assets, liquidates XVS, and invests again in the required ratio.
  */
  function doHardWork() public restricted {
    _handleFee();
    _claimRewards();
    _liquidateRewards();
    _investAllUnderlying();
    _updateStoredBalance();
  }

  /**
  * Redeems maximum that can be redeemed from Venus.
  * Redeem the minimum of the underlying we own, and the underlying that the vToken can
  * immediately retrieve. Ensures that `redeemMaximum` doesn't fail silently.
  *
  * DOES NOT ensure that the strategy vUnderlying balance becomes 0.
  */
  function _redeemMaximum() internal {
    _redeemMaximumWithFlashloan();
  }

  /**
  * Redeems `amountUnderlying` or fails.
  */
  function _redeemPartial(uint256 amountUnderlying) internal {
    address _underlying = underlying();
    uint256 balanceBefore = IERC20(_underlying).balanceOf(address(this));
    _redeemWithFlashloan(
      amountUnderlying,
      fold()? borrowTargetFactorNumerator():0
    );
    uint256 balanceAfter = IERC20(_underlying).balanceOf(address(this));
    require(balanceAfter.sub(balanceBefore) >= amountUnderlying, "with amt");
  }

  /**
  * Salvages a token.
  */
  function salvage(address recipient, address token, uint256 amount) public onlyGovernance {
    // To make sure that governance cannot come in and take away the coins
    require(!unsalvagableTokens(token), "!salv");
    IERC20(token).safeTransfer(recipient, amount);
  }

  function _claimRewards() internal {
    ComptrollerInterface(rewardPool()).claimReward();
  }

  function addRewardToken(address _token) public onlyGovernance {
    rewardTokens.push(_token);
  }

  function _liquidateRewards() internal {
    if (!sell()) {
      // Profits can be disabled for possible simplified and rapid exit
      emit ProfitsNotCollected(sell(), false);
      return;
    }
    address _rewardToken = rewardToken();
    address _universalLiquidator = universalLiquidator();
    for (uint256 i; i < rewardTokens.length; i++) {
      address token = rewardTokens[i];
      uint256 balance = IERC20(token).balanceOf(address(this));
      if (token != _rewardToken && balance > 1e12){
        IERC20(token).safeApprove(_universalLiquidator, 0);
        IERC20(token).safeApprove(_universalLiquidator, balance);
        IUniversalLiquidator(_universalLiquidator).swap(token, _rewardToken, balance, 1, address(this));
      }
    }
    uint256 rewardBalance = IERC20(_rewardToken).balanceOf(address(this));

    if (rewardBalance < 1e12) {
      return;
    }

    _notifyProfitInRewardToken(_rewardToken, rewardBalance);
    uint256 remainingRewardBalance = IERC20(_rewardToken).balanceOf(address(this));
  
    address _underlying = underlying();
    if (_underlying != _rewardToken) {
      IERC20(_rewardToken).safeApprove(_universalLiquidator, 0);
      IERC20(_rewardToken).safeApprove(_universalLiquidator, remainingRewardBalance);
      IUniversalLiquidator(_universalLiquidator).swap(_rewardToken, _underlying, remainingRewardBalance, 1, address(this));
    }
  }

  /**
  * Returns the current balance.
  */
  function investedUnderlyingBalance() public view returns (uint256) {
    uint256 balance = IERC20(underlying()).balanceOf(address(this));
    return balance.add(storedBalance()).sub(pendingFee());
  }

  /**
  * Supplies to Moonwel
  */
  function _supply(uint256 amount) internal {
    if (amount == 0){
      return;
    }
    address _underlying = underlying();
    address _supplyMToken = supplyMToken();
    uint256 balance = IERC20(_underlying).balanceOf(address(this));
    if (amount < balance) {
      balance = amount;
    }
    uint256 supplyCap = ComptrollerInterface(rewardPool()).supplyCaps(_supplyMToken);
    uint256 currentSupplied = MTokenInterface(_supplyMToken).totalSupply().mul(MTokenInterface(_supplyMToken).exchangeRateCurrent()).div(1e18);
    if (currentSupplied >= supplyCap) {
      return;
    } else if (supplyCap.sub(currentSupplied) <= balance) {
      balance = supplyCap.sub(currentSupplied).sub(2);
    }
    IERC20(_underlying).safeApprove(_supplyMToken, 0);
    IERC20(_underlying).safeApprove(_supplyMToken, balance);
    MErc20Interface(_supplyMToken).mint(balance);
  }

  /**
  * Borrows against the collateral
  */
  function _borrow(uint256 amountUnderlying) internal {
    if (amountUnderlying == 0){
      return;
    }
    // Borrow, check the balance for this contract's address
    MErc20Interface(borrowMToken()).borrow(amountUnderlying);
    if(borrowAsset() == weth){
      IWETH(weth).deposit{value: address(this).balance}();
    }
  }

  function _redeem(uint256 amountUnderlying) internal {
    address _supplyMToken = supplyMToken();
    uint256 exchange = MTokenInterface(_supplyMToken).exchangeRateCurrent();
    if (amountUnderlying < exchange.div(1e18)){
      MErc20Interface(_supplyMToken).redeem(1);
      return;
    }
    MErc20Interface(_supplyMToken).redeemUnderlying(amountUnderlying);
    if(underlying() == weth){
      IWETH(weth).deposit{value: address(this).balance}();
    }
  }

  function _repay(uint256 amountUnderlying) internal {
    if (amountUnderlying == 0){
      return;
    }
    address _borrowAsset = borrowAsset();
    address _borrowMToken = borrowMToken();
    IERC20(_borrowAsset).safeApprove(_borrowMToken, 0);
    IERC20(_borrowAsset).safeApprove(_borrowMToken, amountUnderlying);
    MErc20Interface(_borrowMToken).repayBorrow(amountUnderlying);
  }

  function _redeemMaximumWithFlashloan() internal {
    address _supplyMToken = supplyMToken();
    // amount of liquidity in Radiant
    uint256 available = MTokenInterface(_supplyMToken).getCash();
    uint256 balance = currentBalance().sub(pendingFee());

    _redeemWithFlashloan(Math.min(available, balance), 0);
    uint256 supplied = MTokenInterface(_supplyMToken).balanceOfUnderlying(address(this));
    if (supplied > 0) {
      _redeem(type(uint).max);
    }
  }

  function _depositWithFlashloan() internal {
    address _supplyMToken = supplyMToken();
    address _borrowMToken = borrowMToken();
    uint _borrowNum = borrowTargetFactorNumerator();
    uint256 borrowDiff;
    if (positionHealth() < targetHealth().mul(98).div(100)) {
      _redeemPartial(0);
      borrowDiff = 0;
    } else if (positionHealth() < targetHealth().mul(102).div(100)) {
      borrowDiff = 0;
    } else {
      uint256 balance = currentBalance();
      uint256 borrowTarget = balance.mul(_borrowNum).div(uint(1000).sub(_borrowNum)).mul(getSupplyPriceInBorrow()).div(1e18);
      uint256 borrowed = MTokenInterface(_borrowMToken).borrowBalanceCurrent(address(this));
      borrowDiff = borrowTarget.sub(borrowed);
      address _rewardPool = rewardPool();
      uint256 supplyCap = ComptrollerInterface(_rewardPool).supplyCaps(_supplyMToken);
      uint256 currentSupplied = MTokenInterface(_supplyMToken).totalSupply().mul(MTokenInterface(_supplyMToken).exchangeRateCurrent()).div(1e18);
      uint256 borrowCap = ComptrollerInterface(_rewardPool).borrowCaps(_borrowMToken);
      uint256 totalBorrows = MTokenInterface(_borrowMToken).totalBorrows();
      uint256 borrowAvail;
      if (totalBorrows < borrowCap) {
        borrowAvail = borrowCap.sub(totalBorrows).sub(1);
        if (currentSupplied < supplyCap) {
          borrowAvail = Math.min(supplyCap.sub(currentSupplied).mul(getSupplyPriceInBorrow()).div(1e18).sub(2), borrowAvail);
        } else {
          borrowAvail = 0;
        }
      } else {
        borrowAvail = 0;
      }
      if (borrowDiff > borrowAvail){
        borrowDiff = borrowAvail;
      }
    }
    uint256 balancerBalance = IERC20(borrowAsset()).balanceOf(bVault);

    if (borrowDiff > balancerBalance) {
      // uint256 supplied = MTokenInterface(_supplyMToken).balanceOfUnderlying(address(this));
      // _depositNoFlash(supplied, borrowed, _supplyMToken, _borrowNum);
    } else if (borrowDiff > 0) {
      address[] memory tokens = new address[](1);
      uint256[] memory amounts = new uint256[](1);
      bytes memory userData = abi.encode(0);
      tokens[0] = borrowAsset();
      amounts[0] = borrowDiff.mul(1000).div(1001);
      makingFlashDeposit = true;
      IBVault(bVault).flashLoan(address(this), tokens, amounts, userData);
      makingFlashDeposit = false;
    }
    _handleDust();
  }

  function _redeemWithFlashloan(uint256 amount, uint256 _borrowTargetFactorNumerator) internal {
    address _borrowMToken = borrowMToken();
    uint256 newBorrowTarget;
    {
      uint256 oldBalance = currentBalance();
      uint256 newBalance = oldBalance.sub(amount);
      newBorrowTarget = newBalance.mul(_borrowTargetFactorNumerator).div(uint(1000).sub(_borrowTargetFactorNumerator)).mul(getSupplyPriceInBorrow()).div(1e18);
    }
    uint256 borrowed = MTokenInterface(_borrowMToken).borrowBalanceCurrent(address(this));
    uint256 borrowDiff;
    if (borrowed < newBorrowTarget) {
      borrowDiff = 0;
    } else {
      borrowDiff = borrowed.sub(newBorrowTarget);
    }

    uint256 borrowDiffInUnderlying = borrowDiff.mul(getBorrowPriceInSupply()).div(1e18);
    uint256 balancerBalance = IERC20(underlying()).balanceOf(bVault);

    if (borrowDiffInUnderlying > balancerBalance) {
      // uint256 supplied = MTokenInterface(_supplyMToken).balanceOfUnderlying(address(this));
      // _redeemNoFlash(amount, supplied, borrowed, _supplyMToken, _borrowTargetFactorNumerator);
    } else if (borrowDiffInUnderlying > 0) {
      address[] memory tokens = new address[](1);
      uint256[] memory amounts = new uint256[](1);
      bytes memory userData = abi.encode(0);
      tokens[0] = underlying();
      amounts[0] = borrowDiffInUnderlying.mul(1001).div(1000);
      makingFlashWithdrawal = true;
      IBVault(bVault).flashLoan(address(this), tokens, amounts, userData);
      makingFlashWithdrawal = false;
      _redeem(amount);
    }
    _handleDust();
  }

  function receiveFlashLoan(IERC20[] memory tokens, uint256[] memory amounts, uint256[] memory feeAmounts, bytes memory /*userData*/) external {
    require(msg.sender == bVault);
    require(!makingFlashDeposit || !makingFlashWithdrawal, "Only one can be true");
    require(makingFlashDeposit || makingFlashWithdrawal, "One has to be true");
    address token = address(tokens[0]);
    uint256 toRepay = amounts[0].add(feeAmounts[0]);
    if (makingFlashDeposit){
      _swap(token, underlying(), amounts[0]);
      _supply(amounts[0]);
      _borrow(toRepay);
    } else {
      address _borrowMToken = borrowMToken();
      address _borrowAsset = borrowAsset();
      _swap(token, _borrowAsset, amounts[0]);
      uint256 balance = IERC20(_borrowAsset).balanceOf(address(this));
      uint256 borrowed = MTokenInterface(_borrowMToken).borrowBalanceCurrent(address(this));
      uint256 repaying = Math.min(balance, borrowed);
      _repay(repaying);
      _redeem(toRepay);
    }
    IERC20(token).safeTransfer(bVault, toRepay);
  }

  function _swap(address from, address to, uint256 amount) internal {
    address _universalLiquidator = universalLiquidator();
    IERC20(from).safeApprove(_universalLiquidator, 0);
    IERC20(from).safeApprove(_universalLiquidator, amount);
    uint256 minOut = from == underlying() ? 
      amount.mul(getSupplyPriceInBorrow()).div(1e18).mul(10000).div(10005) : 
      amount.mul(getBorrowPriceInSupply()).div(1e18).mul(10000).div(10005);
    IUniversalLiquidator(_universalLiquidator).swap(from, to, amount, minOut, address(this));
  }

  function _handleDust() internal {
    uint256 baBalance = IERC20(borrowAsset()).balanceOf(address(this));
    uint256 borrowed = MTokenInterface(borrowMToken()).borrowBalanceCurrent(address(this));
    if (baBalance > 0) {
      if (borrowed > 0) {
        _repay(Math.min(baBalance, borrowed));
      }
      if (baBalance > borrowed) {
        uint256 toSwap = baBalance.sub(borrowed);
        _swap(borrowAsset(), underlying(), toSwap);
      }
    }
    _supply(IERC20(underlying()).balanceOf(address(this)));
  }

  // function _depositNoFlash(uint256 supplied, uint256 borrowed, address _supplyMToken, uint256 _borrowNum) internal {
  //   address _underlying = underlying();
  //   uint256 balance = supplied.sub(borrowed);
  //   uint256 borrowTarget = balance.mul(_borrowNum).div(uint(1000).sub(_borrowNum));
  //   {
  //     address _rewardPool = rewardPool();
  //     uint256 supplyCap = ComptrollerInterface(_rewardPool).supplyCaps(_supplyMToken);
  //     uint256 currentSupplied = MTokenInterface(_supplyMToken).totalSupply().mul(MTokenInterface(_supplyMToken).exchangeRateCurrent()).div(1e18);
  //     uint256 borrowCap = ComptrollerInterface(_rewardPool).borrowCaps(_supplyMToken);
  //     uint256 totalBorrows = MTokenInterface(_supplyMToken).totalBorrows();
  //     uint256 borrowAvail;
  //     if (totalBorrows < borrowCap) {
  //       borrowAvail = borrowCap.sub(totalBorrows).sub(1);
  //       if (currentSupplied < supplyCap) {
  //         borrowAvail = Math.min(supplyCap.sub(currentSupplied).sub(2), borrowAvail);
  //       } else {
  //         borrowAvail = 0;
  //       }
  //     } else {
  //       borrowAvail = 0;
  //     }
  //     if (borrowTarget.sub(borrowed) > borrowAvail) {
  //       borrowTarget = borrowed.add(borrowAvail);
  //     }
  //   }
  //   while (borrowed < borrowTarget) {
  //     uint256 wantBorrow = borrowTarget.sub(borrowed);
  //     uint256 maxBorrow = Math.min(
  //       supplied.mul(collateralFactorNumerator()).div(uint(1000)).sub(borrowed),
  //       MTokenInterface(_supplyMToken).getCash()
  //     );
  //     _borrow(Math.min(wantBorrow, maxBorrow));
  //     uint256 underlyingBalance = IERC20(_underlying).balanceOf(address(this));
  //     if (underlyingBalance > 0) {
  //       _supply(underlyingBalance);
  //     }
  //     //update parameters
  //     borrowed = MTokenInterface(_supplyMToken).borrowBalanceCurrent(address(this));
  //     supplied = MTokenInterface(_supplyMToken).balanceOfUnderlying(address(this));
  //     balance = supplied.sub(borrowed);
  //   }
  // }

  // function _redeemNoFlash(uint256 amount, uint256 supplied, uint256 borrowed, address _supplyMToken, uint256 _borrowNum) internal {
  //   address _underlying = underlying();
  //   uint256 newBorrowTarget;
  //   {
  //       uint256 oldBalance = supplied.sub(borrowed);
  //       uint256 newBalance = oldBalance.sub(amount);
  //       newBorrowTarget = newBalance.mul(_borrowNum).div(uint(1000).sub(_borrowNum));
  //   }
  //   while (borrowed > newBorrowTarget) {
  //     uint256 requiredCollateral = borrowed.mul(uint(1000)).div(collateralFactorNumerator());
  //     uint256 toRepay = borrowed.sub(newBorrowTarget);
  //     // redeem just as much as needed to repay the loan
  //     // supplied - requiredCollateral = max redeemable, amount + repay = needed
  //     uint256 toRedeem = Math.min(
  //       Math.min(supplied.sub(requiredCollateral), amount.add(toRepay)),
  //       MTokenInterface(_supplyMToken).getCash()
  //     );
  //     _redeem(toRedeem);
  //     // now we can repay our borrowed amount
  //     uint256 _underlyingBalance = IERC20(_underlying).balanceOf(address(this));
  //     _repay(Math.min(toRepay, _underlyingBalance));
  //     // update the parameters
  //     borrowed = MTokenInterface(_supplyMToken).borrowBalanceCurrent(address(this));
  //     supplied = MTokenInterface(_supplyMToken).balanceOfUnderlying(address(this));
  //   }
  //   uint256 underlyingBalance = IERC20(_underlying).balanceOf(address(this));
  //   if (underlyingBalance < amount) {
  //     uint256 toRedeem = amount.sub(underlyingBalance);
  //     uint256 balance = supplied.sub(borrowed);
  //     // redeem the most we can redeem
  //     _redeem(Math.min(toRedeem, balance));
  //   }
  // }

  // updating collateral factor
  // note 1: one should settle the loan first before calling this
  // note 2: collateralFactorDenominator is 1000, therefore, for 20%, you need 200
  function _setCollateralFactorNumerator(uint256 _numerator) public onlyGovernance {
    require(_numerator <= uint(1000), "collat-");
    require(_numerator > borrowTargetFactorNumerator(), "collat+");
    setUint256(_COLLATERALFACTORNUMERATOR_SLOT, _numerator);
  }

  function collateralFactorNumerator() public view returns (uint256) {
    return getUint256(_COLLATERALFACTORNUMERATOR_SLOT);
  }

  function setBorrowTargetFactorNumerator(uint256 _numerator) public onlyGovernance {
    require(_numerator < collateralFactorNumerator(), "Bor");
    setUint256(_BORROWTARGETFACTORNUMERATOR_SLOT, _numerator);
  }

  function borrowTargetFactorNumerator() public view returns (uint256) {
    return getUint256(_BORROWTARGETFACTORNUMERATOR_SLOT);
  }

  function setFold (bool _fold) public onlyGovernance {
    setBoolean(_FOLD_SLOT, _fold);
  }

  function fold() public view returns (bool) {
    return getBoolean(_FOLD_SLOT);
  }

  function _setSupplyMToken (address _target) internal {
    setAddress(_SUPPLY_MTOKEN_SLOT, _target);
  }

  function supplyMToken() public view returns (address) {
    return getAddress(_SUPPLY_MTOKEN_SLOT);
  }

  function _setBorrowAsset (address _target) internal {
    setAddress(_BORROW_ASSET_SLOT, _target);
  }

  function borrowAsset() public view returns (address) {
    return getAddress(_BORROW_ASSET_SLOT);
  }

  function _setBorrowMToken (address _target) internal {
    setAddress(_BORROW_MTOKEN_SLOT, _target);
  }

  function borrowMToken() public view returns (address) {
    return getAddress(_BORROW_MTOKEN_SLOT);
  }

  function finalizeUpgrade() external onlyGovernance {
    _finalizeUpgrade();
    _updateStoredBalance();
  }

  receive() external payable {}
}