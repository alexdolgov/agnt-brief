// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.26;

/**
 * @title VeilLib
 * @author Veil Cash
 * @notice Library for the Veil Wallet contracts
 */
library VeilLib {
    // @dev Validation Errors (reusable across pool contracts + Entrypoint)
    error InvalidFee();
    error InvalidExtAmount();
    error AmountExceedsMaximum();
    error UserNotRegistered();
    error OnlyForDeposits();
    error OnlyForWithdrawals();
    error OnlyForTransfers();
    error InvalidRange();
    error InvalidPublicAmount();
    error InvalidMerkleRoot();
    error InputAlreadySpent();
    error IncorrectExternalDataHash();
    error InvalidTransactionProof();
    error OnlyOwnerCanRegister();
    error MinimumDepositNotMet();
    error CannotWithdrawToZeroAddress();
    error OnlyValidatorContractAllowed();
    error DepositsDisabled();
    error NotAllowedToDeposit();
    error FeeTransferFailed();
    error ProofAmountMismatch();
    error UserAlreadyRegistered();

    // queue errors
    error NotOperator();
    error DepositNotPending();
    error InvalidIndex();
    error TransferFailed();
    error TooEarly();
    error InvalidDepositKey();
    error InvalidAmount();
    error NotFallbackReceiver();
    error NotVeilEntry();
    error InvalidTimeout();
    error OnlyQueueContractAllowed();
    error OnlyOperatorAllowed();
    error InvalidQueueContract();
    error InvalidDepositKeyForUser();
    error USDCTransferFailed();
    error BTCTransferFailed();
    error ForwarderDisabled();

    // @dev Constants
    int256 public constant MAX_EXT_AMOUNT = 2 ** 248;
    uint256 public constant MAX_FEE = 2 ** 248;
    uint256 public constant BASIS_POINTS = 10000;

    // @dev Account details struct
    struct Account {
        address owner;
        bytes depositKey;
    }

    // @dev Proof struct
    struct Proof {
        bytes proof;
        bytes32 root;
        bytes32[] inputNullifiers;
        bytes32[2] outputCommitments;
        uint256 publicAmount;
        bytes32 extDataHash;
    }

    // @dev External data struct
    struct ExtData {
        address recipient;
        int256 extAmount;
        address relayer;
        uint256 fee;
        bytes encryptedOutput1;
        bytes encryptedOutput2;
    }

    // @dev Depositor information struct
    struct DepositorInfo {
        bool isAllowed;
        string data;
    }

    // @dev Deposit structs

    enum DepositStatus {
        Pending, // requested deposit was submitted and is pending screening
        Accepted, // requested deposit was accepted by operator and forwarded to VeilEntry
        Rejected, // requested deposit was rejected by operator (screening failed)
        Refunded // requested deposit was refunded to the fallback receiver

    }

    struct DepositQueue {
        address fallbackReceiver; // refund receiver for deposits that cannot be processed
        uint256 amountIn; // ETH amount sent in
        uint256 fee; // fee amount at queue time
        uint256 shieldAmount; // ETH amount sent in to pool (minus fee)
        uint256 timestamp; // deposit submission timestamp
        DepositStatus status; // deposit status
        bytes depositKey; // deposit key
    }

    /// @dev Flattened deposit struct with nonce for batch returns
    struct DepositWithNonce {
        uint256 nonce;
        address fallbackReceiver;
        uint256 amountIn;
        uint256 fee;
        uint256 shieldAmount;
        uint256 timestamp;
        DepositStatus status;
        bytes depositKey;
    }
}
