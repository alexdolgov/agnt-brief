// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { ADDRESS_SIZE_BITS, CALLBACK_DATA_OFFSET, NO_CALLBACK_DATA, SELECTOR_OFFSET } from "./Constants.sol";
import { Approval } from "./Types.sol";
import { TransientSlot } from "@oz/utils/TransientSlot.sol";

/// @title CallbackHandler
/// @notice Handles callback validation and execution for vault operations
/// @dev Uses transient storage to manage callback state and approvals
abstract contract CallbackHandler {
    using TransientSlot for *;

    /// @notice Slot for storing the next authorized selector + caller
    /// @dev Equal to bytes32(uint256(keccak256("aera.callbackHandler")) - 1)
    /// @custom:security Critical for callback validation
    bytes32 internal constant CALLBACK_SLOT = 0x389c31124859186b4c6409137bd160e781f591bbf41bfdca4a3984208c48cd6a;

    /// @notice Slot for storing the approval tracking
    /// @dev Equal to bytes32(uint256(keccak256("aera.callbackHandler.approvals")) - 1)
    /// @custom:security Critical for tracking token approvals during callbacks
    bytes32 internal constant APPROVALS_SLOT = 0x389c31124859186b4c6409137bd160e781f591bbf41bfdca4a3984208c48cd6b;

    /// @notice Thrown when an allowed callback was set but never consumed
    error Aera__CallbackWasNotCalled();
    /// @notice Thrown when there are existing approvals that are not cleared
    error Aera__CallbackApprovalsAlreadyExist();
    /// @notice Thrown when we receive an unauthorized callback or regular call
    error Aera__UnauthorizedCallback();

    /// @notice Handles incoming callbacks and validates their authorization
    /// @dev Extracts callback data and forwards to _handleCallback if valid
    /// @custom:security Critical for callback validation and execution
    fallback() external {
        (address caller, bytes4 selector, uint16 userDataOffset) = _getAllowedCallback();
        require(msg.sig == selector, Aera__UnauthorizedCallback());
        require(msg.sender == caller, Aera__UnauthorizedCallback());

        // Clear the allowed callback slot immediately
        CALLBACK_SLOT.asUint256().tstore(0);

        // If userDataOffset is this magic value, it means the callback was not expected
        if (userDataOffset == NO_CALLBACK_DATA) return;

        _handleCallback(userDataOffset);
    }

    /// @notice Internal handler for validated callbacks
    /// @dev Must be implemented by inheriting contracts
    /// @param cursor The cursor to the callback data
    function _handleCallback(uint256 cursor) internal virtual;

    /// @notice Whitelists a function selector and caller as a valid callback
    /// @dev Uses transient storage to store the callback data
    /// @param packedCallbackData Packed data containing caller, selector, and offsets
    /// @custom:security Critical for callback authorization
    function _allowCallback(uint256 packedCallbackData) internal {
        require(CALLBACK_SLOT.asUint256().tload() == 0, Aera__CallbackWasNotCalled());
        CALLBACK_SLOT.asUint256().tstore(packedCallbackData);
    }

    /// @notice Stores approvals for the current callback context
    /// @dev Uses transient storage to track approvals during callback execution
    /// @param approvals Array of token approvals to store
    /// @custom:security Critical for tracking token approvals
    /// @dev Length of the array, packed with the token address will be stored in the first slot
    /// @dev All other elements are laid out sequentially after the first slot, taking 2 slots per approval
    function _storeCallbackApprovals(Approval[] memory approvals, uint256 length) internal {
        require(APPROVALS_SLOT.asUint256().tload() == 0, Aera__CallbackApprovalsAlreadyExist());

        if (length == 0) return;

        address token = approvals[0].token;
        uint256 tokenWithLength = length << ADDRESS_SIZE_BITS | uint160(token);

        address spender = approvals[0].spender;
        uint256 slotUint = uint256(APPROVALS_SLOT);
        unchecked {
            bytes32(slotUint).asUint256().tstore(tokenWithLength);
            bytes32(++slotUint).asAddress().tstore(spender);
        }

        for (uint256 i = 1; i < length; ++i) {
            token = approvals[i].token;
            spender = approvals[i].spender;

            unchecked {
                bytes32(++slotUint).asAddress().tstore(token);
                bytes32(++slotUint).asAddress().tstore(spender);
            }
        }
    }

    /// @notice Clears stored callback approvals
    /// @dev Should be called after callback execution completes
    /// @custom:security Critical for preventing approval reuse
    function _clearCallbackApprovals() internal {
        APPROVALS_SLOT.asUint256().tstore(0);
    }

    /// @notice Retrieves the currently allowed callback data
    /// @dev Unpacks data from transient storage
    /// @return caller The authorized caller address
    /// @return selector The authorized function selector
    /// @return userDataOffset The offset in calldata where user data begins
    /// @custom:security Critical for callback validation
    function _getAllowedCallback() internal view returns (address, bytes4, uint16) {
        return _unpackCallbackData(CALLBACK_SLOT.asUint256().tload());
    }

    /// @notice Retrieves the current callback approvals
    /// @dev Decodes approvals from transient storage
    /// @return approvals Array of current token approvals
    /// @custom:security Critical for tracking token approvals
    /// @dev The first slot contains the length of the array, packed with the token address
    /// @dev All other elements are laid out sequentially after the first slot, taking 2 slots per approval
    function _getCallbackApprovals() internal view returns (Approval[] memory approvals) {
        uint256 lengthWithToken = APPROVALS_SLOT.asUint256().tload();
        uint256 length = lengthWithToken >> ADDRESS_SIZE_BITS;
        if (length == 0) return approvals;

        approvals = new Approval[](length);

        address token = address(uint160(lengthWithToken));

        uint256 slotUint256 = uint256(APPROVALS_SLOT);
        address spender;
        unchecked {
            spender = bytes32(++slotUint256).asAddress().tload();
        }

        approvals[0] = Approval({ token: token, spender: spender });

        for (uint256 i = 1; i < length; ++i) {
            unchecked {
                token = bytes32(++slotUint256).asAddress().tload();
                spender = bytes32(++slotUint256).asAddress().tload();
            }
            approvals[i] = Approval({ token: token, spender: spender });
        }
    }

    function _unpackCallbackData(uint256 packed)
        internal
        pure
        returns (address target, bytes4 selector, uint16 dataOffset)
    {
        target = address(uint160(packed));
        selector = bytes4(bytes32(packed << SELECTOR_OFFSET));
        dataOffset = uint16(packed >> CALLBACK_DATA_OFFSET);
    }
}
