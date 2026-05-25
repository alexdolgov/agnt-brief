// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

library Endian {
    /**
     * @notice Converts a little endian-formatted uint64 to a big endian-formatted uint64
     * @param lenum little endian-formatted uint64 input, provided as 'bytes32' type
     * @return n The big endian-formatted uint64
     * @dev Note that the input is formatted as a 'bytes32' type (i.e. 256 bits), but it is immediately truncated to a
     * uint64 (i.e. 64 bits)
     * through a right-shift/shr operation.
     */
    function fromLittleEndianUint64(
        bytes32 lenum
    ) internal pure returns (uint64 n) {
        // the number needs to be stored in little-endian encoding (ie in bytes 0-8)
        n = uint64(uint256(lenum >> 192));
        return
            (n >> 56) |
            ((0x00FF000000000000 & n) >> 40) |
            ((0x0000FF0000000000 & n) >> 24) |
            ((0x000000FF00000000 & n) >> 8) |
            ((0x00000000FF000000 & n) << 8) |
            ((0x0000000000FF0000 & n) << 24) |
            ((0x000000000000FF00 & n) << 40) |
            ((0x00000000000000FF & n) << 56);
    }
}

library BeaconChainProofs {
    struct ValidatorFieldsAndBalanceProofs {
        bytes validatorFieldsProof;
        bytes validatorBalanceProof;
        bytes32 balanceRoot;
    }

    /// @notice Contains a beacon balance container root and a proof of this root under a beacon block root
    struct BalanceContainerProof {
        bytes32 balanceContainerRoot;
        bytes proof;
    }

    /// @notice Contains a validator balance root and a proof of its inclusion under a balance container root
    struct BalanceProof {
        bytes32 pubkeyHash;
        bytes32 balanceRoot;
        bytes proof;
    }

    /**
     *
     * @notice This function is parses the balanceRoot to get the uint64 balance of a validator.  During merkleization
     * of the
     * beacon state balance tree, four uint64 values (making 32 bytes) are grouped together and treated as a single leaf
     * in the merkle tree. Thus the
     * validatorIndex mod 4 is used to determine which of the four uint64 values to extract from the balanceRoot.
     * @param validatorIndex is the index of the validator being proven for.
     * @param balanceRoot is the combination of 4 validator balances being proven for.
     * @return The validator's balance, in Gwei
     */
    function getBalanceFromBalanceRoot(
        uint40 validatorIndex,
        bytes32 balanceRoot
    ) internal pure returns (uint64) {
        uint256 bitShiftAmount = (validatorIndex % 4) * 64;
        bytes32 validatorBalanceLittleEndian = bytes32(
            (uint256(balanceRoot) << bitShiftAmount)
        );
        uint64 validatorBalance = Endian.fromLittleEndianUint64(
            validatorBalanceLittleEndian
        );
        return validatorBalance;
    }
}

interface IEigenPod {
    /// @notice Called by EigenPodManager when the owner wants to create another ETH validator.
    function stake(
        bytes calldata pubkey,
        bytes calldata signature,
        bytes32 depositDataRoot
    ) external payable;

    /**
     * @notice This function verifies that the withdrawal credentials of the podOwner are pointed to
     * this contract. It also verifies the current (not effective) balance  of the validator.  It verifies the provided
     * proof of the ETH validator against the beacon chain state
     * root, marks the validator as 'active' in EigenLayer, and credits the restaked ETH in Eigenlayer.
     * @param oracleBlockNumber is the Beacon Chain blockNumber whose state root the `proof` will be proven against.
     * @param validatorIndex is the index of the validator being proven, refer to consensus specs
     * @param proofs is the bytes that prove the ETH validator's balance and withdrawal credentials against a beacon
     * chain state root
     * @param validatorFields are the fields of the "Validator Container", refer to consensus specs
     * for details: https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#validator
     */
    function verifyWithdrawalCredentialsAndBalance(
        uint64 oracleBlockNumber,
        uint40 validatorIndex,
        BeaconChainProofs.ValidatorFieldsAndBalanceProofs memory proofs,
        bytes32[] calldata validatorFields
    ) external;

    /**
     * @dev Create a checkpoint used to prove this pod's active validator set. Checkpoints are completed
     * by submitting one checkpoint proof per ACTIVE validator. During the checkpoint process, the total
     * change in ACTIVE validator balance is tracked, and any validators with 0 balance are marked `WITHDRAWN`.
     * @dev Once finalized, the pod owner is awarded shares corresponding to:
     * - the total change in their ACTIVE validator balances
     * - any ETH in the pod not already awarded shares
     * @dev A checkpoint cannot be created if the pod already has an outstanding checkpoint. If
     * this is the case, the pod owner MUST complete the existing checkpoint before starting a new one.
     * @param revertIfNoBalance Forces a revert if the pod ETH balance is 0. This allows the pod owner
     * to prevent accidentally starting a checkpoint that will not increase their shares
     */
    function startCheckpoint(bool revertIfNoBalance) external;

    /**
     * @dev Progress the current checkpoint towards completion by submitting one or more validator
     * checkpoint proofs. Anyone can call this method to submit proofs towards the current checkpoint.
     * For each validator proven, the current checkpoint's `proofsRemaining` decreases.
     * @dev If the checkpoint's `proofsRemaining` reaches 0, the checkpoint is finalized.
     * (see `_updateCheckpoint` for more details)
     * @dev This method can only be called when there is a currently-active checkpoint.
     * @param balanceContainerProof proves the beacon's current balance container root against a checkpoint's `beaconBlockRoot`
     * @param proofs Proofs for one or more validator current balances against the `balanceContainerRoot`
     */
    function verifyCheckpointProofs(
        BeaconChainProofs.BalanceContainerProof calldata balanceContainerProof,
        BeaconChainProofs.BalanceProof[] calldata proofs
    ) external;
}
