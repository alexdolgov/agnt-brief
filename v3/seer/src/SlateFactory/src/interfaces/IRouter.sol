// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "./IERC20.sol";
import {IMarket} from "./IMarket.sol";

/// @notice Public API of Seer Router (split / merge / redeem with ERC20 outcome tokens).
interface IRouter {
    function conditionalTokens() external view returns (address);

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

    function getTokenId(IERC20 collateralToken, bytes32 parentCollectionId, bytes32 conditionId, uint256 indexSet)
        external
        view
        returns (uint256);

    /// @return Per-outcome slot: true if that outcome has a non-zero payout numerator (redeemable).
    function getWinningOutcomes(bytes32 conditionId) external view returns (bool[] memory);
}
