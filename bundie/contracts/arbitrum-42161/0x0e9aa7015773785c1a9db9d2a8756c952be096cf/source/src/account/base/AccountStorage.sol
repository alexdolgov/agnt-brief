// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {EnumerableSet} from "lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";
import {Errors} from "../../lib/Errors.sol";
import {Types} from "../../lib/Types.sol";

/// @title AccountStorage
/// @author Bundie Team
/// @notice Base contract that defines all state variables for account contracts
/// @dev Abstract storage contract inherited by all account-related contracts that need
///      access to shared state. Uses inheritance pattern to ensure consistent storage layout.
///
///      ## Architecture
///      - Immutable variables: FACTORY and ROUTER_MANAGER set at construction
///      - User state: Owner address
///      - Position tracking: Active positions and pending operations
///      - Pending operations: Cross-chain deposits and withdrawals awaiting confirmation
///
///      ## Storage Layout
///      Care must be taken when modifying this contract to maintain storage compatibility
///      with existing deployed proxies. New variables should only be added at the end.
///
///      ## Inheritance
///      - AccountBase inherits this for core functionality
///      - Deposit inherits this for deposit operations
///      - Withdraw inherits this for withdrawal operations
///
/// @custom:invariant Position IDs are monotonically increasing and never reused (positionNonce++)
/// @custom:invariant Each share token maps to at most one position per account
/// @custom:invariant Pending GUIDs are unique across both pending deposits and withdrawals
/// @custom:invariant pendingWithdrawalCountByAssetToken accurately counts pending cross-chain withdrawals per token
/// @custom:trust FACTORY (AccountManager) is trusted for access control, whitelist, and validator queries
/// @custom:trust ROUTER_MANAGER is trusted for strategy-to-router resolution
abstract contract AccountStorage {
    using EnumerableSet for EnumerableSet.Bytes32Set;
    // ========================== Immutable Variables ==========================

    /// @notice Factory contract address (AccountManager)
    /// @dev Set at construction, immutable thereafter. Used for access control
    ///      and querying validator/whitelist state.
    address public immutable FACTORY;

    /// @notice Router manager contract address
    /// @dev Set at construction, immutable thereafter. Used to resolve
    ///      strategy-to-router mappings.
    address public immutable ROUTER_MANAGER;

    // ========================== State Variables ==========================

    /// @notice Address of the user who owns this account
    /// @dev Set during initialization. Only this address can perform user operations.
    address public user;

    /// @notice Array of user's positions across all strategies
    /// @dev Each position represents share tokens held for a specific strategy.
    Types.Position[] public positions;

    /// @notice Mapping of pending deposit operations by message GUID
    /// @dev Cross-chain deposits await validator confirmation before creating positions.
    mapping(bytes32 => Types.PendingDeposit) public pendingDeposits;

    /// @notice Mapping of pending withdrawal operations by message GUID
    /// @dev Cross-chain withdrawals await validator confirmation before updating positions.
    mapping(bytes32 => Types.PendingWithdrawal) public pendingWithdrawals;

    /// @notice Asset token associated with a pending withdrawal GUID (cached at initiation time)
    /// @dev Avoids relying on mutable strategy configuration during confirmation/refund handling.
    mapping(bytes32 => address) public pendingWithdrawalAssetToken;

    /// @notice Number of pending cross-chain withdrawals for a given asset token (per account)
    /// @dev Used to prevent the user from withdrawing the asset token before confirmations settle (fee charging / accounting).
    mapping(address => uint256) public pendingWithdrawalCountByAssetToken;

    /// @notice Unified set of pending operation GUIDs for enumeration
    /// @dev Tracks both deposits and withdrawals. Use pendingDeposits[guid]
    ///      or pendingWithdrawals[guid] to determine operation type.
    ///      EnumerableSet provides O(1) add/remove/contains.
    EnumerableSet.Bytes32Set internal _pendingOperationGuids;

    /// @notice Counter for generating unique position IDs
    /// @dev Monotonically increasing, never decremented. Ensures position IDs are stable
    ///      even when positions are removed via swap-and-pop.
    uint256 public positionNonce;

    // --- New state variables (appended after original layout, consuming gap slots) ---

    /// @notice Whether bridge fees were already paid with native ETH for a pending withdrawal
    /// @dev When true, skip ERC-20 bridge fee deduction on confirmation to avoid double-charging.
    mapping(bytes32 => bool) public pendingWithdrawalNativeFeesPaid;

    // ========================== Storage Gaps ==========================
    /// @dev Reserved storage gaps for future upgrades to avoid storage collisions.
    uint256[44] private __gap;

    // ========================== Constructor ==========================

    /// @notice Initialize immutable variables
    /// @dev Called by inheriting contracts. Sets FACTORY and ROUTER_MANAGER references.
    /// @param _routerManager Address of the RouterManager contract
    /// @param _factory Address of the AccountManager (factory) contract
    constructor(address _routerManager, address _factory) {
        FACTORY = _factory;
        ROUTER_MANAGER = _routerManager;
    }

    // ========================== External View Functions ==========================

    /// @notice Number of positions currently tracked by this account.
    /// @dev Convenience getter to avoid consumers relying on the auto-generated `positions(uint256)` getter.
    /// @return length Number of entries in `positions`
    function positionsLength() external view returns (uint256) {
        return positions.length;
    }

    /// @notice Number of pending operation GUIDs currently tracked by this account.
    /// @dev This counts BOTH pending deposits and pending withdrawals.
    /// @return length Number of entries in the pending operations set
    function pendingOperationsLength() external view returns (uint256) {
        return _pendingOperationGuids.length();
    }

    /// @notice Get the pending operation GUID at a given index.
    /// @param index Zero-based index into the set
    /// @return guid The GUID at that index
    function pendingOperationGuids(uint256 index) external view returns (bytes32) {
        return _pendingOperationGuids.at(index);
    }

    // ========================== Internal View Functions ==========================

    /// @notice Enforce that a pending operation GUID is unused across deposits/withdrawals and the enumeration set
    /// @dev Prevents overwriting existing pending structs and duplicate entries.
    ///      EnumerableSet.contains() provides O(1) lookup instead of linear scan.
    function _requireUnusedPendingGuid(bytes32 msgGuid) internal view {
        if (
            pendingDeposits[msgGuid].msgGuid != bytes32(0) || pendingWithdrawals[msgGuid].msgGuid != bytes32(0)
                || _pendingOperationGuids.contains(msgGuid)
        ) {
            revert Errors.PendingOperationAlreadyExists(msgGuid);
        }
    }
}
