// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { LibBytes } from "src/libraries/LibBytes.sol";
import { LibUint } from "src/libraries/LibUint.sol";
import { IDepositContract } from "src/interfaces/IDepositContract.sol";
import { DepositContractAddress } from "src/batchContracts/state/DepositContractAddress.sol";
import { Ownable } from "openzeppelin-contracts/contracts/access/Ownable.sol";

/// @title BatchDeposit (v1)
/// @author Alluvial Finance Inc.
/// @notice Contract for processing deposit of validators to the consensus layer in a batch
contract BatchDeposit {
    /// @notice The type of withdrawal credentials
    enum WithdrawCredentialType {
        Type0x01,
        Type0x02
    }

    /// @notice Size of a BLS Public key in bytes
    uint256 public constant PUBLIC_KEY_LENGTH = 48;
    /// @notice Size of a BLS Signature in bytes
    uint256 public constant SIGNATURE_LENGTH = 96;

    // ------------------------ Deposit functions ------------------------ //
    /// @title Validators count by operator
    /// @notice This struct represents a number of validators from the same operator
    struct ValidatorSelection {
        bytes[] _publicKeys; // The list of public keys to deposit
        bytes[] _signatures; // The list of signatures to deposit
        uint256 _depositAmount; // The deposit amount to use
    }

    /// @title Validator Set Type
    /// @notice This struct represents validator sets (VS), a set of validators sharing the same withdrawal credentials
    struct ValidatorSet {
        WithdrawCredentialType _withdrawalCredentialsType; // The type of withdrawal credentials to use
        address _withdrawalContractAddress; // The EL withdrawal address to use for withdrawal credentials
        ValidatorSelection[] _validatorSelections; // list of validators selected per operator
    }

    /// @notice Emitted when a new validator is funded
    /// @param withdrawalCredentials The withdrawal credentials of the validator
    /// @param publicKey The public key of the validator
    /// @param amount The amount of ETH staked to the validator
    event DepositedToConsensusLayer(bytes32 withdrawalCredentials, bytes publicKey, uint256 amount);

    /// @notice The received count of signatures to deposit is invalid
    error InvalidKeyCount();
    /// @notice Invalid deposit root
    error InvalidDepositRoot();
    /// @notice The withdrawal contract address is null
    error InvalidWithdrawalContractAddress();
    /// @notice The length of the BLS Public key is invalid during deposit
    error InconsistentPublicKeys();
    /// @notice The length of the BLS Signature is invalid during deposit
    error InconsistentSignatures();
    /// @notice The owner of the validator set is not the SMS
    error InvalidValidatorSetOwner();

    /// @notice Constructor to set the deposit contract address
    /// @param _depositContractAddress The address of the official Deposit contract
    constructor(address _depositContractAddress) {
        DepositContractAddress.set(_depositContractAddress);
    }

    /// @notice Deposits a set of validators to the consensus layer
    /// @param depositRoot The deposit root to validate against
    /// @param validatorSets The sets of validators to deposit
    function depositValidatorSetToConsensusLayer(bytes32 depositRoot, ValidatorSet[] calldata validatorSets) external {
        _depositValidatorSetToConsensusLayer(depositRoot, validatorSets);
    }

    /// @notice Internal function to deposit a set of validators to the consensus layer
    /// @param _depositRoot The deposit root to validate against
    /// @param _validatorSets The sets of validators to deposit
    function _depositValidatorSetToConsensusLayer(
        bytes32 _depositRoot,
        ValidatorSet[] calldata _validatorSets
    )
        internal
        virtual
    {
        if (IDepositContract(DepositContractAddress.get()).get_deposit_root() != _depositRoot) {
            revert InvalidDepositRoot();
        }

        for (uint256 i = 0; i < _validatorSets.length; i++) {
            ValidatorSet memory validatorSet = _validatorSets[i];

            if (validatorSet._withdrawalContractAddress == address(0)) {
                revert InvalidWithdrawalContractAddress();
            }
            // Please note that the assumption here is that the _withdrawalContractAddress is a valid TVS contract
            // The only other way to be absolutely sure is to check the bytecode.
            if (Ownable(validatorSet._withdrawalContractAddress).owner() != address(this)) {
                revert InvalidValidatorSetOwner();
            }

            bytes32 withdrawalCredentials =
                getCredentials(validatorSet._withdrawalContractAddress, validatorSet._withdrawalCredentialsType);

            for (uint256 j = 0; j < validatorSet._validatorSelections.length; j++) {
                uint256 keyCount = validatorSet._validatorSelections[j]._publicKeys.length;

                if (keyCount == 0 || keyCount != validatorSet._validatorSelections[j]._signatures.length) {
                    revert InvalidKeyCount();
                }

                // Deposit validators from the current selection, for the current withdrawal credentials
                for (uint256 idx = 0; idx < keyCount; idx++) {
                    _depositValidator(
                        validatorSet._validatorSelections[j]._publicKeys[idx],
                        validatorSet._validatorSelections[j]._signatures[idx],
                        withdrawalCredentials,
                        validatorSet._validatorSelections[j]._depositAmount
                    );
                }
            }
        }
    }

    /// @notice Deposits a validator to the official Deposit contract
    /// @param _publicKey The BLS public key of the validator, expected to be 48 bytes long
    /// @param _signature The BLS signature for the validator, expected to be 96 bytes long
    /// @param _withdrawalCredentials The withdrawal credentials, expected to be a 32-byte hash
    /// @param _depositAmount The amount of ETH to deposit, expected to be 32 ether
    function _depositValidator(
        bytes memory _publicKey,
        bytes memory _signature,
        bytes32 _withdrawalCredentials,
        uint256 _depositAmount
    )
        internal
    {
        if (_publicKey.length != PUBLIC_KEY_LENGTH) {
            revert InconsistentPublicKeys();
        }

        if (_signature.length != SIGNATURE_LENGTH) {
            revert InconsistentSignatures();
        }
        uint256 value = _depositAmount;

        uint256 depositAmount = value / 1 gwei;

        bytes32 pubkeyRoot = sha256(bytes.concat(_publicKey, bytes16(0)));
        bytes32 signatureRoot = sha256(
            bytes.concat(
                sha256(LibBytes.slice(_signature, 0, 64)),
                sha256(bytes.concat(LibBytes.slice(_signature, 64, SIGNATURE_LENGTH - 64), bytes32(0)))
            )
        );

        bytes32 depositDataRoot = sha256(
            bytes.concat(
                sha256(bytes.concat(pubkeyRoot, _withdrawalCredentials)),
                sha256(bytes.concat(bytes32(LibUint.toLittleEndian64(uint64(depositAmount))), signatureRoot))
            )
        );

        IDepositContract(DepositContractAddress.get()).deposit{ value: value }(
            _publicKey, abi.encodePacked(_withdrawalCredentials), _signature, depositDataRoot
        );

        emit DepositedToConsensusLayer(_withdrawalCredentials, _publicKey, value);
    }

    /// @notice Internal utility to get the withdrawal credentials from the provided address
    /// @param _withdrawalContract The withdrawal contract address. This should be a valid Ethereum address.
    /// @param _withdrawalCredentialType The type of withdrawal credentials to use.
    ///        It can be either `WithdrawCredentialType.Type0x01` or `WithdrawCredentialType.Type0x02`.
    /// @return The withdrawal credentials as a bytes32 value.
    function getCredentials(
        address _withdrawalContract,
        WithdrawCredentialType _withdrawalCredentialType
    )
        internal
        pure
        returns (bytes32)
    {
        if (_withdrawalCredentialType == WithdrawCredentialType.Type0x01) {
            return bytes32(uint256(uint160(_withdrawalContract)) | (1 << 248));
        } else {
            return bytes32(uint256(uint160(_withdrawalContract)) | (2 << 248));
        }
    }
}
