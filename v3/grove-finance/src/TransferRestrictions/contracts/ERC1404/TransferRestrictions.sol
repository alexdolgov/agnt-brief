// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "../ERC1404/IERC1404.sol";
import "../ERC1404/IERC1404Validators.sol";
import "./RestrictionMessages.sol";


/**
 * @title TransferRestrictions
 * @dev Defines the rules the validate transfers and the error messages
 */
contract TransferRestrictions is IERC1404, RestrictionMessages, IERC1404Success {

    IERC1404Validators immutable validators;

    /// Address zero is not allowed for this operation
    error AddressZeroNotAllowed();

    /**
     * @notice Construct a new ERC1404 transfer restrictions contract
     * @param validators_ The address of the IERC1404Validators contract
     */
    constructor(address validators_) {
        if (validators_ == address(0)) revert AddressZeroNotAllowed();
        validators = IERC1404Validators(validators_);
    }

    /**
     * @notice Detects whether a transfer should be restricted or allowed.
     * @param from The address of the sender
     * @param to The address of the receiver
     * @param amount The amount of tokens to be transferred
     * @return uint8 representing success (0), or the restriction code
     */
    function detectTransferRestriction(address from, address to, uint256 amount) public view returns (uint8) {
        // Confirm that that addresses are whitelisted
        if(!validators.checkWhitelists(from,to)) return FAILURE_NON_WHITELIST;

        // Confirm that there are no timelock restrictions and that transfers are not paused
        return _checkTimelockAndPaused(from, amount);
    }

    /**
     * @notice Detects whether a transferFrom should be restricted or allowed.
     * @param spender The address of the spender performing the transfer
     * @param from The address of the sender
     * @param to The address of the receiver
     * @param amount The amount of tokens to be transferred
     * @return uint8 representing success (0), or the restriction code
     */
    function detectTransferFromRestriction(address spender, address from, address to, uint256 amount)
        public
        view
        returns (uint8)
    {
        // Confirm that that addresses are whitelisted
        if(!validators.checkWhitelists(spender, from, to)) return FAILURE_NON_WHITELIST;

        // Confirm that there are no timelock restrictions and that transfers are not paused
        return _checkTimelockAndPaused(from, amount);
    }

    /**
     * @notice Returns a human-readable message for a given restriction code
     * @param restrictionCode The restriction code
     * @return message representing the restriction code
     */
    function messageForTransferRestriction(uint8 restrictionCode) external pure returns (string memory) {
        if (restrictionCode == SUCCESS_CODE) return SUCCESS_MESSAGE;
        if (restrictionCode == FAILURE_NON_WHITELIST) return FAILURE_NON_WHITELIST_MESSAGE;
        if (restrictionCode == FAILURE_TIMELOCK) return FAILURE_TIMELOCK_MESSAGE;
        if (restrictionCode == FAILURE_TRANSFERS_PAUSED) return FAILURE_TRANSFERS_PAUSED_MESSAGE;
        return UNKNOWN_ERROR;
    }

    /**
     * @notice Return the uint256 that represents the SUCCESS_CODE
     * @return uint256 SUCCESS_CODE
     */
    function getSuccessCode() external pure returns (uint8) {
      return SUCCESS_CODE;
    }

    /**
     * @dev Checks if the from account is locked up, and if the entire contract is paused
     * @param from The address of the sender
     * @param amount The amount of tokens to be transferred
     * @return uint8 representing success (0), or the restriction code
     */
    function _checkTimelockAndPaused(address from, uint256 amount) internal view returns (uint8) {
        // If the from account is locked up, then don't allow the transfer
        if(!validators.checkTimelock(from, amount)) return FAILURE_TIMELOCK;

        // If the entire contract is paused, then the transfer should be prevented
        if(validators.paused()) return FAILURE_TRANSFERS_PAUSED;

        return SUCCESS_CODE;
    }
}
