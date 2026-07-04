// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface IVoter {
    function votedWeight(address, uint256) external view returns (uint256);
    function totalVotedWeight(uint256) external view returns (uint256);
}
