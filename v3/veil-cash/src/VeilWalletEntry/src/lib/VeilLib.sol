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
}
