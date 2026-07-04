// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.20;

/* solhint-disable var-name-mixedcase  */

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../contracts/interfaces/IAvantCoinSiloDefinitions.sol";

contract AvantCoinSilo is IAvantCoinSiloDefinitions {
  using SafeERC20 for IERC20;

  address immutable public _STAKING_VAULT;
  IERC20 immutable public _AVANTCOIN;

  error ZeroAddressError();

  constructor(address stakingVault, address avantcoin) {
    if (stakingVault == address(0) || avantcoin == address(0)) {
      revert ZeroAddressError();
    }
    _STAKING_VAULT = stakingVault;
    _AVANTCOIN = IERC20(avantcoin);
  }

  modifier onlyStakingVault() {
    if (msg.sender != _STAKING_VAULT) revert OnlyStakingVault();
    _;
  }

  function withdraw(address to, uint256 amount) external onlyStakingVault {
    _AVANTCOIN.safeTransfer(to, amount);
  }
}