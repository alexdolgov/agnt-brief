// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "./INonfungiblePositionManagerStruct.sol";

interface INonfungiblePositionManager is IERC721, INonfungiblePositionManagerStruct {
    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);
}
