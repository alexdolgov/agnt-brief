// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {Initializable} from "./imports/Initializable.sol";

contract Multisig is Initializable {
    struct Transaction {
        address dst;
        uint256 value;
        bytes data;
        bool isExecuted;
        uint256 blockNumber;
    }

    uint128 public quorum;
    uint128 public ttl;
    uint256 public txsCount;
    mapping(uint256 => Transaction) public txs;
    mapping(uint256 => mapping(address => bool)) public confirms;
    mapping(address => bool) public isAdmin;
    address[] public admins;

    event Submission(uint256 indexed txId);
    event Confirmation(address indexed sender, uint256 indexed txId);
    event Revocation(address indexed sender, uint256 indexed txId);
    event Execution(uint256 indexed txId, address caller);
    event QuorumChange(uint128 quorum);
    event AdminAddition(address indexed admin);
    event AdminRemoval(address indexed admin);

    error ErrOnlySelf();
    error ErrOnlyAdmin();
    error ErrAlreadyConfirmed(uint256 txId);
    error ErrAlreadyExecuted(uint256 txId);
    error ErrInvalidQuorum();
    error ErrZeroAddress();
    error ErrDuplicatedAdmin(address admin);
    error ErrInvalidTxId(uint256 txId);
    error ErrNoConfirmation(uint256 txId, address admin);
    error ErrTxNotConfirmed(uint256 txId);
    error ErrTxExpired(uint256 txId, uint256 validUntil, uint256 blockNumber);
    error ErrFailedCall(uint256 txId);

    modifier onlySelf() {
        if (msg.sender != address(this)) {
            revert ErrOnlySelf();
        }
        _;
    }

    modifier onlyAdmin(address admin_) {
        if (!isAdmin[admin_]) {
            revert ErrOnlyAdmin();
        }
        _;
    }

    modifier whenNotConfirmed(uint256 txId_, address admin_) {
        if (confirms[txId_][admin_]) {
            revert ErrAlreadyConfirmed(txId_);
        }
        _;
    }

    modifier whenNotExecuted(uint256 txId_) {
        if (txs[txId_].isExecuted) {
            revert ErrAlreadyExecuted(txId_);
        }
        _;
    }

    modifier quorumIsValid(uint256 adminsCount_, uint256 quorum_) {
        if (quorum_ > adminsCount_ || quorum_ == 0) {
            revert ErrInvalidQuorum();
        }
        _;
    }

    function init(
        address[] memory admins_,
        uint128 quorum_,
        uint128 ttl_
    ) external quorumIsValid(admins_.length, quorum_) whenNotInitialized {
        for (uint256 i = 0; i < admins_.length; i++) {
            address admin = admins_[i];
            if (admin == address(0)) {
                revert ErrZeroAddress();
            }
            if (isAdmin[admin]) {
                revert ErrDuplicatedAdmin(admin);
            }
            isAdmin[admin] = true;
        }

        admins = admins_;
        quorum = quorum_;
        ttl = ttl_;
        isInited = true;
    }

    receive() external payable {}

    function addAdmin(address admin_) external onlySelf {
        if (admin_ == address(0)) {
            revert ErrZeroAddress();
        }
        if (isAdmin[admin_]) {
            revert ErrDuplicatedAdmin(admin_);
        }
        isAdmin[admin_] = true;
        admins.push(admin_);
        emit AdminAddition(admin_);
    }

    function removeAdmin(address admin_) external onlySelf onlyAdmin(admin_) {
        isAdmin[admin_] = false;
        for (uint256 i = 0; i < admins.length - 1; i++) {
            if (admins[i] == admin_) {
                admins[i] = admins[admins.length - 1];
                break;
            }
        }
        admins.pop();
        if (quorum > admins.length) {
            setQuorum(uint128(admins.length));
        }
        emit AdminRemoval(admin_);
    }

    function setQuorum(
        uint128 quorum_
    ) public onlySelf quorumIsValid(admins.length, quorum_) {
        quorum = quorum_;
        emit QuorumChange(quorum_);
    }

    function submitTransaction(
        address dst_,
        uint256 value_,
        bytes calldata calldata_
    ) external onlyAdmin(msg.sender) returns (uint256 txId) {
        if (dst_ == address(0)) {
            revert ErrZeroAddress();
        }
        txId = txsCount;
        txs[txId] = Transaction({
            dst: dst_,
            value: value_,
            data: calldata_,
            isExecuted: false,
            blockNumber: block.number
        });
        txsCount = txId + 1;
        emit Submission(txId);
    }

    function confirmTransaction(
        uint256 txId_
    ) external onlyAdmin(msg.sender) whenNotConfirmed(txId_, msg.sender) {
        if (txs[txId_].dst == address(0)) {
            revert ErrInvalidTxId(txId_);
        }
        confirms[txId_][msg.sender] = true;
        emit Confirmation(msg.sender, txId_);
    }

    function revokeConfirmation(
        uint256 txId_
    ) external onlyAdmin(msg.sender) whenNotExecuted(txId_) {
        if (!confirms[txId_][msg.sender]) {
            revert ErrNoConfirmation(txId_, msg.sender);
        }
        confirms[txId_][msg.sender] = false;
        emit Revocation(msg.sender, txId_);
    }

    function executeTransaction(
        uint256 txId_
    ) external whenNotExecuted(txId_) returns (bytes memory) {
        if (!isConfirmed(txId_)) {
            revert ErrTxNotConfirmed(txId_);
        }
        Transaction storage tx_ = txs[txId_];
        if (block.number > tx_.blockNumber + ttl) {
            revert ErrTxExpired(txId_, tx_.blockNumber + ttl, block.number);
        }
        tx_.isExecuted = true;
        emit Execution(txId_, msg.sender);
        // slither-disable-next-line low-level-calls
        (bool success_, bytes memory data_) = tx_.dst.call{value: tx_.value}(
            tx_.data
        );
        if (success_) {
            return data_;
        } else {
            if (data_.length > 0) {
                // slither-disable-next-line assembly
                assembly ("memory-safe") {
                    let returndata_size := mload(data_)
                    revert(add(32, data_), returndata_size)
                }
            } else {
                revert ErrFailedCall(txId_);
            }
        }
    }

    function isConfirmed(uint256 txId_) public view returns (bool) {
        uint128 count = 0;
        uint256 length = admins.length;
        for (uint256 i = 0; i < length; i++) {
            if (confirms[txId_][admins[i]]) {
                count++;
            }
            if (count >= quorum) {
                return true;
            }
        }

        return false;
    }

    function getConfirmationsCount(
        uint256 txId_
    ) external view returns (uint256 count) {
        uint256 length = admins.length;
        for (uint256 i = 0; i < length; i++) {
            if (confirms[txId_][admins[i]]) {
                count++;
            }
        }
    }

    function getConfirmations(
        uint256 txId_
    ) external view returns (address[] memory confirms_) {
        uint256 i = 0;
        uint256 count = 0;
        address[] memory tmp = new address[](admins.length);
        uint256 length = admins.length;
        for (; i < length; i++) {
            address admin = admins[i];
            if (confirms[txId_][admin]) {
                tmp[count] = admin;
                count++;
            }
        }

        confirms_ = new address[](count);
        for (i = 0; i < count; i++) {
            confirms_[i] = tmp[i];
        }
    }
}
