// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {BoxVault} from "./BoxVault.sol";

/// @title BridgeManager
/// @author BTCD
/// @notice Cross-chain bridge state machine. Deployed once per chain.
/// Tracks outgoing bridge transfers by asset+chain and sleeve, enables
/// operator-gated execution and sweep/refund/clear operations.
///
/// Lifecycle:
///  1. Owner calls addChain() to register a destination chain (deploys inbox + refundBox).
///  2. Operator calls execute() — tokens are transferred to the refund box, which
///     then executes the bridge provider calls (msg.sender = refundBox, so provider
///     refunds go to the correct vault). Any unconsumed dust is swept back to sender.
///  3. On the destination chain, funds arrive in the inbox BoxVault.
///  4. Operator calls sweepInboxByTxId(txId, originChainID, token, dest) to forward
///     funds from the origin chain's inbox and mark the tx as completed.
///  5. If bridge fails, operator calls sweepRefundBoxByTxId() to recover from the
///     refund box and clear pending state.
///  6. Owner can manually sweep via sweepInbox()/sweepRefundBox() for admin recovery
///     (no state cleanup — use clearPending() separately if needed).
contract BridgeManager is Ownable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using Address for address;

    // ═══════════════════════════════════ Structs ═══════════════════════════════════

    /// @notice Origin-chain parameters for a bridge transfer.
    struct Origin {
        address from;
        address asset;
        uint256 chainId;
        uint256 amount;
    }

    /// @notice Destination-chain parameters for a bridge transfer.
    struct Destination {
        address to;
        uint256 chainId;
        address asset;
        uint256 amount;
    }

    /// @notice Full parameters for a bridge transfer request.
    struct TxParams {
        bytes32 id;
        bytes32 sleeveId;
        Origin origin;
        Destination destination;
    }

    /// @notice Stored transaction info including creation timestamp.
    struct TxInfo {
        TxParams params;
        uint256 createdAt;
    }

    /// @notice A single call used in execution bundles and multicall.
    struct Call {
        address target;
        bytes data;
        uint256 value;
    }

    /// @notice Result of a batch sleeve pending query.
    struct SleevePendingResult {
        bytes32 sleeveId;
        TxInfo[] txInfos;
        bool found;
    }

    // ═══════════════════════════════════ State ═════════════════════════════════════

    // --- Access control ---
    /// @notice Addresses authorized to call operator-gated functions.
    EnumerableSet.AddressSet private _operators;
    /// @notice Approved call targets for execute() bundles (e.g., bridge providers).
    EnumerableSet.AddressSet private _whitelistTargets;
    /// @notice Approved sweep destinations for sweepInboxByTxId/sweepRefundBoxByTxId.
    EnumerableSet.AddressSet private _whitelistDestinations;
    /// @notice Approved bridgeable token addresses.
    EnumerableSet.AddressSet private _whitelistAssets;
    /// @notice Maximum bridge amount per asset per transaction.
    mapping(address asset => uint256 maxAmount) private _maxBridgeAmountPerAsset;

    // --- Chain infrastructure ---
    /// @notice Set of registered destination chain IDs.
    EnumerableSet.UintSet private _supportedChains;
    /// @notice Inbox BoxVault for each destination chain.
    mapping(uint256 chainId => BoxVault) private _inboxes;
    /// @notice Refund BoxVault for each origin chain.
    mapping(uint256 chainId => BoxVault) private _refundBoxes;

    // --- Transaction tracking ---
    /// @notice Stored transaction info keyed by tx ID.
    mapping(bytes32 txId => TxInfo) private _transactions;
    /// @notice Whether a tx has been completed on the origin chain.
    mapping(bytes32 txId => bool) private _completedTxs;
    /// @notice Set of asset+chain composite keys that have had pending txs.
    EnumerableSet.Bytes32Set private _assetChainIds;
    /// @notice Maps asset+chain composite key to the pending tx ID.
    mapping(bytes32 assetChainId => bytes32 txId) private _pendingTxPerAssetAndChain;
    /// @notice Pending tx IDs per sleeve, for batch queries.
    mapping(bytes32 sleeveId => EnumerableSet.Bytes32Set) private _pendingTxsPerSleeve;

    // ═══════════════════════════════════ Events ════════════════════════════════════

    event ChainAdded(uint256 indexed chainId, address inbox, address refundBox);
    event ChainRemoved(uint256 indexed chainId);
    event BridgeExecuted(bytes32 indexed txId, bytes32 indexed sleeveId, TxParams params);
    event BridgeCompleted(bytes32 indexed txId, address token, address destination, uint256 timestamp);
    event BridgeRefunded(bytes32 indexed txId, address token, address destination, uint256 timestamp);
    event PendingCleared(bytes32 indexed txId);
    event OperatorAdded(address indexed operator);
    event OperatorRemoved(address indexed operator);
    event WhitelistTargetAdded(address indexed target);
    event WhitelistTargetRemoved(address indexed target);
    event WhitelistDestinationAdded(address indexed destination);
    event WhitelistDestinationRemoved(address indexed destination);
    event WhitelistAssetAdded(address indexed asset, uint256 maxAmount);
    event WhitelistAssetRemoved(address indexed asset);
    event MaxBridgeAmountUpdated(address indexed asset, uint256 maxAmount);

    // ═══════════════════════════════════ Errors ════════════════════════════════════

    error ZeroAddress();
    error ChainAlreadySupported(uint256 chainId);
    error ChainNotSupported(uint256 chainId);
    error TxIdAlreadyExists(bytes32 txId);
    error TxIdNotFound(bytes32 txId);
    error PendingTxExists(bytes32 assetChainId, bytes32 existingTxId);
    error TargetNotWhitelisted(address target);
    error DestinationNotWhitelisted(address destination);
    error AssetNotWhitelisted(address asset);
    error AmountExceedsMax(address asset, uint256 amount, uint256 maxAmount);
    error NotOperator(address caller);
    error AlreadyOperator(address addr);
    error NotInOperators(address addr);
    error AlreadyWhitelisted(address addr);
    error NotInWhitelist(address addr);
    error ZeroAmount();
    error InvalidOriginChainId(uint256 expected, uint256 actual);
    error DelegatecallFailed();

    // ═══════════════════════════════════ Modifiers ═════════════════════════════════

    modifier onlyOperator() {
        require(_operators.contains(msg.sender), NotOperator(msg.sender));
        _;
    }

    // ═══════════════════════════════════ Constructor ═══════════════════════════════

    /// @notice Creates a BridgeManager. The owner is also added as the initial operator.
    /// @param owner_ The owner of this contract.
    constructor(address owner_) Ownable(owner_) {
        _operators.add(owner_);
    }

    /// @notice Accept native token deposits.
    receive() external payable {}

    // ═══════════════════════════════ External Functions ════════════════════════════

    /// @notice Register a new destination chain. Deploys inbox and refundBox BoxVaults.
    /// @param chainId The chain ID to register.
    function addChain(uint256 chainId) external onlyOwner {
        require(!_supportedChains.contains(chainId), ChainAlreadySupported(chainId));

        BoxVault inbox = new BoxVault(address(this));
        BoxVault refundBox = new BoxVault(address(this));

        _supportedChains.add(chainId);
        _inboxes[chainId] = inbox;
        _refundBoxes[chainId] = refundBox;

        emit ChainAdded(chainId, address(inbox), address(refundBox));
    }

    /// @notice Remove a destination chain. Sweeps all whitelisted assets from
    /// both inbox and refundBox back to the destination address, then clears references.
    /// @param chainId The chain ID to remove.
    /// @param destination The address to receive swept funds.
    function removeChain(uint256 chainId, address destination) external onlyOwner {
        require(_supportedChains.contains(chainId), ChainNotSupported(chainId));
        require(destination != address(0), ZeroAddress());

        BoxVault inbox = _inboxes[chainId];
        BoxVault refundBox = _refundBoxes[chainId];
        address[] memory assets = _whitelistAssets.values();

        for (uint256 i = 0; i < assets.length; i++) {
            uint256 inboxBal = IERC20(assets[i]).balanceOf(address(inbox));
            if (inboxBal > 0) {
                inbox.sweepERC20(assets[i], destination);
            }
            uint256 refundBal = IERC20(assets[i]).balanceOf(address(refundBox));
            if (refundBal > 0) {
                refundBox.sweepERC20(assets[i], destination);
            }
        }

        _supportedChains.remove(chainId);
        delete _inboxes[chainId];
        delete _refundBoxes[chainId];

        emit ChainRemoved(chainId);
    }

    /// @notice Initiate a bridge transfer. Transfers tokens to the refund box,
    /// then the refund box executes the bridge provider calls. This ensures
    /// msg.sender for the bridge deposit is the refund box — so provider-level
    /// refunds (based on msg.sender) go directly to the correct vault.
    /// @param params The transfer parameters (must have unique id, includes sleeveId).
    /// @param bundle The calls to execute from the refund box (e.g., approve + deposit).
    function execute(TxParams calldata params, Call[] calldata bundle) external onlyOperator {
        bytes32 assetChainId = _validateExecute(params);

        BoxVault refundBox = _refundBoxes[params.destination.chainId];
        require(address(refundBox) != address(0), ChainNotSupported(params.destination.chainId));

        for (uint256 i = 0; i < bundle.length; i++) {
            require(_whitelistTargets.contains(bundle[i].target), TargetNotWhitelisted(bundle[i].target));
        }

        // Transfer tokens to refund box before it executes the bridge calls.
        IERC20(params.origin.asset).safeTransfer(address(refundBox), params.origin.amount);

        // Refund box executes the bundle (msg.sender = refundBox for all calls).
        refundBox.execute(bundle);

        // Sweep any remaining token balance back to the sender. The bridge provider
        // may not consume the full amount (e.g., rounding), so we return the dust.
        uint256 remaining = IERC20(params.origin.asset).balanceOf(address(refundBox));
        if (remaining > 0) {
            refundBox.sweepERC20(params.origin.asset, params.origin.from);
        }

        _transactions[params.id] = TxInfo({params: params, createdAt: block.timestamp});
        _pendingTxPerAssetAndChain[assetChainId] = params.id;
        _pendingTxsPerSleeve[params.sleeveId].add(params.id);
        if (!_assetChainIds.contains(assetChainId)) {
            _assetChainIds.add(assetChainId);
        }

        emit BridgeExecuted(params.id, params.sleeveId, params);
    }

    /// @notice Sweep inbox funds by tx id. Marks the tx as completed.
    /// @param txId The transaction to complete.
    /// @param originChainID The origin chain whose inbox to sweep from.
    /// @param token The ERC-20 token to sweep.
    /// @param destination The whitelisted address to receive the tokens.
    function sweepInboxByTxId(bytes32 txId, uint256 originChainID, address token, address destination)
        external
        onlyOperator
    {
        require(_whitelistDestinations.contains(destination), DestinationNotWhitelisted(destination));

        BoxVault inbox = _inboxes[originChainID];
        require(address(inbox) != address(0), ChainNotSupported(originChainID));

        inbox.sweepERC20(token, destination);
        _completedTxs[txId] = true;

        emit BridgeCompleted(txId, token, destination, block.timestamp);
    }

    /// @notice Sweep refund box by tx id. Clears pending state.
    /// @param txId The transaction to refund.
    /// @param token The ERC-20 token to sweep.
    /// @param destination The whitelisted address to receive the refund.
    function sweepRefundBoxByTxId(bytes32 txId, address token, address destination) external onlyOperator {
        require(_whitelistDestinations.contains(destination), DestinationNotWhitelisted(destination));

        TxInfo storage info = _transactions[txId];
        require(info.createdAt != 0, TxIdNotFound(txId));

        uint256 originChainId = info.params.origin.chainId;
        BoxVault refundBox = _refundBoxes[originChainId];
        require(address(refundBox) != address(0), ChainNotSupported(originChainId));

        refundBox.sweepERC20(token, destination);
        _clearPendingInternal(txId);

        emit BridgeRefunded(txId, token, destination, block.timestamp);
    }

    /// @notice Admin-only manual inbox sweep without state cleanup.
    /// @param originChainId The origin chain whose inbox to sweep.
    /// @param token The ERC-20 token to sweep.
    /// @param destination The address to receive the tokens.
    function sweepInbox(uint256 originChainId, address token, address destination) external onlyOwner {
        require(address(_inboxes[originChainId]) != address(0), ChainNotSupported(originChainId));
        _inboxes[originChainId].sweepERC20(token, destination);
    }

    /// @notice Admin-only manual refund box sweep without state cleanup.
    /// @param chainId The origin chain whose refund box to sweep.
    /// @param token The ERC-20 token to sweep.
    /// @param destination The address to receive the tokens.
    function sweepRefundBox(uint256 chainId, address token, address destination) external onlyOwner {
        require(address(_refundBoxes[chainId]) != address(0), ChainNotSupported(chainId));
        _refundBoxes[chainId].sweepERC20(token, destination);
    }

    /// @notice Clear pending state for a tx. Does not move funds.
    /// @param txId The transaction to clear.
    function clearPending(bytes32 txId) external onlyOperator {
        _clearPendingInternal(txId);
        emit PendingCleared(txId);
    }

    /// @notice Add a target to the call whitelist.
    /// @param target The address to whitelist.
    function addWhitelistTarget(address target) external onlyOwner {
        require(target != address(0), ZeroAddress());
        require(_whitelistTargets.add(target), AlreadyWhitelisted(target));
        emit WhitelistTargetAdded(target);
    }

    /// @notice Remove a target from the call whitelist.
    /// @param target The address to remove.
    function removeWhitelistTarget(address target) external onlyOwner {
        require(_whitelistTargets.remove(target), NotInWhitelist(target));
        emit WhitelistTargetRemoved(target);
    }

    /// @notice Add a destination to the sweep whitelist.
    /// @param destination The address to whitelist.
    function addWhitelistDestination(address destination) external onlyOwner {
        require(destination != address(0), ZeroAddress());
        require(_whitelistDestinations.add(destination), AlreadyWhitelisted(destination));
        emit WhitelistDestinationAdded(destination);
    }

    /// @notice Remove a destination from the sweep whitelist.
    /// @param destination The address to remove.
    function removeWhitelistDestination(address destination) external onlyOwner {
        require(_whitelistDestinations.remove(destination), NotInWhitelist(destination));
        emit WhitelistDestinationRemoved(destination);
    }

    /// @notice Add an asset to the bridge whitelist with a max amount cap.
    /// @param asset The token address to whitelist.
    /// @param maxAmount The maximum amount per bridge transaction (0 = unlimited).
    function addWhitelistAsset(address asset, uint256 maxAmount) external onlyOwner {
        require(asset != address(0), ZeroAddress());
        require(_whitelistAssets.add(asset), AlreadyWhitelisted(asset));
        _maxBridgeAmountPerAsset[asset] = maxAmount;
        emit WhitelistAssetAdded(asset, maxAmount);
    }

    /// @notice Remove an asset from the bridge whitelist.
    /// @param asset The token address to remove.
    function removeWhitelistAsset(address asset) external onlyOwner {
        require(_whitelistAssets.remove(asset), NotInWhitelist(asset));
        delete _maxBridgeAmountPerAsset[asset];
        emit WhitelistAssetRemoved(asset);
    }

    /// @notice Update the maximum bridge amount for a whitelisted asset.
    /// @param asset The token address.
    /// @param maxAmount The new maximum amount (0 = unlimited).
    function setMaxBridgeAmount(address asset, uint256 maxAmount) external onlyOwner {
        require(_whitelistAssets.contains(asset), AssetNotWhitelisted(asset));
        _maxBridgeAmountPerAsset[asset] = maxAmount;
        emit MaxBridgeAmountUpdated(asset, maxAmount);
    }

    /// @notice Add an operator.
    /// @param operator The address to add.
    function addOperator(address operator) external onlyOwner {
        require(operator != address(0), ZeroAddress());
        require(_operators.add(operator), AlreadyOperator(operator));
        emit OperatorAdded(operator);
    }

    /// @notice Remove an operator.
    /// @param operator The address to remove.
    function removeOperator(address operator) external onlyOwner {
        require(_operators.remove(operator), NotInOperators(operator));
        emit OperatorRemoved(operator);
    }

    /// @notice Owner-only batch call for administrative operations.
    /// @param calls The array of calls to execute.
    function multicall(Call[] calldata calls) external onlyOwner {
        for (uint256 i = 0; i < calls.length; i++) {
            calls[i].target.functionCallWithValue(calls[i].data, calls[i].value);
        }
    }

    /// @notice Execute a delegatecall to extend contract functionality.
    /// @dev CAUTION: target code runs in BridgeManager's storage context.
    /// Only use with trusted, owner-deployed implementation contracts.
    /// @param target The contract whose code to execute.
    /// @param data The calldata to send.
    /// @return result The return data from the delegatecall.
    function delegateCall(address target, bytes calldata data) external onlyOwner returns (bytes memory result) {
        require(target != address(0), ZeroAddress());
        (bool success, bytes memory res) = target.delegatecall(data);
        require(success, DelegatecallFailed());
        result = res;
    }

    // ═══════════════════════════════ External View Functions ═══════════════════════

    /// @notice Execute multiple static calls for read-only operations.
    /// @param calls The array of calls to execute as staticcall.
    /// @return results The array of return data from each call.
    function multiCallView(Call[] calldata calls) external view returns (bytes[] memory results) {
        results = new bytes[](calls.length);
        for (uint256 i = 0; i < calls.length; i++) {
            results[i] = calls[i].target.functionStaticCall(calls[i].data);
        }
    }

    /// @notice Get pending tx info for a single sleeve.
    /// @param sleeveId The sleeve identifier.
    /// @return An array of TxInfo for the sleeve's pending transactions.
    function getSleevePendingTxs(bytes32 sleeveId) external view returns (TxInfo[] memory) {
        EnumerableSet.Bytes32Set storage txIds = _pendingTxsPerSleeve[sleeveId];
        uint256 length = txIds.length();
        TxInfo[] memory result = new TxInfo[](length);
        for (uint256 i = 0; i < length; i++) {
            result[i] = _transactions[txIds.at(i)];
        }
        return result;
    }

    /// @notice Batch query pending txs for multiple sleeves.
    /// @param sleeveIds The array of sleeve identifiers to query.
    /// @return An array of SleevePendingResult, one per sleeve.
    function getSleevePendingTxsBatch(bytes32[] calldata sleeveIds)
        external
        view
        returns (SleevePendingResult[] memory)
    {
        SleevePendingResult[] memory results = new SleevePendingResult[](sleeveIds.length);
        for (uint256 i = 0; i < sleeveIds.length; i++) {
            EnumerableSet.Bytes32Set storage txIds = _pendingTxsPerSleeve[sleeveIds[i]];
            uint256 length = txIds.length();
            results[i].sleeveId = sleeveIds[i];
            results[i].found = length > 0;
            results[i].txInfos = new TxInfo[](length);
            for (uint256 j = 0; j < length; j++) {
                results[i].txInfos[j] = _transactions[txIds.at(j)];
            }
        }
        return results;
    }

    /// @notice Get tx info by id.
    /// @param txId The transaction identifier.
    /// @return The stored TxInfo.
    function getTxInfo(bytes32 txId) external view returns (TxInfo memory) {
        return _transactions[txId];
    }

    /// @notice Batch get tx info by ids.
    /// @param txIds The array of transaction identifiers.
    /// @return An array of TxInfo.
    function getTxInfoBatch(bytes32[] calldata txIds) external view returns (TxInfo[] memory) {
        TxInfo[] memory result = new TxInfo[](txIds.length);
        for (uint256 i = 0; i < txIds.length; i++) {
            result[i] = _transactions[txIds[i]];
        }
        return result;
    }

    /// @notice Get all pending tx ids across all assets and chains.
    /// @return An array of pending transaction identifiers.
    function getAllPendingTxIds() external view returns (bytes32[] memory) {
        uint256 count = 0;
        uint256 assetCount = _assetChainIds.length();

        for (uint256 i = 0; i < assetCount; i++) {
            bytes32 assetChainId = _assetChainIds.at(i);
            if (_pendingTxPerAssetAndChain[assetChainId] != bytes32(0)) {
                count++;
            }
        }

        bytes32[] memory result = new bytes32[](count);
        uint256 idx = 0;
        for (uint256 i = 0; i < assetCount; i++) {
            bytes32 assetChainId = _assetChainIds.at(i);
            bytes32 txId = _pendingTxPerAssetAndChain[assetChainId];
            if (txId != bytes32(0)) {
                result[idx++] = txId;
            }
        }
        return result;
    }

    /// @notice Get all pending tx info across all assets and chains.
    /// @return An array of TxInfo for all pending transactions.
    function getAllPendingTxInfo() external view returns (TxInfo[] memory) {
        uint256 assetCount = _assetChainIds.length();

        uint256 count = 0;
        for (uint256 i = 0; i < assetCount; i++) {
            if (_pendingTxPerAssetAndChain[_assetChainIds.at(i)] != bytes32(0)) {
                count++;
            }
        }

        TxInfo[] memory result = new TxInfo[](count);
        uint256 idx = 0;
        for (uint256 i = 0; i < assetCount; i++) {
            bytes32 txId = _pendingTxPerAssetAndChain[_assetChainIds.at(i)];
            if (txId != bytes32(0)) {
                result[idx++] = _transactions[txId];
            }
        }
        return result;
    }

    /// @notice Check if a tx id exists.
    /// @param txId The transaction identifier.
    /// @return True if the tx exists.
    function txExists(bytes32 txId) external view returns (bool) {
        return _transactions[txId].createdAt != 0;
    }

    /// @notice Get all registered operators.
    /// @return An array of operator addresses.
    function getOperators() external view returns (address[] memory) {
        return _operators.values();
    }

    /// @notice Get all whitelisted call targets.
    /// @return An array of target addresses.
    function getWhitelistTargets() external view returns (address[] memory) {
        return _whitelistTargets.values();
    }

    /// @notice Get all whitelisted sweep destinations.
    /// @return An array of destination addresses.
    function getWhitelistDestinations() external view returns (address[] memory) {
        return _whitelistDestinations.values();
    }

    /// @notice Get all whitelisted bridgeable assets.
    /// @return An array of asset addresses.
    function getWhitelistAssets() external view returns (address[] memory) {
        return _whitelistAssets.values();
    }

    /// @notice Get all supported destination chain IDs.
    /// @return An array of chain IDs.
    function getSupportedChains() external view returns (uint256[] memory) {
        return _supportedChains.values();
    }

    /// @notice Get the maximum bridge amount for an asset.
    /// @param asset The token address.
    /// @return The max amount (0 = unlimited).
    function getMaxBridgeAmount(address asset) external view returns (uint256) {
        return _maxBridgeAmountPerAsset[asset];
    }

    /// @notice Get the pending tx ID for an asset+chain combination.
    /// @param assetChainId The composite key (keccak256(asset, chainId)).
    /// @return The pending tx ID, or bytes32(0) if none.
    function getPendingTxForAssetChain(bytes32 assetChainId) external view returns (bytes32) {
        return _pendingTxPerAssetAndChain[assetChainId];
    }

    /// @notice Check if a tx has been completed.
    /// @param txId The transaction identifier.
    /// @return True if the tx is marked completed.
    function isCompleted(bytes32 txId) external view returns (bool) {
        return _completedTxs[txId];
    }

    /// @notice Batch check completion status for multiple tx ids.
    /// @param txIds The array of transaction identifiers.
    /// @return An array of booleans, true if the tx is completed.
    function isCompletedBatch(bytes32[] calldata txIds) external view returns (bool[] memory) {
        bool[] memory result = new bool[](txIds.length);
        for (uint256 i = 0; i < txIds.length; i++) {
            result[i] = _completedTxs[txIds[i]];
        }
        return result;
    }

    /// @notice Get the inbox BoxVault for a chain.
    /// @param chainId The destination chain ID.
    /// @return The inbox BoxVault address.
    function getInbox(uint256 chainId) external view returns (BoxVault) {
        return _inboxes[chainId];
    }

    /// @notice Get the refund BoxVault for a chain.
    /// @param chainId The origin chain ID.
    /// @return The refund BoxVault address.
    function getRefundBox(uint256 chainId) external view returns (BoxVault) {
        return _refundBoxes[chainId];
    }

    /// @notice Get all inboxes and refund boxes for all supported chains in one call.
    /// @return chainIds The array of supported chain IDs.
    /// @return inboxes The array of inbox BoxVault addresses (same order as chainIds).
    /// @return refundBoxes The array of refund BoxVault addresses (same order as chainIds).
    function getAllBoxes()
        external
        view
        returns (uint256[] memory chainIds, address[] memory inboxes, address[] memory refundBoxes)
    {
        chainIds = _supportedChains.values();
        uint256 length = chainIds.length;
        inboxes = new address[](length);
        refundBoxes = new address[](length);
        for (uint256 i = 0; i < length; i++) {
            inboxes[i] = address(_inboxes[chainIds[i]]);
            refundBoxes[i] = address(_refundBoxes[chainIds[i]]);
        }
    }

    // ═══════════════════════════════ Internal Functions ════════════════════════════

    function _clearPendingInternal(bytes32 txId) internal {
        TxInfo storage info = _transactions[txId];
        require(info.createdAt != 0, TxIdNotFound(txId));

        bytes32 assetChainId = _computeAssetChainId(info.params.origin.asset, info.params.destination.chainId);
        delete _pendingTxPerAssetAndChain[assetChainId];
        _pendingTxsPerSleeve[info.params.sleeveId].remove(txId);
        _completedTxs[txId] = true;
    }

    // ═══════════════════════════════ Internal View Functions ══════════════════════

    function _validateExecute(TxParams calldata params) internal view returns (bytes32 assetChainId) {
        require(params.origin.from != address(0), ZeroAddress());
        require(params.destination.to != address(0), ZeroAddress());
        require(params.origin.chainId == block.chainid, InvalidOriginChainId(block.chainid, params.origin.chainId));
        require(params.origin.amount > 0, ZeroAmount());
        require(_transactions[params.id].createdAt == 0, TxIdAlreadyExists(params.id));
        require(_whitelistAssets.contains(params.origin.asset), AssetNotWhitelisted(params.origin.asset));
        require(_supportedChains.contains(params.destination.chainId), ChainNotSupported(params.destination.chainId));

        uint256 maxAmount = _maxBridgeAmountPerAsset[params.origin.asset];
        require(
            maxAmount == 0 || params.origin.amount <= maxAmount,
            AmountExceedsMax(params.origin.asset, params.origin.amount, maxAmount)
        );

        assetChainId = _computeAssetChainId(params.origin.asset, params.destination.chainId);
        bytes32 existingTxId = _pendingTxPerAssetAndChain[assetChainId];
        require(existingTxId == bytes32(0), PendingTxExists(assetChainId, existingTxId));
    }

    // ═══════════════════════════════ Internal Pure Functions ═════════════════════

    function _computeAssetChainId(address asset, uint256 chainId) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(asset, chainId));
    }
}
