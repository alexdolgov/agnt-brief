// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface IAirPuffHandler {
    function getPositionWithInterestRate(address _user, uint256 _positionID, address _AirPuffVault) external view returns (uint256,uint256);
    function keeper() external view returns (address);
    function vaultCurrentSnapshotID(address _vault) external view returns (uint256);
}
