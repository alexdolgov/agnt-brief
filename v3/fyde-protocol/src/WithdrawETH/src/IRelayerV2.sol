// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

struct UserRequest {
    address asset;
    uint256 amount;
}

interface IRelayerV2 {
    function deposit(UserRequest[] memory _userRequest, bool _keepGovRights, uint256 _minTRSYExpected) external;
}
