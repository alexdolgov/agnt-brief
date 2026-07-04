// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ISecHubFactory {
    function createSecHub(address to) external returns (address);

    function getSecHub(address user) external view returns (address);

    function getSecHubOwner(address secHub) external view returns (address);

    function router() external view returns (address _router);
}
