// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IGudDeposits {

  error DepositZeroAmount();
  error InvalidStETHShare();
  error UnsupportedToken();

  event Deposit(address indexed token, address indexed user, uint256 indexed depositAmt, uint256 shareIssued);
  event EnlistNewToken(address indexed token);

  function deposit(IERC20 token, uint256 amount) external;
  function depositETH() external payable;
  function enlistNewToken(IERC20 token) external;

  function getUserDeposit(IERC20 token, address user) external view returns(uint256);
  function getStEthTotalShare() external view returns(uint256);
  function getStEthShare(address user) external view returns(uint256);
  function getUserStETH(address user) external view returns(uint256);
}