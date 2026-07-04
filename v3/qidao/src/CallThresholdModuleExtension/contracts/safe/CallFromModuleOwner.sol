// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/*
    This module allows any Safe to integrate with it
    Only signers of a specific Safe can call functions for that Safe
*/

interface IERC20 {
    function transfer(address to, uint256 amount) external returns (bool);
}

interface IGnosisSafe {
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes memory data,
        uint8 operation
    ) external returns (bool success);
    
    function isOwner(address owner) external view returns (bool);
}

contract CallAnyModuleOwner {
    // Modifier to check if tx.origin is a signer of the specified Safe
    modifier onlySignerOrigin(address _safe) {
        require(IGnosisSafe(_safe).isOwner(tx.origin), "Caller is not a signer");
        _;
    }

    // Test that the module can execute transactions through the specified Safe
    function checkSetup(address _safe) external onlySignerOrigin(_safe) returns (bool) {
        // Call ourselves through the Safe to verify module execution works
        bytes memory data = abi.encodeWithSelector(this.returnTrue.selector);
        bool success = IGnosisSafe(_safe).execTransactionFromModule(
            address(this),
            0,
            data,
            0 // Call
        );
        require(success, "Module not properly set up");
        return true;
    }

    function returnTrue() external pure returns (bool) {
        return true;
    }
}
