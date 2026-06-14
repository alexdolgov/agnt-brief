// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";

/// @notice Public view/write API of a deployed Seer Market (clone).
/// @dev Required by IRouter; extend as needed for resolve, metadata, etc.
interface IMarket {
    function marketName() external view returns (string memory);

    function outcomes(uint256 index) external view returns (string memory);

    function lowerBound() external view returns (uint256);

    function upperBound() external view returns (uint256);

    function templateId() external view returns (uint256);

    function questionsIds() external view returns (bytes32[] memory);

    function encodedQuestions(uint256 index) external view returns (string memory);

    function questionId() external view returns (bytes32);

    function conditionId() external view returns (bytes32);

    function parentCollectionId() external view returns (bytes32);

    function parentMarket() external view returns (address);

    function parentOutcome() external view returns (uint256);

    function wrappedOutcome(uint256 index) external view returns (IERC20 wrapped1155, bytes memory data);

    function parentWrappedOutcome() external view returns (IERC20 wrapped1155, bytes memory data);

    function numOutcomes() external view returns (uint256);

    function resolve() external;
}
