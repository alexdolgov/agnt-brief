// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IMoolahVault } from "../../interfaces/Lista/IMoolahVault.sol";

import { StrategyBase } from "./StrategyBase.sol";

contract ListaStrategy is StrategyBase {
  using SafeERC20 for IERC20;

  bytes32 public constant WITHDRAWER_ROLE = keccak256("WITHDRAWER_ROLE");

  address public immutable POOL;

  address public immutable ASSET; // USDT

  uint256 public principal;

  constructor(address _admin, address _operator, address _pool, address _asset) StrategyBase(_admin, _operator) {
    POOL = _pool;
    ASSET = _asset;

    IERC20(ASSET).forceApprove(POOL, type(uint256).max);
  }

  function totalSupply() public view returns (uint256) {
    return principal;
  }

  function deposit(uint256 amount) external onlyOperator {
    IMoolahVault(POOL).deposit(amount, address(this));
    unchecked {
      principal += amount;
    }
  }

  function withdraw(uint256 amount, address recipient) external onlyOperator {
    uint256 cachedPrincipal = principal;
    if (amount > cachedPrincipal) amount = cachedPrincipal;
    unchecked {
      principal = cachedPrincipal - amount;
    }
    IMoolahVault(POOL).withdraw(amount, recipient, address(this));
  }

  function kill() external onlyOperator {
    uint256 shares = IERC20(POOL).balanceOf(address(this));
    if (shares > 0) {
      IMoolahVault(POOL).redeem(shares, operator, address(this));
    }
    principal = 0;
  }

  function _harvest(address receiver) internal virtual override {
    uint256 shares = IERC20(POOL).balanceOf(address(this));
    uint256 total = IMoolahVault(POOL).convertToAssets(shares);
    uint256 rewards = total - principal;

    if (rewards > 0) {
      IMoolahVault(POOL).withdraw(rewards, receiver, address(this));
    }
  }

  function withdrawPartial(uint256 amount) external onlyRole(WITHDRAWER_ROLE) {
    uint256 cachedPrincipal = principal;
    if (amount > cachedPrincipal) amount = cachedPrincipal;
    unchecked {
      principal = cachedPrincipal - amount;
    }
    IMoolahVault(POOL).withdraw(amount, operator, address(this));
  }
}
