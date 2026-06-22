// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IwETH } from "./interfaces/IwETH.sol";
import { IAddressesProvider, ILendingPool, DataTypes, IRewardsController } from "./interfaces/IAave.sol";
import { AggregatorV3Interface } from "./interfaces/IAggregatorV3Interface.sol";
import { IBorrowerActions, IBorrowerGetters } from "./interfaces/IBorrower.sol";
import { ILenderPublic } from "./interfaces/ILender.sol";

contract Borrower is Ownable, ReentrancyGuard, IBorrowerActions, IBorrowerGetters {
	using SafeERC20 for IERC20;

	uint256 constant public PCT_PRECISION = 1e6;

	IwETH public wETH;
	ILenderPublic public lender;
	IERC20 public reserve;
	uint256 public reserveDecimals;
	IERC20 public aToken;

	IAddressesProvider public addressProvider;
	ILendingPool public lendingPool;
	AggregatorV3Interface internal priceFeed;
	uint8 internal priceDecimalsPower;
	IRewardsController public rewardsController;
	address rewardsBeneficiary;
	bool internal reversePrice;

	uint256 public totalBalance;
	struct UserData {
		uint256 balance; // amount in reserve decimals
		uint256 debt;	// amount in ETH decimals (18)
	}
	mapping(address => UserData) private userData;

	mapping (address => uint256) public feePaid;

	event Deposit(address borrower, uint256 amount);
	event Withdraw(address borrower, uint256 amount);
	event Borrow(address borrower, uint256 amount);
	event Repay(address borrower, uint256 amount);
	event Liquidate(address borrower, uint256 amountLiqidated, address liquidator);

	modifier onlyAmountGreaterThanZero(uint256 amount_) {
		require(amount_ != 0, "amount must be greater than 0");
		_;
	}

	constructor(
		address lender_,
		address reserve_,
		uint256 reserveDecimals_,
		address addressProvider_,
		address rewardsController_,
		address rewardsBeneficiary_,
		address priceFeedAddress_,
		bool reversePrice_
		)
	{
		lender = ILenderPublic(lender_);
		wETH = IwETH(lender.wETH());
		reserve = IERC20(reserve_);
		reserveDecimals = reserveDecimals_;
		addressProvider = IAddressesProvider(addressProvider_);
		rewardsController = IRewardsController(rewardsController_);
		reversePrice = reversePrice_;
		updateLendingPoolAddress();
		updateaTokenAddress();
		updatePriceOracle(priceFeedAddress_);
		updateRewardsBeneficiary(rewardsBeneficiary_);
	}

	// for wETH withdraw
	receive() external payable {
	}

	/***************************************
					ADMIN
	****************************************/

	function updateLendingPoolAddress()
		public
	{
		address _lendingPool = addressProvider.getLendingPool();
		require(address(lendingPool) != _lendingPool);
		if (address(lendingPool) != address(0)) {
			reserve.safeApprove(address(lendingPool), 0);
		}
		lendingPool = ILendingPool(_lendingPool);
		reserve.safeApprove(_lendingPool, type(uint256).max);
	}

	function updateaTokenAddress()
		public
	{
		DataTypes.ReserveData memory _reserveData;
		_reserveData = lendingPool.getReserveData(address(reserve));
		require(address(aToken) != _reserveData.aTokenAddress);
		aToken = IERC20(_reserveData.aTokenAddress);
	}

	function updatePriceOracle(address feedAddress_)
		public
		onlyOwner
	{
		priceFeed = AggregatorV3Interface(feedAddress_);
		priceDecimalsPower = 18 + AggregatorV3Interface(feedAddress_).decimals(); // Wrapped ETH(Matic) decimals is 18
	}

	function updateRewardsBeneficiary(address rewardsBeneficiary_)
		public
		onlyOwner
	{
		require(rewardsBeneficiary != rewardsBeneficiary_);
		rewardsBeneficiary = rewardsBeneficiary_;
	}

	function getFee(address lender_, uint256 amount_)
		external
		returns(uint256 feePaid_)
	{
		require(msg.sender == address(lender), "wrong caller");
		require(amount_ > feePaid[lender_], "no fee available");

		feePaid_ = amount_ - feePaid[lender_];

		require(feePaid_ <= aToken.balanceOf(address(this)) - totalBalance, "bad fee amount");

		feePaid[lender_] += feePaid_;
		lendingPool.withdraw(address(reserve), feePaid_, lender_);
	}

	/***************************************
					PRIVATE
	****************************************/

	function _deposit(uint256 amount_)
		private
		onlyAmountGreaterThanZero(amount_)
	{
		reserve.safeTransferFrom(msg.sender, address(this), amount_);
		lendingPool.deposit(address(reserve), amount_, address(this), 0);
		userData[msg.sender].balance += amount_;
		totalBalance += amount_;

		emit Deposit(msg.sender, amount_);
	}

	function _withdraw(uint256 amount_)
		private
		onlyAmountGreaterThanZero(amount_)
	{
		UserData storage _user = userData[msg.sender];
		if(_user.debt != 0){
			require(
				amount_ <= _getAvailableWithdraw(_user.balance, _user.debt, _getPrice(), lender.borrowCoefficient()),
				"amount greater than available to withdraw"
			);
		} else {
			require(
				_user.balance >= amount_, 
				"amount greater than balance"
			);
		}
		_user.balance -= amount_;
		totalBalance -= amount_;
		lendingPool.withdraw(address(reserve), amount_, msg.sender);

		emit Withdraw(msg.sender, amount_);
	}

	function _borrow(uint256 amount_)
		private
		onlyAmountGreaterThanZero(amount_)
		returns(uint256)
	{
		UserData storage _user = userData[msg.sender];
		uint256 _availableBorrow = _getAvailableBorrow(
			_user.balance, _user.debt, _getPrice(), lender.borrowCoefficient()
		);
		require(_availableBorrow != 0,  "no borrow available");

		if(amount_ == type(uint256).max) {
			amount_ = _availableBorrow;
		} else {
			require(amount_ <= _availableBorrow, "not ehough collateral");
		}
		require(
			wETH.balanceOf(address(lender)) >= amount_, 
			"not enough weth balance on lender contract"
		);

		_user.debt += amount_;
		wETH.transferFrom(address(lender), msg.sender, amount_);

		emit Borrow(msg.sender, amount_);

		return amount_;
	}

	function _repay(uint256 amount_)
		private
		onlyAmountGreaterThanZero(amount_)
	{
		UserData storage _user = userData[msg.sender];

		require(_user.debt >= amount_, "amount is greater than debt");
		require(msg.value == 0, "non-zero msg.value");

		wETH.transferFrom(msg.sender, address(lender), amount_);
		_user.debt -= amount_;

		emit Repay(msg.sender, amount_);
	}

	function _getAvailableBorrow(uint256 balance_, uint256 debt_, uint256 price_, uint256 borrowCoefficient_)
		private
		view
		returns(uint256)
	{
		uint256 _maxAvailableBorrow = balance_ * price_ * borrowCoefficient_ / (10**reserveDecimals) / PCT_PRECISION;
		if(_maxAvailableBorrow > debt_) {
			return _maxAvailableBorrow - debt_;
		} else {
			return 0;
		}
	}

	function _getAvailableWithdraw(uint256 balance_, uint256 debt_, uint256 price_, uint256 borrowCoefficient_)
		private
		pure
		returns(uint256)
	{
		uint256 _debtCost = debt_ * price_;
		uint256 _collaterizedBalance =  _debtCost * PCT_PRECISION / borrowCoefficient_;
		if(balance_ > _collaterizedBalance) {
			return balance_ - _collaterizedBalance;
		} else {
			return 0;
		}
	}

	function _getHealthFactor(uint256 balance_, uint256 debt_, uint256 price_, uint256 liquidationCoefficient_)
		private
		pure
		returns(uint256)
	{
		uint256 _debtCost = debt_ * price_;
		return balance_ * liquidationCoefficient_ / _debtCost;
	}

	function _getLiquidationAmount(uint256 balance_, uint256 debt_, uint256 price_)
		private
		view
		returns(uint256 liquidationAmount_)
	{
		uint256 _debtCost = debt_ * price_;
		if(balance_ > _debtCost) {
			liquidationAmount_ = _debtCost + (balance_ - _debtCost) * lender.liquidationBonusCoefficient() / PCT_PRECISION;
		} else {
			liquidationAmount_ = balance_;
		}
	}

	function _getPrice()
		private
		view
		returns(uint256 price_)
	{
		price_ = uint256(priceFeed.latestAnswer());
		require(price_ != 0, "oracle price error");

		if (reversePrice) {
			price_ = 10 **  priceDecimalsPower / price_;
		} else {
			uint256 decimalsDiff_ = 18 - (priceDecimalsPower - 18);
			price_ *= 10 ** decimalsDiff_;
		}
		return price_;
	}

	/***************************************
					ACTIONS
	****************************************/

	function deposit(uint256 amount_)
		external
		override
		nonReentrant
	{
		_deposit(amount_);
	}

	function withdraw(uint256 amount_)
		external
		override
		nonReentrant
	{
		_withdraw(amount_);
	}

	function borrow(uint256 amount_)
		external
		override
		nonReentrant
		returns(uint256)
	{
		return _borrow(amount_);
	}

	function repay(uint256 amount_)
		external
		override
		payable
		nonReentrant
	{
		_repay(amount_);
	}

	function depositAndBorrow(uint256 amountDeposit_, uint256 amountBorrow_)
		external
		override
		nonReentrant
		returns(uint256)
	{
		_deposit(amountDeposit_);
		return _borrow(amountBorrow_);
	}

	function repayAndWithdraw(uint256 amountRepay_, uint256 amontWithdraw_)
		external
		override
		payable
		nonReentrant
	{
		_repay(amountRepay_);
		_withdraw(amontWithdraw_);
	}

	function liquidate(address borrower_)
		external
		override
		payable
		nonReentrant
		returns(uint256 liquidationAmount_)
	{
		UserData storage _user = userData[borrower_];
		require(_user.debt != 0, "user has no debt");
		uint256 _price = _getPrice();
		uint256 _liquidationCoefficient = lender.liquidationCoefficient();

		require(
			_getHealthFactor(_user.balance, _user.debt, _price, _liquidationCoefficient) <= PCT_PRECISION,
			"attempt to liquidate healthy position"
		);
		require(
			msg.value == 0, 
			"non-zero msg.value"
		);

		wETH.transferFrom(msg.sender, address(lender), _user.debt);

		liquidationAmount_ = _getLiquidationAmount(_user.balance, _user.debt, _price);

		lendingPool.withdraw(address(reserve), liquidationAmount_, msg.sender);

		_user.balance -= liquidationAmount_;
		_user.debt = 0;
		totalBalance -= liquidationAmount_;
		emit Liquidate(borrower_, liquidationAmount_, msg.sender);
	}

	function claimRewards()
		external
		override
		returns(uint256)
	{
		address[] memory assets_ = new address[](1);
		assets_[0] = address(aToken);
		return rewardsController.claimRewards(assets_, type(uint256).max, rewardsBeneficiary);
	}

	/***************************************
					GETTERS
	****************************************/

	function getUserData(address borrower_)
		external
		override
		view
		returns (
			uint256 balance_,
			uint256 debt_,
			uint256 availableWithdraw_,
			uint256 availableBorrow_,
			uint256 healthFactor_
		)
	{
		UserData memory _user = userData[borrower_];
		uint256 _price = _getPrice();
		balance_ = _user.balance;
		debt_ = _user.debt;
		healthFactor_ = PCT_PRECISION;
		if(_user.balance != 0) {
			uint256 _borrowCoefficient = lender.borrowCoefficient();

			if(_user.debt != 0) {
				availableWithdraw_ = _getAvailableWithdraw(_user.balance, _user.debt, _price, _borrowCoefficient);
				healthFactor_ = _getHealthFactor(_user.balance, _user.debt, _price, lender.liquidationCoefficient());
			} else {
				availableWithdraw_ = _user.balance;
			}

			availableBorrow_ =  _getAvailableBorrow(_user.balance, _user.debt, _price, _borrowCoefficient);
		}
	}

	function getAvailableBorrow(address borrower_, uint256 amountDeposit_)
		external
		override
		view
		returns(uint256 availableBorrow_)
	{
		UserData memory _user = userData[borrower_];
		if(_user.balance + amountDeposit_ != 0) {
			availableBorrow_ = _getAvailableBorrow(
				_user.balance + amountDeposit_, _user.debt, _getPrice(), lender.borrowCoefficient()
			);
		}
	}

	function getAvailableWithdraw(address borrower_, uint256 amountRepay_)
		external
		override
		view
		returns(uint256 availableWithdraw_)
	{
		UserData memory _user = userData[borrower_];
		require(_user.debt >= amountRepay_, "repay amount greater than debt");
		if(_user.debt != 0) {
			availableWithdraw_ =  _getAvailableWithdraw(
				_user.balance, _user.debt - amountRepay_, _getPrice(), lender.borrowCoefficient()
			);
		} else {
			availableWithdraw_ =  _user.balance;
		}
	}

	function getLiquidationAmount(address borrower_)
		external
		override
		view
		returns(uint256 liquidationAmount_)
	{
		UserData memory _user = userData[borrower_];
		if(_user.debt != 0) {
			uint256 _price = _getPrice();
			if(_getHealthFactor(_user.balance, _user.debt, _price, lender.liquidationCoefficient()) <= PCT_PRECISION) {
				liquidationAmount_ = _getLiquidationAmount(_user.balance, _user.debt, _price);
			}
		}
	}

	function getPrice() external override view returns(uint256)
	{
		return _getPrice();
	}

	function getRewardsBalance() external override view returns(uint256)
	{
		address[] memory assets_ = new address[](1);
		assets_[0] = address(aToken);
		return rewardsController.getRewardsBalance(assets_, address(this));
	}
}