// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {AutomationCompatible} from "lib/chainlink/contracts/src/v0.8/automation/AutomationCompatible.sol";

import {IWETH} from "src/vendors/weth/IWETH.sol";
import {ISwapRouter} from "src/vendors/uniswap/ISwapRouter.sol";
import {IKeeperRegistry} from "src/vendors/chainlink/IKeeperRegistry.sol";

contract GasKeeper is Ownable, AutomationCompatible {
  using SafeERC20 for IERC20;

  struct GasInfo {
    address target;
    uint128 lower;
    uint128 upper;
  }

  IKeeperRegistry public keeperRegistry;
  uint256 public keeperId;

  ISwapRouter public router;

  address public treasury;
  IWETH public weth;
  IERC20 public link;
  uint256 public topupAmountEth;

  mapping(address => bool) public keepers;
  mapping(address => bool) public isTarget;
  GasInfo[] public gasInfo;

  event AddGasInfo(uint256 indexed _gasInfoId, GasInfo _newGasInfo);
  event RemoveGasInfo(uint256 indexed _gasInfoId);
  event SetKeeperId(uint256 _keeperId);
  event SetGasInfo(uint256 indexed _gasInfoId, GasInfo _newGasInfo);
  event SetTopupAmountEth(uint256 _topupAmountEth);
  event Topup(uint256 _amount);

  constructor(
    address _treasury,
    address _weth,
    address _link,
    address _keeperRegistry,
    address _router,
    uint256 _topupAmountEth
  ) {
    treasury = _treasury;
    weth = IWETH(_weth);
    link = IERC20(_link);
    keeperRegistry = IKeeperRegistry(payable(_keeperRegistry));
    router = ISwapRouter(_router);
    topupAmountEth = _topupAmountEth;

    // Approve router
    IERC20(weth).safeApprove(_router, type(uint256).max);
    link.safeApprove(_router, type(uint256).max);
    // Approve registry
    link.safeApprove(_keeperRegistry, type(uint256).max);
  }

  function checkUpkeep(bytes calldata /* checkData */ )
    external
    view
    override
    returns (bool upKeepNeeded, bytes memory performData)
  {
    uint256 len = gasInfo.length;
    for (uint256 i = 0; i < len;) {
      GasInfo memory _gasInfo = gasInfo[i];
      uint256 targetBal = _gasInfo.target.balance;
      if (targetBal < _gasInfo.lower) {
        return (true, "");
      }

      unchecked {
        ++i;
      }
    }

    return (false, "");
  }

  function performUpkeep(bytes calldata /* performData */ ) external override {
    GasInfo[] memory _gasInfo = gasInfo;
    uint256 len = _gasInfo.length;
    for (uint256 i = 0; i < len; i++) {
      // Check
      uint256 targetBal = _gasInfo[i].target.balance;
      if (targetBal >= gasInfo[i].lower) continue;

      uint256 gasNeeded = (_gasInfo[i].upper - targetBal);

      // Get WETH from treasury
      IERC20(weth).safeTransferFrom(treasury, address(this), gasNeeded);
      weth.withdraw(gasNeeded);

      (bool success,) = _gasInfo[i].target.call{value: gasNeeded, gas: 2300}("");
      if (!success) {
        revert("failed to send ether");
      }
    }
    _addFundsIfNeeded();
  }

  function _addFundsIfNeeded() internal {
    // If keeperId is not set then do nothing
    if (keeperId == 0) return;

    uint256 min = (keeperRegistry.getMinBalanceForUpkeep(keeperId)) + 5 ether;
    (,,, uint96 keeperBalance,,,,,) = keeperRegistry.getUpkeep(keeperId);

    // If keeper balance is above min then do nothing
    if (keeperBalance > min) return;

    // If below then topup
    // Take WETH from treasury, swap to LINK, and add to registry
    IERC20(weth).safeTransferFrom(treasury, address(this), topupAmountEth);
    uint256 linkReceived = router.exactInputSingle(
      ISwapRouter.ExactInputSingleParams(
        address(weth),
        address(link),
        3000,
        address(this),
        block.timestamp,
        topupAmountEth,
        0,
        0
      )
    );
    keeperRegistry.addFunds(keeperId, uint96(linkReceived));
    emit Topup(linkReceived);
  }

  function addGasInfo(GasInfo[] calldata newGasInfo) external onlyOwner {
    for (uint256 i = 0; i < newGasInfo.length;) {
      require(newGasInfo[i].upper > newGasInfo[i].lower, "upper <= lower");
      require(newGasInfo[i].target != address(0), "target is zero address");
      require(!isTarget[newGasInfo[i].target], "target already exists");

      isTarget[newGasInfo[i].target] = true;
      gasInfo.push(newGasInfo[i]);

      emit AddGasInfo(gasInfo.length - 1, newGasInfo[i]);

      unchecked {
        ++i;
      }
    }
  }

  function setGasInfo(uint256 gasInfoId, uint128 lower, uint128 upper)
    external
    onlyOwner
  {
    require(gasInfoId < gasInfo.length, "Out of bounds");
    require(upper > lower, "upper <= lower");

    gasInfo[gasInfoId].upper = upper;
    gasInfo[gasInfoId].lower = lower;

    emit SetGasInfo(gasInfoId, gasInfo[gasInfoId]);
  }

  function removeGasInfo(uint256 gasInfoId) external onlyOwner {
    require(gasInfoId < gasInfo.length, "Out of bounds");

    isTarget[gasInfo[gasInfoId].target] = false;
    gasInfo[gasInfoId] = gasInfo[gasInfo.length - 1];
    gasInfo.pop();

    emit RemoveGasInfo(gasInfoId);
  }

  function setTopupAmountEth(uint256 _topupAmountEth) external onlyOwner {
    topupAmountEth = _topupAmountEth;
    emit SetTopupAmountEth(_topupAmountEth);
  }

  function setKeeperId(uint256 _keeperId) external onlyOwner {
    keeperId = _keeperId;
    emit SetKeeperId(_keeperId);
  }

  receive() external payable {}
}
