# Agentic Audit Brief: Velo Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 13.7% over 90 days

## Project Overview

- Project: Velo Finance (`velo-finance`)
- Website: [https://velofinance.io](https://velofinance.io)
- Lifecycle: unknown (Tier 0, 71.6% below peak)
- Generated: 2026-06-17T07:00:35.623Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 10 unique implementations (15 raw deployments)
- DeFi Llama TVL: $1,531,491.18
- On-chain TVL (included contracts): $117,630,524.33
- TVL by chain: Bsc $117,630,524.33

## Project Description

Velo Finance is listed by DefiLlama as a DEX on Binance/BNB Chain. The current homepage provides no substantive product text confirming specific swap, liquidity provision, farming, or pool factory behavior; those details should be treated as unconfirmed unless supported by project documentation or verified contract analysis. EVRY/Evry references should be treated as observed contract names only unless project documentation confirms their relationship to Velo Finance.

### Architecture

The EvryFactory registry creates and manages liquidity pools, while the Farms contracts distribute rewards to liquidity providers. The EVRY token and two additional tokens serve as core assets within the ecosystem.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 4/5 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/9.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $117,630,524.33
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $117,630,524.33 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | bsc | n/a | 2 deployments: bsc [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/); bsc `0xf486ad...f6fd46` | ⚠️ Unaudited |
| DMMPool | core_logic | bsc | n/a | [`0x8d5b39...35ceea`](./contracts/bsc-56/0x8d5b39b8ebac7f3404af73688f352b05c835ceea/) | ⚠️ Unaudited |
| DMMRouter02DelegateCall | adapter | bsc | unit-21396 | [`0x345617...22fb69`](./contracts/bsc-56/0x345617dd29a12e836aebc936ca0ca59ccd22fb69/) | ⚠️ Unaudited |
| EarnOtherFixedAPRLockReward | unknown | bsc | n/a | 4 deployments: bsc [`0x2703e5...45caf9`](./contracts/bsc-56/0x2703e5d3709782e85957e40a9c834afd4d45caf9/); bsc `0x419175...8bebe8`; bsc `0x7dd617...3796b7`; bsc `0xba5640...788a3c` | ⚠️ Unaudited |
| EVRY | unknown | bsc | n/a | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | ⚠️ Unaudited |
| EvryPair | unknown | bsc | n/a | 2 deployments: bsc [`0x526357...40b802`](./contracts/bsc-56/0x526357ef8304ce6cd46689aa0f9abf642a40b802/); bsc `0xfcd4bb...4226b8` | ⚠️ Unaudited |
| EvryRouter | adapter | bsc | n/a | [`0x296b7c...665c46`](./contracts/bsc-56/0x296b7c203e2c7306b132f2d5ad66106bb7665c46/) | ⚠️ Unaudited |
| Farms | unknown | bsc | unit-21395 | [`0x334721...8a9252`](./contracts/bsc-56/0x33472144eaa7540e7bada5a1ab7da372e48a9252/) | ⚠️ Unaudited |
| Farms | unknown | bsc | unit-21398 | [`0xdd3e2d...a61945`](./contracts/bsc-56/0xdd3e2da1d017a564b8225bc8e92f2970cfa61945/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-21397 | [`0x6c2242...3bf912`](./contracts/bsc-56/0x6c22422f4044dfba79f4ea6bbb9c09162c3bf912/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/) | Token | token | $117,629,046.32 | Verified native implementation with $117,629,046.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d5b39...35ceea`](./contracts/bsc-56/0x8d5b39b8ebac7f3404af73688f352b05c835ceea/) | DMMPool | core_logic | $1,478.01 | Verified native implementation with $1,478.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x345617...22fb69`](./contracts/bsc-56/0x345617dd29a12e836aebc936ca0ca59ccd22fb69/) | DMMRouter02DelegateCall | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2703e5...45caf9`](./contracts/bsc-56/0x2703e5d3709782e85957e40a9c834afd4d45caf9/) | EarnOtherFixedAPRLockReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | EVRY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x526357...40b802`](./contracts/bsc-56/0x526357ef8304ce6cd46689aa0f9abf642a40b802/) | EvryPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x296b7c...665c46`](./contracts/bsc-56/0x296b7c203e2c7306b132f2d5ad66106bb7665c46/) | EvryRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
