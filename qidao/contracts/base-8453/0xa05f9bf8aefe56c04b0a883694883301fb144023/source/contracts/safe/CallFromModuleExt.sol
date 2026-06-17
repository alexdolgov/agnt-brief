// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./CallFromModuleOwner.sol";

contract CallThresholdModuleExtension is CallAnyModuleOwner {
    // Struct to store function details
    struct ApprovedFunction {
        address contractAddress;
        bytes4 functionSelector;
        // Store the full signature, e.g., "myFunction(uint256,bool)"
        string functionSignature; 
    }
    
    // Mapping from Safe address to their approved functions
    mapping(address => ApprovedFunction[]) public approvedFunctions;
    
    // 1. Add contract and function signature to approved list
    // this can only be added if _safe is the msg.sender 
    function addApprovedFunction(
        address _contract, 
        // Changed parameter name and type to reflect it needs the full signature
        string calldata _functionSignature 
        // Removed _functionSelector parameter
    ) external onlySignerOrigin(msg.sender) {
        require(_contract != address(this), "Cannot add this module contract");
        address _safe = msg.sender;
 
        // Calculate the selector from the signature
        bytes4 calculatedSelector = bytes4(keccak256(bytes(_functionSignature)));

        ApprovedFunction memory newFunction = ApprovedFunction({
            contractAddress: _contract,
            functionSelector: calculatedSelector, // Use the calculated selector
            functionSignature: _functionSignature // Store the full signature
        });
        
        approvedFunctions[_safe].push(newFunction);
    }
    
    // 2. Get list of functions to call
    // this is a public call for anyone to make to retrieve the list.
    function getApprovedFunctions(address _safe) 
        external 
        view 
        onlySignerOrigin(_safe) 
        returns (ApprovedFunction[] memory) {
        return approvedFunctions[_safe];
    }
    
    // 3. Reset array of approved functions
    // this should only be able to be called by safe (aka msg.sender is safe only)
    function resetApprovedFunctions(address _safe) 
        external 
        onlySignerOrigin(_safe) {
        delete approvedFunctions[_safe];
    }
    
    // 4. Call function by id with variables
    // this is only able to be called by a safe owner
    function executeApprovedFunction(
        address _safe,
        uint256 _functionId,
        bytes calldata _calldata
    ) external onlySignerOrigin(_safe) returns (bool) {
        require(_functionId < approvedFunctions[_safe].length, "Function ID out of bounds");
        
        ApprovedFunction memory func = approvedFunctions[_safe][_functionId];
        
        // Verify the function selector in calldata matches the approved one
        require(
            bytes4(_calldata[:4]) == func.functionSelector,
            "Function selector mismatch"
        );
        
        bool success = IGnosisSafe(_safe).execTransactionFromModule(
            func.contractAddress,
            0, // No ETH sent
            _calldata,
            0 // Call operation
        );
        
        require(success, "Function execution failed");
        return true;
    }
}
