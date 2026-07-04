// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Vault} from "./lib/Vault.sol";

/**
 * @title CurveXETHOracle
 * @notice An oracle that retrieves the current xETH share price in terms of ETH
 */
interface IStreamVault {
  function vaultState() external view returns (Vault.VaultState memory);
  function roundPricePerShare(uint256) external view returns (uint256);
}
    
contract XETHOracle {

    address public constant xETH = 0x7E586fBaF3084C0be7aB5C82C04FfD7592723153;
    uint256 public constant MINIMUM_VALID_ROUND = 2;
    
    constructor () {}

    function getRate() public view returns (uint256) {
      uint256 currentRound = IStreamVault(xETH).vaultState().round;
      if (currentRound < MINIMUM_VALID_ROUND) {
        return 1e18;
      }
      uint256 pricePerShare = IStreamVault(xETH).roundPricePerShare(currentRound - 1);
      return pricePerShare;
    }
}