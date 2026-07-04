// SPDX-License-Identifier: BUSL1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./ICauldronV1.sol";

library UnlimitedCauldronState {
  struct State {
    IERC20 raisingToken;
    IERC20 offeringToken;

    uint256 startsAt;
    uint256 endsAt;
    
    uint256 raisingGoal;
    uint256 offeringGoal;

    uint256 totalRaised;
    bool raisingTokensCollected;

    mapping(address => ICauldronV1.UserInfo) users;
  }

  // read-only
  function funded(State storage state) public view returns (bool) {
    return state.totalRaised >= state.raisingGoal;
  }
  function offeringTokensPurchased(State storage state, address user) public view returns (uint256) {
    if(!funded(state)) {
      return 0;
    }

    uint256 raisingTokenAmount = state.users[user].amount;

    return (raisingTokenAmount * state.offeringGoal) / state.raisingGoal;
  }
  function raisingTokensToRefund(State storage state, address user) public view returns (uint256) {
    if(funded(state)) {
      return 0;
    }

    return state.users[user].amount;
  }
  function canClaim(State storage state, address user) public view returns (bool) {
    return !state.users[user].claimed && state.users[user].amount > 0;
  }
  function ended(State storage state, uint256 when) public view returns (bool) {
    return state.endsAt < when;
  }
  function active(State storage state, uint256 when) public view returns (bool) {
    return state.startsAt <= when && state.endsAt >= when;
  }
  function toIFOInfo(State storage state) public view returns (ICauldronV1.IFOInfo memory) {
    return ICauldronV1.IFOInfo({
      lpToken: state.raisingToken,
      offeringToken: state.offeringToken,
      startTime: state.startsAt,
      endTime: state.endsAt,
      raisingAmount: state.raisingGoal,
      offeringAmount: state.offeringGoal,
      totalAmount: state.totalRaised
    });
  }

  // mutations
  function handleDeposit(State storage state, uint256 when, address user, uint256 amount) external {
    require(active(state, when), "expected offering to be active");

    state.totalRaised += amount;
    state.users[user].amount += amount;
  }

  function handleHarvest(State storage state, uint256 when, address user) external {
    require(ended(state, when), "expected offering to have ended");
    require(canClaim(state, user), "expected user to be able to claim");

    state.users[user].claimed = true;
  }

  function collectRaisingTokens(State storage state, uint256 when) external {
    require(ended(state, when), "expected offering to have ended");
    require(funded(state), "expected offering to be funded");
    require(state.raisingTokensCollected == false, "expected raising tokens to not be collected");

    state.raisingTokensCollected = true;
  }
}

contract UnlimitedCauldron is ICauldronV1 {
  using SafeERC20 for IERC20;
  using UnlimitedCauldronState for UnlimitedCauldronState.State;

  UnlimitedCauldronState.State public state;
  address public recipient;

  constructor(address initialRecipient, IERC20 raisingToken, IERC20 offeringToken, uint256 startsAt, uint256 endsAt, uint256 raisingGoal, uint256 offeringGoal) {
    state.raisingToken = raisingToken;
    state.offeringToken = offeringToken;
    state.startsAt = startsAt;
    state.endsAt = endsAt;
    state.raisingGoal = raisingGoal;
    state.offeringGoal = offeringGoal;
    state.totalRaised = 0;
    state.raisingTokensCollected = false;

    recipient = initialRecipient;
  }
  
  function ifoInfo() external override view returns (IFOInfo memory) {
    return state.toIFOInfo();
  }

  function userInfo(address userId) external override view returns (UserInfo memory) {
    return state.users[userId];
  }

  function hasHarvest(address userId) external override view returns (bool) {
    return state.canClaim(userId);
  }

  function deposit(uint256 amount) external override {
    IERC20 raisingToken = state.raisingToken;

    uint256 balanceBefore = raisingToken.balanceOf(address(this));
    raisingToken.safeTransferFrom(msg.sender, address(this), amount);
    amount = raisingToken.balanceOf(address(this)) - balanceBefore;

    state.handleDeposit(block.timestamp, msg.sender, amount);
  }

  function harvest() external override {

    state.handleHarvest(block.timestamp, msg.sender);
    if(state.funded()) {
      IERC20 offeringToken = state.offeringToken;
      uint256 purchasedTokens = state.offeringTokensPurchased(msg.sender);

      offeringToken.safeTransfer(msg.sender, purchasedTokens);
    } else {
      IERC20 raisingToken = state.raisingToken;
      uint256 refundAmount = state.raisingTokensToRefund(msg.sender);

      raisingToken.safeTransfer(msg.sender, refundAmount);
    }
  }

  // administration
  function collectEarnedRaisingTokens() external {
    
    state.collectRaisingTokens(block.timestamp);

    uint256 balance = state.raisingToken.balanceOf(address(this));
    uint256 amount = balance < state.totalRaised ? balance
      : state.totalRaised;

    state.raisingToken.safeTransfer(recipient, amount);
  }
}
