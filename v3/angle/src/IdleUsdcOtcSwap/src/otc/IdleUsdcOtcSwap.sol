// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title IdleUsdcOtcSwap
/// @notice Fixed-terms OTC swap where a USDC buyer escrows funds until the Idle seller delivers
/// @dev Designed for a single fill between two pre-agreed counterparties
contract IdleUsdcOtcSwap {
  using SafeERC20 for IERC20;

  /// @notice IDLE token sold into the swap
  IERC20 public immutable idle;
  /// @notice USDC token paid out when the swap settles
  IERC20 public immutable usdc;
  /// @notice Seller that delivers IDLE and receives USDC
  address public immutable idleSeller;
  /// @notice Buyer that deposits USDC and receives IDLE
  address public immutable usdcBuyer;
  /// @notice Amount of IDLE that must be delivered by the seller
  uint256 public immutable idleAmount;
  /// @notice Amount of USDC that must be deposited by the buyer
  uint256 public immutable usdcAmount;
  /// @notice Pareto TL multisig that can recover funds in emergencies
  address public constant OWNER = 0xFb3bD022D5DAcF95eE28a6B07825D4Ff9C5b3814;

  /// @notice Tracks whether the USDC side has already funded the trade
  bool public usdcDeposited;
  /// @notice Tracks whether the swap has been fully settled
  bool public swapSettled;

  error ZeroAddress();
  error ZeroAmount();
  error IdenticalTokens();
  error NotUsdcBuyer();
  error NotIdleSeller();
  error UsdcAlreadyFunded();
  error UsdcNotFunded();
  error SwapAlreadySettled();
  error NotOwner();

  event UsdcDeposited(address indexed buyer, uint256 amount);
  event UsdcRefunded(address indexed buyer, uint256 amount);
  event SwapSettled(address indexed idleSeller, address indexed usdcBuyer, uint256 idleAmount, uint256 usdcAmount);
  event FundsRecovered(address indexed token, address indexed recipient, uint256 amount);

  /// @param _idle Address of the IDLE token contract
  /// @param _usdc Address of the USDC token contract
  /// @param _idleSeller Address that delivers IDLE and receives USDC
  /// @param _usdcBuyer Address that supplies USDC and receives IDLE
  /// @param _idleAmount Exact IDLE amount (18 decimals) sold into the swap
  /// @param _usdcAmount Exact USDC amount (6 decimals) paid out on settlement
  constructor(
    IERC20 _idle,
    IERC20 _usdc,
    address _idleSeller,
    address _usdcBuyer,
    uint256 _idleAmount,
    uint256 _usdcAmount
  ) {
    if (address(_idle) == address(0) || address(_usdc) == address(0) || _idleSeller == address(0) || _usdcBuyer == address(0)) {
      revert ZeroAddress();
    }
    if (_idleAmount == 0 || _usdcAmount == 0) {
      revert ZeroAmount();
    }
    if (address(_idle) == address(_usdc)) {
      revert IdenticalTokens();
    }

    idle = _idle;
    usdc = _usdc;
    idleSeller = _idleSeller;
    usdcBuyer = _usdcBuyer;
    idleAmount = _idleAmount;
    usdcAmount = _usdcAmount;
  }

  modifier onlyUsdcBuyer() {
    if (msg.sender != usdcBuyer) {
      revert NotUsdcBuyer();
    }
    _;
  }

  modifier onlyIdleSeller() {
    if (msg.sender != idleSeller) {
      revert NotIdleSeller();
    }
    _;
  }

  modifier onlyOwner() {
    if (msg.sender != OWNER) {
      revert NotOwner();
    }
    _;
  }

  /// @notice USDC buyer escrows the agreed USDC amount inside the contract
  /// @dev Callable only once before settlement; caller must approve `usdcAmount`
  function depositUSDC() external onlyUsdcBuyer {
    if (swapSettled) {
      revert SwapAlreadySettled();
    }
    if (usdcDeposited) {
      revert UsdcAlreadyFunded();
    }
    usdcDeposited = true;
    usdc.safeTransferFrom(msg.sender, address(this), usdcAmount);
    emit UsdcDeposited(msg.sender, usdcAmount);
  }

  /// @notice Allows the USDC buyer to reclaim funds before the swap settles
  function refundUSDC() external onlyUsdcBuyer {
    if (swapSettled) {
      revert SwapAlreadySettled();
    }
    if (!usdcDeposited) {
      revert UsdcNotFunded();
    }
    usdcDeposited = false;
    usdc.safeTransfer(msg.sender, usdcAmount);
    emit UsdcRefunded(msg.sender, usdcAmount);
  }

  /// @notice IDLE seller delivers tokens and receives escrowed USDC in one transaction
  /// @dev Pulls IDLE directly into the USDC buyer and forwards USDC to the seller
  function depositIdleAndSettle() external onlyIdleSeller {
    if (swapSettled) {
      revert SwapAlreadySettled();
    }
    if (!usdcDeposited) {
      revert UsdcNotFunded();
    }

    swapSettled = true;
    usdcDeposited = false;

    idle.safeTransferFrom(msg.sender, usdcBuyer, idleAmount);
    usdc.safeTransfer(msg.sender, usdcAmount);

    emit SwapSettled(msg.sender, usdcBuyer, idleAmount, usdcAmount);
  }

  /// @notice Enables the TL multisig to rescue stuck ERC20 funds
  /// @param token ERC20 token to recover
  /// @param recipient Destination that will receive the recovered funds
  /// @param amount Amount of tokens to transfer
  function recoverToken(IERC20 token, address recipient, uint256 amount) external onlyOwner {
    if (address(token) == address(0) || recipient == address(0)) {
      revert ZeroAddress();
    }
    if (amount == 0) {
      revert ZeroAmount();
    }

    token.safeTransfer(recipient, amount);

    if (address(token) == address(usdc) && usdc.balanceOf(address(this)) < usdcAmount) {
      usdcDeposited = false;
    }

    emit FundsRecovered(address(token), recipient, amount);
  }
}
