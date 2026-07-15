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

import "../../contract/megapool/RocketMegapoolStorageLayout.sol";
import "./RocketMegapoolInterface.sol";
import {BeaconStateVerifierInterface, ValidatorProof, Withdrawal, WithdrawalProof, SlotProof} from "../util/BeaconStateVerifierInterface.sol";

interface RocketMegapoolManagerInterface {
    struct ExitChallenge {
        RocketMegapoolDelegateInterface megapool;
        uint32[] validatorIds;
    }

    function getValidatorCount() external view returns (uint256);
    function addValidator(address _megapoolAddress, uint32 _validatorId, bytes calldata _pubkey) external;
    function getLastChallenger() external view returns (address);
    function getValidatorInfo(uint256 _index) external view returns (bytes memory pubkey, RocketMegapoolStorageLayout.ValidatorInfo memory validatorInfo, address megapool, uint32 validatorId);
    function stake(RocketMegapoolInterface megapool, uint32 _validatorId, uint64 _slotTimestamp, ValidatorProof calldata _proof, SlotProof calldata _slotProof) external;
    function dissolve(RocketMegapoolInterface _megapool, uint32 _validatorId, uint64 _slotTimestamp, ValidatorProof calldata _proof, SlotProof calldata _slotProof) external;
    function notifyExit(RocketMegapoolInterface _megapool, uint32 _validatorId, uint64 _slotTimestamp, ValidatorProof calldata _proof, SlotProof calldata _slotProof) external;
    function challengeExit(ExitChallenge[] calldata _challenges) external;
    function notifyNotExit(RocketMegapoolInterface _megapool, uint32 _validatorId, uint64 _slotTimestamp, ValidatorProof calldata _proof, SlotProof calldata _slotProof) external;
    function notifyFinalBalance(RocketMegapoolInterface megapool, uint32 _validatorId, uint64 _slotTimestamp, WithdrawalProof calldata _proof, ValidatorProof calldata _validatorProof, SlotProof calldata _slotProof) external;
}