// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";

/// @title ISlateFactory
/// @notice Generic slate: N Seer markets and collateral for enter/redeem.
interface ISlateFactory {
    struct CreateSlateParams {
        /// @notice Human-readable slate name.
        string name;
        /// @notice ERC20 collateral shared by all markets in the slate.
        IERC20 collateral;
        /// @notice Deployed Seer market addresses.
        address[] markets;
        /// @notice Unix timestamp after which the parimutuel pool stops accepting entries.
        uint32 entryDeadline;
    }

    struct Slate {
        /// @notice Human-readable slate name.
        string name;
        /// @notice Account that registered the slate.
        address creator;
        /// @notice ERC20 collateral used when entering or redeeming.
        IERC20 collateral;
        /// @notice Markets included in this slate.
        IMarket[] markets;
        /// @notice Unix timestamp when the slate was registered.
        uint32 createdAt;
        /// @notice Unix timestamp after which the parimutuel pool stops accepting entries.
        uint32 entryDeadline;
    }

    /// @notice Emitted when a new slate is registered.
    event SlateCreated(uint256 indexed slateId, string name, address[] markets, address indexed creator);

    /// @notice Next slate id to assign (monotonic counter).
    function nextSlateId() external view returns (uint256);

    /// @notice Returns stored metadata for a registered slate.
    /// @param slateId Slate identifier returned by `createSlate`.
    function getSlate(uint256 slateId) external view returns (Slate memory);

    /// @notice Register a slate from existing market addresses.
    /// @dev Permissionless registration: no on-chain check that `params.collateral` is valid for every market
    ///      (root collateral vs parent outcome token for conditional markets). `enterSlate` delegates to the Seer
    ///      Router, which reverts on mismatch. Market addresses must be unique per slate; duplicates are not
    ///      rejected on-chain (see SlateFactory).
    function createSlate(CreateSlateParams calldata params) external returns (uint256 slateId);

    /// @notice Enter a range of markets in a slate with the same collateral amount and weight vectors per market.
    /// @param slateId Slate to enter.
    /// @param marketStart First market index in the slate (inclusive).
    /// @param marketEnd One past the last market index (exclusive).
    /// @param amountPerMarket Collateral deposited per market; total pull is `amountPerMarket * (marketEnd - marketStart)`.
    /// @param weightsPerMarket Outer length must equal `marketEnd - marketStart`; inner weights must sum to `WEIGHT_SCALE`.
    function enterSlate(
        uint256 slateId,
        uint256 marketStart,
        uint256 marketEnd,
        uint256 amountPerMarket,
        uint256[][] calldata weightsPerMarket
    ) external;

    /// @notice Redeem the caller's positions across a range of markets in a slate.
    /// @param slateId Slate to redeem.
    /// @param marketStart First market index in the slate (inclusive).
    /// @param marketEnd One past the last market index (exclusive).
    /// @dev This contract calls the vault on the caller's behalf, so the caller must
    ///      `setApprovalForAll(address(this), true)` on ParimutuelPositions. To redeem without
    ///      factory approval, call `parimutuelVault.redeemPositions` directly with the slate's markets.
    function redeemSlate(
        uint256 slateId,
        uint256 marketStart,
        uint256 marketEnd,
        uint256[][] calldata amountsPerMarket
    ) external returns (uint256 totalPayout);
}
