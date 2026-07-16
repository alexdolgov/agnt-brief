// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library TransferHelper {
    bytes4 constant approveSelector = bytes4(keccak256(bytes('approve(address,uint256)')));
    bytes4 constant transferSelector = bytes4(keccak256(bytes('transfer(address,uint256)')));
    bytes4 constant transferFromSelector = bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));

    error TransferHelperSafeApproveApproveFailed();
    error TransferHelperSafeTransferTransferFailed();
    error TransferHelperSafeTransferFromTransferFromFailed();
    error TransferHelperSafeTransferETHTransferFailed();

    function safeApprove(address token, address to, uint256 value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(approveSelector, to, value));
        //require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferHelper::safeApprove: approve failed");
        if (!(success && (data.length == 0 || abi.decode(data, (bool))))) {
            revert TransferHelperSafeApproveApproveFailed();
        }
    }

    function safeTransfer(address token, address to, uint256 value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(transferSelector, to, value));
        //require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferHelper::safeTransfer: transfer failed");
        if (!(success && (data.length == 0 || abi.decode(data, (bool))))) {
            revert TransferHelperSafeTransferTransferFailed();
        }
    }

    function safeTransferFrom(address token, address from, address to, uint256 value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(transferFromSelector, from, to, value));
        //require(success && (data.length == 0 || abi.decode(data, (bool))), "TransferHelper::transferFrom: transferFrom failed");
        if (!(success && (data.length == 0 || abi.decode(data, (bool))))) {
            revert TransferHelperSafeTransferFromTransferFromFailed();
        }
    }

    function safeTransferETH(address to, uint256 value) internal {
        (bool success,) = to.call{ value: value }(new bytes(0));
        //require(success, "TransferHelper::safeTransferETH: ETH transfer failed");
        if (!success) {
            revert TransferHelperSafeTransferETHTransferFailed();
        }
    }
}
