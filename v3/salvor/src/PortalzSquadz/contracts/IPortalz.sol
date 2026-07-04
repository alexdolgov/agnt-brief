// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "./Tokens.sol";

// Portalz interface
interface IPortalz {
    function areTokensAllowed(Tokens.ERC165Token[] calldata tokens)
        external
        returns (bool);

    function calculateRewardsForDays(
        uint256 tokensBaseDailyReward,
        uint256 period
    ) external view returns (uint256 reward);
}
