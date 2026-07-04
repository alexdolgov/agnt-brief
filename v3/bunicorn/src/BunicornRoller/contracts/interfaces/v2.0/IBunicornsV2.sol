// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface IBunicornsV2 {
    // read
    function getTotalBunicorns() external view returns(uint256);

    // write
    function mintOneBunicornBySpecs(address _tokenOwner, uint16 _props, uint16 _attr1, uint16 _attr2, uint16 _attr3) external returns(uint256);
    function mintByMigrator(address _tokenOwner, uint16 _props, uint16 _attr1, uint16 _attr2, uint16 _attr3, uint8 _level) external;
    function setEnhancePowerByMigrator(uint256 _tokenId, uint8 _lowBurnPoints, uint8 _fourBurnPoints, uint8 _fiveBurnPoints) external;
}