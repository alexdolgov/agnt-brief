// SPDX-License-Identifier: EXTRACTED
// Contract: StableDebtTokenDisabled
// Address: 0xe230cf9cee7b299f69778ef950a61de0de520ba7
// Compiler: v0.8.12+commit.f00d7308
// Classification: UNVERIFIED FORK — appears to be Aave v3 based on contract name, but may contain ZeroLend modifications. Diff against upstream Aave v3 before assuming standard.
// Source: Etherscan verified (project files only, libraries excluded)
// Extracted: 2026-04-13

// ======================================================================
// FILE: contracts/StableDebtTokenDisabled.sol
// ======================================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import {IPool, StableDebtToken} from "@zerolendxyz/core-v3/contracts/protocol/tokenization/StableDebtToken.sol";

contract StableDebtTokenDisabled is StableDebtToken {
    constructor(IPool pool) StableDebtToken(pool) {
        // Intentionally left blank
    }

    function getRevision() internal pure virtual override returns (uint256) {
        return 4;
    }

    function mint(
        address,
        address,
        uint256,
        uint256
    ) external virtual override onlyPool returns (bool, uint256, uint256) {
        revert("STABLE_BORROWING_DEPRECATED");
    }
}
