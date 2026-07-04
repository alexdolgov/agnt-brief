// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

contract GasClaim is OwnableUpgradeable, ReentrancyGuardUpgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  struct UserInfo {
    uint256 amount;
    uint256 paid;
    bool claimed;
    bool removed;
  }

  struct UserAdd {
    address userAddress;
    uint256 amount;
  }

  mapping(address => UserInfo) public userInfo;

  IERC20Upgradeable public stella;

  function initialize(IERC20Upgradeable _stella) external initializer {
    stella = _stella;
    __Ownable_init();
  }

  function getUserInfo(address userAddr) view external returns (uint256 amount, bool claimed) {
    amount = userInfo[userAddr].amount - userInfo[userAddr].paid;
    claimed = userInfo[userAddr].claimed;
  }

  function addUsers(UserAdd[] memory _users) external onlyOwner {
    for (uint256 i = 0; i < _users.length; i++) {
      UserInfo storage user = userInfo[_users[i].userAddress];
      user.amount = _users[i].amount;
    }
  }

  function addExistingUsers(UserAdd[] memory _users) external onlyOwner {
    for (uint256 i = 0; i < _users.length; i++) {
      UserInfo storage user = userInfo[_users[i].userAddress];
      user.amount = _users[i].amount;
      user.claimed = false;
    }
  }

  function removeUsers(address[] memory _users, bool _remove)
    external
    onlyOwner
  {
    for (uint256 i = 0; i < _users.length; i++) {
      userInfo[_users[i]].removed = _remove;
    }
  }

  function claim() external {
    UserInfo storage user = userInfo[msg.sender];
    uint256 toPay = user.amount - user.paid;
    require(toPay > 0, "toPay must be greater than zero");
    bool isClaimedOrRemoved =user.claimed || user.removed;
    require(!isClaimedOrRemoved, "Cannot claim because you've already claimed or removed");

    user.claimed = true;
    user.paid += toPay;
    stella.safeTransfer(msg.sender, toPay);
  }

  function inCaseTokensGetStuck(address _token, uint256 _amount)
    external
    onlyOwner
  {
    IERC20Upgradeable(_token).safeTransfer(msg.sender, _amount);
  }
}
