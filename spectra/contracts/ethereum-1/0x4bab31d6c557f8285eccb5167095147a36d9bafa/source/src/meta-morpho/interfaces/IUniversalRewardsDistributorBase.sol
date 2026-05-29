// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

interface IUniversalRewardsDistributorBase {
    function root() external view returns (bytes32);

    function owner() external view returns (address);

    function timelock() external view returns (uint256);

    function ipfsHash() external view returns (bytes32);

    function isUpdater(address) external view returns (bool);

    function claimed(address, address) external view returns (uint256);

    function acceptRoot() external;

    function claim(
        address account,
        address reward,
        uint256 claimable,
        bytes32[] memory proof
    ) external returns (uint256 amount);
}
