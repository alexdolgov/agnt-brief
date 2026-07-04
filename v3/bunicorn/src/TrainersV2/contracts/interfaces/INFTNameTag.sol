// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface INFTNameTag {
  function getRenameTagValue() external view returns(int128);
  function getNameTag(address _tokenAddress, uint256 _tokenId) external view returns(string memory);
  function setNameTag(address _tokenAddress, uint256 _tokenId, string calldata _tag) external;
}