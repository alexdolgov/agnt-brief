// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "./interfaces/ITimelockedCall.sol";
import "./AddressWhitelist.sol";

/**
 * @title Contract for managing time-locked function calls.
 */
contract TimelockedCall is ITimelockedCall, AddressWhitelist {
    struct TimelockedCallInfo {
        uint256 targetEpoch;     // The unix epoch at which the hash can be consumed
        address createdBy;       // The address of the scheduler
        address consumerAddress; // The address of the consumer
    }

    /// @notice The schedulers authorized for a given sender. (sender => scheduler => enabled/disabled)
    mapping (address => mapping(address => bool)) private whitelistedSchedulers;

    /// @notice The time-lock info of a given hash.
    mapping (bytes32 => TimelockedCallInfo) public queue;

    /// @notice The time-lock duration of every consumer address.
    mapping (address => uint256) public timeLockDuration;

    /// @notice Triggers when a hash is scheduled for the address specified.
    event HashScheduled(bytes32 h, address consumerAddress);

    /// @notice Triggers when a hash is consumed by the address specified.
    event HashConsumed(bytes32 h, address consumerAddress);

    /// @notice Triggers when a new scheduler is enabled for the consumer address specified.
    event SchedulerEnabled(address consumerAddress, address schedulerAddress);

    /// @notice Triggers when an existing scheduler is disabled for the consumer address specified.
    event SchedulerDisabled(address consumerAddress, address schedulerAddress);

    constructor(address ownerAddr) AddressWhitelist(ownerAddr) {
    }

    modifier ifSenderWhitelisted() {
        require(_whitelistedAddresses[msg.sender], "Unauthorized sender");
        _;
    }

    modifier ifTimeLockConfigured() {
        require(timeLockDuration[msg.sender] > 0, "Not configured");
        _;
    }

    /**
     * @notice Sets the initial scheduler and time-lock duration for the current message sender.
     * @param addr The address of the initial scheduler. You can add more addresses later.
     * @param newTimeLockDuration The duration of the time-lock for the current message sender.
     */
    function initScheduler(address addr, uint256 newTimeLockDuration) external override nonReentrant ifSenderWhitelisted {
        require(addr != address(0), "Address required");
        require(newTimeLockDuration > 0, "Duration required");
        require(timeLockDuration[msg.sender] == 0, "Already initialized");

        whitelistedSchedulers[msg.sender][addr] = true;
        timeLockDuration[msg.sender] = newTimeLockDuration;

        emit SchedulerEnabled(msg.sender, addr);
    }

    /**
     * @notice Authorizes the address specified to schedule calls. The calls will be consumed by the current message sender.
     * @param addr Specifies the address of the scheduler to authorize.
     */
    function enableScheduler(address addr) external override nonReentrant ifTimeLockConfigured {
        _enableScheduler(addr);
    }

    /**
     * @notice Revokes the address specified from scheduling calls for the current message sender.
     * @param addr Specifies the address of the scheduler to revoke.
     */
    function disableScheduler(address addr) external override nonReentrant ifTimeLockConfigured {
        _disableScheduler(addr);
    }

    /**
     * @notice Schedules a hash to be consumed by the address specified.
     * @param h Specifies the hash.
     * @param consumerAddr Specifies the address of the consumer.
     */
    function schedule(bytes32 h, address consumerAddr) external override nonReentrant {
        require(h != bytes32(0), "Hash required");
        require(whitelistedSchedulers[consumerAddr][msg.sender], "Unauthorized sender");
        require(timeLockDuration[consumerAddr] > 0, "Not configured");
        require(queue[h].targetEpoch == 0, "Already enqueued");
        
        queue[h] = TimelockedCallInfo({
            createdBy: msg.sender,
            consumerAddress: consumerAddr,
            targetEpoch: block.timestamp + timeLockDuration[consumerAddr]
        });

        emit HashScheduled(h, consumerAddr);
    }

    /**
     * @notice Consumes the hash specified.
     * @param h Specifies the hash.
     */
    function consume(bytes32 h) external override nonReentrant ifTimeLockConfigured {
        _consume(h);
    }

    /**
     * @notice Consumes the hash specified. The hash represents the transferOwnership function.
     * @param h Specifies the hash.
     * @param prevOwnerAddr The current owner of the contract at hand.
     * @param newOwnerAddr The address of the new owner.
     */
    function consumeOwnership(
        bytes32 h,
        address prevOwnerAddr,
        address newOwnerAddr
    ) external override nonReentrant ifTimeLockConfigured {
        _disableScheduler(prevOwnerAddr);
        _consume(h);
        _enableScheduler(newOwnerAddr);
    }

    function _consume(bytes32 h) internal {
        require(queue[h].targetEpoch > 0, "Hash not enqueued");
        require(msg.sender == queue[h].consumerAddress, "Unauthorized consumer");
        require(block.timestamp > queue[h].targetEpoch, "Timelock in place");

        delete queue[h];

        emit HashConsumed(h, msg.sender);
    }

    function _enableScheduler(address addr) internal {
        require(addr != address(0), "Address required");
        require(!whitelistedSchedulers[msg.sender][addr], "Already enabled");
        whitelistedSchedulers[msg.sender][addr] = true;
        emit SchedulerEnabled(msg.sender, addr);
    }

    function _disableScheduler(address addr) internal {
        require(addr != address(0), "Address required");
        require(whitelistedSchedulers[msg.sender][addr], "Already disabled");
        whitelistedSchedulers[msg.sender][addr] = false;
        emit SchedulerDisabled(msg.sender, addr);
    }
}
