// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {VeilLib} from "src/lib/VeilLib.sol";

/**
 * @title IVeilETHQueue
 * @notice Interface for reading from VeilETHQueue contract
 */
interface IVeilETHQueue {
    function depositsQueue(uint256 nonce)
        external
        view
        returns (
            address fallbackReceiver,
            uint256 amountIn,
            uint256 fee,
            uint256 shieldAmount,
            uint256 timestamp,
            VeilLib.DepositStatus status,
            bytes memory depositKey
        );

    function getPendingDeposits() external view returns (uint256[] memory);

    function depositQueueNonce() external view returns (uint256);
}

/**
 * @title QueueHelper
 * @author Veil Cash
 * @notice Read-only helper contract for batch querying VeilETHQueue deposits
 * @dev Reduces RPC calls by aggregating multiple view calls into single responses
 */
contract QueueHelper {
    /// @notice Flattened deposit struct with nonce for batch returns
    struct DepositWithNonce {
        uint256 nonce;
        address fallbackReceiver;
        uint256 amountIn;
        uint256 fee;
        uint256 shieldAmount;
        uint256 timestamp;
        VeilLib.DepositStatus status;
        bytes depositKey;
    }

    /// @notice The VeilETHQueue contract address
    IVeilETHQueue public immutable queue;

    /// @param _queue Address of the VeilETHQueue contract
    constructor(address _queue) {
        queue = IVeilETHQueue(_queue);
    }

    /**
     * @notice Get all pending deposits with their full data
     * @dev Replaces N+1 calls (getPendingDeposits + N getDeposit calls) with 1 call
     * @return deposits Array of pending deposits with nonces
     */
    function getPendingDepositsWithData() external view returns (DepositWithNonce[] memory deposits) {
        uint256[] memory nonces = queue.getPendingDeposits();
        deposits = new DepositWithNonce[](nonces.length);

        for (uint256 i = 0; i < nonces.length; i++) {
            deposits[i] = _getDepositWithNonce(nonces[i]);
        }

        return deposits;
    }

    /**
     * @notice Get multiple deposits by their nonces
     * @dev Useful for fetching specific deposits in a single call
     * @param nonces Array of deposit nonces to fetch
     * @return deposits Array of deposits with their data
     */
    function getDepositsBatch(uint256[] calldata nonces) external view returns (DepositWithNonce[] memory deposits) {
        deposits = new DepositWithNonce[](nonces.length);

        for (uint256 i = 0; i < nonces.length; i++) {
            deposits[i] = _getDepositWithNonce(nonces[i]);
        }

        return deposits;
    }

    /**
     * @notice Get the most recent deposits with their full data
     * @dev Returns deposits from currentNonce down to max(1, currentNonce - limit + 1)
     * @param limit Maximum number of deposits to return
     * @return deposits Array of recent deposits (most recent first)
     */
    function getRecentDepositsWithData(uint256 limit) external view returns (DepositWithNonce[] memory deposits) {
        uint256 currentNonce = queue.depositQueueNonce();

        if (currentNonce == 0) {
            return new DepositWithNonce[](0);
        }

        // Calculate actual count (can't return more than exist)
        uint256 count = limit > currentNonce ? currentNonce : limit;
        deposits = new DepositWithNonce[](count);

        // Fill array from most recent to oldest
        for (uint256 i = 0; i < count; i++) {
            uint256 nonce = currentNonce - i;
            deposits[i] = _getDepositWithNonce(nonce);
        }

        return deposits;
    }

    /**
     * @notice Internal helper to fetch and flatten a deposit by nonce
     * @param nonce The deposit nonce to fetch
     * @return deposit The flattened deposit struct with nonce
     */
    function _getDepositWithNonce(uint256 nonce) internal view returns (DepositWithNonce memory deposit) {
        (
            address fallbackReceiver,
            uint256 amountIn,
            uint256 fee,
            uint256 shieldAmount,
            uint256 timestamp,
            VeilLib.DepositStatus status,
            bytes memory depositKey
        ) = queue.depositsQueue(nonce);

        return DepositWithNonce({
            nonce: nonce,
            fallbackReceiver: fallbackReceiver,
            amountIn: amountIn,
            fee: fee,
            shieldAmount: shieldAmount,
            timestamp: timestamp,
            status: status,
            depositKey: depositKey
        });
    }
}
