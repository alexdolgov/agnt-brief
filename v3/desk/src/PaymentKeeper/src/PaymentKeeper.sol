// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {AutomationCompatible} from "lib/chainlink/contracts/src/v0.8/automation/AutomationCompatible.sol";

import {AutoRefill} from "src/libraries/AutoRefill.sol";
import {IWETH} from "src/vendors/weth/IWETH.sol";
import {ISwapRouter} from "src/vendors/uniswap/ISwapRouter.sol";
import {IKeeperRegistry} from "src/vendors/chainlink/IKeeperRegistry.sol";

contract PaymentKeeper is Ownable, AutomationCompatible {
  using SafeERC20 for IERC20;

  struct PaymentInfo {
    IERC20 token;
    address to;
    uint256 amount;
  }

  PaymentInfo[] public payments;
  uint256 public lastUpkeptAt;

  IKeeperRegistry public keeperRegistry;
  uint256 public keeperId;

  address public treasury;
  ISwapRouter public router;
  IWETH public weth;
  IERC20 public link;
  uint256 public topupAmountEth;

  /// Constants
  uint64 private constant WEEK = 7 days;

  /// Events
  event AddPayment(uint256 indexed paymentId, PaymentInfo newPayment);
  event RemovePayment(uint256 indexed paymentId, PaymentInfo removedPayment);
  event SetKeeperId(uint256 keeperId);
  event SetTopupAmountEth(uint256 topupAmountEth);
  event Topup(uint256 amount);

  constructor(
    address _treasury,
    address _router,
    address _keeperRegistry,
    address _weth,
    address _link,
    uint256 _topupAmountEth
  ) {
    treasury = _treasury;
    router = ISwapRouter(_router);
    keeperRegistry = IKeeperRegistry(payable(_keeperRegistry));
    weth = IWETH(_weth);
    link = IERC20(_link);
    topupAmountEth = _topupAmountEth;
    lastUpkeptAt = _floorWeek(block.timestamp);

    // Approve
    IERC20(weth).safeApprove(_router, type(uint256).max);
    link.safeApprove(_router, type(uint256).max);
    link.safeApprove(_keeperRegistry, type(uint256).max);
  }

  function _floorWeek(uint256 _timestamp) internal pure returns (uint256) {
    return _timestamp / WEEK * WEEK;
  }

  function checkUpkeep(bytes calldata /* data */ )
    external
    view
    override
    returns (bool upkeepNeeded, bytes memory performData)
  {
    return ((block.timestamp - lastUpkeptAt) >= WEEK, "");
  }

  function performUpkeep(bytes calldata /* performData */ ) external override {
    // Check
    require((block.timestamp - lastUpkeptAt) >= WEEK, "too early");

    // Effect
    lastUpkeptAt = _floorWeek(block.timestamp);

    // Interaction
    uint256 _len = payments.length;
    PaymentInfo memory _sloadedPaymentInfo;
    for (uint256 i = 0; i < _len;) {
      _sloadedPaymentInfo = payments[i];
      _sloadedPaymentInfo.token.safeTransferFrom(
        treasury, _sloadedPaymentInfo.to, _sloadedPaymentInfo.amount
      );
      unchecked {
        ++i;
      }
    }

    // Add funds to keeper if needed
    uint256 _linkReceived = AutoRefill.addFundsIfNeeded(
      keeperRegistry,
      router,
      weth,
      link,
      keeperId,
      treasury,
      topupAmountEth,
      3 ether
    );
    emit Topup(_linkReceived);
  }

  function getPaymentsLength() external view returns (uint256) {
    return payments.length;
  }

  function addPayment(IERC20 _token, address _to, uint256 _amount)
    external
    onlyOwner
  {
    PaymentInfo memory _paymentInfo = PaymentInfo(_token, _to, _amount);
    payments.push(_paymentInfo);
    emit AddPayment(payments.length - 1, _paymentInfo);
  }

  function removePayment(uint256 _index) external onlyOwner {
    PaymentInfo memory _removedPayment = payments[_index];
    payments[_index] = payments[payments.length - 1];
    payments.pop();
    emit RemovePayment(_index, _removedPayment);
  }

  function setKeeperId(uint256 _keeperId) external onlyOwner {
    keeperId = _keeperId;
    emit SetKeeperId(_keeperId);
  }

  function setTopupAmountEth(uint256 _topupAmountEth) external onlyOwner {
    topupAmountEth = _topupAmountEth;
    emit SetTopupAmountEth(_topupAmountEth);
  }
}
