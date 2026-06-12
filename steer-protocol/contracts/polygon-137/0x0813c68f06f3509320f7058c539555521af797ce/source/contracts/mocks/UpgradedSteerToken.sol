// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

import "../SteerToken.sol";

/// @title Steer Protocol Governance Token
/// @author Steer Protocol
/// @dev This token is used within the governance contracts
contract UpgradedSteerToken is SteerToken {
    uint256 public num;

    function setNum(uint256 _num) external {
        num = _num;
    }
}
