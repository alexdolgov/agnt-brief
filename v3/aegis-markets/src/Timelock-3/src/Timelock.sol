// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.10;

// NOTE: copied from: https://github.com/compound-finance/compound-protocol/blob/master/contracts/Timelock.sol
import {ITimelock} from "./interfaces/ITimelock.sol";

contract Timelock is ITimelock {
    /// @inheritdoc ITimelock
    uint256 public constant override GRACE_PERIOD = 14 days;
    /// @inheritdoc ITimelock
    uint256 public constant override MINIMUM_DELAY = 1 days;
    /// @inheritdoc ITimelock
    uint256 public constant override MAXIMUM_DELAY = 30 days;

    /// @inheritdoc ITimelock
    address public override admin;
    /// @inheritdoc ITimelock
    address public override pendingAdmin;
    /// @inheritdoc ITimelock
    uint256 public override delay;

    /// @inheritdoc ITimelock
    mapping(bytes32 => bool) public override queuedTransactions;

    constructor(address admin_, uint256 delay_) public {
        require(delay_ >= MINIMUM_DELAY, "Timelock::constructor: Delay must exceed minimum delay.");
        require(delay_ <= MAXIMUM_DELAY, "Timelock::setDelay: Delay must not exceed maximum delay.");

        admin = admin_;
        delay = delay_;
    }

    receive() external payable {}
    fallback() external payable {}

    /// @inheritdoc ITimelock
    function setDelay(uint256 delay_) public override {
        require(msg.sender == address(this), "Timelock::setDelay: Call must come from Timelock.");
        require(delay_ >= MINIMUM_DELAY, "Timelock::setDelay: Delay must exceed minimum delay.");
        require(delay_ <= MAXIMUM_DELAY, "Timelock::setDelay: Delay must not exceed maximum delay.");
        delay = delay_;

        emit NewDelay(delay);
    }

    /// @inheritdoc ITimelock
    function acceptAdmin() public override {
        require(msg.sender == pendingAdmin, "Timelock::acceptAdmin: Call must come from pendingAdmin.");
        admin = msg.sender;
        pendingAdmin = address(0);

        emit NewAdmin(admin);
    }

    /// @inheritdoc ITimelock
    function setPendingAdmin(address pendingAdmin_) public override {
        require(msg.sender == address(this), "Timelock::setPendingAdmin: Call must come from Timelock.");
        pendingAdmin = pendingAdmin_;

        emit NewPendingAdmin(pendingAdmin);
    }

    /// @inheritdoc ITimelock
    function queueTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)
        public
        override
        returns (bytes32)
    {
        require(msg.sender == admin, "Timelock::queueTransaction: Call must come from admin.");
        require(
            eta >= getBlockTimestamp() + delay,
            "Timelock::queueTransaction: Estimated execution block must satisfy delay."
        );

        bytes32 txHash = keccak256(abi.encode(target, value, signature, data, eta));
        queuedTransactions[txHash] = true;

        emit QueueTransaction(txHash, target, value, signature, data, eta);
        return txHash;
    }

    /// @inheritdoc ITimelock
    function cancelTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)
        public
        override
    {
        require(msg.sender == admin, "Timelock::cancelTransaction: Call must come from admin.");

        bytes32 txHash = keccak256(abi.encode(target, value, signature, data, eta));
        queuedTransactions[txHash] = false;

        emit CancelTransaction(txHash, target, value, signature, data, eta);
    }

    /// @inheritdoc ITimelock
    function executeTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)
        public
        payable
        override
        returns (bytes memory)
    {
        require(msg.sender == admin, "Timelock::executeTransaction: Call must come from admin.");

        bytes32 txHash = keccak256(abi.encode(target, value, signature, data, eta));
        require(queuedTransactions[txHash], "Timelock::executeTransaction: Transaction hasn't been queued.");
        require(getBlockTimestamp() >= eta, "Timelock::executeTransaction: Transaction hasn't surpassed time lock.");
        require(getBlockTimestamp() <= eta + GRACE_PERIOD, "Timelock::executeTransaction: Transaction is stale.");

        queuedTransactions[txHash] = false;

        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(bytes4(keccak256(bytes(signature))), data);
        }

        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call{value: value}(callData);
        require(success, "Timelock::executeTransaction: Transaction execution reverted.");

        emit ExecuteTransaction(txHash, target, value, signature, data, eta);

        return returnData;
    }

    function getBlockTimestamp() internal view returns (uint256) {
        // solium-disable-next-line security/no-block-members
        return block.timestamp;
    }
}
