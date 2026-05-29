// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

interface ICollateralVault {
    function initialize(address _collection, address _factory) external;

    function ownerOf(uint256 _nftIndex) external view returns (address);

    function depositCollateral(uint256 _nftIndex, address _owner) external;

    function withdrawCollateral(uint256 _nftIndex, address _recipient) external;
}
