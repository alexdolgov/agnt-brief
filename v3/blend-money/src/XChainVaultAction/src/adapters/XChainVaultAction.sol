// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {IXChainAdapterController} from "../interfaces/controllers/IXChainAdapterController.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {MorphoVaultLib} from "../libraries/MorphoVaultLib.sol";
import {VaultActionController} from "../libraries/VaultActionController.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @notice A single cross-chain transfer targeting one adapter and one destination chain.
 * @dev The `requests` array in `XChainExtraData` must be sorted strictly ascending by
 *      `destinationChainId` to enable O(N) duplicate detection. `adapterIndex` is unconstrained
 *      in ordering — any adapter from the allowlist may be used for any request.
 */
struct XChainRequest {
    /**
     * @dev Index into the `XChainStrategyData.adapters` allowlist. Ordering is unconstrained.
     */
    uint256 adapterIndex;
    /**
     * @dev Destination chain ID. Must be strictly greater than the previous request's
     *      `destinationChainId` across the entire array, preventing duplicate destinations
     *      regardless of which adapter is used.
     */
    uint256 destinationChainId;
    /**
     * @dev Amount of underlying tokens to bridge in this request.
     */
    uint256 amount;
    /**
     * @dev ABI-encoded adapter-specific parameters forwarded verbatim to
     *      `IXChainAdapterController.execute`.
     */
    bytes crossChainData;
}

/**
 * @notice Static configuration for a cross-chain strategy. Stable across calls.
 * @dev Contains the ordered allowlist of adapters this strategy is permitted to use.
 */
struct XChainStrategyData {
    /**
     * @notice Ordered array of allowed cross-chain adapters.
     * @dev Each element must implement `IXChainAdapterController`. `XChainRequest.adapterIndex`
     *      references positions in this array.
     */
    IXChainAdapterController[] adapters;
}

/**
 * @notice Dynamic parameters for each cross-chain vault action invocation.
 * @dev Contains slippage protection and a flat array of requests sorted ascending by
 *      `destinationChainId`.
 */
struct XChainExtraData {
    /**
     * @notice Price ratio used for share/asset conversion.
     * @dev Slippage protection applied when withdrawing from the ERC4626 vault.
     *      Shared across all requests in the same action.
     */
    uint256 assetPerShares;
    /**
     * @notice Flat array of cross-chain requests.
     * @dev Must be sorted strictly ascending by `destinationChainId`. This prevents any duplicate
     *      destination chain across the entire batch regardless of which adapter is used.
     *      `adapterIndex` within each element may be in any order.
     */
    XChainRequest[] requests;
}

/**
 * @title XChainVaultAction
 * @notice Executes batched cross-chain actions across multiple adapters and destination chains
 *         using assets withdrawn from an ERC4626 vault in a single aggregated pull.
 * @dev Intended to be invoked via delegatecall by a controller. Requests must be sorted strictly
 *      ascending by `destinationChainId` — this provides O(N) global duplicate detection with no
 *      additional memory allocation. `adapterIndex` ordering is unconstrained; any adapter may be
 *      used for any request. The action validates all requests and aggregates the total withdrawal
 *      in one pass, performs a single vault pull if needed, then transfers per-request and calls
 *      `adapter.execute` once per request. Follows CEI.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract XChainVaultAction is VaultActionController {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when the requests array is empty.
     */
    error EmptyRequests();

    /**
     * @notice Thrown when a request targets the current chain or a chain the adapter does not support.
     */
    error InvalidDestinationChain();

    /**
     * @notice Thrown when a request references an adapter index out of bounds of the allowed adapters array.
     */
    error InvalidAdapterIndex();

    /**
     * @notice Thrown when requests are not in strictly ascending order by `destinationChainId`,
     *         which also catches duplicate destination chains.
     */
    error DuplicateOrUnsortedDestinationChain();

    /**
     * @notice Thrown when the adapter has a non-zero balance after executing the request.
     */
    error DustBalanceDetected();

    /**
     * @notice Thrown when the request amount is zero.
     */
    error InvalidAmount();

    /*//////////////////////////////////////////////////////////////
                                INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Execute batched cross-chain actions by withdrawing assets from a vault and
     *         routing them through one or more adapters in a single aggregated pull.
     * @dev Two-pass approach over a flat `XChainRequest[]` sorted by `destinationChainId`:
     *
     *      Pass 1 — validate & aggregate (O(N)):
     *        Enforces `destinationChainId` strict ascending order globally, providing O(N) duplicate
     *        detection without extra allocation. Validates adapter index bounds, chain support,
     *        and that each request has amount > 0. Sums `totalWithdrawAmount` across all requests.
     *
     *      Single vault withdrawal if the current balance is insufficient.
     *
     *      Pass 2 — transfer & execute (O(N)):
     *        For each request, transfers `req.amount` to the designated adapter and calls
     *        `adapter.execute` once. After each execution, requires the adapter to hold zero
     *        balance of the underlying asset (`DustBalanceDetected` if non-zero). Adapters must
     *        sweep or refund all received tokens; no dust may remain on the adapter.
     *        Loop increments are unchecked; array length is cached.
     *
     *      Sweep:
     *        After all requests complete, deposits any remaining underlying balance held by the
     *        caller (safe) back into the vault via `MorphoVaultLib._depositAssets`. Ensures no
     *        assets are left behind (e.g. dust refunds from adapters).
     *
     * @param vault The ERC4626 vault to withdraw underlying assets from
     * @param strategyData ABI-encoded `XChainStrategyData` containing the allowed adapters array
     * @param extraData ABI-encoded `XChainExtraData` with slippage protection and sorted requests
     * @custom:reverts EmptyRequests when the requests array is empty
     * @custom:reverts InvalidAmount when any request has amount == 0
     * @custom:reverts InvalidAdapterIndex when any request references an index >= adapters.length
     * @custom:reverts InvalidDestinationChain when any request targets the current chain or an unsupported chain
     * @custom:reverts DuplicateOrUnsortedDestinationChain when requests are not strictly ascending by destinationChainId
     * @custom:reverts DustBalanceDetected when any adapter holds non-zero balance after execute
     */
    function _execute(IERC4626 vault, bytes calldata strategyData, bytes calldata extraData) internal override {
        XChainStrategyData memory xChainStrategyData = abi.decode(strategyData, (XChainStrategyData));
        XChainExtraData memory xChainExtraData = abi.decode(extraData, (XChainExtraData));

        uint256 numAdapters = xChainStrategyData.adapters.length;
        uint256 numRequests = xChainExtraData.requests.length;

        require(numRequests > 0, EmptyRequests());

        uint256 totalWithdrawAmount;
        uint256 lastChainId;

        // Pass 1: validate sort order, adapter bounds, chain support, and aggregate total withdrawal amount.
        for (uint256 i = 0; i < numRequests;) {
            XChainRequest memory req = xChainExtraData.requests[i];

            require(req.adapterIndex < numAdapters, InvalidAdapterIndex());

            // Strictly ascending destinationChainId across the entire array prevents any duplicate
            // destination chain regardless of which adapter is used. adapterIndex is unconstrained.
            require(req.destinationChainId > lastChainId, DuplicateOrUnsortedDestinationChain());
            require(req.destinationChainId != block.chainid, InvalidDestinationChain());
            require(
                xChainStrategyData.adapters[req.adapterIndex].isChainSupported(req.destinationChainId),
                InvalidDestinationChain()
            );
            require(req.amount > 0, InvalidAmount());

            lastChainId = req.destinationChainId;
            totalWithdrawAmount += req.amount;

            // Increment the cursor in an unchecked block to save gas.
            unchecked {
                ++i;
            }
        }

        // Single aggregated vault withdrawal if the current balance is insufficient.
        IERC20 underlyingAsset = IERC20(vault.asset());
        uint256 currentBalance = underlyingAsset.balanceOf(address(this));
        if (currentBalance < totalWithdrawAmount) {
            MorphoVaultLib._withdrawAssets(vault, totalWithdrawAmount - currentBalance, xChainExtraData.assetPerShares);
        }

        // Pass 2: transfer per-request and execute. adapterIndex may vary freely across requests.
        for (uint256 i = 0; i < numRequests;) {
            XChainRequest memory req = xChainExtraData.requests[i];
            IXChainAdapterController adapter = xChainStrategyData.adapters[req.adapterIndex];

            // Move funds to the adapter, execute the adapter, and ensure the adapter has no balance left.
            underlyingAsset.safeTransfer(address(adapter), req.amount);
            adapter.execute(req.destinationChainId, address(this), address(this), underlyingAsset, req.crossChainData);
            require(underlyingAsset.balanceOf(address(adapter)) == 0, DustBalanceDetected());

            unchecked {
                ++i;
            }
        }

        // Sweep the remaining balance back into the vault.
        MorphoVaultLib._depositAssets(vault, type(uint256).max, xChainExtraData.assetPerShares);
    }
}
