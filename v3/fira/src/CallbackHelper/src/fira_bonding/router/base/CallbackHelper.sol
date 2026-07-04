// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "../../../interfaces/IBondToken.sol";

import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IFiraWrappedStandardized.sol";

/// @title CallbackHelper
/// @notice Abstract contract providing encoding/decoding utilities for swap callback data
/// @dev The Fira market uses callbacks during complex swap operations. This helper provides
///      type-safe encoding and decoding of callback parameters for different swap types.
///
///      Callback flow:
///      1. Router initiates swap on market
///      2. Market transfers tokens to router
///      3. Market calls router's swapCallback with encoded data
///      4. Router decodes data, performs operations (mint/redeem BC)
///      5. Router repays the market
///
///      Uses assembly for gas-efficient encoding/decoding.
abstract contract CallbackHelper {
    /// @notice Types of swap operations that use callbacks
    /// @dev Each type has its own encode/decode functions
    enum ActionType {
        SwapExactFwForCt,
        SwapCtForFw,
        SwapExactCtForBt,
        SwapExactBtForCt
    }

    /// ------------------------------------------------------------
    /// SwapExactFwForCt
    /// ------------------------------------------------------------

    /// @notice Encodes callback data for swapping exact FW for CT
    /// @param receiver Address to receive the CT tokens
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapExactFwForCt(address receiver, IBCToken CT) internal pure returns (bytes memory res) {
        res = new bytes(96);
        uint256 actionType = uint256(ActionType.SwapExactFwForCt);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), CT)
        }
    }

    /// @notice Decodes callback data for swapping exact FW for CT
    /// @param data Encoded callback data
    /// @return receiver Address to receive CT
    /// @return CT The Coupon Token contract
    function _decodeSwapExactFwForCt(bytes calldata data) internal pure returns (address receiver, IBCToken CT) {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            CT := calldataload(add(data.offset, 64))
        }
    }

    /// ------------------------------------------------------------
    /// SwapCtForFw
    /// ------------------------------------------------------------

    /// @notice Encodes callback data for swapping CT for FW
    /// @param receiver Address to receive the FW tokens
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapCtForFw(address receiver, IBCToken CT) internal pure returns (bytes memory res) {
        res = new bytes(96);
        uint256 actionType = uint256(ActionType.SwapCtForFw);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), CT)
        }
    }

    /// @notice Decodes callback data for swapping CT for FW
    /// @param data Encoded callback data
    /// @return receiver Address to receive FW
    /// @return CT The Coupon Token contract
    function _decodeSwapCtForFw(bytes calldata data) internal pure returns (address receiver, IBCToken CT) {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            CT := calldataload(add(data.offset, 64))
        }
    }

    /// @notice Encodes callback data for swapping exact CT for BT
    /// @param receiver Address to receive the BT tokens
    /// @param netBtOut Expected BT output amount
    /// @param BT The Bond Token contract
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapExactCtForBt(address receiver, uint256 netBtOut, IBondToken BT, IBCToken CT)
        internal
        pure
        returns (bytes memory res)
    {
        res = new bytes(160);
        uint256 actionType = uint256(ActionType.SwapExactCtForBt);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), netBtOut)
            mstore(add(res, 128), BT)
            mstore(add(res, 160), CT)
        }
    }

    /// @notice Decodes callback data for swapping exact CT for BT
    /// @param data Encoded callback data
    /// @return receiver Address to receive BT
    /// @return netBtOut Expected BT output
    /// @return BT The Bond Token contract
    /// @return CT The Coupon Token contract
    function _decodeSwapExactCtForBt(bytes calldata data)
        internal
        pure
        returns (address receiver, uint256 netBtOut, IBondToken BT, IBCToken CT)
    {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            netBtOut := calldataload(add(data.offset, 64))
            BT := calldataload(add(data.offset, 96))
            CT := calldataload(add(data.offset, 128))
        }
    }

    /// @notice Encodes callback data for swapping exact BT for CT
    /// @param receiver Address to receive the CT tokens
    /// @param exactBtIn Exact BT input amount
    /// @param minCtOut Minimum CT output (slippage protection)
    /// @param CT The Coupon Token contract
    /// @return res Encoded callback data
    function _encodeSwapExactBtForCt(address receiver, uint256 exactBtIn, uint256 minCtOut, IBCToken CT)
        internal
        pure
        returns (bytes memory res)
    {
        res = new bytes(160);
        uint256 actionType = uint256(ActionType.SwapExactBtForCt);

        assembly {
            mstore(add(res, 32), actionType)
            mstore(add(res, 64), receiver)
            mstore(add(res, 96), exactBtIn)
            mstore(add(res, 128), minCtOut)
            mstore(add(res, 160), CT)
        }
    }

    /// @notice Decodes callback data for swapping exact BT for CT
    /// @param data Encoded callback data
    /// @return receiver Address to receive CT
    /// @return exactBtIn Exact BT input amount
    /// @return minCtOut Minimum CT output
    /// @return CT The Coupon Token contract
    function _decodeSwapExactBtForCt(bytes calldata data)
        internal
        pure
        returns (address receiver, uint256 exactBtIn, uint256 minCtOut, IBCToken CT)
    {
        assembly {
            // first 32 bytes is ActionType
            receiver := calldataload(add(data.offset, 32))
            exactBtIn := calldataload(add(data.offset, 64))
            minCtOut := calldataload(add(data.offset, 96))
            CT := calldataload(add(data.offset, 128))
        }
    }

    /// ------------------------------------------------------------
    /// Misc functions
    /// ------------------------------------------------------------

    /// @notice Extracts the action type from encoded callback data
    /// @param data Encoded callback data (action type is first 32 bytes)
    /// @return actionType The decoded action type
    function _getActionType(bytes calldata data) internal pure returns (ActionType actionType) {
        assembly {
            actionType := calldataload(data.offset)
        }
    }
}
