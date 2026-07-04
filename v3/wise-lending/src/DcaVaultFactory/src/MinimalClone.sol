// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * EIP-1167 minimal proxy deployment (bytecode aligned with OpenZeppelin Clones v5.0.x).
 * https://eips.ethereum.org/EIPS/eip-1167
 */
library MinimalClone {

    error CloneDeploymentFailed();

    function clone(
        address _implementation
    ) 
        internal 
        returns (address instance) 
    {
        assembly {
            mstore(
                0x00,
                or(shr(0xe8, shl(0x60, _implementation)), 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000)
            )
            mstore(0x20, or(shl(0x78, _implementation), 0x5af43d82803e903d91602b57fd5bf3))
            instance := create(0, 0x09, 0x37)
        }
        // solhint-disable-next-line reason-string
        if (instance == address(0x0)) {
            revert CloneDeploymentFailed();
        }
    }
}
