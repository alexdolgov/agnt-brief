// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable2StepUpgradeable } from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import { IGudDeposits } from "./interfaces/IGudDeposits.sol";

abstract contract GudDeposits is IGudDeposits, Ownable2StepUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {

  using SafeERC20 for IERC20;

  IERC20 constant internal _LIDO = IERC20(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);
  IERC20 constant internal _WBETH= IERC20(0xa2E3356610840701BDf5611a53974510Ae27E2e1);
  IERC20 constant internal _METH = IERC20(0xd5F7838F5C461fefF7FE49ea5ebaF7728bB0ADfa);
  IERC20 constant internal _DAI  = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
  IERC20 constant internal _SDAI = IERC20(0x83F20F44975D03b1b09e64809B757c47f942BEeA);
  IERC20 constant internal _USDT = IERC20(0xdAC17F958D2ee523a2206206994597C13D831ec7);
  IERC20 constant internal _USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
  IERC20 constant internal _ETH  = IERC20(address(0));

  uint256 constant internal _NO_SHARE_ISSUED = 0;

  uint256 internal _stETHTotalShare;
  mapping(address => uint256) internal _stETHShares;
  // wBETH, mETH, USDT, USDC
  mapping(IERC20 token => mapping(address => uint256)) internal _depositBalance;
  mapping(IERC20 => bool) internal _supportedToken;

  function __Deposits_init(address _owner) internal initializer {
    __Ownable_init(_owner);
    __Pausable_init();
    __ReentrancyGuard_init();

    _pause();
    _supportedToken[_LIDO] = true;
    _supportedToken[_WBETH] = true;
    _supportedToken[_METH] = true;
    _supportedToken[_DAI] = true;
    _supportedToken[_SDAI] = true;
    _supportedToken[_USDT] = true;
    _supportedToken[_USDC] = true;
  }

  function supportedToken(IERC20 token) external view returns (bool) {
    return _supportedToken[token];
  }

  modifier nonZeroCheck(uint256 amount) {
    _notZero(amount);
    _;
  }

  function _notZero(uint256 amount) internal pure {
    if (amount == 0) {
      revert DepositZeroAmount();
    }
  }

  /// share related functions
  function _mintShare(address user, uint256 shareToIssue) internal {
    _stETHTotalShare += shareToIssue;
    _stETHShares[user] += shareToIssue;
  }

  function _burnShare(address user, uint256 shareToBurn) internal {
    _stETHTotalShare -= shareToBurn;
    _stETHShares[user] -= shareToBurn;
  }

  function _recordStEthDeposit(uint256 depositedAmount) internal whenNotPaused {
    uint256 shareToIssue = depositedAmount * _stETHTotalShare / _LIDO.balanceOf(address(this));
    _mintShare(msg.sender, shareToIssue);

    emit Deposit(address(_LIDO), msg.sender, depositedAmount, shareToIssue);
  }

  function _recordDeposit(IERC20 token, uint256 depositedAmount) internal whenNotPaused {
    _depositBalance[token][msg.sender] += depositedAmount;
    emit Deposit(address(token), msg.sender, depositedAmount, _NO_SHARE_ISSUED);
  }

  function deposit(IERC20 token, uint256 amount) external nonZeroCheck(amount) nonReentrant {
    if (_supportedToken[token] == false) {
      revert UnsupportedToken();
    }
    if (token == _LIDO) {
      _recordStEthDeposit(amount);
    } else {
      _recordDeposit(token, amount);
    }
    token.safeTransferFrom(msg.sender, address(this), amount);
  }

  function depositETH() public payable nonZeroCheck(msg.value) {
    _recordDeposit(_ETH, msg.value);
  }

  function enlistNewToken(IERC20 token) external onlyOwner {
    _supportedToken[token] = true;
    emit EnlistNewToken(address(token));
  }

  function getUserDeposit(IERC20 token, address user) external view returns(uint256) {
    return _depositBalance[token][user];
  }

  function getStEthTotalShare() external view returns(uint256) {
    return _stETHTotalShare; 
  }

  function getStEthShare(address user) external view returns(uint256) {
    return _stETHShares[user];
  }

  function getUserStETH(address user) external view returns(uint256 stEthBalance) {
    stEthBalance = _LIDO.balanceOf(address(this)) * _stETHShares[user] / _stETHTotalShare;
  }

  receive() external payable {
    depositETH();
  }
}