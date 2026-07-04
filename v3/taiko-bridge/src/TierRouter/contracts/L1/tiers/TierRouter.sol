// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./ITierRouter.sol";

/// @title TierRouter
/// @dev Labeled in AddressResolver as "tier_router"
/// @custom:security-contact security@taiko.xyz
contract TierRouter is ITierRouter {
    /// @inheritdoc ITierRouter
    function getProvider(uint256 /*_blockId*/ ) external pure returns (address) {
        return 0x3a1A900680BaADb889202faf12915F7E47B71ddd;
    }
}
