// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";

/// @title IMarket
/// @notice Public view/write API of a deployed Seer Market (clone).
/// @dev Required by IRouter; extend as needed for resolve, metadata, etc.
interface IMarket {
    /// @notice Human-readable market title.
    function marketName() external view returns (string memory);

    /// @notice Label for outcome at `index` (excludes INVALID slot).
    function outcomes(uint256 index) external view returns (string memory);

    /// @notice Scalar lower bound; zero for categorical markets.
    function lowerBound() external view returns (uint256);

    /// @notice Scalar upper bound; zero for categorical markets.
    function upperBound() external view returns (uint256);

    /// @notice Seer template id used when this market was cloned.
    function templateId() external view returns (uint256);

    /// @notice Reality question ids associated with this market.
    function questionsIds() external view returns (bytes32[] memory);

    /// @notice Encoded Reality question text at `index`.
    function encodedQuestions(uint256 index) external view returns (string memory);

    /// @notice Conditional Tokens question id for this market.
    function questionId() external view returns (bytes32);

    /// @notice Conditional Tokens condition id for payout resolution.
    function conditionId() external view returns (bytes32);

    /// @notice Parent collection id for conditional (child) markets.
    function parentCollectionId() external view returns (bytes32);

    /// @notice Parent Seer market address for conditional markets; zero for root markets.
    function parentMarket() external view returns (address);

    /// @notice Parent outcome index used when splitting from a parent market.
    function parentOutcome() external view returns (uint256);

    /// @notice Wrapped ERC20 outcome token and auxiliary data for outcome `index`.
    function wrappedOutcome(uint256 index) external view returns (IERC20 wrapped1155, bytes memory data);

    /// @notice Wrapped parent outcome token for conditional markets.
    function parentWrappedOutcome() external view returns (IERC20 wrapped1155, bytes memory data);

    /// @notice Positionable outcome count (excludes INVALID). Equals outcome slot count minus one.
    function numOutcomes() external view returns (uint256);

    /// @notice Triggers on-chain resolution via Reality oracle reporting.
    function resolve() external;
}
