// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IStream} from "./IStream.sol";

/// @title IStreamFactory
/// @notice Interface for the StreamFactory exposing all public/external functions.
interface IStreamFactory {
    // ============ Storage/View Structs ============
    struct StreamInfo {
        bytes16 streamId;
        address admin;
        IERC20 rewardToken;
    }

    struct CreateStreamParams {
        bytes16 streamId;
        IERC20 rewardToken;
        uint netTotalAmount;
        uint feeAmount;
    }

    struct AddFundsParams {
        IStream stream;
        uint netAmount;
        uint feeAmount;
    }

    struct WithdrawFundsParams {
        IStream stream;
        address to;
        uint amount;
    }

    struct BatchClaim {
        IStream stream; // Stream proxy
        uint amount; // user's cumulative entitlement
        uint40 rootTimestamp; // Timestamp associated with the root
        bytes32[] merkleProof; // Merkle proof
    }

    // ============ Initialization ============
    /// @notice Initialize the factory
    /// @dev Modifiers: initializer
    function initialize(
        address authority,
        IStream streamImplementation,
        address createStreamVerifier,
        address withdrawFundsVerifier,
        address feeCollector
    ) external;

    // ================= View functions =================

    function version() external pure returns (string memory);
    function isStreamFactory() external pure returns (bool);
    function getStreamImplementation() external view returns (IStream);
    function getCreateStreamVerifier() external view returns (address);
    function getWithdrawFundsVerifier() external view returns (address);
    function getFeeCollector() external view returns (address);
    function getStreams() external view returns (IStream[] memory);
    function getStream(bytes16 streamId) external view returns (IStream);
    function getStreamInfo(IStream stream) external view returns (StreamInfo memory);
    function getStreamInfo(bytes16 streamId) external view returns (StreamInfo memory);
    function isOperator(address user, address operator) external view returns (bool);
    function isValidStream(IStream stream) external view returns (bool);
    function isUsedSalt(bytes32 salt) external view returns (bool);

    // ============ Stream Creation ============

    function createStream(
        CreateStreamParams calldata params,
        uint40 deadline,
        bytes calldata signature
    ) external returns (IStream stream);

    function computeCreateStreamEIP712Digest(
        address creator,
        CreateStreamParams calldata params,
        uint40 deadline
    ) external view returns (bytes32);

    function createStreams(
        CreateStreamParams[] calldata params,
        uint40 deadline,
        bytes calldata signature
    ) external returns (IStream[] memory stream);

    function computeCreateStreamsEIP712Digest(
        address creator,
        CreateStreamParams[] calldata params,
        uint40 deadline
    ) external view returns (bytes32);

    // ========== Add funds ==========

    function addFunds(AddFundsParams calldata params, bytes32 salt, uint40 deadline, bytes calldata signature) external;

    function computeAddFundsEIP712Digest(
        address admin,
        AddFundsParams calldata params,
        bytes32 salt,
        uint40 deadline
    ) external view returns (bytes32);

    // ========== Withdraw funds ==========

    function withdrawFunds(WithdrawFundsParams calldata params) external;

    function withdrawFunds(
        WithdrawFundsParams calldata params,
        bytes32 salt,
        uint40 deadline,
        bytes calldata signature
    ) external;

    function computeWithdrawFundsEIP712Digest(
        address admin,
        WithdrawFundsParams calldata params,
        bytes32 salt,
        uint40 deadline
    ) external view returns (bytes32);

    // ========== Rescue tokens ==========

    function rescueTokens(IERC20 token, address payable to, uint amount) external;

    function rescueTokensFromStream(IStream stream, IERC20 token, address payable to, uint amount) external;

    // ============ Batch Claim ============
    /// @notice Claim from multiple streams for msg.sender
    function batchClaim(BatchClaim[] calldata claims, bool revertOnFailure) external returns (bool[] memory success);

    /// @notice Claim from multiple streams on behalf of a user
    function batchClaimFor(
        address user,
        BatchClaim[] calldata claims,
        bool revertOnFailure
    ) external returns (bool[] memory success);

    // ================= Update Merkle root functions =================

    function setMerkleRoot(IStream stream, bytes32 rootHash, uint40 timestamp) external;

    function setMerkleRoots(
        IStream[] calldata streams,
        bytes32[] calldata rootHashes,
        uint40[] calldata timestamps
    ) external;

    function clearMerkleRoots(IStream[] calldata streams) external;

    function clearMerkleRoot(IStream stream) external;

    function clearPrevMerkleRoots(IStream[] calldata streams) external;

    function clearPrevMerkleRoot(IStream stream) external;

    // ================= Stream Config =================

    function changeStreamAdmin(IStream stream, address newAdmin) external;

    function pauseStream(IStream stream) external;
    function unpauseStream(IStream stream) external;

    function upgradeStreamImplementation(IStream stream, address newImplementation, bytes calldata initData) external;

    // ================= User Config =================

    function toggleOperatorForUser(address user, address operator) external;

    // ================= StreamFactory Config =================

    function setStreamImplementation(IStream newImplementation) external;

    function setCreateStreamVerifier(address createStreamVerifier) external;

    function setWithdrawFundsVerifier(address withdrawFundsVerifier) external;

    function setFeeCollector(address feeCollector) external;
}
