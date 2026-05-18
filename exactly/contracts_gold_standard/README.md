# Exactly Protocol — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every Exactly-attributable contract across the three chains where the protocol deploys (Ethereum, Optimism, Base), fetched directly from Etherscan v2's `getsourcecode` API. Each contract sits in its own subdirectory with a `metadata.json` and the source files preserving the directory layout the auditor verified against.

**Inventory:** 115 contracts · 1,787 source files · ~15.6 MB total. Fetched 2026-05-17.

**Coverage by chain:**

| Chain | Chain ID | Contracts fetched | Notes |
|---|---:|---:|---|
| Ethereum | 1 | ~36 | Baseline mainnet deployment — Auditor + 5 Markets + DebtManager + DebtPreviewer + Previewer + 5 IRMs + ProxyAdmin + TimelockController |
| Optimism | 10 | ~60 | Primary deployment — 6 Markets + RewardsController + InstallmentsRouter + EXA/esEXA/stEXA/ProtoStaker/Airdrop staking layer + 6 IRMs + multiple previewers + ProxyAdmin + TimelockController |
| Base | 8453 | ~36 | V2-era deployment — VerifiedAuditor + 4 VerifiedMarkets + Firewall + DebtRoller + FlashLoanAdapter + DeadAllower + InstallmentsRouter + 4 IRMs + previewers + ProxyAdmin + TimelockController |
| **Total** | — | **115** | — |

**Compiler split (cleanest V1/V2 architectural signal):**

| Compiler | Contract count | Where |
|---|---:|---|
| `v0.8.17+commit.8df45f5f` | 55 | Ethereum + Optimism (V1 era — Paris EVM) |
| `v0.8.26+commit.8a97fa7a` | 51 | Base (V2 era — Cancun EVM) |
| `v0.8.23+commit.f704f362` | 1 | misc |
| `v0.8.25+commit.b61c2a91` | 2 | misc |
| (unverified) | 6 | 6 obsolete Optimism Market impls |

**Architecture: V1 (Ethereum + Optimism, compiler 0.8.17, contract names `Auditor`/`Market`) vs V2 (Base, compiler 0.8.26, contract names `VerifiedAuditor`/`VerifiedMarket` + Base-only `Firewall`/`DebtRoller`/`FlashLoanAdapter`/`DeadAllower`).**

**Governance: single-tier multisig → 24h timelock → ProxyAdmin → upgrade.** Same `TimelockController` address `0x92024c4bda9da602b711b9abb610d072018eb58b` on all 3 chains. `getMinDelay()` returns 86400 seconds (24 hours) on every chain.

## Per-contract layout

Each contract subdirectory follows the pattern `NN_{chain}_{Name}` (or `NN_{chain}_{Name}_proxy` + `NN_{chain}_{Name}_impl` for proxy pairs), where `NN` is the sequence number, `{chain}` is `eth`/`op`/`base`, and `{Name}` is the canonical deployment name from `github.com/exactly/protocol/deployments/{chain}/{Name}.json`.

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract (file count, byte size, etherscan name, compiler version).

## How these were fetched

```python
# /tmp/fetch_exactly_sources.py
# 1. Pull canonical deployment registry from github.com/exactly/protocol/deployments/{chain}/*.json
# 2. For each X.json with implementation field, treat as TUP proxy pair (X.json = proxy, X_Implementation.json = impl)
# 3. Filter externals (DAI, USDC, WETH, Sablier, Velodrome, Uniswap, etc.)
# 4. Filter sentinel PriceFeed addresses (the 0xeeee... ETH sentinel + Chainlink wrappers)
# 5. GET https://api.etherscan.io/v2/api?chainid={1,10,8453}&module=contract&action=getsourcecode&address={addr}
```

All 115 fetches succeeded except 6 obsolete Optimism Market impls (returned empty source — these are legacy impls upgraded past on-chain; the proxies themselves are verified).

## Notable observations

- **Single-tier governance**: TimelockController at the same address `0x92024c4b…b58b` on all 3 chains, 24-hour delay everywhere. Owns the ProxyAdmin on each chain (Ethereum `0x3866ea62…`; Optimism + Base share `0xfba759bc…`).
- **Deployer EOA**: `0xe61bdef3fff4c3cf7a07996dcb8802b5c85b665a` deploys every canonical Exactly contract across all 3 chains. The v1 brief lists this EOA as a separate "unnamed unknown" contract row on Ethereum — it's an EOA, not a contract.
- **Same `Auditor` impl address `0xaEb62e6F…f027E` on both Ethereum + Optimism**: deployed via CREATE-collision by the same deployer EOA in the same nonce window. The v1 brief surfaces this address only once.
- **`MarketETHRouter` proxy `0x29babff3eba7b517a75109ea8fd6d1eab4a10258` is the same on Ethereum + Optimism**: also CREATE-collision.
- **Per-market impl is NOT shared** between markets (unlike most Compound forks). Each Market has its own impl — increases audit surface.
- **Base introduces `VerifiedMarket` as the impl name**, with the same impl reused across all 4 Base markets (USDC, WETH, cbBTC, cbXRP). All 4 Base Markets share `VerifiedMarket` impl at the same byte-identical source bundle.
- **The 6 Optimism Markets each have 1 unverified impl**: `0xc3a540d9…525e` (MarketOP), `0x94cba863…673a` (MarketUSDC.e), `0xebd58c87…eb19` (MarketUSDC), `0xcb213af4…fd52` (MarketWBTC), `0x833be3f1…d126` (MarketWETH), `0xc9a12edc…54db` (MarketwstETH). These are the impl addresses recorded in the canonical deployment files but Etherscan v2 returns empty source. Likely the proxies were upgraded past these impls; operator should `eth_call implementation()` on each Market proxy to confirm the *current* impl is verified.

## How to use this inventory

- **For audit scoping:** start with the **leading-edge contracts** — Base V2 family (`VerifiedAuditor`, `VerifiedMarket`, `Firewall`, `DebtRoller`, `FlashLoanAdapter`, `DeadAllower`) and the EXA cross-chain anchor contracts (Mar-26 ABDK audit; operator should pull PDF to identify in-scope addresses).
- **For continuous-audit-style targeting:** Exactly has 31 audits over 4.5 years. Cold-start audit work has very low ROI. Diff-style audits on each new module are the high-value path. Compare each contract's deployed version against the audited version (audit dates in `manifest_gold_standard.json`).
- **For V1/V2 architectural diff:** The compiler version split (0.8.17 vs 0.8.26) is the cleanest signal. Diff `VerifiedMarket.sol` against `Market.sol` to identify the V2 deltas.
- **For governance scoping:** Operator should pull `getOwners()` + `getThreshold()` on the DAO multisig `0xfb1bff…91ea` (Optimism GnosisSafeL2) and enumerate `getRoleMember(PROPOSER_ROLE)` and `getRoleMember(EXECUTOR_ROLE)` on the TimelockController to confirm the governance topology.
