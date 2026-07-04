// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// State oracle provides the hash of a different chain state.
interface IStateOracle {
    function lastState() external view returns (bytes32);
    function lastBlockNum() external view returns (uint256);
    function lastUpdateTime() external view returns (uint256);
    function chainId() external view returns (uint256);

    function update(uint256 blockNum, bytes32 stateRoot) external;
}
