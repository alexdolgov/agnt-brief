// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {IERC20} from "../interfaces/IERC20.sol";

library SafeERC20Lite {
    error SafeERC20CallFailed();
    error SafeERC20OperationFailed();

    function safeTransfer(IERC20 token, address to, uint256 amount) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, amount)));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 amount) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, amount)));
    }

    function forceApprove(IERC20 token, address spender, uint256 amount) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, amount));
        if (_callOptionalReturnBool(token, approvalCall)) {
            return;
        }

        _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
        _callOptionalReturn(token, approvalCall);
    }

    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        (bool success, bytes memory returndata) = address(token).call(data);
        if (!success) revert SafeERC20CallFailed();
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20OperationFailed();
        }
    }

    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool)));
    }
}
