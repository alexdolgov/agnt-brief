// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library SafeTransfer {

    error TransferFailed();
    error ApproveFailed();
    error NotAContract();

    function safeTransfer(
        address _token,
        address _to,
        uint256 _amount
    )
        internal
    {
        if (_token.code.length == 0) {
            revert NotAContract();
        }
        (bool ok, bytes memory ret) = _token.call(
            abi.encodeWithSelector(
                0xa9059cbb, 
                _to, 
                _amount
            ) // transfer(address,uint256)
        );
        if (!ok || (ret.length != 0 && !abi.decode(ret, (bool)))) {
            revert TransferFailed();
        }
    }

    function safeTransferFrom(
        address _token,
        address _from,
        address _to,
        uint256 _amount
    )
        internal
    {
        if (_token.code.length == 0) {
            revert NotAContract();
        }
        (bool ok, bytes memory ret) = _token.call(
            abi.encodeWithSelector(
                0x23b872dd, 
                _from, 
                _to, 
                _amount
            ) // transferFrom(address,address,uint256)
        );
        if (!ok || (ret.length != 0 && !abi.decode(ret, (bool)))) {
            revert TransferFailed();
        }
    }

    /**
     * Reset allowance to 0 then set to _amount.
     * Required for USDT mainnet which forbids non-zero → non-zero approvals.
     * Handles void-return approve functions correctly.
     */
    function forceApprove(
        address _token,
        address _spender,
        uint256 _amount
    )
        internal
    {
        if (_token.code.length == 0) {
            revert NotAContract();
        }
        // Step 1: reset to 0
        (bool ok0, bytes memory ret0) = _token.call(
            abi.encodeWithSelector(
                0x095ea7b3, 
                _spender, 
                uint256(0)
            ) // approve(address,uint256)
        );
        if (!ok0 || (ret0.length != 0 && !abi.decode(ret0, (bool)))) {
            revert ApproveFailed();
        }

        // Step 2: set to desired amount (skip if 0 — already done)
        if (_amount != 0) {
            (bool ok1, bytes memory ret1) = _token.call(
                abi.encodeWithSelector(
                    0x095ea7b3, 
                    _spender, 
                    _amount
                )
            );
            if (!ok1 || (ret1.length != 0 && !abi.decode(ret1, (bool)))) {
                revert ApproveFailed();
            }
        }
    }
}
