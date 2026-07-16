// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { OwnableUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import { SafeERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { IDeskExchanger } from "src/interfaces/IDeskExchanger.sol";

/// @title DeskExchanger
/// @notice Contract for exchanging HMX tokens to DESK tokens at a fixed ratio
/// @dev Implements a 1:100 exchange ratio between HMX and DESK tokens
contract DeskExchanger is OwnableUpgradeable, IDeskExchanger {
  using SafeERC20 for IERC20;

  /// @notice The exchange ratio between HMX and DESK tokens (1 HMX = 100 DESK)
  uint256 public constant RATIO = 100;

  /**
   * States
   */
  address public desk;
  address public bDesk;
  address public hmx;
  address public esHmx;
  address public lhmx2;
  address public lhmx3;
  address public ldesk2;
  address public ldesk3;
  uint256 public startTimestamp;
  uint256 public endTimestamp;
  mapping(address => bool) public whitelisted;

  error ZeroAmount();
  error ZeroAddress();
  error NotStarted();
  error Ended();
  error InvalidToken();

  event LogSetStartTimestamp(uint256 startTimestamp);
  event LogSetEndTimestamp(uint256 endTimestamp);
  event LogSetWhitelisted(address indexed _address, bool _whitelisted);

  function initialize(
    address _desk,
    address _bDesk,
    address _hmx,
    address _esHmx,
    address _lhmx2,
    address _lhmx3,
    address _ldesk2,
    address _ldesk3,
    uint256 _startTimestamp,
    uint256 _endTimestamp
  ) external initializer {
    OwnableUpgradeable.__Ownable_init();

    if (_desk == address(0)) revert ZeroAddress();
    if (_bDesk == address(0)) revert ZeroAddress();
    if (_hmx == address(0)) revert ZeroAddress();
    if (_esHmx == address(0)) revert ZeroAddress();
    if (_lhmx2 == address(0)) revert ZeroAddress();
    if (_lhmx3 == address(0)) revert ZeroAddress();
    if (_ldesk2 == address(0)) revert ZeroAddress();
    if (_ldesk3 == address(0)) revert ZeroAddress();

    desk = _desk;
    bDesk = _bDesk;
    hmx = _hmx;
    esHmx = _esHmx;
    lhmx2 = _lhmx2;
    lhmx3 = _lhmx3;
    ldesk2 = _ldesk2;
    ldesk3 = _ldesk3;
    startTimestamp = _startTimestamp;
    endTimestamp = _endTimestamp;
  }

  function exchangeToken(address fromToken, uint256 amount) external returns (uint256) {
    if (amount == 0) revert ZeroAmount();
    if (!whitelisted[msg.sender]) {
      if (block.timestamp < startTimestamp) revert NotStarted();
      if (block.timestamp > endTimestamp) revert Ended();
    }

    address toToken;
    if (fromToken == hmx) {
      toToken = desk;
    } else if (fromToken == esHmx) {
      toToken = bDesk;
    } else if (fromToken == lhmx2) {
      toToken = ldesk2;
    } else if (fromToken == lhmx3) {
      toToken = ldesk3;
    } else {
      revert InvalidToken();
    }

    // Receive tokens from user
    IERC20(fromToken).safeTransferFrom(msg.sender, address(this), amount);

    // Return tokens to user
    uint256 returnedAmount = amount * RATIO;
    IERC20(toToken).safeTransfer(msg.sender, returnedAmount);

    emit ExchangeToken(msg.sender, fromToken, toToken, amount, returnedAmount);

    return returnedAmount;
  }

  function setStartTimestamp(uint256 _startTimestamp) external onlyOwner {
    startTimestamp = _startTimestamp;

    emit LogSetStartTimestamp(startTimestamp);
  }

  function setEndTimestamp(uint256 _endTimestamp) external onlyOwner {
    endTimestamp = _endTimestamp;

    emit LogSetEndTimestamp(endTimestamp);
  }

  function setWhitelisted(address _address, bool _whitelisted) external onlyOwner {
    whitelisted[_address] = _whitelisted;

    emit LogSetWhitelisted(_address, _whitelisted);
  }

  function pullDesk(address to, uint256 amount) external onlyOwner {
    IERC20(desk).safeTransfer(to, amount);
  }

  function burnUnusedEsHmx() external onlyOwner {
    IERC20(esHmx).safeTransfer(
      address(0x000000000000000000000000000000000000dEaD),
      IERC20(esHmx).balanceOf(address(this))
    );
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}
