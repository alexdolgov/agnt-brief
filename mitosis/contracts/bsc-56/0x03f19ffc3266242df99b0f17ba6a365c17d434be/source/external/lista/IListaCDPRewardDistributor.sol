// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

interface IListaCDPRewardDistributor {
  function claim(uint64 _epochId, address _account, uint256 _amount, bytes32[] memory _proof)
    external;
}
