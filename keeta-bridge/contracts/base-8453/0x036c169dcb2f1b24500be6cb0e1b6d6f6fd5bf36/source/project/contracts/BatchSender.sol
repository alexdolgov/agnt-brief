// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract BatchSender {
    error CannotReceiveEth();
    error SendFailed(address to, uint256 amount);
    error ValueMismatch(uint256 sent, uint256 received);
    error LengthMismatch(uint256 recipientsLen, uint256 amountsLen);

    function batchSend(address[] calldata recipients, uint256[] calldata amounts) external payable {
        uint256 len = recipients.length;

        if (len != amounts.length) revert LengthMismatch(len, amounts.length);

        uint256 sent = 0; // sum of all amounts
        for (uint256 i = 0; i < len; ) {
            uint256 amt = amounts[i];
            sent += amt;

            (bool ok, ) = recipients[i].call{value: amt}("");
            if (!ok) revert SendFailed(recipients[i], amt);

            unchecked { ++i; }
        }

        if (sent != msg.value) revert ValueMismatch(sent, msg.value);
    }

    // Discourage accidental sends. (Force-sends via SELFDESTRUCT can't be blocked.)
    receive() external payable { revert CannotReceiveEth(); }
    fallback() external payable { revert CannotReceiveEth(); }
}
