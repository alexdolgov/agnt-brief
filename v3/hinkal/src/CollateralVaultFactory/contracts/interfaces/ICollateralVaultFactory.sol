// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

import "./ICollateralVault.sol";

interface ICollateralVaultFactory {
    function ownerOf(
        address _collection,
        uint256 _nftIndex
    ) external view returns (address);

    function depositCollateral(
        address _collection,
        uint256 _nftIndex,
        address _owner
    ) external;

    function withdrawCollateral(
        address _collection,
        uint256 _nftIndex,
        address _recipient
    ) external;
}
