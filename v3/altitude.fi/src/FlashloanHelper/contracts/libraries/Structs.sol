// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @title FlashLoanStruct
 * @dev Data types for preparing a flashloan for user liquidation
 * @author Altitude Labs
 **/

library FlashLoanStruct {
    /// @dev Struct of params to be passed between functions executing flashloan logic
    /// @param asset: Address of asset to be borrowed with flashloan
    /// @param amount: Amount of asset to be borrowed with flashloan
    /// @param targetAddress: The address of the contract logic to be executed
    /// @param initiator: Initiatorr's address
    struct Info {
        address initiator;
        address targetAddress;
        address asset;
        uint256 amount;
        bytes data;
    }
}
