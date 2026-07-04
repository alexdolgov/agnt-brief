/**
   *       .
   *      / \
   *     |.'.|
   *     |'.'|
   *   ,'|   |'.
   *  |,-'-|-'-.|
   *   __|_| |         _        _      _____           _
   *  | ___ \|        | |      | |    | ___ \         | |
   *  | |_/ /|__   ___| | _____| |_   | |_/ /__   ___ | |
   *  |    // _ \ / __| |/ / _ \ __|  |  __/ _ \ / _ \| |
   *  | |\ \ (_) | (__|   <  __/ |_   | | | (_) | (_) | |
   *  \_| \_\___/ \___|_|\_\___|\__|  \_|  \___/ \___/|_|
   * +---------------------------------------------------+
   * |    DECENTRALISED STAKING PROTOCOL FOR ETHEREUM    |
   * +---------------------------------------------------+
   *
   *  Rocket Pool is a first-of-its-kind Ethereum staking pool protocol, designed to
   *  be community-owned, decentralised, permissionless, & trustless.
   *
   *  For more information about Rocket Pool, visit https://rocketpool.net
   *
   *  Authored by the Rocket Pool Core Team
   *  Contributors: https://github.com/rocket-pool/rocketpool/graphs/contributors
   *  A special thanks to the Rocket Pool community for all their contributions.
   *
   */

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >0.5.0 <0.9.0;

    struct Withdrawal {
        uint64 index;
        uint64 validatorIndex;
        bytes20 withdrawalCredentials;
        uint64 amountInGwei;
    }

    struct WithdrawalProof {
        uint64 withdrawalSlot;
        uint16 withdrawalNum;
        Withdrawal withdrawal;
        bytes32[] witnesses;
    }

    struct Validator {
        bytes pubkey;
        bytes32 withdrawalCredentials;
        uint64 effectiveBalance;
        bool slashed;
        uint64 activationEligibilityEpoch;
        uint64 activationEpoch;
        uint64 exitEpoch;
        uint64 withdrawableEpoch;
    }

    struct ValidatorProof {
        uint40 validatorIndex;
        Validator validator;
        bytes32[] witnesses;
    }

    struct SlotProof {
        uint64 slot;
        bytes32[] witnesses;
    }

interface BeaconStateVerifierInterface {
    function verifyValidator(uint64 _slotTimestamp, uint64 _slot, ValidatorProof calldata _proof) external view returns (bool);
    function verifyWithdrawal(uint64 _slotTimestamp, uint64 _slot, WithdrawalProof calldata _proof) external view returns (bool);
    function verifySlot(uint64 _slotTimestamp, SlotProof calldata _proof) external view returns (bool);
}
