// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

type DepositId is uint256;

using DepositIdLib for DepositId global;

library DepositIdLib {
    function increment(
        DepositId id
    ) internal pure returns (DepositId) {
        // SAFETY: cannot realistically overflow
        unchecked {
            return DepositId.wrap(DepositId.unwrap(id) + 1);
        }
    }
}
