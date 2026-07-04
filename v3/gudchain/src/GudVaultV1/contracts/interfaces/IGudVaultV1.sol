// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IGudVault } from "./IGudVault.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IGudVaultV1 is IGudVault {

  error ExceedDepositBalance();
  error EthWithdrawFailed();

  event Withdraw(IERC20 indexed token, address indexed user, uint256 indexed amount, uint256 shareBurnt);

  function withdraw(IERC20 token, uint256 amount) external;
  function withdrawStETH(uint256 share) external;
}