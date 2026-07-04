// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

interface IFeeManagerLight {
    function addPoolTokenAddress(
        address _poolToken
    )
        external;

    function updatePositionCurrentBadDebt(
        uint256 _nftId
    )
        external;
}
