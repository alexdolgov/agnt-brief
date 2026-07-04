// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

interface IPoolFactory {
    function createUnstakeEsXaiRequest(address pool, uint256 amount) external;
    function stakeEsXai(address pool, uint256 amount) external;
    function unstakeEsXai(address pool, uint256 unstakeRequestIndex, uint256 amount) external;
    function claimFromPools(address[] memory pools) external;
    function getPoolIndicesOfUser(address user) external view returns (address[] memory);

    /// @dev Derived from storage variables marked public
    function esXaiAddress() external view returns (address);
    function unstakeEsXaiDelayPeriod() external view returns (uint256);
}
