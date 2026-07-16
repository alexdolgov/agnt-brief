// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IVlSDT} from "src/interfaces/IVlSDT.sol";
import {IvlBoost} from "src/interfaces/IvlBoost.sol";

/// @title vlBoost
/// @notice Source of truth for vlSDT boost delegations using flat boost model.
/// @dev Flat boost: delegated amount stays constant until week-aligned expiry, then drops to zero.
///      Uses lazy checkpointing - balances are computed on read by walking through expired weeks.
///      Implements ERC20 as a non-transferable token for wallet/explorer visibility.
/// @custom:contact contact@stakedao.org
contract vlBoost is IvlBoost {
    ////////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    /// @notice Seconds in a week.
    uint256 public constant WEEK = 7 days;

    /// @notice Maximum delegation duration in weeks.
    uint256 public constant MAX_DURATION_WEEKS = 52;

    /// @notice Boost source contract (vlSDT).
    IVlSDT public immutable vlSDT;

    ////////////////////////////////////////////////////////////////
    /// --- STORAGE
    ///////////////////////////////////////////////////////////////

    /// @notice Operator approvals: delegator => operator => approved.
    mapping(address => mapping(address => bool)) internal _operators;

    /// @notice Total delegated out per user (before expiry processing).
    mapping(address => uint256) public delegatedTotal;

    /// @notice Last checkpoint timestamp for delegated tracking.
    mapping(address => uint256) public delegatedLastUpdate;

    /// @notice Amount expiring at each week boundary for delegated (user => week => amount).
    mapping(address => mapping(uint256 => uint256)) public delegatedExpiring;

    /// @notice Total received per user (before expiry processing).
    mapping(address => uint256) public receivedTotal;

    /// @notice Last checkpoint timestamp for received tracking.
    mapping(address => uint256) public receivedLastUpdate;

    /// @notice Amount expiring at each week boundary for received (user => week => amount).
    mapping(address => mapping(uint256 => uint256)) public receivedExpiring;

    ////////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ///////////////////////////////////////////////////////////////

    /// @notice Initialize the registry with boost source.
    /// @param _vlSDT Boost source contract (vlSDT).
    constructor(address _vlSDT) {
        require(_vlSDT != address(0), ZERO_ADDRESS());
        vlSDT = IVlSDT(_vlSDT);
    }

    ////////////////////////////////////////////////////////////////
    /// --- ERC20 METADATA
    ///////////////////////////////////////////////////////////////

    /// @notice Token name.
    function name() external pure override returns (string memory) {
        return "Vote-Locked SDT Boost";
    }

    /// @notice Token symbol.
    function symbol() external pure override returns (string memory) {
        return "vlBoost";
    }

    /// @notice Token decimals.
    function decimals() external pure override returns (uint8) {
        return 18;
    }

    ////////////////////////////////////////////////////////////////
    /// --- ERC20 BALANCE & SUPPLY
    ///////////////////////////////////////////////////////////////

    /// @notice Get adjusted balance (boost - delegated out + delegated in).
    /// @param user The user address.
    /// @return Adjusted boost balance.
    function balanceOf(address user) public view override returns (uint256) {
        uint256 votingPower = vlSDT.balanceOf(user);
        (uint256 delegatedAmount,) = _checkpointRead(user, true);
        (uint256 receivedAmount,) = _checkpointRead(user, false);

        uint256 base = delegatedAmount >= votingPower ? 0 : votingPower - delegatedAmount;
        return base + receivedAmount;
    }

    /// @notice Total supply delegates to vlSDT (delegations cancel out in aggregate).
    function totalSupply() external view override returns (uint256) {
        return vlSDT.totalSupply();
    }

    ////////////////////////////////////////////////////////////////
    /// --- ERC20 NON-TRANSFERABLE
    ///////////////////////////////////////////////////////////////

    /// @notice Always returns 0 (non-transferable).
    function allowance(address, address) external pure override returns (uint256) {
        return 0;
    }

    /// @notice Non-transferable. Always reverts.
    function transfer(address, uint256) external pure override returns (bool) {
        revert NON_TRANSFERABLE();
    }

    /// @notice Non-transferable. Always reverts.
    function transferFrom(address, address, uint256) external pure override returns (bool) {
        revert NON_TRANSFERABLE();
    }

    /// @notice Non-transferable. Always reverts.
    function approve(address, uint256) external pure override returns (bool) {
        revert NON_TRANSFERABLE();
    }

    ////////////////////////////////////////////////////////////////
    /// --- OPERATOR APPROVAL
    ///////////////////////////////////////////////////////////////

    /// @notice Set operator approval for msg.sender.
    /// @param operator Address to approve/revoke.
    /// @param approved True to approve, false to revoke.
    function setOperator(address operator, bool approved) external override {
        require(operator != address(0), ZERO_ADDRESS());
        _operators[msg.sender][operator] = approved;
        emit OperatorSet(msg.sender, operator, approved);
    }

    /// @notice Check if an address is an approved operator for a delegator.
    /// @param delegator The delegator address.
    /// @param operator The operator address.
    /// @return True if operator is approved.
    function isOperator(address delegator, address operator) external view override returns (bool) {
        return _operators[delegator][operator];
    }

    ////////////////////////////////////////////////////////////////
    /// --- CHECKPOINT LOGIC
    ///////////////////////////////////////////////////////////////

    /// @notice Read checkpoint without writing to storage.
    /// @dev Walks through weeks since last update, subtracting expired amounts.
    /// @param user The user address.
    /// @param isDelegated True for delegated, false for received.
    /// @return balance The current balance after processing expirations.
    /// @return newTs The new timestamp (block.timestamp).
    function _checkpointRead(address user, bool isDelegated) internal view returns (uint256 balance, uint256 newTs) {
        // 1. Load the current tracked balance bucket (delegated or received).
        balance = isDelegated ? delegatedTotal[user] : receivedTotal[user];
        if (balance == 0) return (0, block.timestamp);

        // 2. Load the last timestamp from which expiries have not yet been applied.
        uint256 lastTs = isDelegated ? delegatedLastUpdate[user] : receivedLastUpdate[user];

        // 3. If enough time has passed, all delegations must have expired.
        if (block.timestamp >= lastTs + (MAX_DURATION_WEEKS + 1) * WEEK) {
            return (0, block.timestamp);
        }

        // 4. Walk week by week from the last checkpoint and subtract expired amounts.
        //    Loop bound: no expiry can exist beyond MAX_DURATION_WEEKS + 1 from last checkpoint
        //    (the +1 accounts for week-boundary rounding of lastTs).
        uint256 week = (lastTs / WEEK) * WEEK;
        for (uint256 i = 0; i < MAX_DURATION_WEEKS + 1; i++) {
            week += WEEK;
            if (week > block.timestamp) break;

            uint256 expiring = isDelegated ? delegatedExpiring[user][week] : receivedExpiring[user][week];
            balance = balance > expiring ? balance - expiring : 0;
        }

        // 5. Return the computed balance with the current timestamp as new checkpoint time.
        newTs = block.timestamp;
    }

    /// @notice Write checkpoint for both delegated and received to storage.
    /// @param user The user address.
    /// @return delegated The updated delegated-out balance.
    /// @return received The updated received balance.
    function _checkpointWrite(address user) internal returns (uint256 delegated, uint256 received) {
        uint256 newTs;

        (delegated, newTs) = _checkpointRead(user, true);
        delegatedTotal[user] = delegated;
        delegatedLastUpdate[user] = newTs;

        (received, newTs) = _checkpointRead(user, false);
        receivedTotal[user] = received;
        receivedLastUpdate[user] = newTs;
    }

    /// @notice Checkpoint a user's delegated and received balances.
    /// @dev Updates storage with current balances after processing expirations.
    /// @param user The user address to checkpoint.
    function checkpointUser(address user) external override {
        _checkpointWrite(user);
    }

    ////////////////////////////////////////////////////////////////
    /// --- DELEGATION CREATION
    ///////////////////////////////////////////////////////////////

    /// @notice Create a boost delegation from delegator to recipient.
    /// @dev Flat boost model: exact amount delegated, expires at week-aligned endtime.
    /// @param delegator Address delegating boost (must be msg.sender or approved operator).
    /// @param amount Amount of boost to delegate.
    /// @param endtime Expiry timestamp (will be rounded down to week boundary).
    /// @param recipient Address receiving the delegated boost.
    function boost(address delegator, uint256 amount, uint256 endtime, address recipient) external override {
        // 1. Validate caller permissions and basic inputs.
        require(amount != 0, ZERO_AMOUNT());
        require(recipient != address(0), ZERO_ADDRESS());
        require(recipient != delegator, SELF_DELEGATION());
        require(msg.sender == delegator || _operators[delegator][msg.sender], NOT_OPERATOR());

        // 2. Align the expiry to a week boundary and validate duration constraints.
        //    Upper bound uses ceil-aligned timestamp so marketplace round-up endtimes
        //    at non-boundary timestamps don't exceed the max duration check.
        uint256 alignedEndtime = (endtime / WEEK) * WEEK;
        uint256 nextWeek = ((block.timestamp + WEEK - 1) / WEEK) * WEEK;
        require(alignedEndtime > block.timestamp, INVALID_EXPIRY());
        require(alignedEndtime <= nextWeek + MAX_DURATION_WEEKS * WEEK, INVALID_EXPIRY());

        // 3. Refresh delegator state, compute available voting power, and enforce capacity.
        (uint256 currentDelegated,) = _checkpointWrite(delegator);
        uint256 votingPower = vlSDT.balanceOf(delegator);
        if (currentDelegated > votingPower) currentDelegated = votingPower;

        uint256 available = votingPower - currentDelegated;
        require(amount <= available, INSUFFICIENT_BALANCE());

        // 4. Book delegated-out amount and register when it expires.
        delegatedTotal[delegator] = currentDelegated + amount;
        delegatedExpiring[delegator][alignedEndtime] += amount;

        // 5. Book delegated-in amount for recipient with the same expiry bucket.
        (, uint256 currentReceived) = _checkpointWrite(recipient);
        receivedTotal[recipient] = currentReceived + amount;
        receivedExpiring[recipient][alignedEndtime] += amount;

        // 6. Emit ERC20 Transfer events (burn from delegator, mint to recipient).
        emit Transfer(delegator, address(0), amount);
        emit Transfer(address(0), recipient, amount);

        // 7. Emit the delegation event.
        emit Boost(delegator, recipient, amount, alignedEndtime);
    }

    ////////////////////////////////////////////////////////////////
    /// --- VIEW FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Get adjusted balance (veBoost proxy compatibility).
    /// @param account The account to query.
    /// @return Adjusted boost balance.
    function adjusted_balance_of(address account) external view override returns (uint256) {
        return balanceOf(account);
    }

    /// @notice Get delegable balance (boost minus active delegations).
    /// @param account The account to check.
    /// @return Available boost that can be delegated.
    function delegableBalance(address account) external view override returns (uint256) {
        uint256 votingPower = vlSDT.balanceOf(account);
        (uint256 currentDelegated,) = _checkpointRead(account, true);
        if (currentDelegated >= votingPower) return 0;
        return votingPower - currentDelegated;
    }

    /// @notice Get total active delegated out amount for a user.
    /// @param user The user address.
    /// @return Active delegated amount (after processing expirations).
    function delegatedOut(address user) external view override returns (uint256) {
        (uint256 balance,) = _checkpointRead(user, true);
        return balance;
    }

    /// @notice Get total active delegated in amount for a user.
    /// @param user The user address.
    /// @return Active received amount (after processing expirations).
    function delegatedIn(address user) external view override returns (uint256) {
        (uint256 balance,) = _checkpointRead(user, false);
        return balance;
    }
}
