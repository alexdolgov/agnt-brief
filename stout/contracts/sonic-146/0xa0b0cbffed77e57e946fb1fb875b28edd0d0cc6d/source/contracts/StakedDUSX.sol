// SPDX-License-Identifier: MIT
/*
          __  ________    ____ ___  _____________  ___ 
  _______/  |_\______ \  |    |   \/   _____/\   \/  / 
 /  ___/\   __\|    |  \ |    |   /\_____  \  \     /  
 \___ \  |  |  |    `   \|    |  / /        \ /     \  
/____  > |__| /_______  /|______/ /_______  //___/\  \ 
     \/               \/                  \/       \_/ 
*/

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IFeesDistributor} from "./interface/IFees.sol";
import {ILender} from "./interface/ILender.sol";
import {IMiscHelper} from "./interface/IMiscHelper.sol";
import {IStakedDUSX} from "./interface/IStakedDUSX.sol";
import {IVault} from "./interface/IVault.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title StakedDUSX
 * @dev Staking and fee distribution token
 * @notice Stake and rewards manager
 */
contract StakedDUSX is Ownable, ReentrancyGuard, IERC20Custom, IStakedDUSX {
    /*//////////////////////////////////////////////////////////////
                        TOKEN CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /// @notice Base DUSX token contract
    /// @dev Used for token transfers
    IERC20Token public immutable dusx;
    /// @notice Token name
    string private _name;
    /// @notice Token symbol
    string private _symbol;
    /// @notice Token decimal places
    /// @dev Fixed at 18 decimals
    uint8 private constant DECIMALS = 18;
    /*//////////////////////////////////////////////////////////////
                        TOKEN STATE TRACKING
    //////////////////////////////////////////////////////////////*/
    /// @notice Total supply of stDUSX tokens
    uint256 private _totalSupply;
    /// @notice User token balances
    /// @dev Tracks individual account balances
    mapping(address => uint256) private _balances;
    /// @notice Token spending allowances
    /// @dev Nested mapping of owner → spender → allowance
    mapping(address => mapping(address => uint256)) private _allowances;
    /*//////////////////////////////////////////////////////////////
                        PROTOCOL CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    bool public initialized;
    /// @notice Base contracts registry
    IBaseContracts public immutable baseContracts;
    /// @notice Vault contract
    IVault public vault;
    /// @notice Helper contract for miscellaneous functions
    IMiscHelper public helper;
    /// @notice Address responsible for fee distribution
    IFeesDistributor public feesDistributor;
    /// @notice Treasury address for fee allocation
    address public treasury;
    /// @notice Earned fees per account
    mapping(address => uint256) private _earned;
    /// @notice Active account tracking
    mapping(address => bool) private _accountExists;
    /// @notice Account indices for fast lookup
    mapping(address => uint256) private _accountIndices;
    /// @notice Fee accumulator - tracks fees per share (scaled by 1e18)
    uint256 private _feeAccumulator;
    /// @notice Last fee accumulator value claimed by each account
    mapping(address => uint256) private _lastFeeAccumulator;
    /// @notice List of all staking accounts
    address[] private _accounts;
    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /// @notice Delay before withdrawal becomes available
    /// @dev Default: 5 minutes
    uint256 public withdrawalDelay = 15 minutes;
    /// @notice Window duration for completing withdrawal
    /// @dev Default: 24 hours
    uint256 public withdrawalWindow = 24 hours;
    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL STATE TRACKING
    //////////////////////////////////////////////////////////////*/
    /// @notice Pending withdrawal amounts per account
    mapping(address => uint256) public withdrawalAmounts;
    /// @notice Withdrawal timestamp for each account
    mapping(address => uint256) public withdrawalTimestamps;
    /// @notice Withdrawal slot tracking
    mapping(uint256 => uint256) public withdrawalSlots;
    /// @notice Percentage threshold for full balance withdrawal
    uint256 private constant PERCENTAGE_THRESHOLD = 99;
    /*//////////////////////////////////////////////////////////////
                        ACCESS CONTROL STATE
    //////////////////////////////////////////////////////////////*/
    /// @notice Mapping of approved token spenders
    /// @dev Allows controlled token spending
    mapping(address => bool) public approvedSpenders;
    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/
    event Initialized(address helper, address feesDistributor);
    event TreasuryAddressUpdated(address oldTreasury, address newTreasury);
    event SpenderApproved(address spender);
    event SpenderRevoked(address spender);
    event WithdrawalDelayDecreased(uint256 newDelay);
    event WithdrawalWindowIncreased(uint256 newWindow);
    event WithdrawalInitiated(
        address indexed account,
        uint256 amount,
        uint256 time
    );
    event FeesDistributed(
        uint256 amount,
        uint256 feePerShare,
        uint256 timestamp
    );
    event FeesClaimed(
        address indexed account,
        uint256 amount,
        uint256 timestamp
    );
    /*//////////////////////////////////////////////////////////////
                        CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    error InsufficientBalance();
    error InsufficientAllowance(
        address spender,
        uint256 current,
        uint256 required
    );
    error SpenderNotAuthorized();
    error WithdrawalNotInitiated();
    error WithdrawalWindowNotOpenYet();
    error WithdrawalWindowAlreadyClosed();
    error InvalidWithdrawalDelay();
    error InvalidWithdrawalWindow();
    error alreadyInitialized();
    error InvalidSender(address sender);
    error InvalidReceiver(address receiver);
    error InvalidApprover(address approver);
    error InvalidSpender(address spender);
    error ZeroAddress();
    error ZeroAmount();
    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/
    modifier onlyHelper() {
        if (address(helper) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }
    modifier onlyFeeDistributor() {
        if (address(feesDistributor) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the stDUSX token
     * @param name_ Token name
     * @param symbol_ Token symbol
     * @param baseContracts_ BaseContracts instance for protocol integration
     */
    constructor(
        string memory name_,
        string memory symbol_,
        IBaseContracts baseContracts_,
        address treasury_
    ) {
        _ensureNonzeroAddress(address(baseContracts_));
        baseContracts = baseContracts_;
        // Get core contracts from BaseContracts
        dusx = baseContracts.dusx();
        vault = baseContracts.vault();
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(vault));
        _name = name_;
        _symbol = symbol_;
        _ensureNonzeroAddress(treasury_);
        treasury = treasury_;
        _accountExists[address(0)] = false;
    }

    /*//////////////////////////////////////////////////////////////
                    EXTERNAL FUNCTIONS · CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Sets core protocol parameters
     */
    function initialize() external onlyOwner {
        if (initialized) revert alreadyInitialized();
        // Get core contracts from BaseContracts
        helper = baseContracts.helper();
        feesDistributor = baseContracts.feesDistributor();
        // Validate addresses
        _ensureNonzeroAddress(address(helper));
        _ensureNonzeroAddress(address(feesDistributor));
        initialized = true;
        emit Initialized(address(helper), address(feesDistributor));
    }

    /**
     * @notice Sets the treasury address for receiving leftover stablecoins
     * @param newTreasury The new treasury address
     */
    function setTreasury(address newTreasury) external onlyOwner {
        _ensureNonzeroAddress(newTreasury);
        address oldTreasury = treasury;
        treasury = newTreasury;
        emit TreasuryAddressUpdated(oldTreasury, newTreasury);
    }

    /**
     * @notice Approves a spender to spend tokens on behalf of the owner
     * @param spender Address of the approved spender
     *
     * Requirements:
     * · Only the owner can call this function
     * · Spender address must be non-zero
     *
     * Effects:
     * · Sets the spender as approved
     * · Emits a SpenderApproved event
     */
    function approveSpender(address spender) external onlyOwner {
        _ensureNonzeroAddress(spender);
        approvedSpenders[spender] = true;
        emit SpenderApproved(spender);
    }

    /**
     * @notice Revokes a spender's approval to spend tokens on behalf of the owner
     * @param spender Address of the revoked spender
     *
     * Requirements:
     * · Only the owner can call this function
     * · Spender address must be non-zero
     *
     * Effects:
     * · Sets the spender as not approved
     * · Emits a SpenderRevoked event
     */
    function revokeSpender(address spender) external onlyOwner {
        _ensureNonzeroAddress(spender);
        approvedSpenders[spender] = false;
        emit SpenderRevoked(spender);
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS · WITHDRAWAL SETTINGS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Decreases the withdrawal delay
     * @param newDelay New withdrawal delay
     *
     * Requirements:
     * · Only the owner can call this function
     * · New delay must be less than the current delay
     *
     * Effects:
     * · Sets the new withdrawal delay
     * · Emits a WithdrawalDelayDecreased event
     */
    function decreaseWithdrawalDelay(uint256 newDelay) external onlyOwner {
        if (newDelay >= withdrawalDelay) revert InvalidWithdrawalDelay();
        withdrawalDelay = newDelay;
        emit WithdrawalDelayDecreased(newDelay);
    }

    /**
     * @notice Increases the withdrawal window
     * @param newWindow New withdrawal window
     *
     * Requirements:
     * · Only the owner can call this function
     * · New window must be greater than the current window
     *
     * Effects:
     * · Sets the new withdrawal window
     * · Emits a WithdrawalWindowIncreased event
     */
    function increaseWithdrawalWindow(uint256 newWindow) external onlyOwner {
        if (newWindow <= withdrawalWindow) revert InvalidWithdrawalWindow();
        withdrawalWindow = newWindow;
        emit WithdrawalWindowIncreased(newWindow);
    }

    /*//////////////////////////////////////////////////////////////
                    EXTERNAL FUNCTIONS · CORE OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Deposits DUSX tokens into staking contract
     * @param from Source address of tokens
     * @param to Destination address receiving stake
     * @param amount Amount of tokens to stake
     */
    function deposit(
        address from,
        address to,
        uint256 amount
    ) external nonReentrant onlyHelper {
        _ensureNonzeroAddress(to);
        _ensureNonzeroAmount(amount);
        // Claim any pending fees for the recipient
        _claimFees(to);
        _balances[to] += amount;
        _totalSupply += amount;
        _addAccount(to);
        // _addAccount already initializes the fee accumulator
        // No need to set it again here
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(dusx)),
            from,
            address(this),
            amount
        );
        _lendersAccrue();
        emit Transfer(address(0), to, amount);
    }

    /**
     * @notice Distributes fees proportionally to stakers
     * @param amount Total fee amount to distribute
     */
    function distributeFees(uint256 amount) external onlyFeeDistributor {
        _ensureNonzeroAmount(amount);
        // If there are no stakers, all fees go to treasury
        if (_totalSupply == 0) {
            _balances[treasury] += amount;
            _addAccount(treasury);
            _totalSupply += amount;
            // Make sure the treasury's accumulator is updated
            // This is important if the treasury is also a regular staker
            _lastFeeAccumulator[treasury] = _feeAccumulator;
            emit Transfer(address(0), treasury, amount);
        } else {
            // Calculate fee per share (scaled by 1e18 for precision)
            uint256 feePerShare = (amount * 1e18) / _totalSupply;
            // Increase the global accumulator
            _feeAccumulator += feePerShare;
            // Reserve a small portion for the treasury to handle rounding errors
            // Due to integer division, when calculating claimedAmount = (accountBalance * accumulatorDelta) / 1e18,
            // there will always be some dust left over. Over many transactions with many users,
            // these rounding errors can accumulate to a significant amount that would otherwise be lost.
            // We allocate 1% to the treasury to cover these rounding errors.
            uint256 treasuryAmount = amount / 100; // 1% to treasury to cover rounding
            _balances[treasury] += treasuryAmount;
            _addAccount(treasury);
            // Don't increase total supply as tokens are "virtual" until claimed
            // This prevents dilution of future fee distributions
            // Emit a transfer event for the protocol to track
            emit FeesDistributed(amount, feePerShare, block.timestamp);
        }
        // Transfer the tokens from the fee distributor to this contract
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(dusx)),
            _msgSender(),
            address(this),
            amount
        );
    }

    /**
     * @notice Initiates a withdrawal
     * @param amount Amount of tokens to withdraw
     *
     * Requirements:
     * · Amount must be non-zero
     * · Amount must be less than or equal to the sender's balance
     *
     * Effects:
     * · Decreases the sender's balance
     * · Decreases the total supply
     * · Sets the withdrawal timestamp and amount
     * · Emits a WithdrawalInitiated event
     */
    function beginWithdrawal(uint256 amount) external nonReentrant {
        _ensureNonzeroAmount(amount);
        address account = _msgSender();
        if (amount > balanceOf(account)) revert InsufficientBalance();
        _decreaseWithdrawalSlot(
            withdrawalTimestamps[account],
            withdrawalAmounts[account]
        );
        uint256 time = block.timestamp + withdrawalDelay;
        withdrawalTimestamps[account] = time;
        withdrawalAmounts[account] = amount;
        _increaseWithdrawalSlot(time, amount);
        emit WithdrawalInitiated(account, amount, time);
    }

    /**
     * @notice Withdraws staked DUSX tokens
     * @param account User address withdrawing tokens
     */
    function withdraw(address account) external nonReentrant onlyHelper {
        // Check if withdrawal was initiated
        uint256 minTime = withdrawalTimestamps[account];
        if (minTime == 0) revert WithdrawalNotInitiated();
        // Check if the withdrawal window is open
        uint256 currentTime = block.timestamp;
        if (currentTime <= minTime) revert WithdrawalWindowNotOpenYet();
        if (currentTime >= minTime + withdrawalWindow)
            revert WithdrawalWindowAlreadyClosed();
        // Claim any pending fees before withdrawal
        _claimFees(account);
        // Validate sufficient balance
        uint256 amount = withdrawalAmounts[account];
        uint256 balance = balanceOf(account);
        // Calculate the threshold percentage of the balance
        uint256 thresholdBalance = (balance * PERCENTAGE_THRESHOLD) / 100;
        // Adjust amount if it meets the threshold
        if (amount >= thresholdBalance) {
            amount = balance;
        }
        if (amount > balance) revert InsufficientBalance();
        // Reset withdrawal data
        _decreaseWithdrawalSlot(minTime, amount);
        withdrawalTimestamps[account] = 0;
        withdrawalAmounts[account] = 0;
        // Decrease balance and total supply
        _balances[account] -= amount;
        _totalSupply -= amount;
        // Handle complete account withdrawal
        if (amount == balance) {
            _earned[account] = 0;
            _removeAccount(account);
            // Clean up fee accumulator tracking
            delete _lastFeeAccumulator[account];
        }
        // Transfer tokens
        SafeERC20.safeTransfer(IERC20Safe(address(dusx)), account, amount);
        // Trigger lender accrual
        _lendersAccrue();
        // Emit events
        emit Transfer(account, address(0), amount);
    }

    /**
     * @notice Claims pending fees for the caller
     * @return claimedAmount Amount of fees claimed
     */
    function claimFees() external nonReentrant returns (uint256 claimedAmount) {
        address account = _msgSender();
        claimedAmount = _claimFees(account);
        // Event is already emitted in _claimFees
        return claimedAmount;
    }

    /**
     * @notice Transfers tokens from one address to another
     * @param to Address to transfer tokens to
     * @param value Amount of tokens to transfer
     *
     * Requirements:
     * · To address must be non-zero
     * · Value must be non-zero
     *
     * Effects:
     * · Decreases the sender's balance
     * · Increases the to address's balance
     * · Emits a Transfer event
     */
    function transfer(address to, uint256 value) external returns (bool) {
        _transfer(_msgSender(), to, value);
        return true;
    }

    /**
     * @notice Approves a spender to spend tokens on behalf of the owner
     * @param spender Address of the approved spender
     * @param value Amount of tokens to approve
     *
     * Requirements:
     * · Spender must be approved
     *
     * Effects:
     * · Sets the spender's allowance
     * · Emits an Approval event
     */
    function approve(address spender, uint256 value) external returns (bool) {
        if (!isApprovedSpender(spender)) revert SpenderNotAuthorized();
        _approve(_msgSender(), spender, value);
        return true;
    }

    /**
     * @notice Transfers tokens from one address to another using an allowance
     * @param from Address to transfer tokens from
     * @param to Address to transfer tokens to
     * @param value Amount of tokens to transfer
     *
     * Requirements:
     * · From address must be non-zero
     * · To address must be non-zero
     * · Value must be non-zero
     * · Spender must be approved
     *
     * Effects:
     * · Decreases the from address's balance
     * · Increases the to address's balance
     * · Decreases the spender's allowance
     * · Emits a Transfer event
     */
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @notice Returns the token name
     *
     * Returns:
     * · Token name
     */
    function name() external view returns (string memory) {
        return _name;
    }

    /**
     * @notice Returns the token symbol
     *
     * Returns:
     * · Token symbol
     */
    function symbol() external view returns (string memory) {
        return _symbol;
    }

    /**
     * @notice Returns the total supply of tokens
     *
     * Returns:
     * · Total supply
     */
    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

    /**
     * @notice Returns the withdrawal status for an account
     * @param account Address to retrieve the withdrawal status for
     *
     * Returns:
     * · Withdrawal amount
     * · Withdrawal timestamp
     * · Whether the withdrawal is withdrawable
     */
    function getWithdrawalStatus(
        address account
    )
        external
        view
        returns (uint256 amount, uint256 timestamp, bool isWithdrawable)
    {
        amount = withdrawalAmounts[account];
        timestamp = withdrawalTimestamps[account];
        uint256 currentTime = block.timestamp;
        isWithdrawable =
            timestamp != 0 &&
            currentTime > timestamp &&
            currentTime < timestamp + withdrawalWindow;
    }

    function accounts() external view returns (address[] memory) {
        return _accounts;
    }

    function earnedOf(address account) external view returns (uint256) {
        return _earned[account];
    }

    /**
     * @notice Returns the number of decimal places for the token
     *
     * Returns:
     * · Number of decimal places
     */
    function decimals() external pure returns (uint8) {
        return DECIMALS;
    }

    /**
     * @notice Returns the balance of an account
     * @param account Address to retrieve the balance for
     *
     * Returns:
     * · Balance
     */
    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    /**
     * @notice Returns the allowance for a spender
     * @param owner Address of the owner
     * @param spender Address of the spender
     *
     * Returns:
     * · Allowance
     */
    function allowance(
        address owner,
        address spender
    ) public view returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @notice Returns whether a spender is approved
     * @param spender Address of the spender
     *
     * Returns:
     * · Whether the spender is approved
     */
    function isApprovedSpender(address spender) public view returns (bool) {
        return approvedSpenders[spender];
    }

    /**
     * @notice Returns the withdrawal slot for a timestamp
     * @param time Timestamp to retrieve the withdrawal slot for
     *
     * Returns:
     * · Withdrawal slot
     */
    function getWithdrawalSlot(uint256 time) public view returns (uint256) {
        return time / withdrawalWindow;
    }

    /**
     * @notice Returns the total amount of tokens in the withdrawal slot
     * @param slot The withdrawal slot to check
     * @return Total amount of tokens in the slot
     */
    function getWithdrawalSlotAmount(
        uint256 slot
    ) public view returns (uint256) {
        return withdrawalSlots[slot];
    }

    /**
     * @notice Returns all withdrawal slots within a time range
     * @param startTime Start of the time range
     * @param endTime End of the time range
     * @return slots Array of slot numbers
     * @return amounts Array of amounts in each slot
     */
    function getWithdrawalSlotRange(
        uint256 startTime,
        uint256 endTime
    ) public view returns (uint256[] memory slots, uint256[] memory amounts) {
        uint256 startSlot = getWithdrawalSlot(startTime);
        uint256 endSlot = getWithdrawalSlot(endTime);
        uint256 slotCount = endSlot - startSlot + 1;
        slots = new uint256[](slotCount);
        amounts = new uint256[](slotCount);
        for (uint256 i = 0; i < slotCount; i++) {
            uint256 slot = startSlot + i;
            slots[i] = slot;
            amounts[i] = withdrawalSlots[slot];
        }
    }

    /**
     * @notice Returns the current withdrawal slot and the next slot
     * @return currentSlot Current withdrawal slot
     * @return currentAmount Amount in current slot
     * @return nextSlot Next withdrawal slot
     * @return nextAmount Amount in next slot
     */
    function getCurrentAndNextWithdrawalSlots()
        public
        view
        returns (
            uint256 currentSlot,
            uint256 currentAmount,
            uint256 nextSlot,
            uint256 nextAmount
        )
    {
        currentSlot = getWithdrawalSlot(block.timestamp);
        nextSlot = currentSlot + 1;
        currentAmount = withdrawalSlots[currentSlot];
        nextAmount = withdrawalSlots[nextSlot];
    }

    /**
     * @notice View pending unclaimed fees for an account
     * @param account Address to check pending fees for
     * @return pendingAmount Amount of fees available to claim
     */
    function pendingFees(
        address account
    ) public view returns (uint256 pendingAmount) {
        if (account == address(0) || _balances[account] == 0) {
            return 0;
        }
        uint256 accountBalance = _balances[account];
        uint256 lastClaimed = _lastFeeAccumulator[account];
        // If accumulator is not initialized yet, initialize it for the calculation
        // But don't prevent calculating fees - this matches _claimFees behavior
        if (lastClaimed == 0) {
            // Use current accumulator for the calculation
            // This matches the behavior in _claimFees
            lastClaimed = _feeAccumulator;
        }
        // Safe subtraction to prevent underflow
        uint256 accumulatorDelta = _feeAccumulator >= lastClaimed
            ? _feeAccumulator - lastClaimed
            : 0;
        if (accumulatorDelta > 0) {
            // Calculate fees to distribute
            pendingAmount = (accountBalance * accumulatorDelta) / 1e18;
        }
        return pendingAmount;
    }

    /*//////////////////////////////////////////////////////////////
                            PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Transfers tokens from one address to another
     * @param from Address to transfer tokens from
     * @param to Address to transfer tokens to
     * @param value Amount of tokens to transfer
     *
     * Effects:
     * · Decreases the from address's balance
     * · Increases the to address's balance
     * · Emits a Transfer event
     */
    function _transfer(address from, address to, uint256 value) private {
        if (from == address(0)) revert InvalidSender(address(0));
        if (to == address(0)) revert InvalidReceiver(address(0));
        // Claim any pending fees for both sender and recipient
        _claimFees(from);
        _claimFees(to);
        _update(from, to, value);
    }

    /**
     * @notice Updates the balances of two addresses
     * @param from Address to decrease the balance of
     * @param to Address to increase the balance of
     * @param value Amount of tokens to transfer
     *
     * Effects:
     * · Decreases the from address's balance
     * · Increases the to address's balance
     * · Emits a Transfer event
     */
    function _update(address from, address to, uint256 value) private {
        if (from == address(0)) {
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert InsufficientBalance();
            }
            unchecked {
                _balances[from] = fromBalance - value;
            }
            // Remove account if balance becomes zero
            if (fromBalance == value) {
                _earned[from] = 0;
                _removeAccount(from);
                // Clean up fee accumulator tracking for consistency
                delete _lastFeeAccumulator[from];
            }
        }
        if (to == address(0)) {
            unchecked {
                _totalSupply -= value;
            }
        } else {
            unchecked {
                _balances[to] += value;
            }
            // Add the recipient to accounts if they receive tokens
            _addAccount(to);
        }
        emit Transfer(from, to, value);
    }

    /**
     * @notice Approves a spender to spend tokens on behalf of the owner
     * @param owner Address of the owner
     * @param spender Address of the approved spender
     * @param value Amount of tokens to approve
     *
     * Effects:
     * · Sets the spender's allowance
     * · Emits an Approval event
     */
    function _approve(address owner, address spender, uint256 value) private {
        _approve(owner, spender, value, true);
    }

    /**
     * @notice Approves a spender to spend tokens on behalf of the owner
     * @param owner Address of the owner
     * @param spender Address of the approved spender
     * @param value Amount of tokens to approve
     * @param emitEvent Whether to emit an Approval event
     *
     * Effects:
     * · Sets the spender's allowance
     * · Emits an Approval event if emitEvent is true
     */
    function _approve(
        address owner,
        address spender,
        uint256 value,
        bool emitEvent
    ) private {
        if (owner == address(0)) revert InvalidApprover(address(0));
        if (spender == address(0)) revert InvalidSpender(address(0));
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @notice Spends an allowance
     * @param owner Address of the owner
     * @param spender Address of the spender
     * @param value Amount of tokens to spend
     *
     * Effects:
     * · Decreases the spender's allowance
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 value
    ) private {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }

    /**
     * @notice Increases the withdrawal slot for a timestamp
     * @param time Timestamp to increase the withdrawal slot for
     * @param amount Amount of tokens to increase the withdrawal slot by
     *
     * Effects:
     * · Increases the withdrawal slot
     */
    function _increaseWithdrawalSlot(uint256 time, uint256 amount) private {
        uint256 slot = getWithdrawalSlot(time);
        withdrawalSlots[slot] += amount;
    }

    /**
     * @notice Decreases the withdrawal slot for a timestamp
     * @param time Timestamp to decrease the withdrawal slot for
     * @param amount Amount of tokens to decrease the withdrawal slot by
     *
     * Effects:
     * · Decreases the withdrawal slot
     */
    function _decreaseWithdrawalSlot(uint256 time, uint256 amount) private {
        if (time == 0 || amount == 0) return;
        uint256 slot = getWithdrawalSlot(time);
        if (amount > withdrawalSlots[slot]) {
            withdrawalSlots[slot] = 0;
            return;
        }
        withdrawalSlots[slot] -= amount;
    }

    /**
     * @notice Adds account to list of staking accounts
     * @param account Address to add
     */
    function _addAccount(address account) private {
        if (!_accountExists[account]) {
            _accountIndices[account] = _accounts.length;
            _accounts.push(account);
            _accountExists[account] = true;
            // Initialize fee accumulator for the new account
            // Note: New stakeholders will have their accumulator set to the current value,
            // meaning they will not receive fees from distributions that occurred before
            // they staked, but will receive the same proportion of fees in future distributions
            // as all other stakeholders relative to their stake amount.
            _lastFeeAccumulator[account] = _feeAccumulator;
        }
    }

    /**
     * @notice Removes account from list of staking accounts
     * @param account Address to remove
     */
    function _removeAccount(address account) private {
        if (_accountExists[account]) {
            uint256 index = _accountIndices[account];
            uint256 lastIndex = _accounts.length - 1;
            if (index != lastIndex) {
                address lastAccount = _accounts[lastIndex];
                _accounts[index] = lastAccount;
                _accountIndices[lastAccount] = index;
            }
            _accounts.pop();
            delete _accountIndices[account];
            _accountExists[account] = false;
        }
    }

    /**
     * @notice Triggers lender accrual
     */
    function _lendersAccrue() private {
        address[] memory lenders = vault.getControllers();
        uint256 length = lenders.length;
        for (uint256 i; i < length; i++) {
            ILender(lenders[i]).accrue();
        }
    }

    /**
     * @notice Claims pending fees for an account
     * @param account Address to claim fees for
     * @return claimedAmount Amount of fees claimed
     */
    function _claimFees(
        address account
    ) private returns (uint256 claimedAmount) {
        if (account == address(0) || _balances[account] == 0) {
            return 0;
        }
        // Calculate pending fees based on accumulator difference
        uint256 accountBalance = _balances[account];
        uint256 lastClaimed = _lastFeeAccumulator[account];
        // If accumulator is not initialized yet, initialize it
        // But don't prevent claiming fees if it's zero - this could happen
        // for valid reasons like contract deployment or resetting
        if (lastClaimed == 0) {
            _lastFeeAccumulator[account] = _feeAccumulator;
            // Don't return early - continue with the claim calculation
            // This ensures that if _feeAccumulator is already non-zero when an account
            // is first seen, they'll still get their share of fees
            lastClaimed = _feeAccumulator;
        }
        // Safe subtraction to prevent underflow
        uint256 accumulatorDelta = _feeAccumulator >= lastClaimed
            ? _feeAccumulator - lastClaimed
            : 0;
        if (accumulatorDelta > 0) {
            // Calculate fees to distribute
            claimedAmount = (accountBalance * accumulatorDelta) / 1e18;
            // Update account balance and earned fees
            if (claimedAmount > 0) {
                _balances[account] += claimedAmount;
                _earned[account] += claimedAmount;
                // Update total supply to reflect the claimed virtual tokens
                _totalSupply += claimedAmount;
                // Emit a transfer event for this distribution
                emit Transfer(address(0), account, claimedAmount);
                // Emit fee claiming event for all claims, even automatic ones
                // This improves off-chain tracking consistency
                emit FeesClaimed(account, claimedAmount, block.timestamp);
            }
            // Update last claimed accumulator value
            _lastFeeAccumulator[account] = _feeAccumulator;
        }
        return claimedAmount;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }

    // Validates that an amount is greater than zero
    function _ensureNonzeroAmount(uint256 amount) private pure {
        if (amount == 0) {
            revert ZeroAmount();
        }
    }
}
