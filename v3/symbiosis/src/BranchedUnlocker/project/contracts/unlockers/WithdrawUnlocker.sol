// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IDepository.sol";
import "../interfaces/IRouter.sol";

import "hardhat/console.sol";

/// @title WithdrawUnlocker
/// @notice Unlocks deposits by forwarding tokens directly to a target contract
/// @dev This is the simplest unlocker - no swap or validation required. The deposit tokens
/// are sent directly to the preconfigured target (e.g., a bridge or user address).
/// The solution parameter is ignored; all information is in the condition.
contract WithdrawUnlocker is IDepositUnlocker {
    /// @notice Condition parameters for direct withdrawal
    /// @param target The contract to forward tokens to
    /// @param targetCalldata Calldata to execute on target
    /// @param targetOffset Byte offset in targetCalldata to patch the deposit amount
    struct Condition {
        address target;
        bytes targetCalldata;
        uint256 targetOffset;
    }

    /// @notice Emitted on successful withdrawal
    /// @param outToken The token being withdrawn
    /// @param outAmount The amount withdrawn
    /// @param target The recipient contract
    event Withdraw(IERC20 outToken, uint256 outAmount, address target);

    /// @inheritdoc IDepositUnlocker
    /// @dev Simply forwards the deposit tokens to the target using Router.externalCall
    function unlock(
        IRouter router,
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.BlockchainState calldata /*lockState*/,
        bytes calldata condition,
        bytes calldata /*solution*/
    ) external {
        Condition memory c = decodeCondition(condition);
        console.log("WithdrawUnlocker.unlock(target)", c.target);
        emit Withdraw(deposit.token, deposit.amount, c.target);
        // Execute target with calldata. Tokens are already on the router so there is no need to transfer again.
        router.externalCall(address(deposit.token), deposit.amount, c.target, c.targetCalldata, c.targetOffset);
    }

    // ============ Encoding Helpers ============

    /// @notice ABI-encode a Condition struct for use in lock()
    /// @param c The condition to encode
    /// @return The ABI-encoded condition bytes
    function encodeCondition(Condition calldata c) pure external returns (bytes memory) {
        return abi.encode(c);
    }

    /// @notice Decode condition bytes into a Condition struct
    /// @param condition The ABI-encoded condition
    /// @return The decoded Condition struct
    function decodeCondition(bytes calldata condition) pure public returns (Condition memory) {
        return abi.decode(condition, (Condition));
    }
}