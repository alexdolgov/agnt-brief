// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";

/// @title IConditionalTokens
/// @notice Public API of Conditional Tokens Framework
interface IConditionalTokens {
    // --- Events (CTF core) ---

    /// @notice Emitted when a new condition is prepared for oracle reporting.
    event ConditionPreparation(
        bytes32 indexed conditionId, address indexed oracle, bytes32 indexed questionId, uint256 outcomeSlotCount
    );

    /// @notice Emitted when an oracle reports payout numerators for a condition.
    event ConditionResolution(
        bytes32 indexed conditionId,
        address indexed oracle,
        bytes32 indexed questionId,
        uint256 outcomeSlotCount,
        uint256[] payoutNumerators
    );

    /// @notice Emitted when collateral or parent positions are split into outcome tokens.
    event PositionSplit(
        address indexed stakeholder,
        IERC20 collateralToken,
        bytes32 indexed parentCollectionId,
        bytes32 indexed conditionId,
        uint256[] partition,
        uint256 amount
    );

    /// @notice Emitted when outcome tokens are merged back into collateral or parent positions.
    event PositionsMerge(
        address indexed stakeholder,
        IERC20 collateralToken,
        bytes32 indexed parentCollectionId,
        bytes32 indexed conditionId,
        uint256[] partition,
        uint256 amount
    );

    /// @notice Emitted when outcome tokens are redeemed for collateral after resolution.
    event PayoutRedemption(
        address indexed redeemer,
        IERC20 indexed collateralToken,
        bytes32 indexed parentCollectionId,
        bytes32 conditionId,
        uint256[] indexSets,
        uint256 payout
    );

    // --- Events (ERC1155) ---

    /// @notice Emitted on a single ERC1155 transfer.
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /// @notice Emitted on a batch ERC1155 transfer.
    event TransferBatch(
        address indexed operator, address indexed from, address indexed to, uint256[] ids, uint256[] values
    );

    /// @notice Emitted when an account approves an operator for all token ids.
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    // --- Condition lifecycle ---

    /// @notice Register a condition with `outcomeSlotCount` slots for `oracle` to resolve.
    function prepareCondition(address oracle, bytes32 questionId, uint256 outcomeSlotCount) external;

    /// @notice Report payout numerators for a prepared condition.
    function reportPayouts(bytes32 questionId, uint256[] calldata payouts) external;

    // --- Positions (ERC1155 outcome tokens) ---

    /// @notice Split `amount` of collateral or parent position into outcome tokens per `partition`.
    function splitPosition(
        IERC20 collateralToken,
        bytes32 parentCollectionId,
        bytes32 conditionId,
        uint256[] calldata partition,
        uint256 amount
    ) external;

    /// @notice Merge outcome tokens back into collateral or a parent position.
    function mergePositions(
        IERC20 collateralToken,
        bytes32 parentCollectionId,
        bytes32 conditionId,
        uint256[] calldata partition,
        uint256 amount
    ) external;

    /// @notice Redeem resolved outcome tokens for collateral.
    function redeemPositions(
        IERC20 collateralToken,
        bytes32 parentCollectionId,
        bytes32 conditionId,
        uint256[] calldata indexSets
    ) external;

    // --- Views / pure helpers ---

    /// @notice Payout numerator for outcome `index` after resolution; zero while unresolved or for losing slots.
    function payoutNumerators(bytes32 conditionId, uint256 index) external view returns (uint256);

    /// @notice Sum of payout numerators for `conditionId`; zero until resolved.
    function payoutDenominator(bytes32 conditionId) external view returns (uint256);

    /// @notice Number of outcome slots registered for `conditionId`.
    function getOutcomeSlotCount(bytes32 conditionId) external view returns (uint256);

    /// @notice Deterministic condition id from oracle, question, and slot count.
    function getConditionId(address oracle, bytes32 questionId, uint256 outcomeSlotCount)
        external
        pure
        returns (bytes32);

    /// @notice Collection id for a parent collection, condition, and index set.
    function getCollectionId(bytes32 parentCollectionId, bytes32 conditionId, uint256 indexSet)
        external
        view
        returns (bytes32);

    /// @notice ERC1155 position id for collateral in a collection.
    function getPositionId(IERC20 collateralToken, bytes32 collectionId) external pure returns (uint256);

    // --- ERC1155 (used by Seer Router when wrapping positions) ---

    /// @notice ERC1155 balance of `account` for position `id`.
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /// @notice Batch ERC1155 balances for parallel account/id arrays.
    function balanceOfBatch(address[] calldata accounts, uint256[] calldata ids)
        external
        view
        returns (uint256[] memory);

    /// @notice Approve or revoke `operator` for all ERC1155 ids on behalf of caller.
    function setApprovalForAll(address operator, bool approved) external;

    /// @notice Whether `operator` may transfer all ids on behalf of `account`.
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /// @notice Transfer `value` of ERC1155 position `id` from `from` to `to`.
    function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes calldata data) external;

    /// @notice Batch transfer multiple ERC1155 positions.
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external;
}
