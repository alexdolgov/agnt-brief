// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

interface IERC721Mintable {
  function fMint(address _pTo, uint256 _pId) external;
}

interface IERC1155Mintable {
  function fMint(address _pAccount, uint256 _pId, uint256 _pAmount) external;
}
