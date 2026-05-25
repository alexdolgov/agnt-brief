// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/**
 * @custom:version 6.4.1
 */
interface IChainlinkOracle {
    function getAuthorizationStatus(address) external view returns (bool);

    function owner() external view returns (address);
}
