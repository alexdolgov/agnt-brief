// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

interface IDistributor {
    function claim(
        address account,
        address reward,
        uint256 claimable,
        bytes32[] calldata proof
    ) external;
}
