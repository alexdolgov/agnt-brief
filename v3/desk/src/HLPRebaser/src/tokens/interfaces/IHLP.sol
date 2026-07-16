// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

interface IHLP {
  /**
   * ERRORS
   */
  error IHLP_onlyMinter();

  /**
   * States
   */
  function totalSupply() external view returns (uint256 _total);

  function originalTotalSupply() external view returns (uint256 _originalTotal);

  function originalBalanceOf(address _account) external view returns (uint256 _originalBalance);

  /**
   * Functions
   */
  function setMinter(address minter, bool isMinter) external;

  function mint(address to, uint256 amount) external;

  function burn(address from, uint256 amount) external;

  function approve(address _to, uint256 _amount) external;

  function balanceOf(address _account) external view returns (uint256 _amount);

  function getOriginalAmount(uint256 amount) external view returns (uint256);

  function getRebasedAmount(uint256 amount) external view returns (uint256);
}
