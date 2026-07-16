// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { OwnableUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import { IERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";
import { ERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import { SafeERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/utils/SafeERC20Upgradeable.sol";

import { IRewarder } from "./interfaces/IRewarder.sol";

contract Staking is OwnableUpgradeable {
  using SafeERC20Upgradeable for IERC20Upgradeable;

  error Staking_InsufficientTokenAmount();
  error Staking_InconsistentLength();
  error Staking_NotRewarder();
  error Staking_NotCompounder();
  error Staking_DuplicateRewarder();

  mapping(address => uint256) public userTokenAmount; // Track the staking token amount of each user
  mapping(address => bool) public isRewarder;
  address[] public rewarders;
  address public stakingToken;

  /// Delegate owner to perform migration on behalf of a user
  mapping(address user => bool isAllowed) public delegatedOf;

  /// Compounder allow list
  mapping(address compounder => bool isAllowed) public isCompounder;

  event LogDelegate(address indexed user, address indexed delegate, bool isAllowed);
  event LogDeposit(address indexed caller, address indexed user, uint256 amount);
  event LogWithdraw(address indexed caller, uint256 amount);
  event LogAddRewarder(address newRewarder);
  event LogSetCompounder(address oldCompounder, address newCompounder);
  event LogSetIsCompounder(address indexed compounder, bool isAllowed);
  event LogRemoveRewarder(uint256 indexed rewarderIndex, address indexed rewarder);

  function initialize(address _stakingToken) external initializer {
    OwnableUpgradeable.__Ownable_init();

    stakingToken = _stakingToken;
  }

  function addRewarders(address[] memory newRewarders) external onlyOwner {
    for (uint256 i; i < newRewarders.length; ) {
      address newRewarder = newRewarders[i];
      if (isRewarder[newRewarder]) revert Staking_DuplicateRewarder();

      rewarders.push(newRewarder);
      isRewarder[newRewarder] = true;

      emit LogAddRewarder(newRewarder);

      unchecked {
        ++i;
      }
    }
  }

  function removeRewarder(uint256 rewarderIndex) external onlyOwner {
    address rewarderToRemove = rewarders[rewarderIndex];
    rewarders[rewarderIndex] = rewarders[rewarders.length - 1];
    rewarders[rewarders.length - 1] = rewarderToRemove;
    rewarders.pop();
    isRewarder[rewarderToRemove] = false;

    emit LogRemoveRewarder(rewarderIndex, rewarderToRemove);
  }

  function setIsCompounders(
    address[] memory compounders,
    bool[] memory isAllowed
  ) external onlyOwner {
    uint256 length = compounders.length;
    if (length != isAllowed.length) revert Staking_InconsistentLength();

    for (uint256 i; i < length; ) {
      isCompounder[compounders[i]] = isAllowed[i];
      emit LogSetIsCompounder(compounders[i], isAllowed[i]);
      unchecked {
        ++i;
      }
    }
  }

  function delegate(bool allow) external {
    delegatedOf[msg.sender] = allow;
    emit LogDelegate(msg.sender, owner(), allow);
  }

  function deposit(address to, uint256 amount) external {
    _deposit(to, amount);
  }

  function _deposit(address to, uint256 amount) internal {
    // Call each associated rewarder's `onDeposit` function.
    for (uint256 i = 0; i < rewarders.length; ) {
      IRewarder(rewarders[i]).onDeposit(to, amount);
      unchecked {
        ++i;
      }
    }

    // Add the deposited amount to the user's token balance and transfer the staking token to the contract.
    userTokenAmount[to] += amount;
    IERC20Upgradeable(stakingToken).safeTransferFrom(msg.sender, address(this), amount);

    // Emit a LogDeposit event.
    emit LogDeposit(msg.sender, to, amount);
  }

  function withdraw(uint256 amount) external {
    _withdraw(amount);
  }

  function _withdraw(uint256 amount) internal {
    if (userTokenAmount[msg.sender] < amount) revert Staking_InsufficientTokenAmount();

    for (uint256 i; i < rewarders.length; ) {
      address rewarder = rewarders[i];

      IRewarder(rewarder).onWithdraw(msg.sender, amount);

      unchecked {
        ++i;
      }
    }

    userTokenAmount[msg.sender] -= amount;

    IERC20Upgradeable(stakingToken).safeTransfer(msg.sender, amount);

    emit LogWithdraw(msg.sender, amount);
  }

  function harvest(address[] memory _rewarders) external {
    _harvestFor(msg.sender, msg.sender, _rewarders);
  }

  function harvestToCompounder(address user, address[] memory _rewarders) external {
    if (!isCompounder[msg.sender]) revert Staking_NotCompounder();
    _harvestFor(user, msg.sender, _rewarders);
  }

  function _harvestFor(address user, address receiver, address[] memory _rewarders) internal {
    uint256 length = _rewarders.length;
    for (uint256 i; i < length; ) {
      if (!isRewarder[_rewarders[i]]) {
        revert Staking_NotRewarder();
      }

      IRewarder(_rewarders[i]).onHarvest(user, receiver);

      unchecked {
        ++i;
      }
    }
  }

  function calculateShare(address /*rewarder*/, address user) external view returns (uint256) {
    return userTokenAmount[user];
  }

  function calculateTotalShare(address /*rewarder*/) external view returns (uint256) {
    return IERC20Upgradeable(stakingToken).balanceOf(address(this));
  }

  function getRewarders() external view returns (address[] memory) {
    return rewarders;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}
