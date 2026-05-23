// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SubAccountId {
    // Account types
    uint8 constant TYPE_TRADER = 0;
    uint8 constant TYPE_LP = 1;
    // Reserve 2-255 for future use

    /// @notice Encode address and type into sub-account ID
    function encode(
        address account,
        uint32 index,
        uint32 accountType
    ) internal pure returns (bytes32) {
        require(index <= type(uint32).max, "SubAccountId: index too large");
        require(accountType <= type(uint8).max, "Invalid account type");
        return bytes32(
            uint256(uint160(account)) << 96 | 
            uint256(index) << 8 | 
            uint256(accountType)
        );
    }

    /// @notice Decode address from sub-account ID
    function toAddress(bytes32 subAccountId) internal pure returns (address) {
        return address(uint160(uint256(subAccountId) >> 96));
    }

    /// @notice Check if account is trader account
    function isTrader(bytes32 subAccountId) internal pure returns (bool) {
        return (uint8(uint256(subAccountId)) == TYPE_TRADER);
    }

    /// @notice Check if account is LP account
    function isLp(bytes32 subAccountId) internal pure returns (bool) {
        return (uint8(uint256(subAccountId)) == TYPE_LP);
    }

    // Get account type
    function getAccountType(bytes32 self) internal pure returns (uint8) {
        return uint8(uint256(self));
    }

    // Decode subaccount ID from bytes32
    function getSubId(bytes32 self) internal pure returns (uint88) {
        return uint88(uint256(self) >> 8);
    }

    // Verify if the subaccount ID belongs to a certain address
    function validate(bytes32 self, address account) internal pure returns (bool) {
        return toAddress(self) == account;
    }

}