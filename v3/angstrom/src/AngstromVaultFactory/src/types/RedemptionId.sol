// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

type RedemptionId is uint256;

using RedemptionIdLib for RedemptionId global;

library RedemptionIdLib {
    function increment(
        RedemptionId id
    ) internal pure returns (RedemptionId) {
        // SAFETY: cannot realistically overflow
        unchecked {
            return RedemptionId.wrap(RedemptionId.unwrap(id) + 1);
        }
    }
}
