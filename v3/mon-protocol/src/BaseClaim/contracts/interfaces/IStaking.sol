// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

interface IStaking {
    struct ClaimData {
        address[] _collectionAddresses;
        uint256[] _tokenIds;
        uint256[] _vestingScheduleIds;
    }

    function releaseFromClaimContracts(
        address[] calldata _claimContractAddresses,
        ClaimData[] calldata _claimData
    ) external returns (uint120 transferredAmount);
}
