// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IArbSys {
    function arbBlockNumber() external view returns (uint256);

    function arbBlockHash(uint256 arbBlockNumber) external view returns (bytes32);

    function arbChainID() external view returns (uint256);
}
