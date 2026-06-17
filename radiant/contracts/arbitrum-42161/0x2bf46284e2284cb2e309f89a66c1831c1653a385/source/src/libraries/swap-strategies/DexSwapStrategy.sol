// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Errors } from "../Errors.sol";

struct SwapData {
    uint256 value; // amount of gas token that will be paid
    address addressToCall; // address to call and send bytes data to perform the aggregator swap
    address addressToApprove; // address to approve tokens that will be swapped
    bytes data; // bytes that will be passed to the aggregator to perform a swap
}

/// @title DexSwapStrategy library
/// @author Radiant
library DexSwapStrategy {
    using SafeERC20 for IERC20;

    /**
     * @notice Swap function
     * @param _data Data to perform the swap
     */
    function swap(address inputToken, uint256 amountIn, uint256 _minOutput, bytes calldata _data)
        internal
        returns (uint256)
    {
        SwapData memory swapData = bytesToSwapData(_data);

        IERC20(inputToken).forceApprove(swapData.addressToApprove, amountIn);

        uint256 returnAmount;
        (bool success, bytes memory responseData) = swapData.addressToCall.call{ value: swapData.value }(swapData.data);
        if (success) {
            returnAmount = abi.decode(responseData, (uint256));
        } else {
            revert Errors.DexSwapFailed();
        }

        if (returnAmount < _minOutput) {
            revert Errors.ReceivedLessThanMinOutput();
        }
        return returnAmount;
    }

    /**
     * @notice Convert bytes to SwapData
     * @param rawData Raw data
     * @return swapData SwapData
     */
    function bytesToSwapData(bytes memory rawData) internal pure returns (SwapData memory) {
        if (rawData.length < 96) revert Errors.InvalidInputData();

        SwapData memory swapData;
        uint256 value;
        address addressToCall;
        address addressToApprove;
        uint256 dataLength;

        assembly {
            value := mload(add(rawData, 32))
            addressToCall := mload(add(rawData, 64))
            addressToApprove := mload(add(rawData, 96))
            dataLength := mload(add(rawData, 128))
        }

        swapData.value = value;
        swapData.addressToCall = addressToCall;
        swapData.addressToApprove = addressToApprove;

        bytes memory testBytes = new bytes(32);
        for (uint256 i = 0; i < 32;) {
            testBytes[i] = rawData[i + 128];
            unchecked {
                i++;
            }
        }

        swapData.data = new bytes(rawData.length - 160);
        for (uint256 i = 160; i < rawData.length;) {
            swapData.data[i - 160] = rawData[i];
            unchecked {
                i++;
            }
        }

        return swapData;
    }
}
