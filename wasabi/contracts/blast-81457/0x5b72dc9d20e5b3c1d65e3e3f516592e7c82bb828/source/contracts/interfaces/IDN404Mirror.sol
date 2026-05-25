pragma solidity ^0.8.24;

// erc721 token
interface IDN404Mirror {
  
  function baseERC20() external view returns (address);

  function safeTransferFrom(address from, address to, uint256 tokenId) external;

  function unit() external view returns (uint256);

  function updateLockState(uint256[] memory ids, bool lock) external;
}