# Agentic Audit Brief: DeepLock

## Project Overview

- Project: DeepLock (`deeplock`)
- Lifecycle: active (Tier 0, 86.8% below peak)
- Generated: 2026-06-17T07:00:52.096Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 19 unique implementations (27 raw deployments)
- DeFi Llama TVL: $1,956,609.93
- On-chain TVL (included contracts): $56,173,110.00
- TVL by chain: Bsc $56,173,110.00

## Project Description

DeepLock is a BSC launchpad and liquidity-locking platform that provides tools for token launches, liquidity locking, token distribution, staking, and mining. Launched-token contracts, AMM pools, or other third-party ecosystem contracts should not be treated as DeepLock-owned protocol infrastructure unless independently verified.

### Architecture

The DeepLock family shares a common deployer cluster and infrastructure, with core contracts like DeepLockLocker and DeepLockLPMining interacting with various token and liquidity pool contracts. These supporting contracts represent launched tokens and their associated AMM pools, all integrated into the launchpad ecosystem.

## Contract Surface Quality

- Indexed contracts: 137; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 110 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/29.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 19
- Raw deployments: 27
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $56,173,110.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenMintERC20Token | token | bsc | n/a | [`0xd43b22...eb5d47`](./contracts/bsc-56/0xd43b226d365d8b22ba472afc2fa769b356eb5d47/) | ⚠️ Unaudited |
| ALPHAGOAT | unknown | bsc | n/a | [`0x317205...56b44c`](./contracts/bsc-56/0x3172057a27b0dbc48a99b8fe2222c4535d56b44c/) | ⚠️ Unaudited |
| ANON_INU_COIN | unknown | bsc | n/a | [`0x64f367...b54147`](./contracts/bsc-56/0x64f36701138f0e85cc10c34ea535fdbadcb54147/) | ⚠️ Unaudited |
| BatCoin | unknown | bsc | n/a | [`0xe2ed1a...62b7d9`](./contracts/bsc-56/0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | [`0x89313f...c1b20a`](./contracts/bsc-56/0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a/) | ⚠️ Unaudited |
| CoinToken | token | bsc | n/a | 3 deployments: bsc [`0x6396f9...075896`](./contracts/bsc-56/0x6396f960d14d285e70f9e8dc44452ccff7075896/); bsc `0xa27cf3...100e15`; bsc `0xf919ea...245a4b` | ⚠️ Unaudited |
| DeepLock | unknown | bsc | n/a | [`0x60de5f...aaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | ⚠️ Unaudited |
| DeepLockLocker | unknown | bsc | n/a | [`0x3f4d6b...a4551e`](./contracts/bsc-56/0x3f4d6bf08cb7a003488ef082102c2e6418a4551e/) | ⚠️ Unaudited |
| GRV | unknown | bsc | n/a | [`0x1337ac...6148b5`](./contracts/bsc-56/0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5/) | ⚠️ Unaudited |
| HelloBEP20 | unknown | bsc | n/a | 7 deployments: bsc [`0x20c5ad...661dcf`](./contracts/bsc-56/0x20c5ada8b7a061dd6f32c715e4d5712491661dcf/); bsc `0x59ee79...048184`; bsc `0x618ecb...928a0a`; bsc `0x8df5ad...37e851`; bsc `0xd1bf81...a53e81`; bsc `0xd6a600...17bbd0`; bsc `0xe0f763...b5cf1d` | ⚠️ Unaudited |
| Mooniswap | unknown | bsc | n/a | [`0x168926...e1f2a4`](./contracts/bsc-56/0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x596e48...e2a9e3`](./contracts/bsc-56/0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3/) | ⚠️ Unaudited |
| RedPill | unknown | bsc | n/a | [`0x187d76...9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/) | ⚠️ Unaudited |
| RPS | unknown | bsc | n/a | [`0x486dcc...8f6bec`](./contracts/bsc-56/0x486dccaf152b271630216d62c00188f2558f6bec/) | ⚠️ Unaudited |
| SimpleBEP20 | unknown | bsc | n/a | [`0xffc85d...0fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x47f6c1...518d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8c6dd...3616a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce80ab...50c909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6301c...2f24ae` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x60de5f...aaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | DeepLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f4d6b...a4551e`](./contracts/bsc-56/0x3f4d6bf08cb7a003488ef082102c2e6418a4551e/) | DeepLockLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 13 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
