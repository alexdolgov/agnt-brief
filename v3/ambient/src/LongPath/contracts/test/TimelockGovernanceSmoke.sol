// SPDX-License-Identifier: GPL-3
pragma solidity 0.8.19;

import "../vendor/compound/Timelock.sol";

contract TimelockGovernanceSmoke {
    event CrocGovernAuthority(address ops, address treasury, address emergency);

    address public immutable timelock_;
    address public opsAuthority_;
    address public treasuryAuthority_;
    address public emergencyAuthority_;

    constructor(address timelock) {
        require(timelock != address(0), "Invalid timelock");
        timelock_ = timelock;
    }

    function transferGovernance(address ops, address treasury, address emergency) public {
        require(msg.sender == timelock_, "Timelock authority");

        opsAuthority_ = ops;
        treasuryAuthority_ = treasury;
        emergencyAuthority_ = emergency;

        Timelock(payable(treasury)).acceptAdmin();
        Timelock(payable(ops)).acceptAdmin();
        Timelock(payable(emergency)).acceptAdmin();

        emit CrocGovernAuthority(ops, treasury, emergency);
    }
}
