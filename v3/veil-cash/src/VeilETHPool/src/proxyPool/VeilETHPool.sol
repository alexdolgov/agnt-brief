// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IWETH} from "src/Interfaces/IWETH.sol";
import {IVerifier} from "src/Interfaces/IVerifier.sol";
import {MerkleTreeWithHistory} from "src/verifiers/MerkleTreeWithHistory.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title VeilETHPool
 * @author Veil Cash
 * @dev Veil Wallet ETH Pool - Called via VeilWalletEntry
 */
contract VeilETHPool is MerkleTreeWithHistory, ReentrancyGuard, Ownable {
    // @dev Operation-Specific Errors (WETH/ETH specific operations)
    error OnlyWETHContractAllowed();
    error WETHDepositFailed();
    error WETHUnwrapFailed();
    error ETHTransferFailed();
    error UnsupportedInputCount();

    // @dev Immutable variables
    IVerifier public immutable verifier2;
    IVerifier public immutable verifier16;
    IWETH public immutable weth;

    // @dev Mappings
    mapping(bytes32 => bool) public nullifierHashes;

    // @dev Commitments and encrypted outputs storage
    mapping(uint256 => bytes32) public commitments;
    mapping(uint256 => bytes) public encryptedOutputs;

    // @dev Address of the validator contract that's authorized to make deposits
    address public validatorContract;

    modifier onlyValidator() {
        if (msg.sender != validatorContract) revert VeilLib.OnlyValidatorContractAllowed();
        _;
    }

    // @dev Events
    event NewCommitment(bytes32 commitment, uint256 index, bytes encryptedOutput);
    event NewNullifier(bytes32 nullifier);
    event ValidatorContractUpdated(address indexed newValidatorContract);

    /**
     * @dev The constructor
     * @param _verifier2 the address of SNARK verifier for 2 inputs
     * @param _verifier16 the address of SNARK verifier for 16 inputs
     * @param _levels height of the commitments merkle tree
     * @param _hasher hasher address for the merkle tree
     * @param _weth weth address for the pool
     */
    constructor(IVerifier _verifier2, IVerifier _verifier16, uint32 _levels, address _hasher, IWETH _weth)
        Ownable(msg.sender)
        MerkleTreeWithHistory(_levels, _hasher)
    {
        verifier2 = _verifier2;
        verifier16 = _verifier16;
        weth = _weth;
    }

    /**
     * @dev Allows contract to receive ETH from WETH unwrapping
     */
    receive() external payable {
        // Only accept ETH from WETH contract during unwrapping
        if (msg.sender != address(weth)) revert OnlyWETHContractAllowed();
    }

    /**
     * @dev Function for ETH deposits only.
     */
    function depositETH(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) public payable onlyValidator {
        // Only allow deposits
        if (_extData.extAmount <= 0) revert VeilLib.OnlyForDeposits();
        if (msg.value != uint256(_extData.extAmount)) revert VeilLib.ProofAmountMismatch();

        /// Store balance before deposit for verification
        uint256 wethBalanceBefore = weth.balanceOf(address(this));

        /// wrap ETH to wETH
        IWETH(weth).deposit{value: msg.value}();

        /// Verify WETH was actually minted
        uint256 wethBalanceAfter = weth.balanceOf(address(this));
        if (wethBalanceAfter != wethBalanceBefore + msg.value) revert WETHDepositFailed();

        _transact(_args, _extData);
    }

    /**
     * @dev Function for ETH withdrawals only.
     */
    function withdrawETH(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) public {
        // Only allow withdrawals
        if (_extData.extAmount >= 0) revert VeilLib.OnlyForWithdrawals();

        _transact(_args, _extData);
    }

    /**
     * @dev Main function that allows transfers only + UTXO updates
     */
    function transactETH(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) public {
        // Only allow transfers + updates to existing accounts
        if (_extData.extAmount != 0) revert VeilLib.OnlyForTransfers();
        _transact(_args, _extData);
    }

    /**
     * @dev Function to calculate the public amount for a given ext amount and fee
     */
    function calculatePublicAmount(int256 _extAmount, uint256 _fee) public pure returns (uint256) {
        if (_fee >= VeilLib.MAX_FEE) revert VeilLib.InvalidFee();
        if (_extAmount <= -VeilLib.MAX_EXT_AMOUNT || _extAmount >= VeilLib.MAX_EXT_AMOUNT) {
            revert VeilLib.InvalidExtAmount();
        }
        int256 publicAmount = _extAmount - int256(_fee);
        return (publicAmount >= 0) ? uint256(publicAmount) : FIELD_SIZE - uint256(-publicAmount);
    }

    /**
     * @dev whether a note is already spent
     */
    function isSpent(bytes32 _nullifierHash) public view returns (bool) {
        return nullifierHashes[_nullifierHash];
    }

    /**
     * @dev Function to verify a proof
     */
    function verifyProof(VeilLib.Proof memory _args) public view returns (bool) {
        if (_args.inputNullifiers.length == 2) {
            return verifier2.verifyProof(
                _args.proof,
                [
                    uint256(_args.root),
                    _args.publicAmount,
                    uint256(_args.extDataHash),
                    uint256(_args.inputNullifiers[0]),
                    uint256(_args.inputNullifiers[1]),
                    uint256(_args.outputCommitments[0]),
                    uint256(_args.outputCommitments[1])
                ]
            );
        } else if (_args.inputNullifiers.length == 16) {
            return verifier16.verifyProof(
                _args.proof,
                [
                    uint256(_args.root),
                    _args.publicAmount,
                    uint256(_args.extDataHash),
                    uint256(_args.inputNullifiers[0]),
                    uint256(_args.inputNullifiers[1]),
                    uint256(_args.inputNullifiers[2]),
                    uint256(_args.inputNullifiers[3]),
                    uint256(_args.inputNullifiers[4]),
                    uint256(_args.inputNullifiers[5]),
                    uint256(_args.inputNullifiers[6]),
                    uint256(_args.inputNullifiers[7]),
                    uint256(_args.inputNullifiers[8]),
                    uint256(_args.inputNullifiers[9]),
                    uint256(_args.inputNullifiers[10]),
                    uint256(_args.inputNullifiers[11]),
                    uint256(_args.inputNullifiers[12]),
                    uint256(_args.inputNullifiers[13]),
                    uint256(_args.inputNullifiers[14]),
                    uint256(_args.inputNullifiers[15]),
                    uint256(_args.outputCommitments[0]),
                    uint256(_args.outputCommitments[1])
                ]
            );
        } else {
            revert UnsupportedInputCount();
        }
    }

    /**
     * @dev Internal function that handles the transactions
     */
    function _transact(VeilLib.Proof memory _args, VeilLib.ExtData memory _extData) internal nonReentrant {
        if (!isKnownRoot(_args.root)) revert VeilLib.InvalidMerkleRoot();
        for (uint256 i = 0; i < _args.inputNullifiers.length; i++) {
            if (isSpent(_args.inputNullifiers[i])) revert VeilLib.InputAlreadySpent();
        }
        if (uint256(_args.extDataHash) != uint256(keccak256(abi.encode(_extData))) % FIELD_SIZE) {
            revert VeilLib.IncorrectExternalDataHash();
        }
        if (_args.publicAmount != calculatePublicAmount(_extData.extAmount, _extData.fee)) {
            revert VeilLib.InvalidPublicAmount();
        }
        if (!verifyProof(_args)) revert VeilLib.InvalidTransactionProof();

        for (uint256 i = 0; i < _args.inputNullifiers.length; i++) {
            nullifierHashes[_args.inputNullifiers[i]] = true;
        }

        if (_extData.extAmount < 0) {
            if (_extData.recipient == address(0)) revert VeilLib.CannotWithdrawToZeroAddress();

            uint256 withdrawAmount = uint256(-_extData.extAmount);

            // Store WETH balance before unwrapping for verification
            uint256 wethBalanceBefore = weth.balanceOf(address(this));

            // Unwrap WETH to ETH
            weth.withdraw(withdrawAmount);

            // Verify WETH was actually unwrapped
            uint256 wethBalanceAfter = weth.balanceOf(address(this));
            if (wethBalanceAfter != wethBalanceBefore - withdrawAmount) revert WETHUnwrapFailed();

            // Send ETH to recipient
            (bool success,) = _extData.recipient.call{value: withdrawAmount}("");
            if (!success) revert ETHTransferFailed();
        }

        _insert(_args.outputCommitments[0], _args.outputCommitments[1]);

        /// store commitments onchain
        commitments[nextIndex - 2] = _args.outputCommitments[0];
        commitments[nextIndex - 1] = _args.outputCommitments[1];

        /// store the encrypted outputs onchain
        encryptedOutputs[nextIndex - 2] = _extData.encryptedOutput1;
        encryptedOutputs[nextIndex - 1] = _extData.encryptedOutput2;

        /// events
        emit NewCommitment(_args.outputCommitments[0], nextIndex - 2, _extData.encryptedOutput1);
        emit NewCommitment(_args.outputCommitments[1], nextIndex - 1, _extData.encryptedOutput2);
        for (uint256 i = 0; i < _args.inputNullifiers.length; i++) {
            emit NewNullifier(_args.inputNullifiers[i]);
        }
    }

    /**
     * @dev Function to get commitments
     */
    function getCommitments(uint256 startIndex, uint256 endIndex) external view returns (bytes32[] memory) {
        if (startIndex > endIndex || endIndex > nextIndex) revert VeilLib.InvalidRange();
        bytes32[] memory result = new bytes32[](endIndex - startIndex);

        for (uint256 i = 0; i < endIndex - startIndex; i++) {
            result[i] = commitments[startIndex + i];
        }

        return result;
    }

    /**
     * @dev Function to get encrypted outputs
     */
    function getEncryptedOutputs(uint256 startIndex, uint256 endIndex) external view returns (bytes[] memory) {
        if (startIndex > endIndex || endIndex > nextIndex) revert VeilLib.InvalidRange();
        bytes[] memory result = new bytes[](endIndex - startIndex);

        for (uint256 i = 0; i < endIndex - startIndex; i++) {
            result[i] = encryptedOutputs[startIndex + i];
        }

        return result;
    }

    /**
     * @dev Updates the address of the validator contract that's authorized to make deposits
     * @param _newValidator The address of the new validator contract
     */
    function updateValidatorContract(address _newValidator) external onlyOwner {
        validatorContract = _newValidator;
        emit ValidatorContractUpdated(_newValidator);
    }
}
