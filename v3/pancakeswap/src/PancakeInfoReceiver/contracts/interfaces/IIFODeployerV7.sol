// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/** @title IIFODeployerV7.
 * @notice It is an interface for IFODeployerV7.sol
 */
interface IIFODeployerV7 {

    function previousIFOAddress() external view returns (address);

    function currIFOAddress() external view returns (address);
}