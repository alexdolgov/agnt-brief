// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { GudDeposits, IERC20 } from "./GudDeposits.sol";
import { IGudVault } from "./interfaces/IGudVault.sol";
import { GudTimelock } from "./GudTimelock.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract GudVaultV0 is IGudVault, GudTimelock, GudDeposits {

  using SafeERC20 for IERC20;

  uint256 internal constant _INITIAL_DEPOSIT_AMOUNT = 1000;

  function initialize(address _owner) external initializer {
    __Timelock_init();
    __Deposits_init(_owner);
  }

  function activateDeposit(address firstDepositor) external onlyOwner {
    _unpause();
    _initShare(firstDepositor);  
  }

  function _initShare(address firstDepositor) internal {
    _LIDO.safeTransferFrom(
      firstDepositor,
      address(this),
      _INITIAL_DEPOSIT_AMOUNT
    );
    if (_stETHTotalShare != 0) {
      revert InvalidStETHShare();
    }
    uint256 lidoBalance = _LIDO.balanceOf(address(this));
    _mintShare(firstDepositor, lidoBalance);
  }

  function proposeUpgrade(address newImplementation) external onlyOwner {
    _proposeUpgrade(newImplementation);
  }

  function cancelUpgrade() external onlyOwner {
    _cancelUpgrade();
  }

  function pause() external onlyOwner {
    _pause();
  }

  function unpause() external onlyOwner {
    _unpause();
  }
}