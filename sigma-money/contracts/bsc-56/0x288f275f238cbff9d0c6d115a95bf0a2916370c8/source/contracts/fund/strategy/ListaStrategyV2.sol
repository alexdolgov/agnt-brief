// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IMoolahVault } from "../../interfaces/Lista/IMoolahVault.sol";

import { StrategyBase } from "./StrategyBase.sol";

contract ListaStrategyV2 is StrategyBase {
  using SafeERC20 for IERC20;

  /// @notice Emitted when the treasury address is updated.
  /// @param oldTreasury The address of previous treasury.
  /// @param newTreasury The address of current treasury.
  event UpdateTreasury(address indexed oldTreasury, address newTreasury);

  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

  address public immutable POOL;

  address public immutable ASSET;

  address public treasury;

  uint256 public principal;

  constructor(
    address _admin,
    address _operator,
    address _pool,
    address _asset,
    address _treasury
  ) StrategyBase(_admin, _operator) {
    require(_pool != address(0), "Invalid pool address");
    require(_asset != address(0), "Invalid asset address");
    require(_treasury != address(0), "Invalid treasury address");

    POOL = _pool;
    ASSET = _asset;
    treasury = _treasury;

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

  function withdrawPartial(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
    uint256 cachedPrincipal = principal;
    if (amount > cachedPrincipal) amount = cachedPrincipal;
    unchecked {
      principal = cachedPrincipal - amount;
    }
    IMoolahVault(POOL).withdraw(amount, operator, address(this));
  }

  function claim(address token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(token != address(POOL), "Cannot transfer pool LP");
    require(amount > 0, "Amount must be greater than zero");

    IERC20(token).safeTransfer(treasury, amount);
  }

  function updateTreasury(address _treasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
    require(_treasury != address(0), "Invalid treasury address");

    address oldTreasury = treasury;
    treasury = _treasury;

    emit UpdateTreasury(oldTreasury, _treasury);
  }
}
