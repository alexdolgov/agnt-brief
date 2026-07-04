// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IFarmBooster {
    function getVotingPower(
        address userAddress
    ) external view returns (uint256);
}
