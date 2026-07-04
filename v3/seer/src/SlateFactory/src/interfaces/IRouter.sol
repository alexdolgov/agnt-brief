// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";

/// @title IRouter
/// @notice Public API of Seer Router (split / merge / redeem with ERC20 outcome tokens).
interface IRouter {
    /// @notice Conditional Tokens Framework contract used for splits and redeems.
    function conditionalTokens() external view returns (address);

    /// @notice Factory that produces wrapped ERC20 outcome tokens from CTF positions.
    function wrapped1155Factory() external view returns (address);

    /// @notice Deposits collateral (root markets), splits the position, returns ERC20 outcome tokens to `msg.sender`.
    function splitPosition(IERC20 collateralToken, IMarket market, uint256 amount) external;

    /// @notice Merges outcome tokens and returns collateral (root markets) or parent outcome tokens to `msg.sender`.
    function mergePositions(IERC20 collateralToken, IMarket market, uint256 amount) external;

    /// @notice Redeems winning outcome tokens after resolution.
    /// @param outcomeIndexes Index of each outcome to redeem.
    /// @param amounts Amount to redeem for each outcome in `outcomeIndexes`.
    function redeemPositions(
        IERC20 collateralToken,
        IMarket market,
        uint256[] calldata outcomeIndexes,
        uint256[] calldata amounts
    ) external;

    /// @notice ERC1155 position id for a Conditional Tokens outcome slot.
    function getTokenId(IERC20 collateralToken, bytes32 parentCollectionId, bytes32 conditionId, uint256 indexSet)
        external
        view
        returns (uint256);

    /// @notice Per-outcome redeemability after resolution.
    /// @return Per-outcome slot: true if that outcome has a non-zero payout numerator (redeemable).
    function getWinningOutcomes(bytes32 conditionId) external view returns (bool[] memory);
}
