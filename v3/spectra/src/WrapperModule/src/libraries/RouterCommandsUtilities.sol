// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {RayMath} from "core-v2/src/libraries/RayMath.sol";
import {Constants} from "src/router/Constants.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title RouterCommandsUtilities
 * @author Spectra Finance
 * @notice Library of utility functions for preview commands
 */
library RouterCommandsUtilities {
    using Math for uint256;
    using RayMath for uint256;
    using SafeERC20 for IERC20;

    error AddressError();
    error BalanceUnderflow();
    error MaxInvolvedTokensExceeded();

    /**
     * @dev Maximum amount of tokens for which balance can be tracked in _previewRate().
     */
    uint256 internal constant MAX_INVOLVED_TOKENS = 30;

    // used for tracking balance changes in _previewRate
    struct TokenBalance {
        address token;
        uint256 balance;
    }

    /**
     * @dev Returns either the input address as is, or replaced with its corresponding behaviour in Constants.sol
     * @param _addr The address to resolve
     * @return resolved The resolved address
     */
    function _resolveAddress(address _addr) internal view returns (address resolved) {
        if (_addr == Constants.ADDRESS_THIS) {
            resolved = address(this);
        } else if (_addr == Constants.MSG_SENDER) {
            resolved = LibExecutionModule.executionStorage().msgSender;
        } else {
            resolved = _addr;
        }
        if (resolved == address(0)) revert AddressError();
    }

    /**
     * @dev Returns either the input token value as is, or replaced with its corresponding behaviour in Constants.sol
     * @param _token The address of the token
     * @param _value The token amount
     * @return The amount stored previously if current amount used for detecting contract balance, else current value
     */
    function _resolveTokenValue(address _token, uint256 _value) internal view returns (uint256) {
        return (_value == Constants.CONTRACT_BALANCE) ? IERC20(_token).balanceOf(address(this)) : _value;
    }

    /**
     * @dev Increase balance for given token by given value in provided balances array
     * @param _value The value to subtract from token balance
     * @param _token The token address
     * @param _balances The TokenBalance array
     * @return The token balance AFTER increase
     */
    function _increasePreviewTokenValue(uint256 _value, address _token, TokenBalance[] memory _balances)
        internal
        pure
        returns (uint256)
    {
        if (_token == address(0)) {
            revert AddressError();
        }
        uint256 _length = _balances.length;
        for (uint256 i = 0; i < _length; ++i) {
            if (_balances[i].token == address(0)) {
                _balances[i] = TokenBalance(_token, _value);
                return _value;
            } else if (_balances[i].token == _token) {
                _balances[i].balance += _value;
                return _balances[i].balance;
            }
        }
        revert MaxInvolvedTokensExceeded();
    }

    /**
     * @dev Decrease balance for given token by given value in provided balances array
     * @param _value The value to subtract from token balance
     * @param _token The token address
     * @param _balances The TokenBalance array
     * @return The actual value to subtract from token balance
     */
    function _decreasePreviewTokenValue(uint256 _value, address _token, TokenBalance[] memory _balances)
        internal
        pure
        returns (uint256)
    {
        if (_token == address(0)) {
            revert AddressError();
        }
        uint256 _length = _balances.length;
        for (uint256 i = 0; i < _length; ++i) {
            if (_balances[i].token == address(0)) {
                break;
            } else if (_balances[i].token == _token) {
                if (_value == Constants.CONTRACT_BALANCE) {
                    uint256 _res = _balances[i].balance;
                    _balances[i].balance = 0;
                    return _res;
                } else {
                    if (_balances[i].balance < _value) {
                        break;
                    }
                    _balances[i].balance -= _value;
                    return _value;
                }
            }
        }
        revert BalanceUnderflow();
    }

    /**
     * @dev Checks the allowance of a token and approves the spender if necessary
     * @param _token address of the token to be approved
     * @param _spender address of the spender
     * @param _value token amount
     */
    function _ensureApproved(address _token, address _spender, uint256 _value) internal {
        uint256 allowance = IERC20(_token).allowance(address(this), _spender);
        if (allowance < _value) {
            // This approval will only be executed the first time to save gas for subsequent operations
            IERC20(_token).forceApprove(_spender, type(uint256).max);
        }
    }
}
