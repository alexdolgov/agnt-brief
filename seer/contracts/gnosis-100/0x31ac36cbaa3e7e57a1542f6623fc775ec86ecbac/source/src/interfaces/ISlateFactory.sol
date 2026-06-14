// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";

/// @notice Generic slate: N Seer markets and collateral for enter/redeem.
interface ISlateFactory {
    struct CreateSlateParams {
        string name;
        IERC20 collateral;
        address[] markets;
    }

    struct Slate {
        string name;
        address creator;
        IERC20 collateral;
        IMarket[] markets;
        uint32 createdAt;
    }

    event SlateCreated(uint256 indexed slateId, string name, address[] markets, address indexed creator);

    function nextSlateId() external view returns (uint256);

    function getSlate(uint256 slateId) external view returns (Slate memory);

    /// @notice Register a slate from existing market addresses.
    /// @dev Permissionless registration: no on-chain check that `params.collateral` is valid for every market
    ///      (root collateral vs parent outcome token for conditional markets). `enterSlate` delegates to the Seer
    ///      Router, which reverts on mismatch. Market addresses must be unique per slate; duplicates are not
    ///      rejected on-chain (see SlateFactory).
    function createSlate(CreateSlateParams calldata params) external returns (uint256 slateId);

    function enterSlate(uint256 slateId, uint256 amountPerMarket, uint256[][] calldata weightsPerMarket) external;

    /// @notice Redeem the caller's positions across all markets in a slate.
    /// @dev This contract calls the vault on the caller's behalf, so the caller must
    ///      `setApprovalForAll(address(this), true)` on ParimutuelPositions. To redeem without
    ///      factory approval, call `parimutuelVault.redeemPositions` directly with the slate's markets.
    function redeemSlate(uint256 slateId, uint256[][] calldata amountsPerMarket) external returns (uint256 totalPayout);
}
