// SPDX-License-Identifier: LGPL-3.0
pragma solidity 0.8.20;

import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SafeERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {Errors} from './helpers/Errors.sol';

/**
 * @title USDXSilo
 * @notice The Silo allows to store USDX during the stake cooldown process.
 */
contract USDXSilo {
  address public immutable STAKING_VAULT;
  IERC20 public immutable USDX;

  using SafeERC20 for IERC20;

  constructor(address stakingVault, address usdx) {
    STAKING_VAULT = stakingVault;
    USDX = IERC20(usdx);
  }

  modifier onlyStakingVault() {
    require(msg.sender == STAKING_VAULT, Errors.ONLY_STAKING_VAULT);
    _;
  }

  function withdraw(address to, uint256 amount) external onlyStakingVault {
    USDX.transfer(to, amount);
  }
}
