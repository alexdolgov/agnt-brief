// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { VaultWithdrawal } from "../storage/VaultStorage.sol";

library WithdrawalHash {
    bytes32 public constant _VAULT_WITHDRAWAL_TYPEHASH =
        keccak256("VaultWithdrawal(uint256 nonce,uint256 tokenAmount,address to)");

    function hash(VaultWithdrawal memory withdrawal) internal pure returns (bytes32) {
        return
            keccak256(abi.encode(_VAULT_WITHDRAWAL_TYPEHASH, withdrawal.nonce, withdrawal.tokenAmount, withdrawal.to));
    }
}
