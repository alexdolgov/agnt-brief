// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IBITUVaultDefinitions.sol";

/**
 * @title BITUVault
 * @notice The Vault allows to store BITU during the stake cooldown process.
 */
contract BITUVault is IBITUVaultDefinitions {
  using SafeERC20 for IERC20;

  address immutable STAKING_VAULT;
  IERC20 immutable BITU;

  constructor(address stakingVault, address bitu) {
    STAKING_VAULT = stakingVault;
    BITU = IERC20(bitu);
  }

  modifier onlyStakingVault() {
    if (msg.sender != STAKING_VAULT) revert OnlyStakingVault();
    _;
  }

  function withdraw(address to, uint256 amount) external onlyStakingVault {
    BITU.transfer(to, amount);
  }
}
