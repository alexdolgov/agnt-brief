// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./MarsStratX2.sol";

contract MarsStratX2_PCS is MarsStratX2 {
    constructor(
        address _core,
        address[] memory _addresses,
        uint256 _pid,
        bool _isCAKEStaking
    ) public MarsStratX2(_core) {
        wbnbAddress = _addresses[0];
        marsFarmAddress = _addresses[1];
        wantAddress = _addresses[2];
        earnedAddress = _addresses[3];
        farmContractAddress = _addresses[4];
        devAddress = _addresses[5];
        pid = _pid;
        isCAKEStaking = _isCAKEStaking;
    }
}
