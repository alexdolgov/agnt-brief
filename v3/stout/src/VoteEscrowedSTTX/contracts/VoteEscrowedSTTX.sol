// SPDX-License-Identifier: MIT
/*
                 ___________________________________  ___ 
___  __  ____   /   _____/\__    ___/\__    ___/\   \/  / 
\  \/ /_/ __ \  \_____  \   |    |     |    |    \     /  
 \   / \  ___/  /        \  |    |     |    |    /     \  
  \_/   \___  >/_______  /  |____|     |____|   /___/\  \ 
            \/         \/                             \_/                                                            
*/

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {IERC20TokenRebase} from "./interface/IERC20TokenRebase.sol";
import {IVoteEscrowedSTTX} from "./interface/IVoteEscrowedSTTX.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title VoteEscrowedSTTX
 * @dev Time-locked governance token
 * @notice Lock and vote manager
 */
contract VoteEscrowedSTTX is
    Ownable,
    ReentrancyGuard,
    IERC20Custom,
    IVoteEscrowedSTTX
{
    /*//////////////////////////////////////////////////////////////
                        TOKEN CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /// @notice Base STTX token contract
    IERC20TokenRebase public immutable sttx;
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
    /// @notice Total supply of veSTTX tokens
    uint256 private _totalSupply;
    /// @notice User token balances
    /// @dev Tracks individual account balances
    mapping(address => uint256) private _balances;
    /// @notice Token spending allowances
    /// @dev Nested mapping of owner → spender → allowance
    mapping(address => mapping(address => uint256)) private _allowances;
    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /// @notice Delay before withdrawal becomes available
    /// @dev Default: 7 days
    uint256 public withdrawalDelay = 7 days;
    /// @notice Window duration for completing withdrawal
    /// @dev Default: 21 hours
    uint256 public withdrawalWindow = 21 hours;
    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL STATE TRACKING
    //////////////////////////////////////////////////////////////*/
    /// @notice Pending withdrawal amounts per account
    mapping(address => uint256) public withdrawalAmounts;
    /// @notice Withdrawal timestamp for each account
    mapping(address => uint256) public withdrawalTimestamps;
    /// @notice Withdrawal slot tracking
    mapping(uint256 => uint256) public withdrawalSlots;
    /*//////////////////////////////////////////////////////////////
                        ACCESS CONTROL STATE
    //////////////////////////////////////////////////////////////*/
    /// @notice Mapping of approved token spenders
    /// @dev Allows controlled token spending
    mapping(address => bool) public approvedSpenders;
    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/
    /// @notice Emitted when a spender is approved
    event SpenderApproved(address indexed spender);
    /// @notice Emitted when a spender is revoked
    event SpenderRevoked(address indexed spender);
    /// @notice Emitted when withdrawal delay is decreased
    event WithdrawalDelayDecreased(uint256 newDelay);
    /// @notice Emitted when withdrawal window is increased
    event WithdrawalWindowIncreased(uint256 newWindow);
    /// @notice Emitted when a withdrawal is initiated
    event WithdrawalInitiated(
        address indexed account,
        uint256 amount,
        uint256 timestamp
    );
    /// @notice Emitted when a withdrawal is completed
    event WithdrawalCompleted(address indexed account, uint256 amount);
    /*//////////////////////////////////////////////////////////////
                            CUSTOM ERRORS
    //////////////////////////////////////////////////////////////*/
    /// @notice Thrown when a zero address is provided
    error ZeroAddress();
    /// @notice Thrown when a zero amount is provided
    error ZeroAmount();
    /// @notice Thrown when an invalid withdrawal delay is set
    error InvalidWithdrawalDelay();
    /// @notice Thrown when an invalid withdrawal window is set
    error InvalidWithdrawalWindow();
    /// @notice Thrown when an invalid sender is detected
    error InvalidSender(address sender);
    /// @notice Thrown when an invalid receiver is detected
    error InvalidReceiver(address receiver);
    /// @notice Thrown when an invalid approver is detected
    error InvalidApprover(address approver);
    /// @notice Thrown when an invalid spender is detected
    error InvalidSpender(address spender);
    /// @notice Thrown when balance is insufficient
    error InsufficientBalance();
    /// @notice Thrown when allowance is insufficient
    error InsufficientAllowance(
        address spender,
        uint256 allowance,
        uint256 needed
    );
    /// @notice Thrown when a spender is not authorized
    error SpenderNotAuthorized();
    /// @notice Thrown when no withdrawal is initiated
    error WithdrawalNotInitiated();
    /// @notice Thrown when withdrawal window is not open
    error WithdrawalWindowNotOpenYet();
    /// @notice Thrown when withdrawal window is closed
    error WithdrawalWindowAlreadyClosed();

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Initializes the veSTTX token
     * @param name_ Token name
     * @param symbol_ Token symbol
     * @param baseContracts_ BaseContracts instance for protocol integration
     *
     * Requirements:
     * · STTX contract address must be non-zero
     *
     * Effects:
     * · Sets token metadata
     * · Sets base STTX token reference
     */
    constructor(
        string memory name_,
        string memory symbol_,
        IBaseContracts baseContracts_
    ) {
        _ensureNonzeroAddress(address(baseContracts_));
        sttx = baseContracts_.sttx();
        _ensureNonzeroAddress(address(sttx));
        _name = name_;
        _symbol = symbol_;
    }

    /*//////////////////////////////////////////////////////////////
                        EXTERNAL FUNCTIONS · ACCESS CONTROL
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Approves a spender to spend tokens on behalf of the owner
     * @param spender Address of the approved spender
     *
     * Requirements:
     * · Only callable by contract owner
     * · Validates non-zero address for spender
     *
     * Effects:
     * · Sets spender approval
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
     * · Only callable by contract owner
     * · Validates non-zero address for spender
     *
     * Effects:
     * · Sets spender approval
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
     * · Only callable by contract owner
     * · New delay must be less than the current delay
     *
     * Effects:
     * · Sets the new withdrawal delay
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
     * · Only callable by contract owner
     * · New window must be greater than the current window
     *
     * Effects:
     * · Sets the new withdrawal window
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
     * @notice Deposits tokens into the contract
     * @param to Address to deposit tokens to
     * @param amount Amount of tokens to deposit
     *
     * Requirements:
     * · To address must be non-zero
     * · Amount must be non-zero
     *
     * Effects:
     * · Increases the to address's balance
     * · Increases the total supply
     * · Transfers tokens from the sender to the contract
     */
    function deposit(address to, uint256 amount) external nonReentrant {
        _ensureNonzeroAddress(to);
        _ensureNonzeroAmount(amount);
        _balances[to] += amount;
        _totalSupply += amount;
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(sttx)),
            _msgSender(),
            address(this),
            amount
        );
        emit Transfer(address(0), to, amount);
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
     * @notice Completes a withdrawal
     *
     * Requirements:
     * · Withdrawal must be initiated
     * · Withdrawal window must be open
     * · Withdrawal amount must be less than or equal to the sender's balance
     *
     * Effects:
     * · Decreases the sender's balance
     * · Decreases the total supply
     * · Transfers tokens from the contract to the sender
     */
    function withdraw() external nonReentrant {
        address account = _msgSender();
        uint256 currentTime = block.timestamp;
        uint256 minTime = withdrawalTimestamps[account];
        if (minTime == 0) revert WithdrawalNotInitiated();
        if (currentTime <= minTime) revert WithdrawalWindowNotOpenYet();
        if (currentTime >= minTime + withdrawalWindow)
            revert WithdrawalWindowAlreadyClosed();
        uint256 amount = withdrawalAmounts[account];
        if (amount > balanceOf(account)) revert InsufficientBalance();
        _decreaseWithdrawalSlot(minTime, amount);
        withdrawalTimestamps[account] = 0;
        withdrawalAmounts[account] = 0;
        _balances[account] -= amount;
        _totalSupply -= amount;
        sttx.rebase();
        SafeERC20.safeTransfer(IERC20Safe(address(sttx)), account, amount);
        emit WithdrawalCompleted(account, amount);
        emit Transfer(account, address(0), amount);
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
        }
        if (to == address(0)) {
            unchecked {
                _totalSupply -= value;
            }
        } else {
            unchecked {
                _balances[to] += value;
            }
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
