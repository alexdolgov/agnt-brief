// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


import "../utilities/AccessControlEnumerableV2.sol";
import "../interfaces/ISchool.sol";

contract AdjustManyStatAsAllowedAdjuster is AccessControlEnumerableV2 {
    address school;

    constructor(address _school) {
        school = _school;
    }

    function addManyStatAsAllowedAdjusterForOneCollectionAndOneStat(
        address _collectionAddress,
        uint64 _statId,
        uint256[] calldata _tokenIds,
        uint128[] calldata _amountOfStatToAdd
    ) external requiresRole(OWNER_ROLE) {
        require(_amountOfStatToAdd.length == _tokenIds.length);
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            ISchool(school).addStatAsAllowedAdjuster(
                _collectionAddress,
                _statId,
                _tokenIds[i],
                _amountOfStatToAdd[i]
            );
        }
    }
}
