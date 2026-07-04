// SPDX-License-Identifier: -- BCOM --

pragma solidity =0.8.25;

import "./IERC20.sol";
import "./Errors.sol";

contract LiquidityHelper {

    uint256 constant MAX_VALUE = type(uint256).max;
    uint256 constant ZERO_VALUE = 0;

    /**
     * @dev
     * Prepares path for the swap
     */
    function _makePath(
        address _tokenIn,
        address _tokenOut
    )
        internal
        pure
        returns (address[] memory path)
    {
        path = new address[](2);

        path[0] = _tokenIn;
        path[1] = _tokenOut;

        return path;
    }

    /**
     * @dev
     * Allows to execute transferFrom for a token
     */
    function _safeTransferFrom(
        address _token,
        address _from,
        address _to,
        uint256 _value
    )
        internal
    {
        IERC20 token = IERC20(_token);

        _callOptionalReturn(
            _token,
            abi.encodeWithSelector(
                token.transferFrom.selector,
                _from,
                _to,
                _value
            )
        );
    }

    function _callOptionalReturn(
        address _token,
        bytes memory _data
    )
        private
    {
        (
            bool success,
            bytes memory returndata
        ) = _token.call(_data);

        require(
            success,
            "LiquidityHelper: CALL_FAILED"
        );

        if (returndata.length > 0) {
            require(
                abi.decode(
                    returndata,
                    (bool)
                ),
                "LiquidityHelper: OPERATION_FAILED"
            );
        }
    }

    /**
     * @dev
     * s = optimal swap amount
     * r = amount of reserve for token a
     * a = amount of token a the user currently has (not added to reserve yet)
     * f = swap fee percent
     * s = (sqrt(((2 - f)r)^2 + 4(1 - f)ar) - (2 - f)r) / (2(1 - f))
    */
    function getSwapAmount(
        uint256 _r,
        uint256 _a
    )
        public
        pure
        returns (uint256)
    {
        return (
            _sqrt(
                _r * (_r * 3988009 + _a * 3988000)
            ) - _r * 1997
        ) / 1994;
    }

    /**
     * @dev
     * Calculates square root of the _y number
    */
    function _sqrt(
        uint256 _y
    )
        internal
        pure
        returns (uint256 z)
    {
        if (_y > 3) {
            z = _y;
            uint256 x = _y / 2 + 1;
            while (x < z) {
                z = x;
                x = (_y / x + x) / 2;
            }
        } else if (_y != 0) {
            z = 1;
        }
    }

    function _forceApprove(
        IERC20 _token,
        address _spender,
        uint256 _value
    )
        internal
    {
        bytes memory approvalCall = abi.encodeCall(
            _token.approve,
            (
                _spender,
                _value
            )
        );

        if (!_callOptionalReturnBool(_token, approvalCall)) {

            bytes memory zeroApprove = abi.encodeCall(
                _token.approve, (
                    _spender,
                    ZERO_VALUE
                )
            );

            _callOptionalReturn(
                _token,
                zeroApprove
            );

            _callOptionalReturn(
                _token,
                approvalCall
            );
        }
    }

    function _callOptionalReturn(
        IERC20 _token,
        bytes memory _data
    )
        private
    {
        bytes memory returndata = _functionCall(
            address(_token),
            _data
        );

        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(
                address(_token)
            );
        }
    }

    function _callOptionalReturnBool(
        IERC20 _token,
        bytes memory _data
    )
        private
        returns (bool)
    {
        (
            bool success,
            bytes memory returndata
        ) = address(_token).call(_data);

        return success
            && (returndata.length == 0 || abi.decode(returndata, (bool)))
            && address(_token).code.length > 0;
    }

    function _functionCall(
        address _target,
        bytes memory _data
    )
        internal
        returns (bytes memory)
    {
        return _functionCallWithValue(
            _target,
            _data,
            ZERO_VALUE
        );
    }

    function _functionCallWithValue(
        address _target,
        bytes memory _data,
        uint256 _value
    )
        internal
        returns (bytes memory)
    {
        if (address(this).balance < _value) {
            revert InsufficientBalance(
                address(this).balance,
                _value
            );
        }

        (
            bool success,
            bytes memory returndata
        ) = _target.call{
            value: _value
        }(_data);

        return _verifyCallResultFromTarget(
            _target,
            success,
            returndata
        );
    }

    function _verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    )
        internal
        view
        returns (bytes memory)
    {
        if (!success) {
            _revert(
                returndata
            );
        } else {
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(
                    target
                );
            }
            return returndata;
        }
    }

    function _revert(
        bytes memory _returndata
    )
        private
        pure
    {
        if (_returndata.length > 0) {
            assembly {
                let returndata_size := mload(_returndata)
                revert(add(32, _returndata), returndata_size)
            }
        } else {
            revert FailedCall();
        }
    }
}
