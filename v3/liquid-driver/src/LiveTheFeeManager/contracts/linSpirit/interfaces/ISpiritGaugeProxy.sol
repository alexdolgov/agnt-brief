// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface ISpiritGaugeProxy{
  function vote(address[] calldata _tokenVote, uint256[] calldata _weights) external;
  function claimBribes(address[] memory _bribes, address _user) external;
}