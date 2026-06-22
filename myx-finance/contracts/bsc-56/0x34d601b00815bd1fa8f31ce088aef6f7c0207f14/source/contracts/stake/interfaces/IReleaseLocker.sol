// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface IReleaseLocker is IERC721 {

    struct ReleaseData {
        uint256 releaseTime;
        uint256 lockDuration;
        uint256 amount;
    }

    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);

    function getTokensOfOwner(address owner) external view returns (uint256[] memory);

    function getReleaseData(uint256 tokenId) external view returns (ReleaseData memory);

    function isClaimable(uint256 tokenId) external view returns (bool);

    function getRemainingTimes(uint256 tokenId) external view returns (uint256);

    function release(
        address validator,
        uint256 amount,
        uint256 lockDuration,
        address recipient
    ) external returns (uint256 tokenId);

}
