// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";

interface ITaxProcessor {
    function dispatch() external;
    function requiresMEVProtection() external view returns (bool);
}

interface IDividend {
    function distributeDividend(address[] calldata users) external returns (uint256 successCount);
}

interface IFlapTaxToken {
    function taxSplitter() external view returns (address);
}

interface ITaxSplitter {
    function split() external;
}

/// @title TaxDistributionHelper
/// @notice Helper contract for batch operations on TaxProcessor and Dividend contracts, and for triggering tax token split operations via TaxSplitter.
/// @dev Upgradeable via Transparent Proxy pattern. Supports permissioned (all processors) and permissionless (non-MEV-protected only) dispatch paths.
contract TaxDistributionHelper is Initializable, AccessControlUpgradeable {
    uint256 private constant MAX_CALL_GAS = 1_000_000;

    /// @notice Role required to call batchDispatch.
    bytes32 public constant DISPATCHER_ROLE = keccak256("DISPATCHER_ROLE");

    /// @notice Enum for batch operation types
    enum OperationType {
        BatchDispatch,
        BatchDistributeDividend,
        TriggerSplit,
        BatchDispatchPermissionless
    }

    /// @notice Cached MEV protection status for a tax processor.
    struct CachedMEVStatus {
        bool isCached;
        bool requiresMEVProtection;
    }

    /// @notice Emitted when dispatch is called on a TaxProcessor
    event FlapDispatchCalled(address indexed taxProcessor, bool success);

    /// @notice Emitted when distributeDividend is called on a Dividend contract
    event FlapDistributeDividendCalled(address indexed dividend, uint256 successCount);

    /// @notice Emitted when a tax token split is successfully triggered
    event FlapSplitTriggered(address indexed taxToken, address taxSplitter);

    /// @notice Emitted when a tax token split attempt fails
    event FlapSplitFailed(address indexed taxToken, string reason);

    /// @notice Emitted when a batch operation is called, recording the caller
    event FlapBatchOperationCalled(address caller, OperationType operationType);

    /// @notice Emitted when the MEV protection cache is populated for a processor
    event FlapMEVProtectionCached(address indexed taxProcessor, bool requiresMEVProtection);

    /// @notice Struct to store function call information
    struct CallInfo {
        address caller;
        uint64 timestamp;
    }

    /// @notice Mapping to store the latest call info for each function
    /// @dev Key: OperationType enum value
    mapping(OperationType => CallInfo) public latestCallInfo;

    /// @notice On-chain MEV protection cache for tax processors.
    mapping(address => CachedMEVStatus) private _mevProtectionCache;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the TaxDistributionHelper.
    /// @param admin_ The initial DEFAULT_ADMIN_ROLE holder (also granted DISPATCHER_ROLE).
    function initialize(address admin_) external initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, admin_);
        _grantRole(DISPATCHER_ROLE, admin_);
    }

    function version() external pure returns (string memory) {
        return "0.2.0";
    }

    // ---------------------------------------------------------------------------
    // Role management
    // ---------------------------------------------------------------------------

    /// @notice Grant or revoke the DISPATCHER_ROLE for an address.
    /// @param dispatcher The address to manage.
    /// @param enabled Whether to grant (true) or revoke (false) the role.
    function setDispatcher(address dispatcher, bool enabled) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (enabled) {
            _grantRole(DISPATCHER_ROLE, dispatcher);
        } else {
            _revokeRole(DISPATCHER_ROLE, dispatcher);
        }
    }

    // ---------------------------------------------------------------------------
    // MEV protection cache
    // ---------------------------------------------------------------------------

    /// @notice Check and cache whether a tax processor requires MEV protection.
    /// @dev If already cached, returns the cached value immediately.
    ///      If not cached, calls `requiresMEVProtection()` on the processor inside a try/catch.
    ///      On revert (e.g., legacy processor without the method), assumes MEV protection is NOT required.
    /// @param taxProcessor The tax processor address to check.
    /// @return requiresMEVProtection_ Whether the processor requires MEV protection.
    function checkAndCacheMEVProtection(address taxProcessor) external returns (bool requiresMEVProtection_) {
        return _requiresMEVProtectionCached(taxProcessor);
    }

    /// @notice Returns whether the MEV protection status for a processor has been cached.
    function isMEVProtectionCached(address taxProcessor) external view returns (bool) {
        return _mevProtectionCache[taxProcessor].isCached;
    }

    /// @notice Returns the cached MEV protection status for a processor.
    /// @dev Reverts if the status has not been cached yet; call isMEVProtectionCached first.
    function getCachedMEVProtection(address taxProcessor) external view returns (bool) {
        CachedMEVStatus storage cached = _mevProtectionCache[taxProcessor];
        require(cached.isCached, "TaxDistributionHelper: MEV protection not cached");
        return cached.requiresMEVProtection;
    }

    // ---------------------------------------------------------------------------
    // Dispatch functions
    // ---------------------------------------------------------------------------

    /// @notice Role-gated batch dispatch for all processors (MEV-protected and non-MEV-protected).
    /// @dev Must be called via a MEV-protected RPC to prevent sandwich attacks on processors
    ///      that require MEV protection. Dispatches every processor in the array regardless of
    ///      MEV protection status.
    /// @param taxProcessors Array of TaxProcessor contract addresses
    /// @return successCount Number of successful dispatch calls
    function batchDispatch(address[] calldata taxProcessors)
        external
        onlyRole(DISPATCHER_ROLE)
        returns (uint256 successCount)
    {
        successCount = 0;
        for (uint256 i = 0; i < taxProcessors.length; i++) {
            address processor = taxProcessors[i];

            try ITaxProcessor(processor).dispatch{gas: MAX_CALL_GAS}() {
                emit FlapDispatchCalled(processor, true);
                successCount++;
            } catch {
                emit FlapDispatchCalled(processor, false);
            }
        }
        latestCallInfo[OperationType.BatchDispatch] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.BatchDispatch);
        return successCount;
    }

    /// @notice Permissionless batch dispatch. Skips processors that require MEV protection.
    /// @dev Caches MEV protection status on first encounter. If not cached, resolves on-chain.
    ///      Safe to call from any RPC since MEV-protected processors (which may execute swaps)
    ///      are automatically skipped.
    /// @param taxProcessors Array of TaxProcessor contract addresses
    /// @return successCount Number of successful dispatch calls
    function batchDispatchPermissionless(address[] calldata taxProcessors) external returns (uint256 successCount) {
        successCount = 0;
        for (uint256 i = 0; i < taxProcessors.length; i++) {
            address processor = taxProcessors[i];

            // Skip MEV-protected processors in the permissionless path
            if (_requiresMEVProtectionCached(processor)) {
                continue;
            }

            try ITaxProcessor(processor).dispatch{gas: MAX_CALL_GAS}() {
                emit FlapDispatchCalled(processor, true);
                successCount++;
            } catch {
                emit FlapDispatchCalled(processor, false);
            }
        }
        latestCallInfo[OperationType.BatchDispatchPermissionless] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.BatchDispatchPermissionless);
        return successCount;
    }

    /// @notice Batch call distributeDividend on multiple Dividend contracts
    /// @param dividends Array of Dividend contract addresses
    /// @param usersList Array of user address arrays (one for each Dividend contract)
    /// @return successCounts Array of success counts for each Dividend contract
    function batchDistributeDividend(address[] calldata dividends, address[][] calldata usersList)
        external
        returns (uint256[] memory successCounts)
    {
        require(dividends.length == usersList.length, "TaxDistributionHelper: length mismatch");

        successCounts = new uint256[](dividends.length);

        for (uint256 i = 0; i < dividends.length; i++) {
            try IDividend(dividends[i]).distributeDividend(usersList[i]) returns (uint256 count) {
                successCounts[i] = count;
                emit FlapDistributeDividendCalled(dividends[i], count);
            } catch {
                successCounts[i] = 0;
                emit FlapDistributeDividendCalled(dividends[i], 0);
            }
        }

        latestCallInfo[OperationType.BatchDistributeDividend] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.BatchDistributeDividend);
        return successCounts;
    }

    /// @notice Triggers the split function on the tax splitters of the provided tax tokens
    /// @param taxTokens Array of tax token addresses to trigger splits for
    /// @dev This function attempts to call the split method on each tax token's splitter
    /// @dev Reverts are ignored - if any tax token fails, others will still be processed
    function triggerSplit(address[] calldata taxTokens) external {
        for (uint256 i = 0; i < taxTokens.length; i++) {
            try this._triggerSingleSplit(taxTokens[i]) {
                // Success - emit success event
                address taxSplitterAddress = IFlapTaxToken(taxTokens[i]).taxSplitter();
                emit FlapSplitTriggered(taxTokens[i], taxSplitterAddress);
            } catch Error(string memory reason) {
                // Emit failure event with reason
                emit FlapSplitFailed(taxTokens[i], reason);
            } catch (bytes memory) {
                // Emit failure event with generic message for low-level failures
                emit FlapSplitFailed(taxTokens[i], "Low-level call failed");
            }
        }
        latestCallInfo[OperationType.TriggerSplit] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.TriggerSplit);
    }

    /// @notice Internal function to trigger split for a single tax token
    /// @param taxToken Address of the tax token
    /// @dev This is an external function that's called via try/catch to isolate failures
    function _triggerSingleSplit(address taxToken) external {
        // Get the tax splitter address from the tax token
        address taxSplitterAddress = IFlapTaxToken(taxToken).taxSplitter();

        // Call the split method on the tax splitter
        ITaxSplitter(payable(taxSplitterAddress)).split{gas: MAX_CALL_GAS}();
    }

    // ---------------------------------------------------------------------------
    // Internal helpers
    // ---------------------------------------------------------------------------

    /// @dev Returns whether a processor requires MEV protection, caching the result on first call.
    function _requiresMEVProtectionCached(address processor) internal returns (bool) {
        CachedMEVStatus storage cached = _mevProtectionCache[processor];
        if (cached.isCached) {
            return cached.requiresMEVProtection;
        }
        return _resolveAndCacheMEVProtection(processor);
    }

    /// @dev Resolve MEV protection status via a try/catch call and cache it.
    ///      On revert (legacy processor without the method), assumes MEV protection is NOT required.
    function _resolveAndCacheMEVProtection(address processor) internal returns (bool result) {
        try ITaxProcessor(processor).requiresMEVProtection() returns (bool r) {
            result = r;
        } catch {
            result = false; // legacy/unknown processors without the method: assume no MEV protection needed
        }
        _mevProtectionCache[processor] = CachedMEVStatus({isCached: true, requiresMEVProtection: result});
        emit FlapMEVProtectionCached(processor, result);
    }
}
