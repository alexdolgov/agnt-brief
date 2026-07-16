// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/// @title StrategyBase
/// @notice Abstract base contract providing shared utility functions for position manager strategies.
/// @dev Provides multicall, delegatecall, ERC20 token transfer, and balance validation primitives.
///      Child contracts inherit these and add strategy-specific logic.
abstract contract StrategyBase is Ownable {
    using SafeERC20 for IERC20;
    using Address for address;

    // ═══════════════════════════════════════ Structs ═══════════════════════════════════════

    struct MultiCallArgs {
        bool delegateCall;
        address target;
        uint256 value;
        bytes data;
    }

    struct TokenBalanceInfo {
        address token;
        uint256 balance;
        address balanceOfAddress;
    }

    // ═══════════════════════════════════════ Errors ═══════════════════════════════════════

    error ZeroAddress();
    error ZeroAmount();
    error DelegatecallFailed();
    error InsufficientTokenBalance(address token, uint256 available, uint256 required);

    // ═══════════════════════════════════════ Events ═══════════════════════════════════════

    event TokensWithdrawn(address indexed token, address indexed to, uint256 amount);

    // ═══════════════════════════════════════ External Functions ═══════════════════════════════════════
    // TODO: determine if we still need this since we have delegatecall in multicall
    /// @notice Execute a delegatecall to a target contract
    function delegate(address target, bytes calldata data) external onlyOwner returns (bytes memory) {
        require(target != address(0), ZeroAddress());
        (bool success, bytes memory result) = target.delegatecall(data);
        require(success, DelegatecallFailed());
        return result;
    }

    /// @notice Transfer out any ERC20 tokens held by the strategy
    function transferERC20Tokens(address token, address to, uint256 amount) external onlyOwner {
        require(token != address(0) && to != address(0), ZeroAddress());
        require(amount > 0, ZeroAmount());
        IERC20(token).safeTransfer(to, amount);
        emit TokensWithdrawn(token, to, amount);
    }

    /// @notice Transfer out the full balance of an ERC20 token held by the strategy
    /// @param token Address of the token to rescue
    /// @param to Recipient address
    function sweepERC20Tokens(address token, address to) external onlyOwner {
        require(token != address(0) && to != address(0), ZeroAddress());

        uint256 amount = IERC20(token).balanceOf(address(this));
        if (amount == 0) {
            return;
        }

        IERC20(token).safeTransfer(to, amount);

        emit TokensWithdrawn(token, to, amount);
    }

    /// @notice Execute multiple calls in a single transaction
    function multiCall(MultiCallArgs[] memory cdata_) public payable onlyOwner returns (bytes[] memory) {
        return _multiCall(cdata_);
    }

    /// @notice Execute multiple static calls for read-only operations
    function multiCallView(MultiCallArgs[] memory cdata_) public view returns (bytes[] memory) {
        return _multiCallView(cdata_);
    }

    /// @notice Validate that specified addresses hold at least the expected ERC20 token balances
    function validateERC20Balances(TokenBalanceInfo[] memory expectedBalances) public view {
        for (uint256 i = 0; i < expectedBalances.length; i++) {
            uint256 actualBalance = IERC20(expectedBalances[i].token).balanceOf(expectedBalances[i].balanceOfAddress);
            require(
                actualBalance >= expectedBalances[i].balance,
                InsufficientTokenBalance(expectedBalances[i].token, actualBalance, expectedBalances[i].balance)
            );
        }
    }

    // ═══════════════════════════════════════ Internal Functions ═══════════════════════════════════════

    function _multiCall(MultiCallArgs[] memory cdata_) internal returns (bytes[] memory results) {
        results = new bytes[](cdata_.length);
        for (uint256 i = 0; i < cdata_.length; i++) {
            if (cdata_[i].delegateCall) {
                results[i] = cdata_[i].target.functionDelegateCall(cdata_[i].data);
            } else {
                results[i] = cdata_[i].target.functionCallWithValue(cdata_[i].data, cdata_[i].value);
            }
        }
    }

    function _multiCallView(MultiCallArgs[] memory cdata_) internal view returns (bytes[] memory results) {
        results = new bytes[](cdata_.length);
        for (uint256 i = 0; i < cdata_.length; i++) {
            results[i] = cdata_[i].target.functionStaticCall(cdata_[i].data);
        }
    }
}
