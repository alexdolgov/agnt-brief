// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";

/// @notice Generic pick'em slate: N Seer markets and collateral for enter/redeem.
interface IPickemSlateFactory {
    struct CreateSlateParams {
        IERC20 collateral;
        address[] markets;
    }

    struct PickemSlate {
        address creator;
        IERC20 collateral;
        IMarket[] markets;
        uint32 createdAt;
    }

    event SlateCreated(uint256 indexed slateId, address[] markets, address indexed creator);

    event SlatePositionEntered(uint256 indexed slateId, address indexed user, uint256 amountPerMatch);

    event SlateRedeemed(uint256 indexed slateId, address indexed user, uint256 totalPayout);

    function nextSlateId() external view returns (uint256);

    function getSlate(uint256 slateId) external view returns (PickemSlate memory);

    /// @notice Register a slate from existing market addresses.
    /// @dev Caller must ensure all markets redeem against `params.collateral`.
    function createSlate(CreateSlateParams calldata params) external returns (uint256 slateId);

    function enterSlate(uint256 slateId, uint256 amountPerMatch, uint256[][] calldata weightsPerMatch) external;

    function redeemSlate(uint256 slateId, uint256[][] calldata amountsPerMatch) external returns (uint256 totalPayout);
}
