// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {BridgeManager} from "./BridgeManager.sol";

/// @title BoxVault
/// @author BTCD
/// @notice Minimal ownable vault that holds tokens on behalf of BridgeManager.
/// One BoxVault is deployed per (chain, purpose) — inbox for receiving bridged
/// funds, refundBox for returned funds. Only the owner (BridgeManager) can
/// sweep tokens or execute calls.
contract BoxVault is Ownable {
    using SafeERC20 for IERC20;
    using Address for address;
    using Address for address payable;

    // ═══════════════════════════════════ Errors ════════════════════════════════════

    error ZeroAddress();
    error ZeroBalance();
    error DelegatecallFailed();

    // ═══════════════════════════════════ Constructor ═══════════════════════════════

    /// @notice Creates a BoxVault owned by the given address.
    /// @param owner_ The owner of this vault (typically a BridgeManager contract).
    constructor(address owner_) Ownable(owner_) {}

    /// @notice Accept native token deposits.
    receive() external payable {}

    // ═══════════════════════════════ External Functions ════════════════════════════

    /// @notice Sweep the entire ERC-20 balance of `token` to `destination`.
    /// @param token The ERC-20 token to sweep.
    /// @param destination The address to send the tokens to.
    function sweepERC20(address token, address destination) external onlyOwner {
        require(token != address(0) && destination != address(0), ZeroAddress());
        uint256 balance = IERC20(token).balanceOf(address(this));
        require(balance > 0, ZeroBalance());
        IERC20(token).safeTransfer(destination, balance);
    }

    /// @notice Sweep the entire native token (ETH) balance to `destination`.
    /// @param destination The address to send native tokens to.
    function sweepNative(address payable destination) external onlyOwner {
        require(destination != address(0), ZeroAddress());
        uint256 balance = address(this).balance;
        require(balance > 0, ZeroBalance());
        destination.sendValue(balance);
    }

    /// @notice Execute a batch of calls from this vault's context.
    /// @dev The vault is msg.sender for all calls. The owner (BridgeManager)
    /// validates targets before calling this — the vault executes blindly.
    /// @param calls The array of (target, data, value) to execute sequentially.
    function execute(BridgeManager.Call[] calldata calls) external onlyOwner {
        for (uint256 i = 0; i < calls.length; i++) {
            require(calls[i].target != address(0), ZeroAddress());
            calls[i].target.functionCallWithValue(calls[i].data, calls[i].value);
        }
    }

    /// @notice Execute a delegatecall from this vault's context.
    /// @dev CAUTION: target code runs in BoxVault's storage context.
    /// Only use with trusted, owner-deployed implementation contracts.
    /// @param target The contract whose code to execute.
    /// @param data The calldata to send.
    /// @return result The return data from the delegatecall.
    function delegateCall(address target, bytes calldata data) external onlyOwner returns (bytes memory result) {
        require(target != address(0), ZeroAddress());
        (bool success, bytes memory res) = target.delegatecall(data);
        require(success, DelegatecallFailed());
        result = res;
    }
}
