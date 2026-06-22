// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IOptionMarket.sol";

interface ISynthetixAdapter {
  function addressResolver() external view returns (address);

  function quoteKey(address) external view returns (bytes32);

  function baseKey(address) external view returns (bytes32);

  function getSpotPriceForMarket(address) external view returns (uint256);
}
