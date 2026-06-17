// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { StrategyBaseUpgradeable } from "./StrategyBaseUpgradeable.sol";

contract YieldStrategy is StrategyBaseUpgradeable {
  using SafeERC20 for IERC20;

  /// @notice Emitted when the treasury address is updated.
  /// @param oldTreasury The address of previous treasury.
  /// @param newTreasury The address of current treasury.
  event UpdateTreasury(address indexed oldTreasury, address newTreasury);

  address public immutable ASSET;

  address public treasury;

  uint256 public principal;

  constructor(address _origin, address _asset) StrategyBaseUpgradeable(_origin) {
    require(_asset != address(0), "Invalid asset address");

    ASSET = _asset;
  }

  function initialize(address _admin, address _treasury) external initializer {
    require(_admin != address(0), "Invalid admin address");
    require(_treasury != address(0), "Invalid treasury address");

    __StrategyBaseUpgradeable_init(_admin);

    treasury = _treasury;
  }

  function totalSupply() public view returns (uint256) {
    return principal;
  }

  function deposit(uint256 amount) external onlyOrigin {
    require(amount > 0, "Amount must be greater than zero");
    require(IERC20(ASSET).balanceOf(address(this)) >= amount, "Insufficient asset balance");

    IERC20(ASSET).safeTransfer(treasury, amount);
    unchecked {
      principal += amount;
    }
  }

  function withdraw(uint256 amount, address recipient) external onlyOrigin {
    require(IERC20(ASSET).balanceOf(address(this)) >= amount, "Insufficient asset balance");

    uint256 cachedPrincipal = principal;
    if (amount > cachedPrincipal) amount = cachedPrincipal;
    unchecked {
      principal = cachedPrincipal - amount;
    }
    IERC20(ASSET).safeTransfer(recipient, amount);
  }

  function kill() external onlyOrigin {
    require(IERC20(ASSET).balanceOf(address(this)) >= principal, "Insufficient asset balance");

    if (principal > 0) {
      IERC20(ASSET).safeTransfer(origin, principal);
    }
    principal = 0;
  }

  function _harvest(address receiver) internal virtual override {
    uint256 balance = IERC20(ASSET).balanceOf(address(this));

    if (balance > principal) {
      uint256 rewards = balance - principal;
      IERC20(ASSET).safeTransfer(receiver, rewards);
    }
  }

  function reducePrincipal(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(amount > 0, "Amount must be greater than zero");

    uint256 cachedPrincipal = principal;
    if (amount > cachedPrincipal) amount = cachedPrincipal;
    require(IERC20(ASSET).balanceOf(address(this)) >= amount, "Insufficient asset balance");

    unchecked {
      principal = cachedPrincipal - amount;
    }
    IERC20(ASSET).safeTransfer(origin, amount);
  }

  function rescueTokens(address token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(amount > 0, "Amount must be greater than zero");
    require(token != address(0), "Invalid token address");

    IERC20(token).safeTransfer(treasury, amount);
  }

  function updateTreasury(address _treasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(_treasury != address(0), "Invalid treasury address");

    address oldTreasury = treasury;
    treasury = _treasury;

    emit UpdateTreasury(oldTreasury, _treasury);
  }
}
