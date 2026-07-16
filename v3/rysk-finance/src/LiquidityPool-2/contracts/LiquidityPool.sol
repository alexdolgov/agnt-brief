// SPDX-License-Identifier: BUSL-1.1 
pragma solidity 0.8.24;

import {Protocol} from "./Protocol.sol";

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import {AccessControl} from "./libraries/AccessControl.sol";

import {IAccounting} from "./interfaces/IAccounting.sol";
import {ILiquidityPool} from "./interfaces/ILiquidityPool.sol";
import {IOptionRegistry} from "./interfaces/IOptionRegistry.sol";
import {IAuthority} from "./interfaces/IAuthority.sol";
import {Types} from "./libraries/Types.sol";

import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {PRBMathSD59x18} from "prb-math/contracts/PRBMathSD59x18.sol";
import {PRBMathUD60x18} from "prb-math/contracts/PRBMathUD60x18.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 *  @title Rysk Premium Liquidity Pool contract for storing funds, issuing shares and processing options transactions
 *  @dev Interacts with the OptionRegistry for options behaviour, Interacts with hedging reactors for alternative derivatives
 *       Interacts with Handlers for periphary user options interactions. Interacts with Chainlink price feeds throughout.
 *       Interacts with Volatility Feed via getImpliedVolatility(), interacts with a chainlink PortfolioValues external adaptor
 *       oracle via PortfolioValuesFeed.
 */
contract LiquidityPool is ILiquidityPool, ERC20Upgradeable, UUPSUpgradeable, AccessControl, ReentrancyGuardUpgradeable, PausableUpgradeable {
	using PRBMathSD59x18 for int256;
	using PRBMathUD60x18 for uint256;
	using EnumerableSet for EnumerableSet.AddressSet;
	using SafeERC20 for IERC20;

	// Protocol management contract
	Protocol public protocol;
	// asset that denominates the strike price
	address public strikeAsset;
	// asset that is used as the reference asset
	address public underlyingAsset;
	// asset that is used for collateral asset
	address public collateralAsset;

	// amount of collateralAsset allocated as collateral
	uint256 public collateralAllocated;
	// set of written option tokens to track for payout calculations
	EnumerableSet.AddressSet private writtenOptions;
	// mapping to track the amount of each option written
	mapping(address => uint256) public writtenAmounts;
	
	// epoch of the price per share round
	uint256 public epoch;
	// the deposit price per share for each epoch (used for converting deposits to shares)
	mapping(uint256 => uint256) public epochDepositPrice;
	// the withdrawal price per share for each epoch (used for converting shares to collateral)
	mapping(uint256 => uint256) public epochWithdrawalPrice;
	// whether epoch deposit price has been set
	mapping(uint256 => bool) public epochDepositPriceSet;
	// whether epoch withdrawal price has been set
	mapping(uint256 => bool) public epochWithdrawalPriceSet;
	// tracks if batch withdrawals were successfully processed for an epoch
	mapping(uint256 => bool) public epochWithdrawalsProcessed;
	// stores epoch data (number, price, timestamp) by epoch number
	mapping(uint256 => EpochData) public epochData;
	// deposit receipts for users
	mapping(address => IAccounting.DepositReceipt) public depositReceipts;
	// withdrawal receipts for users
	mapping(address => IAccounting.WithdrawalReceipt) public withdrawalReceipts;
	// pending deposits for a round - collateral decimals
	uint256 public pendingDeposits;
	// pending withdrawals for a round - collateral decimals (shares)
	uint256 public pendingWithdrawals;
	// withdrawal amount that has been executed and is pending completion. These funds are to be excluded from all book balances.
	uint256 public partitionedFunds;

	// max total supply of collateral - collateral decimals
	uint256 public collateralCap;
	// handlers who are approved to interact with options functionality
	mapping(address => bool) public handler; 
	// is the epoch locked (blocks deposits and option trading until epoch execution)
	bool public isEpochLocked;
	// keeper mapping
	mapping(address => bool) public keeper;
	// dispute period in seconds (e.g., 86400 = 24 hours)
	uint256 public disputePeriod;
	// timestamp when epoch prices were set
	mapping(uint256 => uint256) public epochPriceSetTimestamp;
	
	// Option fee settings (in basis points, e.g., 100 = 1%)
	uint256 public optionSaleFee;      // Fee on premium when selling options
	uint256 public curatorFeeShare;    // Percentage of fees that go to curator
	// Accumulated fees from option operations (split between protocol and curator)
	uint256 public accumulatedProtocolFees;
	uint256 public accumulatedCuratorFees;
	
	// Whitelist settings
	bool public isWhitelistEnabled;
	mapping(address => bool) public whitelistedAddresses;
	
	// BIPS constant
	uint256 private constant MAX_BPS = 10_000;

	event epochExecuted(uint256 epoch);
	event Withdraw(address indexed recipient, uint256 amount, uint256 shares);
	event Deposit(address indexed recipient, uint256 amount, uint256 epoch);
	event Redeem(address indexed recipient, uint256 amount, uint256 epoch);
	event InitiateWithdraw(address indexed recipient, uint256 amount, uint256 epoch);
	event WriteOption(address indexed series, uint256 amount, uint256 premium, uint256 escrow, address indexed buyer);
	event RebalancePortfolioDelta(uint256 nav, int256 deltaChange);
	event EpochLocked();
	event EpochUnlocked();
	event EpochPriceSet(uint256 indexed epoch, uint256 depositPrice, uint256 withdrawalPrice);
	event EpochPriceDisputed(uint256 indexed epoch, uint256 newDepositPrice, uint256 newWithdrawalPrice);
	event DisputePeriodUpdated(uint256 newDisputePeriod);
	event OptionSaleFeeUpdated(uint256 newFee);
	event CuratorFeeShareUpdated(uint256 newShare);
	event OptionFeeCollected(address indexed series, uint256 totalFee, uint256 curatorShare, uint256 protocolShare);
	event ProtocolFeesWithdrawn(address indexed recipient, uint256 amount);
	event CuratorFeesWithdrawn(address indexed recipient, uint256 amount);
	event WhitelistEnabled(bool enabled);
	event AddressWhitelisted(address indexed account, bool whitelisted);
	event SettleVault(
		address indexed series,
		uint256 collateralReturned,
		uint256 collateralLost,
		address closer,
		uint256 vaultId
	);
	event BuybackOption(
		address indexed series,
		uint256 amount,
		uint256 premium,
		uint256 collateralReturned,
		address indexed seller
	);

	/// @dev keepers or governors can access
	modifier isKeeperOrGovernor() {
		if (!keeper[msg.sender] && msg.sender != authority.governor()) {
			revert("LiquidityPool: Not keeper or governor");
		}
		_;
	}

	modifier isEpochNotLocked() {
		if (isEpochLocked) {
			revert("LiquidityPool: Epoch locked");
		}
		_;
	}

	modifier isHandler() {
		if (!handler[msg.sender]) {
			revert("LiquidityPool: Not handler");
		}
		_;
	}

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize(
		address _protocol,
		address _strikeAsset,
		address _underlyingAsset,
		address _collateralAsset,
		string memory _name,
		string memory _symbol,
		address _authority,
		bool _whitelistEnabled
	) external initializer {
		__ERC20_init(_name, _symbol);
		__UUPSUpgradeable_init();
		__ReentrancyGuard_init();
		__Pausable_init();
		__AccessControl_init(IAuthority(_authority));
		
		if (_protocol == address(0) || _strikeAsset == address(0) || _underlyingAsset == address(0) || _collateralAsset == address(0)) {
			revert("LiquidityPool: Invalid address");
		}
		strikeAsset = _strikeAsset;
		underlyingAsset = _underlyingAsset; 
		collateralAsset = _collateralAsset;
		protocol = Protocol(_protocol);
		uint256 scale = 10**ERC20(_collateralAsset).decimals();
		epochDepositPrice[0] = scale;
		epochWithdrawalPrice[0] = scale;
		epoch++;
		collateralCap = type(uint256).max;
		isWhitelistEnabled = _whitelistEnabled;
	}
	
	/**
	 * @notice Override decimals to match collateral asset
	 * @dev LP tokens now have same decimals as collateral
	 */
	function decimals() public view override returns (uint8) {
		return ERC20(collateralAsset).decimals();
	}

	function pause() external onlyGuardian {
		_pause();
	}

	function lockUnlockEpoch(bool _lock) external onlyGuardian {
		isEpochLocked = _lock;
		if (_lock) {
			emit EpochLocked();
		} else {
			emit EpochUnlocked();
		}
	}

	function unpause() external onlyGuardian {
		_unpause();
	}

	/**
	 * @notice set the maximum collateral amount allowed in the pool
	 * @param _collateralCap of the collateral held
	 * @dev   only governance can call this function
	 */
	function setCollateralCap(uint256 _collateralCap) external onlyGovernor {
		collateralCap = _collateralCap;
	}


	/**
	 * @notice set the option sale fee percentage
	 * @param _optionSaleFee fee percentage in basis points
	 * @dev   only governance can call this function
	 */
	function setOptionSaleFee(uint256 _optionSaleFee) external onlyGovernor {
		if (_optionSaleFee > MAX_BPS) { 
			revert("LiquidityPool: Fee exceeds maximum");
		}
		optionSaleFee = _optionSaleFee;
		emit OptionSaleFeeUpdated(_optionSaleFee);
	}

	/**
	 * @notice set the curator fee share
	 * @param _curatorFeeShare fee share in basis points
	 * @dev   only governance can call this function
	 */
	function setCuratorFeeShare(uint256 _curatorFeeShare) external onlyGovernor {
		if (_curatorFeeShare > MAX_BPS) { 
			revert("LiquidityPool: Fee share exceeds maximum");
		}
		curatorFeeShare = _curatorFeeShare;
		emit CuratorFeeShareUpdated(_curatorFeeShare);
	}

	/**
	 * @notice withdraw accumulated protocol fees
	 * @dev   only governance can call this function
	 */
	function withdrawProtocolFees() external onlyGovernor nonReentrant {
		uint256 amount = accumulatedProtocolFees;
		if (amount == 0) {
			revert("LiquidityPool: No protocol fees to withdraw");
		}
		accumulatedProtocolFees = 0;
		address governor = authority.governor();
		IERC20(collateralAsset).safeTransfer(governor, amount);
		emit ProtocolFeesWithdrawn(governor, amount);
	}

	/**
	 * @notice withdraw accumulated curator fees 
	 * @dev   only manager can call this function
	 */
	function withdrawCuratorFees() external onlyManager nonReentrant {
		uint256 amount = accumulatedCuratorFees;
		if (amount == 0) {
			revert("LiquidityPool: No curator fees to withdraw");
		}
		accumulatedCuratorFees = 0;
		address manager = authority.manager();
		IERC20(collateralAsset).safeTransfer(manager, amount);
		emit CuratorFeesWithdrawn(manager, amount);
	}

	/**
	 * @notice enable or disable the whitelist for deposits
	 * @param _enabled true to enable whitelist, false to disable
	 * @dev   only governance can call this function
	 *        when enabled, only whitelisted addresses can deposit
	 *        withdrawals are never affected by whitelist
	 */
	function setWhitelistEnabled(bool _enabled) external override onlyGovernor {
		isWhitelistEnabled = _enabled;
		emit WhitelistEnabled(_enabled);
	}

	/**
	 * @notice add or remove an address from the whitelist
	 * @param _address address to whitelist or remove
	 * @param _whitelisted true to whitelist, false to remove
	 * @dev   only governance can call this function
	 */
	function setWhitelistedAddress(address _address, bool _whitelisted) public override onlyGovernor {
		_setWhitelistedAddress(_address, _whitelisted);
	}

	/**
	 * @notice batch add or remove addresses from the whitelist
	 * @param _addresses array of addresses to whitelist or remove
	 * @param _whitelisted true to whitelist, false to remove
	 * @dev   only governance can call this function
	 */
	function setWhitelistedAddresses(address[] calldata _addresses, bool _whitelisted) external override onlyGovernor {
		for (uint256 i = 0; i < _addresses.length; i++) {
			_setWhitelistedAddress(_addresses[i], _whitelisted);
		}
	}

	/**
	 * @notice internal function to set whitelist status
	 * @param _address address to whitelist or remove
	 * @param _whitelisted true to whitelist, false to remove
	 */
	function _setWhitelistedAddress(address _address, bool _whitelisted) internal {
		whitelistedAddresses[_address] = _whitelisted;
		emit AddressWhitelisted(_address, _whitelisted);
	}

	/**
	 * @notice set the dispute period for epoch prices
	 * @param _disputePeriod the dispute period in seconds
	 * @dev   only governor can call this function
	 *        this is the time window after setting prices where they can be disputed/updated
	 */
	function setDisputePeriod(uint256 _disputePeriod) external override onlyGovernor { 
		// Only allow changing dispute period if prices haven't been set for current epoch
		// This prevents same-epoch withdrawals from getting different prices due to dispute timing
		if (epochDepositPriceSet[epoch] || epochWithdrawalPriceSet[epoch]) {
			revert("LiquidityPool: Cannot change dispute period after prices set");
		}
		disputePeriod = _disputePeriod;
		emit DisputePeriodUpdated(_disputePeriod);
	}

	/**
	 * @notice set the deposit and withdrawal prices for the current epoch before executing epoch calculation
	 * @param _depositPrice the price per share for converting deposits to shares in collateral decimals
	 * @param _withdrawalPrice the price per share for converting shares to collateral in collateral decimals
	 * @dev   only governor can call this function
	 *        off-chain calculation should include: balance + collateralAllocated - option liabilities
	 *        depositPrice and withdrawalPrice may differ 
	 */
	function setEpochPrice(uint256 _depositPrice, uint256 _withdrawalPrice) external onlyGovernor {
		if (_depositPrice == 0 || _withdrawalPrice == 0) {
			revert("LiquidityPool: Invalid price");
		}
		if (epochDepositPriceSet[epoch] || epochWithdrawalPriceSet[epoch]) {
			revert("LiquidityPool: Price already set, use dispute");
		}
		epochDepositPrice[epoch] = _depositPrice;
		epochWithdrawalPrice[epoch] = _withdrawalPrice;
		epochDepositPriceSet[epoch] = true;
		epochWithdrawalPriceSet[epoch] = true;
		epochPriceSetTimestamp[epoch] = block.timestamp;
		emit EpochPriceSet(epoch, _depositPrice, _withdrawalPrice);
	}

	/**
	 * @notice dispute/update the epoch prices during the dispute period
	 * @param _depositPrice the new deposit price per share in collateral decimals
	 * @param _withdrawalPrice the new withdrawal price per share in collateral decimals
	 * @dev   only governor can call this function
	 *        can only be called within the dispute period after prices were initially set
	 *        resets the dispute period timer
	 */
	function disputeEpochPrice(uint256 _depositPrice, uint256 _withdrawalPrice) external override onlyGovernor {
		if (_depositPrice == 0 || _withdrawalPrice == 0) {
			revert("LiquidityPool: Invalid price");
		}
		if (!epochDepositPriceSet[epoch] || !epochWithdrawalPriceSet[epoch]) {
			revert("LiquidityPool: Prices not set yet");
		}
		uint256 timeSincePriceSet = block.timestamp - epochPriceSetTimestamp[epoch];
		if (timeSincePriceSet >= disputePeriod) {
			revert("LiquidityPool: Dispute period expired");
		}
		
		epochDepositPrice[epoch] = _depositPrice;
		epochWithdrawalPrice[epoch] = _withdrawalPrice;
		epochPriceSetTimestamp[epoch] = block.timestamp;
		emit EpochPriceDisputed(epoch, _depositPrice, _withdrawalPrice);
	}

	/**
	 * @notice get the deposit price per share set for a specific epoch
	 * @param _epoch the epoch to get the deposit price for
	 * @return the deposit price per share in collateral decimals
	 */
	function getEpochDepositPrice(uint256 _epoch) external view returns (uint256) {
		return epochDepositPrice[_epoch];
	}

	/**
	 * @notice get the withdrawal price per share set for a specific epoch
	 * @param _epoch the epoch to get the withdrawal price for
	 * @return the withdrawal price per share in collateral decimals
	 */
	function getEpochWithdrawalPrice(uint256 _epoch) external view returns (uint256) {
		return epochWithdrawalPrice[_epoch];
	}

	/**
	 * @notice get complete epoch data including number, price, and timestamp
	 * @param _epoch the epoch to get data for
	 * @return epochData struct containing epochNumber, pricePerShare, and timestamp
	 */
	function getEpochData(uint256 _epoch) external view override returns (EpochData memory) {
		return epochData[_epoch];
	}

	/**
	 * @notice change the status of a handler
	 */
	function changeHandler(address _handler, bool auth) external onlyGovernor {
		if (_handler == address(0)) {
			revert("LiquidityPool: Invalid address");
		}
		handler[_handler] = auth;
	}

	/**
	 * @notice change the status of a keeper
	 */
	function setKeeper(address _keeper, bool _auth) external onlyGovernor {
		if (_keeper == address(0)) {
			revert("LiquidityPool: Invalid address");
		}
		keeper[_keeper] = _auth;
	}

	/**
	 * @notice closes an oToken vault, returning collateral (minus ITM option expiry value) back to the pool
	 * @param seriesAddress the address of the oToken vault to close
	 * @return collatReturned the amount of collateral returned to the liquidity pool, assumes in collateral decimals
	 * @dev   only keeper or governor can call this function
	 */
	function settleVault(address seriesAddress) external isKeeperOrGovernor returns (uint256) {
		// get number of options in vault and collateral returned to recalculate our position without these options
		// returns in collat decimals, collat decimals, e8, and vaultId
		(, uint256 collatReturned, uint256 collatLost, , uint256 vaultId) = _getOptionRegistry().settle(seriesAddress);
		// Cap reduction to prevent underflow if extra collateral was donated to vault
		uint256 totalSettled = collatReturned + collatLost;
		if (totalSettled >= collateralAllocated) {
			collateralAllocated = 0;
		} else {
			collateralAllocated -= totalSettled;
		}
		// Remove option from tracking set and clear amount
		writtenOptions.remove(seriesAddress);
		delete writtenAmounts[seriesAddress];
		emit SettleVault(seriesAddress, collatReturned, collatLost, msg.sender, vaultId);
		return collatReturned;
	}

	/**
	 * @notice issue an option
	 * @param optionSeries the series detail of the option - strike decimals in e8
	 * @dev only callable by a handler contract
	 */
	function handlerIssue(Types.OptionSeries memory optionSeries) external override whenNotPaused isHandler returns (address) {
		// series strike in e8
		return _issue(optionSeries, _getOptionRegistry());
	}

	/**
	 * @notice write an option that already exists
	 * @param optionSeries the series detail of the option - strike in e8
	 * @param seriesAddress the series address of the oToken
	 * @param amount the collateral amount to use in collateral decimals
	 * @param optionRegistry the registry used for options writing
	 * @param premium the premium of the option in collateral decimals
	 * @param recipient the receiver of the option
	 * @dev only callable by a handler contract
	 */
	function handlerWriteOption( 
		Types.OptionSeries memory optionSeries,
		address seriesAddress,
		uint256 amount,
		IOptionRegistry optionRegistry,
		uint256 premium,
		address recipient
	) external override isHandler isEpochNotLocked nonReentrant returns (uint256) {
		return
			_writeOption(
				optionSeries, // series strike in e8
				seriesAddress,
				amount, // collateral amount
				optionRegistry,
				premium,
				recipient
			);
	}

	/**
	 * @notice execute the epoch calculation using the prices set by the governor
	 * @dev    only keeper or governor can call this function
	 *         epoch prices must be set via setEpochPrice() before calling this
	 *         this function finalizes the epoch, mints shares for depositors, and processes pending withdrawals
	 */
	function executeEpochCalculation() external isKeeperOrGovernor {
		if (!isEpochLocked) {
			revert("LiquidityPool: Epoch not locked");
		}
		// Check that both prices have been set for the current epoch before advancing
		if (!epochDepositPriceSet[epoch] || !epochWithdrawalPriceSet[epoch]) {
			revert("LiquidityPool: Epoch prices not set");
		}
		// Check that dispute period has passed (if dispute period is set)
		if (disputePeriod > 0) {
			uint256 timeSincePriceSet = block.timestamp - epochPriceSetTimestamp[epoch];
			if (timeSincePriceSet < disputePeriod) {
				revert("LiquidityPool: Dispute period not expired");
			}
		}
		
		uint256 depositPrice = epochDepositPrice[epoch];
		uint256 withdrawalPrice = epochWithdrawalPrice[epoch];
		
		(
			uint256 sharesToMint,
			uint256 totalWithdrawAmount,
			uint256 amountNeeded
		) = _getAccounting().executeEpochCalculation(depositPrice, withdrawalPrice);

		// Always process deposits and advance epoch
		delete pendingDeposits;
		_mint(address(this), sharesToMint);
		uint256 currentEpoch = epoch;
		
		// Store epoch data before advancing
		epochData[currentEpoch] = EpochData({
			epochNumber: currentEpoch,
			depositPrice: epochDepositPrice[currentEpoch],
			withdrawalPrice: epochWithdrawalPrice[currentEpoch],
			timestamp: block.timestamp
		});
		
		epoch++;
		
		// Unlock epoch regardless of withdrawal processing outcome
		isEpochLocked = false;
		emit EpochUnlocked();
		
		// Check if we have enough funds for withdrawals
		bool canProcessWithdrawals = (amountNeeded == 0);
		
		// Process batch withdrawals only if we have enough funds and there are pending withdrawals
		if (canProcessWithdrawals && pendingWithdrawals > 0) {
			partitionedFunds += totalWithdrawAmount;
			_burn(address(this), pendingWithdrawals);
			delete pendingWithdrawals;
			// Mark this epoch's batch withdrawals as successfully processed
			epochWithdrawalsProcessed[currentEpoch] = true;
		}
		
		// Note: Emits the NEW epoch number (the epoch we are now entering), not the epoch that was just executed.
		// The epoch that was just processed is (epoch - 1), whose data is stored in epochData[epoch - 1].
		emit epochExecuted(epoch);
	}

	/**
	 * @notice function for adding liquidity to the options liquidity pool
	 * @param _amount    amount of the strike asset to deposit
	 * @return success
	 * @dev    entry point to provide liquidity to the pool
	 */
	function deposit(uint256 _amount) external whenNotPaused isEpochNotLocked nonReentrant returns (bool) {
		if (_amount == 0) {
			revert("LiquidityPool: Invalid amount");
		}
		
		// Check whitelist if enabled
		if (isWhitelistEnabled && !whitelistedAddresses[msg.sender]) {
			revert("LiquidityPool: Address not whitelisted");
		}
		
		// Auto-redeem any unredeemed shares from previous epochs before creating new deposit
		IAccounting.DepositReceipt memory existingReceipt = depositReceipts[msg.sender];
		if (existingReceipt.epoch != 0 && existingReceipt.epoch < epoch) {
			// Redeem all unredeemed shares from previous epoch
			_redeem();
		}
		
		uint256 depositAmount = _getAccounting().deposit(msg.sender, _amount);

		emit Deposit(msg.sender, _amount, epoch);
		// create the deposit receipt
		depositReceipts[msg.sender] = IAccounting.DepositReceipt({
			epoch: uint128(epoch),
			amount: depositAmount
		});
		pendingDeposits += _amount;
		// Pull in tokens from sender
		IERC20(collateralAsset).safeTransferFrom(msg.sender, address(this), _amount);
		return true;
	}

	/**
	 * @notice function for allowing a user to redeem all available shares from a previous epoch
	 * @return the number of shares actually returned
	 */
	function redeem() external override whenNotPaused nonReentrant returns (uint256) {
		return _redeem();
	}

	/**
	 * @notice function for initiating a withdraw request from the pool
	 * @param _shares    amount of shares to return
	 * @dev    entry point to remove liquidity from the pool
	 */
	function initiateWithdraw(uint256 _shares) external whenNotPaused nonReentrant { 
		if (_shares == 0) {
			revert("LiquidityPool: Invalid share amount");
		}
		IAccounting.DepositReceipt memory depositReceipt = depositReceipts[msg.sender];

		if (depositReceipt.amount > 0) {
			// redeem so a user can use a completed deposit as shares for an initiation
			_redeem();
		}
		IAccounting.WithdrawalReceipt memory withdrawalReceipt = _getAccounting().initiateWithdraw(
			msg.sender,
			_shares
		);
		withdrawalReceipts[msg.sender] = withdrawalReceipt;
		pendingWithdrawals += _shares;
		emit InitiateWithdraw(msg.sender, _shares, epoch);
		// transfer shares from user to pool (escrowed until withdrawal completes)
		_transfer(msg.sender, address(this), _shares);
	}

	/**
	 * @notice complete a withdrawal request to claim funds from partitionedFunds
	 * @return the net withdrawal amount after fees
	 */
	function completeWithdraw() external whenNotPaused nonReentrant returns (uint256) {
		(
			uint256 withdrawalAmount,
			uint256 withdrawalShares,
			IAccounting.WithdrawalReceipt memory withdrawalReceipt
		) = _getAccounting().completeWithdraw(msg.sender);
		delete withdrawalReceipts[msg.sender];
		
		// these funds are taken from the partitioned funds
		partitionedFunds -= withdrawalAmount;
		
		emit Withdraw(msg.sender, withdrawalAmount, withdrawalShares);
		
		if (withdrawalAmount > 0) {
			IERC20(collateralAsset).safeTransfer(msg.sender, withdrawalAmount);
		}
		return withdrawalAmount;
	}

	/**
	 * @notice check if a user can complete their withdrawal and return the amount that can be withdrawn
	 * @param user the address of the user to check
	 * @return withdrawableAmount the amount of collateral that can be withdrawn (0 if withdrawal is not possible)
	 * @dev This is a convenience function for frontend to check withdrawal availability and amount.
	 *      Returns 0 if protocol is paused since completeWithdraw() requires whenNotPaused.
	 */
	function canCompleteWithdraw(address user)
		external
		view
		override
		returns (uint256 withdrawableAmount)
	{
		if (paused()) {
			return 0;
		}
		return _getAccounting().canCompleteWithdraw(user);
	}

	/**
	 * @notice Check if a user can initiate a new withdrawal
	 * @param user the address to check
	 * @return canInitiate true if user can initiate a withdrawal, false if blocked by pending withdrawal from previous epoch or paused
	 * @return blockedShares the shares blocking initiation (0 if can initiate)
	 * @return blockedEpoch the epoch of the blocking withdrawal (0 if can initiate)
	 * @dev A user cannot initiate a new withdrawal if they have > 100 shares pending from a previous epoch.
	 *      They must complete that withdrawal first. If pending withdrawal is from current epoch, they can add to it.
	 *      Returns false if protocol is paused since initiateWithdraw() requires whenNotPaused.
	 */
	function canInitiateWithdraw(address user)
		external
		view
		returns (bool canInitiate, uint256 blockedShares, uint128 blockedEpoch)
	{
		// Check pause state first
		if (paused()) {
			return (false, 0, 0);
		}
		
		IAccounting.WithdrawalReceipt memory receipt = withdrawalReceipts[user];
		
		// No pending withdrawal or same epoch
		if (receipt.shares <= 100 || receipt.epoch == epoch) {
			return (true, 0, 0);
		}
		
		// Has pending withdrawal from different epoch - blocked
		return (false, receipt.shares, receipt.epoch);
	}

	/**
	 * @notice Get the total value locked (TVL) in the liquidity pool
	 * @return The total value locked in collateral decimals, including:
	 *         - Contract balance (minus partitioned funds and fees)
	 *         - Collateral allocated to options
	 */
	function getTVL() external view override returns (uint256) {
		return _getTVL();
	}

	/**
	 * @notice Get the number of shares available for a user to redeem
	 * @param  user address of the user
	 * @return redeemableShares number of shares the user can currently redeem
	 */
	function getRedeemableShares(address user) external view override returns (uint256 redeemableShares) {
		return _getAccounting().getRedeemableShares(user);
	}

	/**
	 * @notice Returning balance in collateral decimals
	 * @param asset address of the asset to get balance
	 * @return balance of the address accounting for partitionedFunds and accumulated fees
	 */
	function getBalance(address asset) public view override returns (uint256) { 
		uint256 balance = ERC20(asset).balanceOf(address(this));
		uint256 reserved = partitionedFunds + accumulatedProtocolFees + accumulatedCuratorFees;
		return balance > reserved ? balance - reserved : 0;
	}


	/**
	 * @notice functionality for allowing a user to redeem all available shares from a previous epoch
	 * @return toRedeem the number of shares actually returned
	 */
	function _redeem() internal returns (uint256) {
		(uint256 toRedeem, IAccounting.DepositReceipt memory depositReceipt) = _getAccounting().redeem(
			msg.sender
		);
		// Always update storage if deposit was processed (Accounting zeros amount after conversion)
		// This ensures clean state even when toRedeem rounds to 0
		depositReceipts[msg.sender] = depositReceipt;
		if (toRedeem == 0) {
			return 0;
		}
		emit Redeem(msg.sender, toRedeem, depositReceipt.epoch);
		// transfer as the shares will have been minted in the epoch execution
		_transfer(address(this), msg.sender, toRedeem);
		return toRedeem;
	}

	/**
	 * @notice Internal function to calculate the total value locked (TVL) in the liquidity pool
	 * @return tvl The total value locked in collateral decimals
	 * @dev TVL includes:
	 *      1. Contract balance - partitionedFunds - fees (via getBalance)
	 *      2. collateralAllocated (capital locked in options)
	 *      Note: This does NOT subtract option liabilities
	 */
	function _getTVL() internal view returns (uint256 tvl) {
		tvl = getBalance(collateralAsset) + collateralAllocated;
	}

	/**
	 * @notice create the option contract in the options registry
	 * @param  optionSeries option type to mint - option series strike in e8
	 * @param  optionRegistry interface for the options issuer
	 * @return series the address of the option series minted
	 */
	function _issue(Types.OptionSeries memory optionSeries, IOptionRegistry optionRegistry) 
		internal
		returns (address series)
	{
		// make sure option is being issued with correct assets
		if (optionSeries.collateral != collateralAsset) {
			revert("LiquidityPool: Collateral asset invalid");
		}
		if (optionSeries.underlying != underlyingAsset) {
			revert("LiquidityPool: Underlying asset invalid");
		}
		if (optionSeries.strikeAsset != strikeAsset) {
			revert("LiquidityPool: Strike asset invalid");
		}
		// issue the option from the option registry (its characteristics will be stored in the optionsRegistry)
		series = optionRegistry.issue(optionSeries);
		if (series == address(0)) {
			revert("LiquidityPool: Issuance failed");
		}
	}

	/**
	 * @notice write a number of options for a given OptionSeries
	 * @param  optionSeries option type to mint - strike in e8
	 * @param  seriesAddress the address of the options series
	 * @param  amount the amount to be written - in collateral decimals
	 * @param  optionRegistry the option registry of the pool
	 * @param  premium the premium to charge the user - in collateral decimals
	 * @return the amount that was written
	 */
	function _writeOption(
		Types.OptionSeries memory optionSeries,
		address seriesAddress,
		uint256 amount,
		IOptionRegistry optionRegistry,
		uint256 premium,
		address recipient
	) internal returns (uint256) {
		// Calculate fee and check balance (includes fee to prevent consuming partitionedFunds or accrued fees)
		uint256 saleFee = (optionSaleFee > 0 && premium > 0) ? (premium * optionSaleFee) / MAX_BPS : 0;
		if (amount + saleFee > getBalance(collateralAsset)) {
			revert("LiquidityPool: Insufficient available balance");
		}
		
		if (saleFee > 0) {
			uint256 curatorShare = (saleFee * curatorFeeShare) / MAX_BPS;
			accumulatedCuratorFees += curatorShare;
			accumulatedProtocolFees += saleFee - curatorShare;
			emit OptionFeeCollected(seriesAddress, saleFee, curatorShare, saleFee - curatorShare);
		}
		
		writtenOptions.add(seriesAddress);
		writtenAmounts[seriesAddress] += amount;
		
		uint256 otokenAmount;
		{
			uint8 collateralDec = ERC20(collateralAsset).decimals();
			if (optionSeries.isPut) {
				// puts: oTokens = collateral / strike price
				// 1e16 scales for strike (e8) and oToken (e8) decimals
				// e.g. 2000 USDC (2000e6) at $2000 strike (2000e8) = 1 oToken (1e8)
				// 1e16 is needed for decimal precision, 1e16 = 1e8 (normalize the strike preice) * 1e8 (gives 8 dec to the final oToken amount)
				otokenAmount = (amount * 1e16) / (uint256(optionSeries.strike) * (10 ** collateralDec));
			} else {
				// calls: 1 collateral unit = 1 oToken
				otokenAmount = collateralDec >= 8 
					? amount / (10 ** (collateralDec - 8))
					: amount * (10 ** (8 - collateralDec));
			}
		}
		
		IERC20(collateralAsset).forceApprove(address(optionRegistry), amount);
		uint256 otokenBalanceBefore = IERC20(seriesAddress).balanceOf(address(this));
		(, uint256 collateralUsed) = optionRegistry.open(seriesAddress, otokenAmount, amount);
		uint256 otokensReceived = IERC20(seriesAddress).balanceOf(address(this)) - otokenBalanceBefore;
		
		collateralAllocated += collateralUsed;
		emit WriteOption(seriesAddress, amount, premium, collateralUsed, recipient);
		
		IERC20(seriesAddress).safeTransfer(recipient, otokensReceived);
		return amount;
	}


	/**
	 * @notice get the accounting calculations contract used by the liquidity pool
	 * @return the Accounting contract
	 */
	function _getAccounting() internal view returns (IAccounting) {
		return IAccounting(protocol.accounting());
	}

	/**
	 * @notice get the option registry used for storing and managing the options
	 * @return the option registry contract
	 */
	function _getOptionRegistry() internal view returns (IOptionRegistry) {
		return IOptionRegistry(protocol.optionRegistry());
	}

	/**
	 * @notice buy back an option that already exists
	 * @param optionSeries the series detail of the option - strike in e8
	 * @param amount the number of options to buyback in e8 (oToken decimals)
	 * @param optionRegistry the registry used for options writing
	 * @param seriesAddress the series address of the oToken
	 * @param premium the premium to pay the seller in collateral decimals
	 * @param seller the address selling the options back to the pool
	 * @dev only callable by a handler contract
	 */
	function handlerBuybackOption(
		Types.OptionSeries memory optionSeries,
		uint256 amount,
		IOptionRegistry optionRegistry,
		address seriesAddress,
		uint256 premium,
		address seller
	) external isHandler isEpochNotLocked nonReentrant returns (uint256) {
		return _buybackOption(optionSeries, amount, optionRegistry, seriesAddress, premium, seller);
	}

	/**
	 * @notice buys a number of options back and burns the tokens
	 * @param optionSeries the option token series to buyback strike in e8
	 * @param amount the number of options to buyback in e8 (oToken decimals)
	 * @param optionRegistry the registry
	 * @param seriesAddress the series being bought back
	 * @param premium the premium to pay the seller (in collateral decimals)
	 * @param seller the address selling options back to pool
	 * @return the number of options bought back in e8
	 */
	function _buybackOption(
		Types.OptionSeries memory optionSeries,
		uint256 amount,
		IOptionRegistry optionRegistry,
		address seriesAddress,
		uint256 premium,
		address seller
	) internal returns (uint256) {
		// Close the position first, collateral returns to pool
		// Seller must have approved OptionRegistry for their oTokens
		(, uint256 collateralReturned) = optionRegistry.close(seriesAddress, amount, seller);
		
		// Check we have enough funds to pay the premium (after collateral returned)
		if (getBalance(collateralAsset) < premium) {
			revert("LiquidityPool: Insufficient funds for premium");
		}
		
		// reduce collateral allocated since position is closed
		if (collateralReturned <= collateralAllocated) {
			collateralAllocated -= collateralReturned;
		} else {
			collateralAllocated = 0;
		}
		
		// Update written amounts tracking 
		if (writtenAmounts[seriesAddress] > collateralReturned) {
			writtenAmounts[seriesAddress] -= collateralReturned;
		} else {
			writtenAmounts[seriesAddress] = 0;
			writtenOptions.remove(seriesAddress);
		}
		
		// Pay the seller (skip if zero to avoid revert on some tokens)
		if (premium > 0) {
			IERC20(collateralAsset).safeTransfer(seller, premium);
		}
		
		emit BuybackOption(seriesAddress, amount, premium, collateralReturned, seller);
		return amount;
	}


	 /* @notice Override _update to enforce whitelist on LP token transfers
	 * @dev When whitelist is enabled, both sender and recipient must be whitelisted
	 *      This prevents whitelisted users from transferring LP tokens to non-whitelisted addresses
	 *      Exceptions:
	 *      - Minting (from == address(0)) exempt from sender check
	 *      - Burning (to == address(0)) exempt from recipient check  
	 *      - Pool address (address(this)) always allowed (for initiateWithdraw escrow)
	 */
	function _update(address from, address to, uint256 value) internal virtual override {
		// Whitelist only applies to user-to-user transfers
		// Transfers involving pool (withdrawals, redeems) or mint/burn are always allowed
		if (isWhitelistEnabled && from != address(0) && to != address(0) && from != address(this) && to != address(this)) {
			// This is a user-to-user transfer - check both parties
			if (!whitelistedAddresses[from]) {
				revert("LiquidityPool: Sender not whitelisted");
			}
			if (!whitelistedAddresses[to]) {
				revert("LiquidityPool: Recipient not whitelisted");
			}
		}
		super._update(from, to, value);
	}

	function _authorizeUpgrade(address newImplementation) internal view override onlyUpgrader {
		newImplementation; 
	}
}
