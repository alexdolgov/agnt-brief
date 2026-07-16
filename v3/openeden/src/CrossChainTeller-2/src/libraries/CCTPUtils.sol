// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

library CCTPMessageUtils {
    uint8 private constant BYTE32_LEN = 32;
    uint8 private constant UINT32_LEN = 4;

    uint8 private constant VERSION_INDEX = 0;
    uint8 private constant SOURCE_DOMAIN_INDEX = 4;
    uint8 private constant DESTINATION_DOMAIN_INDEX = 8;
    uint8 private constant NONCE_INDEX = 12;
    uint8 private constant SENDER_INDEX = 44;
    uint8 private constant RECIPIENT_INDEX = 76;
    uint8 private constant DESTINATION_CALLER_INDEX = 108;
    uint8 private constant MIN_FINALITY_THRESHOLD_INDEX = 140;
    uint8 private constant FINALITY_THRESHOLD_EXECUTED_INDEX = 144;
    uint8 private constant MESSAGE_BODY_INDEX = 148;

    function version(bytes calldata message) internal pure returns (uint32) {
        return uint32(uint256(bytes32(message[VERSION_INDEX:VERSION_INDEX + UINT32_LEN]) >> 224));
    }

    function sourceDomain(bytes calldata message) internal pure returns (uint32) {
        return uint32(uint256(bytes32(message[SOURCE_DOMAIN_INDEX:SOURCE_DOMAIN_INDEX + UINT32_LEN]) >> 224));
    }

    function sender(bytes calldata message) internal pure returns (bytes32) {
        return bytes32(message[SENDER_INDEX:SENDER_INDEX + BYTE32_LEN]);
    }

    function recipient(bytes calldata message) internal pure returns (bytes32) {
        return bytes32(message[RECIPIENT_INDEX:RECIPIENT_INDEX + BYTE32_LEN]);
    }

    function destinationCaller(bytes calldata message) internal pure returns (bytes32) {
        return bytes32(message[DESTINATION_CALLER_INDEX:DESTINATION_CALLER_INDEX + BYTE32_LEN]);
    }

    function minFinalityThreshold(bytes calldata message) internal pure returns (uint32) {
        return uint32(uint256(bytes32(message[MIN_FINALITY_THRESHOLD_INDEX:MIN_FINALITY_THRESHOLD_INDEX + UINT32_LEN]) >> 224));
    }

    function finalityThresholdExecuted(bytes calldata message) internal pure returns (uint32) {
        return uint32(
            uint256(bytes32(message[FINALITY_THRESHOLD_EXECUTED_INDEX:FINALITY_THRESHOLD_EXECUTED_INDEX + UINT32_LEN]) >> 224)
        );
    }

    function messageBody(bytes calldata message) internal pure returns (bytes calldata) {
        return message[MESSAGE_BODY_INDEX:];
    }
}

library CCTPTokenMessageUtils {
    uint8 private constant UINT32_LEN = 4;
    uint8 private constant BYTE32_LEN = 32;
    uint8 private constant UINT256_LEN = 32;

    uint8 private constant VERSION_INDEX = 0;
    uint8 private constant BURN_TOKEN_INDEX = 4;
    uint8 private constant MINT_RECIPIENT_INDEX = 36;
    uint8 private constant AMOUNT_INDEX = 68;
    uint8 private constant MSG_SENDER_INDEX = 100;
    // 4 byte version + 32 bytes burnToken + 32 bytes mintRecipient + 32 bytes amount + 32 bytes messageSender
    uint8 private constant BURN_MESSAGE_LEN = 132;
    uint8 private constant MAX_FEE_INDEX = 132;
    uint8 private constant FEE_EXECUTED_INDEX = 164;
    uint8 private constant EXPIRATION_BLOCK_INDEX = 196;
    uint8 private constant HOOK_DATA_INDEX = 228;

    /// @notice Commenting out as it matches CCTPMessageUtils.version and avoids unique member lookup error
    /// @dev use CCTPMessageUtils.version in its place
    // function version(bytes calldata message) internal pure returns (uint32) {
    //     return uint32(uint256(bytes32(message[VERSION_INDEX:VERSION_INDEX + UINT32_LEN]) >> 224));
    // }

    function burnToken(bytes calldata message) internal pure returns (bytes32) {
        return bytes32(message[BURN_TOKEN_INDEX:BURN_TOKEN_INDEX + BYTE32_LEN]);
    }

    function mintRecipient(bytes calldata message) internal pure returns (bytes32) {
        return bytes32(message[MINT_RECIPIENT_INDEX:MINT_RECIPIENT_INDEX + BYTE32_LEN]);
    }

    function amount(bytes calldata message) internal pure returns (uint256) {
        return uint256(bytes32(message[AMOUNT_INDEX:AMOUNT_INDEX + UINT256_LEN]));
    }

    function messageSender(bytes calldata message) internal pure returns (bytes32) {
        return bytes32(message[MSG_SENDER_INDEX:MSG_SENDER_INDEX + BYTE32_LEN]);
    }

    function fee(bytes calldata message) internal pure returns (uint256) {
        return uint256(bytes32(message[FEE_EXECUTED_INDEX:FEE_EXECUTED_INDEX + UINT256_LEN]));
    }

    function hookData(bytes calldata message) internal pure returns (bytes memory) {
        return message[HOOK_DATA_INDEX:];
    }
}
