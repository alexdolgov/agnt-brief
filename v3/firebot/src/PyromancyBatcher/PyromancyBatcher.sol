// SPDX-License-Identifier: MIT
pragma solidity 0.8.35;

/*
  ____                                                 ____        _       _
 |  _ \ _   _ _ __ ___  _ __ ___   __ _ _ __   ___ _ _| __ )  __ _| |_ ___| |__   ___ _ __
 | |_) | | | | '__/ _ \| '_ ` _ \ / _` | '_ \ / __| | | _ \ / _` | __/ __| '_ \ / _ \ '__|
 |  __/| |_| | | | (_) | | | | | | (_| | | | | (__| |_| |_) | (_| | || (__| | | |  __/ |
 |_|    \__, |_|  \___/|_| |_| |_|\__,_|_| |_|\___|\__, |____/ \__,_|\__\___|_| |_|\___|_|
        |___/                                      |___/

 PyromancyBatcher — settle many omens in a single transaction.

 Pyromancy's `finalizeForecast` is permissionless: anyone may settle any omen,
 and the payout always goes to the omen's own pyromancer (never to the caller).
 That makes a one-signature "claim all winning omens" possible with no change to
 the (immutable, already-deployed) Pyromancy contract — this thin, stateless,
 ownerless helper just loops over the canonical round proofs the frontend has
 already located and forwards each to the pool.

 Fault-tolerant by design: each settle is wrapped in try/catch, so an omen that
 was front-run (already finalized) or isn't resolvable yet is skipped rather than
 reverting the whole batch. The number actually settled is returned.

 Holds no funds, has no admin, stores no state. Safe to leave deployed forever.
*/

interface IPyromancy {
    function finalizeForecast(
        uint256 forecastId,
        uint80 startRoundId,
        uint80 startPrevRoundId,
        uint80 resolveRoundId,
        uint80 resolvePrevRoundId,
        uint80 startNextGenesis,
        uint80 resolveNextGenesis
    ) external;
}

contract PyromancyBatcher {
    /// @notice The Pyromancy pool this batcher settles omens against. Immutable —
    ///         set once at construction, never changeable.
    IPyromancy public immutable pyromancy;

    /// @param pyromancy_ The deployed Pyromancy pool address.
    constructor(IPyromancy pyromancy_) {
        pyromancy = pyromancy_;
    }

    /// @dev One omen's canonical Chainlink round proof, exactly as
    ///      `finalizeForecast` expects it. The frontend locates these off-chain
    ///      (binary-searching the BTC/USD feed) before submitting the batch.
    struct Settlement {
        uint256 forecastId;
        uint80 startRoundId;
        uint80 startPrevRoundId;
        uint80 resolveRoundId;
        uint80 resolvePrevRoundId;
        uint80 startNextGenesis;
        uint80 resolveNextGenesis;
    }

    /// @notice Settle a batch of omens in one transaction. Each is forwarded to
    ///         the pool with its round proof; the pool pays each omen's own
    ///         pyromancer. A settle that reverts (already finalized, not yet
    ///         resolvable, bad proof) is skipped — it never aborts the batch.
    /// @param items The omens to settle, with their canonical round proofs.
    /// @return settled How many omens were finalized successfully.
    function finalizeMany(Settlement[] calldata items) external returns (uint256 settled) {
        uint256 n = items.length;
        for (uint256 i = 0; i < n; i++) {
            Settlement calldata s = items[i];
            try
                pyromancy.finalizeForecast(
                    s.forecastId,
                    s.startRoundId,
                    s.startPrevRoundId,
                    s.resolveRoundId,
                    s.resolvePrevRoundId,
                    s.startNextGenesis,
                    s.resolveNextGenesis
                )
            {
                unchecked {
                    settled++;
                }
            } catch {
                // Skip — front-run, not yet resolvable, or a stale proof. The rest
                // of the batch still settles.
            }
        }
    }
}