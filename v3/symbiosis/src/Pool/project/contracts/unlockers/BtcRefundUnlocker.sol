// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@symbiosis-finance/core-contracts/synth-core/interfaces/ISynthesis.sol";
import "../interfaces/IDepository.sol";
import "../interfaces/IRouter.sol";

import "hardhat/console.sol";

/// @title BtcRefundUnlocker
/// @notice Unlocks deposits by burning synthetic BTC and sending native BTC back to user
/// @dev This unlocker integrates with the Symbiosis Synthesis protocol to bridge tokens
/// back to the Bitcoin network. Used as a refund path when swap conditions cannot be met.
///
/// Flow:
/// 1. User deposits synthetic BTC (e.g., sBTC) with this unlocker as refund branch
/// 2. If swap fails or user requests refund, solver triggers this unlocker
/// 3. Synthetic tokens are burned via Synthesis.burnSyntheticTokenBTC
/// 4. Native BTC is sent to the user's Bitcoin address (pkScript)
///
/// Note: The bridging fee is determined by the Synthesis contract at unlock time.
contract BtcRefundUnlocker is IDepositUnlocker {
    /// @notice Condition specifying the Bitcoin refund destination
    /// @param refundAddress The Bitcoin pkScript (output script) to send refund to
    struct Condition {
        bytes refundAddress;
    }

    /// @notice Solution containing the client ID for the burn operation
    /// @param clientID Unique identifier passed to burnSyntheticTokenBTC for tracking
    struct Solution {
        bytes32 clientID;
    }

    /// @notice Emitted when a BTC refund is initiated
    /// @param refundAddress The Bitcoin pkScript receiving the refund
    /// @param stableBridgingFee The fee deducted for bridging
    event Refund(bytes refundAddress, uint256 stableBridgingFee);

    /// @notice The Symbiosis Synthesis contract for burning synthetic tokens
    ISynthesis public synthesis;

    /// @notice Initialize with the Synthesis contract address
    /// @param _synthesis The Synthesis contract to use for BTC burns
    constructor(ISynthesis _synthesis) {
        synthesis = _synthesis;
    }

    /// @inheritdoc IDepositUnlocker
    /// @dev Burns synthetic BTC via Synthesis protocol, triggering native BTC transfer
    function unlock(
        IRouter router,
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.BlockchainState calldata,
        bytes calldata condition,
        bytes calldata solution
    ) external {
        Condition memory c = decodeCondition(condition);
        Solution memory s = abi.decode(solution, (Solution));
        uint256 stableBridgingFee = synthesis.syntToMinFeeBTC(address(deposit.token));
        console.log("BtcRefundUnlocker.unlock(synthesis, stableBridgingFee)", address(synthesis), stableBridgingFee);
        emit Refund(c.refundAddress, stableBridgingFee);
        bytes memory unwrapCalldata = abi.encodeCall(synthesis.burnSyntheticTokenBTC, (
            stableBridgingFee,
            deposit.amount,
            c.refundAddress,
            address(deposit.token),
            s.clientID
        ));
        router.externalCall(address(deposit.token), deposit.amount, address(synthesis), unwrapCalldata, 0);
    }

    // ============ Encoding Helpers ============

    /// @notice ABI-encode a Condition struct for use in lock()
    /// @param c The condition to encode
    /// @return The ABI-encoded condition bytes
    function encodeCondition(Condition calldata c) pure external returns (bytes memory) {
        return abi.encode(c);
    }

    /// @notice ABI-encode a Solution struct for use in unlock()
    /// @param s The solution to encode
    /// @return The ABI-encoded solution bytes
    function encodeSolution(Solution calldata s) pure external returns (bytes memory) {
        return abi.encode(s);
    }

    /// @notice Decode condition bytes into a Condition struct
    /// @param condition The ABI-encoded condition
    /// @return The decoded Condition struct
    function decodeCondition(bytes calldata condition) pure public returns (Condition memory) {
        return abi.decode(condition, (Condition));
    }
}