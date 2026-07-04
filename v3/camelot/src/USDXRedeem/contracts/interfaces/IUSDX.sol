// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

interface IUSDX {
  function balanceOf(address account) external view returns (uint256);

  function mint(address _to, uint256 _amount) external;

  function burn(uint256 _amount) external;

  function burnFrom(address account, uint256 amount) external;

  function setMinter(address newMinter) external;
}
