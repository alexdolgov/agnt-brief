// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

enum YieldMode {
    AUTOMATIC,
    VOID,
    CLAIMABLE
}

interface IBlast {
    function configureClaimableGas() external;

    function configureGovernor(address governor) external;

    function configureGovernorOnBehalf(address _newGovernor, address contractAddress) external;
}
