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

import "../util/BeaconStateVerifierInterface.sol";
import {RocketMegapoolDelegateBaseInterface} from "./RocketMegapoolDelegateBaseInterface.sol";
import {RocketMegapoolStorageLayout} from "../../contract/megapool/RocketMegapoolStorageLayout.sol";

interface RocketMegapoolDelegateInterface is RocketMegapoolDelegateBaseInterface {
    struct StateProof {
        bytes data;
    }

    function newValidator(uint256 _bondAmount, bool _useExpressTicket, bytes calldata _validatorPubkey, bytes calldata _validatorSignature, bytes32 _depositDataRoot) external;
    function dequeue(uint32 _validatorId) external;
    function reduceBond(uint256 _amount) external;
    function assignFunds(uint32 _validatorId) external payable;
    function stake(uint32 _validatorId) external;
    function dissolveValidator(uint32 _validatorId) external;
    function getNodeAddress() external returns (address);
    function distribute() external;
    function claim() external;
    function repayDebt() external payable;

    function challengeExit(uint32 _validatorId) external;
    function notifyNotExit(uint32 _validatorId, uint64 _slotTimestamp) external;
    function notifyExit(uint32 _validatorId, uint64 _withdrawableEpoch, uint64 _recentEpoch) external;
    function notifyFinalBalance(uint32 _validatorId, uint64 _amountInGwei, address _caller, uint64 _withdrawalEpoch, uint64 _recentEpoch) external;
    function applyPenalty(uint256 _amount) external;

    function getValidatorCount() external view returns (uint32);
    function getActiveValidatorCount() external view returns (uint32);
    function getExitingValidatorCount() external view returns (uint32);
    function getLockedValidatorCount() external view returns (uint32);
    function getValidatorInfo(uint32 _validatorId) external view returns (RocketMegapoolStorageLayout.ValidatorInfo memory);
    function getValidatorPubkey(uint32 _validatorId) external view returns (bytes memory);
    function getValidatorInfoAndPubkey(uint32 _validatorId) external view returns (RocketMegapoolStorageLayout.ValidatorInfo memory info, bytes memory pubkey);
    function getAssignedValue() external view returns (uint256);
    function getDebt() external view returns (uint256);
    function getRefundValue() external view returns (uint256);
    function getNodeBond() external view returns (uint256);
    function getUserCapital() external view returns (uint256);
    function getNodeQueuedBond() external view returns (uint256);
    function getUserQueuedCapital() external view returns (uint256);
    function calculatePendingRewards() external view returns (uint256 nodeRewards, uint256 voterRewards, uint256 protocolDAORewards, uint256 rethRewards);
    function calculateRewards(uint256 _amount) external view returns (uint256 nodeRewards, uint256 voterRewards, uint256 protocolDAORewards, uint256 rethRewards);
    function getPendingRewards() external view returns (uint256);
    function getLastDistributionTime() external view returns (uint256);
    function getNewValidatorBondRequirement() external view returns (uint256);

    function getWithdrawalCredentials() external view returns (bytes32);
}