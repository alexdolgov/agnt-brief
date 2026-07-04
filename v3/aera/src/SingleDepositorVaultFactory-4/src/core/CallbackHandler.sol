// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { TransientSlot } from "@oz/utils/TransientSlot.sol";

import { ADDRESS_SIZE_BITS, CALLBACK_DATA_OFFSET, NO_CALLBACK_DATA, SELECTOR_OFFSET } from "src/core/Constants.sol";
import { Approval } from "src/core/Types.sol";
import { ICallbackHandler } from "src/core/interfaces/ICallbackHandler.sol";

/// @title CallbackHandler
/// @notice Handles callback validation and execution for vault operations
/// @dev Uses transient storage to manage callback state and approvals
abstract contract CallbackHandler is ICallbackHandler {
    using TransientSlot for *;

    ////////////////////////////////////////////////////////////
    //                       Constants                        //
    ////////////////////////////////////////////////////////////

    /// @notice Slot for storing the next authorized selector + caller
    /// @dev Equal to bytes32(uint256(keccak256("aera.callbackHandler.call")) - 1)
    /// @custom:security Critical for callback validation
    bytes32 internal constant CALLBACK_CALL_SLOT = 0x353c26a3064b8ed5bb1ad552213a8a57db1e3e9a6626e6ecc5121983a25497f1;

    /// @notice Slot for storing the callback merkle root
    /// @dev Equal to bytes32(uint256(keccak256("aera.callbackHandler.merkleRoot")) - 1)
    /// @custom:security Critical for callback validation
    bytes32 internal constant CALLBACK_MERKLE_ROOT_SLOT =
        0x9b6decf2ff525b57e24e5bb38ceca839c0bcb51bd0296038af24ca11c81f6cbc;

    /// @notice Slot for storing the approval tracking
    /// @dev Equal to bytes32(uint256(keccak256("aera.callbackHandler.approvals")) - 1)
    /// @custom:security Critical for tracking token approvals during callbacks
    bytes32 internal constant APPROVALS_SLOT = 0x389c31124859186b4c6409137bd160e781f591bbf41bfdca4a3984208c48cd6b;

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @notice Handles incoming callbacks and validates their authorization
    /// @dev Extracts callback data and forwards to _handleCallback if valid
    fallback() external {
        (address caller, bytes4 selector, uint16 userDataOffset) = _getAllowedCallback();
        // Requirements: check that the selector matches
        require(msg.sig == selector, Aera__UnauthorizedCallback());
        // Requirements: check that the caller matches
        require(msg.sender == caller, Aera__UnauthorizedCallback());

        // If userDataOffset is sentinel value, it means the callback was not expected
        if (userDataOffset == NO_CALLBACK_DATA) return;

        bytes32 root = _getAllowedMerkleRoot();
        // Requirements: check that the merkle root is not zero
        require(root != bytes32(0), Aera__UnauthorizedCallback());

        // Interactions: handle callback operations
        _handleCallback(root, userDataOffset);
    }

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @notice Internal handler for validated callbacks
    /// @dev Must be implemented by inheriting contracts
    /// @param root The merkle root of the callback
    /// @param cursor The cursor to the callback data
    function _handleCallback(bytes32 root, uint256 cursor) internal virtual;

    /// @notice Whitelists a function selector and caller as a valid callback
    /// @dev Uses transient storage to store the callback data
    /// @param packedCallbackData Packed data containing caller, selector, and offsets
    /// @custom:security Critical for callback authorization
    function _allowCallback(bytes32 root, uint256 packedCallbackData) internal {
        // Requirements: check that the callback slot is not already set
        require(CALLBACK_CALL_SLOT.asUint256().tload() == 0, Aera__CallbackWasNotCalled());
        // Effects: store the callback data
        CALLBACK_CALL_SLOT.asUint256().tstore(packedCallbackData);

        // Requirements: check that the merkle root slot is not already set
        require(CALLBACK_MERKLE_ROOT_SLOT.asBytes32().tload() == bytes32(0), Aera__UnauthorizedCallback());
        // Effects: store the merkle root
        CALLBACK_MERKLE_ROOT_SLOT.asBytes32().tstore(root);
    }

    /// @notice Stores approvals for the current callback context
    /// @dev Uses transient storage to track approvals during callback execution
    /// @param approvals Array of token approvals to store
    /// @dev Length of the array, packed with the token address will be stored in the first slot
    /// @dev All other elements are laid out sequentially after the first slot, taking 2 slots per approval
    function _storeCallbackApprovals(Approval[] memory approvals, uint256 length) internal {
        // Requirements: check that the approvals slot is not already set
        require(APPROVALS_SLOT.asUint256().tload() == 0, Aera__CallbackApprovalsAlreadyExist());

        if (length == 0) return;

        address token = approvals[0].token;
        uint256 tokenWithLength = length << ADDRESS_SIZE_BITS | uint160(token);

        address spender = approvals[0].spender;
        uint256 slotUint = uint256(APPROVALS_SLOT);
        unchecked {
            // Effects: store the token and spender
            bytes32(slotUint).asUint256().tstore(tokenWithLength);
            bytes32(++slotUint).asAddress().tstore(spender);
        }

        for (uint256 i = 1; i < length; ++i) {
            token = approvals[i].token;
            spender = approvals[i].spender;

            unchecked {
                // Effects: store the token and spender
                bytes32(++slotUint).asAddress().tstore(token);
                bytes32(++slotUint).asAddress().tstore(spender);
            }
        }
    }

    /// @notice Retrieves the currently allowed callback data
    /// @dev Unpacks data from transient storage
    /// @return caller The authorized caller address
    /// @return selector The authorized function selector
    /// @return userDataOffset The offset in calldata where user data begins
    /// @custom:security Critical for callback validation
    function _getAllowedCallback() internal returns (address caller, bytes4 selector, uint16 userDataOffset) {
        (caller, selector, userDataOffset) = _unpackCallbackData(CALLBACK_CALL_SLOT.asUint256().tload());
        // Effects: clear the callback slot
        CALLBACK_CALL_SLOT.asUint256().tstore(0);
    }

    /// @notice Retrieves the currently allowed merkle root
    /// @dev Unpacks data from transient storage
    /// @return root The authorized merkle root
    /// @custom:security Critical for callback validation
    function _getAllowedMerkleRoot() internal returns (bytes32 root) {
        root = CALLBACK_MERKLE_ROOT_SLOT.asBytes32().tload();
        // Effects: clear the merkle root slot
        CALLBACK_MERKLE_ROOT_SLOT.asBytes32().tstore(bytes32(0));
    }

    /// @notice Retrieves the current callback approvals
    /// @dev Decodes approvals from transient storage
    /// @return approvals Array of current token approvals
    /// @dev The first slot contains the length of the array, packed with the token address
    /// @dev All other elements are laid out sequentially after the first slot, taking 2 slots per approval
    /// @dev Only length slot is cleared, the rest of the approvals are left in the transient storage
    /// @dev This is safe because even if new approvals are added, old ones will be overwritten for length slots
    function _getCallbackApprovals() internal returns (Approval[] memory approvals) {
        uint256 lengthWithToken = APPROVALS_SLOT.asUint256().tload();
        uint256 length = lengthWithToken >> ADDRESS_SIZE_BITS;
        if (length == 0) return approvals;

        // Effects: clear the approvals length slot
        APPROVALS_SLOT.asUint256().tstore(0);

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

    /// @notice Unpacks callback data from a packed uint256
    /// @param packed The packed uint256 containing callback data
    /// @return target The target address
    /// @return selector The function selector
    /// @return dataOffset The offset in calldata where user data begins
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
