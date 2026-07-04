// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

interface IERC1404 {
    /// @notice Detects if a transfer will be reverted and if so returns an appropriate reference code
    /// @param from Sending address
    /// @param to Receiving address
    /// @param value Amount of tokens being transferred
    /// @return Code by which to reference message for rejection reasoning
    /// @dev Overwrite with your custom transfer restriction logic
    function detectTransferRestriction (address from, address to, uint256 value) external view returns (uint8);

    /// @notice Detects if a transferFrom will be reverted and if so returns an appropriate reference code
    /// @param spender Transaction sending address
    /// @param from Source of funds address
    /// @param to Receiving address
    /// @param value Amount of tokens being transferred
    /// @return Code by which to reference message for rejection reasoning
    /// @dev Overwrite with your custom transfer restriction logic
    function detectTransferFromRestriction (address spender, address from, address to, uint256 value) external view returns (uint8);

    /// @notice Returns a human-readable message for a given restriction code
    /// @param restrictionCode Identifier for looking up a message
    /// @return Text showing the restriction's reasoning
    /// @dev Overwrite with your custom message and restrictionCode handling
    function messageForTransferRestriction (uint8 restrictionCode) external view returns (string memory);
}


interface IERC1404getSuccessCode {
    /// @notice Return the uint256 that represents the SUCCESS_CODE
    /// @return uint8 SUCCESS_CODE
    function getSuccessCode () external view returns (uint8);
}


/**
 * @title IERC1404Success
 * @dev Combines IERC1404 and IERC1404getSuccessCode interfaces, to be implemented by the TransferRestrictions contract
 */
interface IERC1404Success is IERC1404getSuccessCode, IERC1404 {
}