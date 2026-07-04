pragma solidity ^0.5.16;

import "./vendor/Proxyable.sol";

// SPDX-License-Identifier: MIT

/// @title RetiredSynthsUSD
/// @notice Terminal implementation for the legacy sUSD `ProxyERC20`. Pointing the
///         proxy at this target (via `Proxy.setTarget`) retires sUSD: every balance
///         reads 0, `totalSupply` is 0, and all value-moving entry points revert.
///         The old target + TokenState are orphaned (never modified); this contract
///         holds no storage and has no mint path.
///
///         This is a `Proxyable` so the existing `ProxyERC20` forwards to it
///         correctly: the proxy fallback calls `setMessageSender(...)` then forwards
///         the original calldata. `setMessageSender`/`setProxy`/ownership come from
///         the `Proxyable`/`Owned` bases (vendored verbatim from synthetix).
contract RetiredSynthsUSD is Proxyable {
    string public constant name = "Synth sUSD (retired)";
    string public constant symbol = "sUSD";
    uint8 public constant decimals = 18;

    constructor(address payable _proxy, address _owner) public Owned(_owner) Proxyable(_proxy) {}

    /* ========== ERC20 VIEWS — permanently empty ========== */

    function totalSupply() external view returns (uint) {
        return 0;
    }

    function balanceOf(address) external view returns (uint) {
        return 0;
    }

    function allowance(address, address) external view returns (uint) {
        return 0;
    }

    /* ========== ERC20 MUTATIONS — permanently dead ========== */

    function transfer(address, uint) external returns (bool) {
        revert("sUSD retired");
    }

    function transferFrom(
        address,
        address,
        uint
    ) external returns (bool) {
        revert("sUSD retired");
    }

    function approve(address, uint) external returns (bool) {
        revert("sUSD retired");
    }

    // Synth-specific transfer variants the legacy proxy may forward — also dead.
    function transferAndSettle(address, uint) external returns (bool) {
        revert("sUSD retired");
    }

    function transferFromAndSettle(
        address,
        address,
        uint
    ) external returns (bool) {
        revert("sUSD retired");
    }

    // No issue()/burn(): nothing can ever mint or move sUSD through this target.
}
