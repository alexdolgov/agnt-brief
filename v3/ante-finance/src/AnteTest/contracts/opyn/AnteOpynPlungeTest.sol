// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../AnteTest.sol";

/// @notice Checks if the balance in the Opyn Controller is at least 1000 ETH
contract AnteOpynPlungeTest is AnteTest("Opyn Controller balance is at least 1,000 ETH") {
    // https://etherscan.io/token/0x64187ae08781B09368e6253F9E94951243A493D5
    address public constant OPYN_CONTROLLER = 0x64187ae08781B09368e6253F9E94951243A493D5;

    // ~6.9K ETH as of 2022-12-06 (nice), 1000 ETH is a ~85% drop
    uint256 public constant FAILURE_THRESHOLD = 1000 * 1e18;

    constructor() {
        protocolName = "Opyn";
        testedContracts = [OPYN_CONTROLLER];
    }

    /// @return true if the ETH balance is at least 1000 ETH
    function checkTestPasses() public view override returns (bool) {
        return OPYN_CONTROLLER.balance > FAILURE_THRESHOLD;
    }
}
