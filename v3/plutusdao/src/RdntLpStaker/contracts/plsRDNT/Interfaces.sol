// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.16;
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { IProtocolRewardsHandler } from '../interfaces/Radiant.sol';

interface IPlsRdntRewardsDistro {
  function sendRewards(address _to, IProtocolRewardsHandler.RewardData[] memory _pendingRewardAmounts) external;
}

interface IRdntLpStaker {
  function stake(uint256) external;

  function getRewardTokens() external view returns (address[] memory);

  function getRewardTokenCount() external view returns (uint);

  function claimProtocolFees(
    address _to
  ) external returns (IProtocolRewardsHandler.RewardData[] memory _protocolFeeRewards);

  function pendingRewardsLessFee()
    external
    view
    returns (IProtocolRewardsHandler.RewardData[] memory _protocolFeeRewards);
}

interface IPlutusChef {
  function depositFor(address _user, uint96 _amount) external;
}

interface ITokenMinter {
  function mint(address, uint256) external;

  function burn(address, uint256) external;
}

interface IDelegation {
  function setDelegate(bytes32 id, address delegate) external;
}

interface IPlsRdntPlutusChef is IPlutusChef {
  struct UserInfo {
    uint96 amount;
    int128 plsRewardDebt;
    int128 rdntRewardDebt;
    int128 rWethRewardDebt;
    int128 rWbtcRewardDebt;
    int128 rUsdcRewardDebt;
    int128 rUsdtRewardDebt;
    int128 rDaiRewardDebt;
  }

  error DEPOSIT_ERROR();
  error WITHDRAW_ERROR();
  error UNAUTHORIZED();
  error FAILED(string);

  event HandlerUpdated(address indexed _handler, bool _isActive);
  event Deposit(address indexed _user, uint256 _amount);
  event Withdraw(address indexed _user, uint256 _amount);
  event EmergencyWithdraw(address indexed _user, uint256 _amount);
}
