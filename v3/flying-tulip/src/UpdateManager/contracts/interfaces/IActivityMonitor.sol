// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Activity monitor collects info about the bridge participation by individual validators.
interface IActivityMonitor {

    // mark validators as active (to be called by UpdateVerifier)
    function markActivity(uint256[] calldata validators) external;

    // get validator last activity block height
    function validatorLastActivity(uint256 validatorId) external returns(uint256);

}
