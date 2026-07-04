// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {IAsyncRequestManager} from "../interfaces/IAsyncRequestManager.sol";
import {HaBaseUpgradeable, IVaultManager} from "../base/HaBaseUpgradeable.sol";

contract AsyncRequestManager is HaBaseUpgradeable, IAsyncRequestManager {
    // ========= STORAGE ========================

    /// @notice Total pending shares for a controller across all assets.
    /// @dev Aggregates shares in two states:
    ///      - Requested but not yet fulfilled by the operator.
    ///      - Fulfilled by the operator but not yet claimed by the controller.
    mapping(address controller => uint256 pendingShare) public pendingShares;

    /// @notice Ordered list of (vault, controller) pairs, one entry appended per queued redeem request.
    /// @dev Index 0 is a zero-value sentinel — valid entries begin at index 1.
    ///      Entry at index `i` corresponds to the request at `redeemRequests[i]`.
    RedeemEntry[] public redeemEntries;

    /// @dev DEPRECATED — superseded by `redeemRequests[]` + `currentRequest`. Kept for storage layout continuity.
    mapping(bytes32 entryHash => RedeemRequest request) _redeemRequests;

    /// @notice Controls how controllers may initiate redeem requests.
    /// @dev Defaults to `Global` — only one active redeem request allowed at a time across all assets.
    RedeemMode public redeemMode;

    /// @notice Parallel array to `redeemEntries` storing full RedeemRequest details at each index.
    /// @dev Index 0 is a zero-value sentinel — valid requests begin at index 1.
    ///      Request at index `i` corresponds to the entry at `redeemEntries[i]`.
    ///      Append-only: entries are never deleted; use `currentRequest` to check whether a request is active.
    RedeemRequest[] public redeemRequests;

    /// @notice Maps `keccak256(abi.encode(vault, controller))` to the index of the controller's
    ///         currently active request in `redeemRequests`.
    /// @dev Returns 0 (the sentinel) when no active request exists for the (vault, controller) pair.
    ///      At most one active request is supported per entry at any time.
    mapping(bytes32 entryHash => uint256 indexRequest) public currentRequest;

    // ========= INITIALIZE ========================

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @dev disableInitializers() to prevent uninitialized attack on UPPS Upgradeable
    constructor() {
        _disableInitializers();
    }

    function initialize(address vaultManagerAddr) external initializer {
        __HaBase_init(vaultManagerAddr);
        redeemEntries.push(RedeemEntry({vault: address(0), controller: address(0)}));
        redeemRequests.push(RedeemRequest({shares: 0, assets: 0, requestedAt: 0, isFulfilled: false}));
    }

    /// @notice Migration initializer for upgrading an existing deployment to v2.
    /// @dev Fills `redeemRequests` with zero-value sentinels until its length equals `redeemEntries.length`,
    ///      ensuring both parallel arrays share the same index space after the upgrade.
    ///      Must be called on the proxy immediately after upgrading the implementation.
    function initializeV2() external reinitializer(2) {
        uint256 target = redeemEntries.length;
        for (uint256 i = redeemRequests.length; i < target; i++) {
            redeemRequests.push(RedeemRequest({shares: 0, assets: 0, requestedAt: 0, isFulfilled: false}));
        }
    }

    /// @inheritdoc IAsyncRequestManager
    function deposit(uint256 assets) external {
        address vault = msg.sender;
        _validateVault(vault);
        _vaultManager.updateVaultState(
            vault,
            IVaultManager.VaultStateDelta({
                // casting to 'int256' is safe: token amounts are bounded by totalSupply which cannot exceed int256.max
                // forge-lint: disable-next-line(unsafe-typecast)
                depositedAssets: int256(assets),
                pendingAssets: 0,
                claimableAssets: 0,
                redeemShares: 0
            })
        );
    }

    /**
     * @notice Validate whether the redeem request is valid, then enqueue the request
     * @param shares total of requested shares
     * @param controller the address who can operate on the shares in the request
     * @param owner the adress whose shares is locked
     * @dev Only registered `AssetVault` can call this, msg.sender is the vault
     */
    function requestRedeem(uint256 shares, address controller, address owner) external {
        // The calling vault is treated as the asset identifier — only registered vaults can reach this point.
        address vault = msg.sender;
        address asset = _validateVault(vault);

        // Load the controller's active redeem request for this asset, if any.
        RedeemRequest memory request = _getRedeemRequest(vault, controller);
        uint256 assets = _vaultManager.convertToAssets(asset, shares, Math.Rounding.Floor);

        /// @dev Validates the redeem request:
        ///      - `Global` mode: controller must have no active redeem requests across any asset.
        ///      - Per-asset: controller must have no active redeem request for this specific asset.
        ///      - Shares must not be so small that they result in zero assets withdrawn.
        if (redeemMode == RedeemMode.Global) {
            require(pendingShares[controller] == 0, PendingWithdrawal(address(0), controller));
        }
        require(request.shares == 0, PendingWithdrawal(vault, controller));
        require(assets != 0, InvalidShares(shares));

        pendingShares[controller] += shares;
        _addRedeemRequest(vault, controller, owner, shares, assets);

        // New redeem request — increase pending assets until the operator fulfills it
        _vaultManager.updateVaultState(
            vault,
            IVaultManager.VaultStateDelta({
                // casting to 'int256' is safe: token amounts are bounded by totalSupply which cannot exceed int256.max
                // forge-lint: disable-next-line(unsafe-typecast)
                redeemShares: int256(shares),
                pendingAssets: int256(assets),
                claimableAssets: 0,
                depositedAssets: 0
            })
        );
    }

    /**
     * @notice Marks a batch of redeem requests as fulfilled, enabling controllers to claim their assets.
     * @dev Only callable by a registered vault. Skips already-fulfilled requests without reverting.
     * @param controllers List of controller addresses whose redeem requests should be fulfilled.
     */
    function fulfillRedeem(address[] calldata controllers) external {
        /// @dev Ensure this function is called by the registered vault
        address vault = msg.sender;
        _validateVault(vault);

        for (uint256 i = 0; i < controllers.length; i++) {
            address controller = controllers[i];
            RedeemRequest storage request = _getRedeemRequest(vault, controller);
            if (request.shares == 0) continue; // no active request — skip to avoid writing to sentinel
            if (request.isFulfilled) continue;
            request.isFulfilled = true;

            // Request fulfilled — assets move from pending to claimable
            _vaultManager.updateVaultState(
                vault,
                IVaultManager.VaultStateDelta({
                    pendingAssets: -int256(request.assets),
                    claimableAssets: int256(request.assets),
                    redeemShares: 0,
                    depositedAssets: 0
                })
            );

            emit RedeemFulfilled(vault, controller, request.shares, request.assets, request.requestedAt);
        }
    }

    /// @inheritdoc IAsyncRequestManager
    function cancelRedeem(address[] calldata controllers) external returns (uint256[] memory shares) {
        address vault = msg.sender;
        _validateVault(vault);

        shares = new uint256[](controllers.length);
        for (uint256 i = 0; i < controllers.length; i++) {
            address controller = controllers[i];
            RedeemRequest storage request = _getRedeemRequest(vault, controller);
            if (request.shares == 0) continue;
            uint256 lockedShares = request.shares;
            shares[i] = lockedShares;
            pendingShares[controller] -= lockedShares;

            // Only decrement pending if not yet fulfilled — fulfillRedeem already decremented it
            if (!request.isFulfilled) {
                // Request cancelled — assets will never be fulfilled, decrease pending counter
                _vaultManager.updateVaultState(
                    vault,
                    IVaultManager.VaultStateDelta({
                        // casting to 'int256' is safe: token amounts are bounded by totalSupply which cannot exceed int256.max
                        // forge-lint: disable-next-line(unsafe-typecast)
                        pendingAssets: -int256(request.assets),
                        claimableAssets: 0,
                        // forge-lint: disable-next-line(unsafe-typecast)
                        redeemShares: -int256(lockedShares),
                        depositedAssets: 0
                    })
                );
            } else {
                // Fulfilled request cancelled — assets were claimable but now forfeited by controller
                _vaultManager.updateVaultState(
                    vault,
                    IVaultManager.VaultStateDelta({
                        pendingAssets: 0,
                        // casting to 'int256' is safe: token amounts are bounded by totalSupply which cannot exceed int256.max
                        // forge-lint: disable-next-line(unsafe-typecast)
                        claimableAssets: -int256(request.assets),
                        // forge-lint: disable-next-line(unsafe-typecast)
                        redeemShares: -int256(lockedShares),
                        depositedAssets: 0
                    })
                );
            }
            delete currentRequest[_redeemKey(vault, controller)];

            emit RedeemCancelled(vault, controller, lockedShares);
        }
    }

    /// @inheritdoc IAsyncRequestManager
    function getRedeemRequest(address vault, address controller) external view returns (RedeemRequest memory) {
        return _getRedeemRequest(vault, controller);
    }

    /// @inheritdoc IAsyncRequestManager
    function redeemEntriesLength() external view returns (uint256) {
        return redeemEntries.length;
    }

    /// @inheritdoc IAsyncRequestManager
    function getRedeemEntry(uint256 id) external view returns (RedeemEntry memory) {
        return redeemEntries[id];
    }

    /// @inheritdoc IAsyncRequestManager
    function getRedeemRequestByIndex(uint256 id) external view returns (RedeemRequest memory) {
        return redeemRequests[id];
    }

    /// @inheritdoc IAsyncRequestManager
    function redeem(address controller, uint256 shares) external returns (uint256 assets) {
        address vault = msg.sender;
        _validateVault(vault);

        RedeemRequest storage request = _getRedeemRequest(vault, controller);
        require(request.isFulfilled, NotFulfilledWithdrawal(vault, controller));
        require(shares <= request.shares, InsufficientShares(shares));

        // assets = totalAssets * shares / totalShares, rounded down to protect the vault
        // If claiming all remaining shares, take all remaining assets to avoid stranding dust
        assets = shares == request.shares
            ? request.assets
            : Math.mulDiv(request.assets, shares, request.shares, Math.Rounding.Floor);
        _applyRedeem(vault, controller, request, shares, assets);
    }

    /// @inheritdoc IAsyncRequestManager
    function withdraw(address controller, uint256 assets) external returns (uint256 shares) {
        address vault = msg.sender;
        _validateVault(vault);

        RedeemRequest storage request = _getRedeemRequest(vault, controller);
        require(request.isFulfilled, NotFulfilledWithdrawal(vault, controller));
        require(assets <= request.assets, InsufficientAssets(assets));

        // shares = totalShares * assets / totalAssets, rounded up to protect the vault
        // If claiming all remaining assets, burn all remaining shares to avoid stranding dust
        shares = assets == request.assets
            ? request.shares
            : Math.mulDiv(request.shares, assets, request.assets, Math.Rounding.Ceil);
        _applyRedeem(vault, controller, request, shares, assets);
    }

    // ================ PRIVATE =======================

    function _applyRedeem(
        address vault,
        address controller,
        RedeemRequest storage request,
        uint256 shares,
        uint256 assets
    ) private {
        request.shares -= shares;
        request.assets -= assets;
        pendingShares[controller] -= shares;

        // Assets claimed by controller — decrease claimable and redeem shares counters
        _vaultManager.updateVaultState(
            vault,
            IVaultManager.VaultStateDelta({
                pendingAssets: 0,
                // casting to 'int256' is safe: token amounts are bounded by totalSupply which cannot exceed int256.max
                // forge-lint: disable-next-line(unsafe-typecast)
                claimableAssets: -int256(assets),
                // forge-lint: disable-next-line(unsafe-typecast)
                redeemShares: -int256(shares),
                // forge-lint: disable-next-line(unsafe-typecast)
                depositedAssets: -int256(assets)
            })
        );

        if (request.shares == 0) {
            delete currentRequest[_redeemKey(vault, controller)];
        }
    }

    function _getRedeemRequest(address vault, address controller) private view returns (RedeemRequest storage) {
        return redeemRequests[currentRequest[_redeemKey(vault, controller)]];
    }

    function _addRedeemRequest(address vault, address controller, address owner, uint256 shares, uint256 assets)
        private
    {
        redeemEntries.push(RedeemEntry({vault: vault, controller: controller}));
        redeemRequests.push(
            RedeemRequest({shares: shares, assets: assets, requestedAt: uint64(block.timestamp), isFulfilled: false})
        );
        currentRequest[_redeemKey(vault, controller)] = redeemRequests.length - 1;

        emit RedeemQueued(redeemEntries.length - 1, vault, controller, owner, shares, assets);
    }

    function _redeemKey(address vault, address controller) private pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode(vault, controller));
    }
}
