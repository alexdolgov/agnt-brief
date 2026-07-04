// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { RewardsClaim } from "../storage/StakingStorage.sol";

library ClaimHash {
    bytes32 public constant _TYPEHASH = keccak256("RewardsClaim(uint256 deadline,address to)");

    function hash(RewardsClaim memory claim) internal pure returns (bytes32) {
        return keccak256(abi.encode(_TYPEHASH, claim.deadline, claim.to));
    }
}
