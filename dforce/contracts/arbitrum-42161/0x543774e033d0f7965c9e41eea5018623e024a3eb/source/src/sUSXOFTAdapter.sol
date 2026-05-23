// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { OFTERC20AdapterUpgradeable } from "./OFT/OFTERC20AdapterUpgradeable.sol";

import { IsUSX } from "./interface/IsUSX.sol";

/**
 * @title sUSX OFT Adapter Contract
 * @dev This contract serves as an adapter for sUSX tokens,
 *      allowing for the seamless interaction with the OFT protocol.
 *      It inherits from OFTERC20AdapterUpgradeable to leverage its functionality.
 */
contract sUSXOFTAdapter is OFTERC20AdapterUpgradeable {
    constructor(address _token, address _lzEndpoint) OFTERC20AdapterUpgradeable(_token, _lzEndpoint) {}

    /**
     * @notice Initiates a debit transaction.
     * @dev This function calculates the amounts to be sent and received based on the input parameters.
     * It then executes the token transfer from the sender to this contract.
     * @param _from The address from which the tokens are debited.
     * @param _amountLD The amount of tokens to be debited.
     * @param _minAmountLD The minimum amount of tokens expected to be received.
     * @param _dstEid The destination endpoint ID for the transaction.
     * @return amountSentLD The actual amount of tokens sent.
     * @return amountReceivedLD The actual amount of tokens received.
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override whenNotPaused returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        // Calculate the actual amounts to be sent and received based on the input parameters
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);

        // Perform outbound token transfer from the sender to this contract
        IsUSX(address(token_)).outboundTransferShares(amountSentLD, _from);

        // Return the actual amounts sent and received
        return (amountSentLD, amountReceivedLD);
    }

    /**
     * @notice Initiates a credit transaction.
     * @dev This function unlocks the tokens and transfers them to the recipient address.
     * It assumes a lossless transfer unless the transfer mechanism is modified in a derived contract.
     * @param _to The address to which the tokens are credited.
     * @param _amountLD The amount of tokens to be credited.
     * @return amountReceivedLD The actual amount of tokens received.
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 /*_srcEid*/
    ) internal virtual override whenNotPaused returns (uint256 amountReceivedLD) {
        // Finalize the inbound transfer of shares and unlock the tokens for the recipient
        IsUSX(address(token_)).finalizeInboundTransferShares(_amountLD, _to);

        // Return the actual amount of tokens received, assuming a lossless transfer
        return _amountLD;
    }
}
