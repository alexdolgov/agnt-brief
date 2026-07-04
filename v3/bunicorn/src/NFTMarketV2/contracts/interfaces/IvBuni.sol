// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol";

interface IvBuni is IERC721Upgradeable {
    function getTokenInfo(uint256 tokenId)
        external
        view
        returns (
            uint256 poolId,
            uint256 amount,
            uint256 vestedAt,
            uint256 createdAt
        );

    function getTokenInfoOfOwnerByIndex(address owner, uint256 index)
        external
        view
        returns (
            uint256 poolId,
            uint256 amount,
            uint256 vestedAt,
            uint256 tokenId
        );

    function mint(address to, uint256 poolId, uint256 buniAmount, uint256 vestedTimestamp) external;
}
