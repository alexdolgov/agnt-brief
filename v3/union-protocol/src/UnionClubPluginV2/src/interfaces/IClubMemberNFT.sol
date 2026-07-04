//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IClubMemberNFT {
    function mint(address account, bytes32[] memory proof) external returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
    function balanceOf(address account) external view returns (uint256);
    function remove(address account) external;
    function totalSupply() external view returns (uint256);
    function updateTimestamp(uint256 tokenId) external view returns (uint256);
}
