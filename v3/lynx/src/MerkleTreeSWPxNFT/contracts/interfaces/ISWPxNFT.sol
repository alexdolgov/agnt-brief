// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface ISWPxNFT {
    function originalMinterOf(uint256 tokenId) external view returns (address);
}
