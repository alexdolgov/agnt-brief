/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import './utils/Withdrawable.sol';
import './utils/IWETH.sol';


/// @title ITBContract contract that implements common owner only functions accross all strategies
/// @author IntoTheBlock Corp
/// @dev Abstract
abstract contract ITBContract is Withdrawable {
    using SafeERC20 for IERC20;
    event ApproveToken(address indexed token, address guy, uint256 wad);
    address payable immutable public WNATIVE;

    /// @param _executors Executor addresses
    constructor(address[] memory _executors, address payable _wnative) Executable(_executors) {
        WNATIVE = _wnative;
    }

    /// @notice Set allowance for a given token, amount and spender
    /// @param _token Token to spend
    /// @param _guy Spender
    /// @param _wad Max amount to spend
    function _approveToken(address _token, address _guy, uint256 _wad) internal {
        if (_wad != 0) {
            if (IERC20(_token).allowance(address(this), _guy) >= _wad)
                return;
            IERC20(_token).safeApprove(_guy, 0);
        }
        IERC20(_token).safeApprove(_guy, _wad);
        emit ApproveToken(_token, _guy, _wad);
    }

    /// @notice Check current allowance and, if necessary, set it to a new amount for a given token, amount and spender
    /// @param _token Token to spend
    /// @param _guy Spender
    /// @param _amount New max amount to spend
    function _checkAllowanceAndApprove(address _token, address _guy, uint256 _amount) internal {
        if (IERC20(_token).allowance(address(this), _guy) < _amount)
            _approveToken(_token, _guy, type(uint256).max);
    }

    /// @notice Only owner. Set allowance for a given token, amount and spender
    /// @param _token Token to spend
    /// @param _guy Spender
    /// @param _wad Max amount to spend
    function approveToken(address _token, address _guy, uint256 _wad) external onlyOwner {
        _approveToken(_token, _guy, _wad);
    }

    /// @notice Only owner. Revoke allowance for a given token and spender
    /// @param _token Token to spend
    /// @param _guy Spender
    function revokeToken(address _token, address _guy) external onlyOwner {
        _approveToken(_token, _guy, 0);
    }

    /// @notice Only owner. Execute an arbitrary call
    /// @param _to Target address
    /// @param _value Value (i. e. msg.value)
    /// @param _data Invocation data
    function execute(address _to, uint256 _value, bytes calldata _data) external payable onlyOwner {
        (bool success, bytes memory returnData) = _to.call{ value: _value }(_data);
        require(success, string(returnData));
    }

    /// @notice Only owner. Execute multiple arbitrary calls in order
    /// @param _tos Target address for each call
    /// @param _values Value for each call (i. e. msg.value)
    /// @param _datas Invocation data for each call
    function batchExecute(address[] calldata _tos, uint256[] calldata _values, bytes[] calldata _datas) external payable onlyOwner {
        require(_tos.length == _values.length && _tos.length == _datas.length, "Arguments length mismatch");
        for (uint256 i = 0; i < _tos.length; i++) {
            (bool success, bytes memory returnData) = _tos[i].call{ value: _values[i] }(_datas[i]);
            require(success, string(returnData));
        }
    }

    function wrapNative(uint256 _amount) public onlyExecutor {
        IWETH(WNATIVE).deposit{ value: _amount }();
    }

    function unwrapNative(uint256 _amount) public onlyExecutor {
        IWETH(WNATIVE).withdraw(_amount);
    }
}