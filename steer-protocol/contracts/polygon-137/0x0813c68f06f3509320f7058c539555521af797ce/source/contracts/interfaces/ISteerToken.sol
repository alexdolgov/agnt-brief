// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

interface ISteerToken {
    function createSnapshot() external returns (uint256);

    function verifyVote(
        string memory mailTo,
        string memory mailContents,
        bytes memory signature
    ) external returns (address);
}
