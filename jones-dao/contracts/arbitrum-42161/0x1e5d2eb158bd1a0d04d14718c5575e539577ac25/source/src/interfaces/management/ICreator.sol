// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
pragma abicoder v2;

interface ICreator {
    // GOV
    function setBeacons(address[] calldata _beacons) external;

    // VIEW
    function getBeacons() external view returns (address[] memory);

    // OPERATOR
    function createBeacon(address _beacon) external returns (address);
}
