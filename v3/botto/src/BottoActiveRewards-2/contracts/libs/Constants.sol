// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

library Constants {
    bytes32 internal constant REWARD_ROLE = keccak256("REWARD_ROLE");

    bytes32 internal constant REDEEM_PERMIT_TYPEHASH =
        keccak256(
            "RedeemPermit(uint256 amount,uint256 nonce,address currency,uint256 kickoff,uint256 deadline,address recipient,bytes data)"
        );

    bytes32 internal constant RECOVER_PERMIT_TYPEHASH =
        keccak256(
            "RecoverPermit(uint256 amount,address currency,uint256 deadline,address recipient,uint256 nonce)"
        );
}
