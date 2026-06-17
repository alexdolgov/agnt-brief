# Agentic Audit Brief: MONSTRO

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 100.0% over 90 days

## Project Overview

- Project: MONSTRO (`monstro`)
- Website: [https://v2.monstro.fun](https://v2.monstro.fun)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-06-17T07:00:49.639Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 13 unique implementations (20 raw deployments)
- DeFi Llama TVL: $2,009,550.15
- On-chain TVL (included contracts): $3,461,928.91
- TVL by chain: Base $3,461,928.91

## Project Description

MONSTRO is/was a Base protocol historically tracked as a yield project with $MONSTRO staking, alongside related Monstro ecosystem contracts including native token, NFT, NFT sale/features/props, payment/USDC, and data-tracker contracts. The current v2 site indicates a migration toward a broader $MONSTRO ecosystem, Monstro DAO, and Monstro Labs rather than only staking.

### Architecture

The MonstroToken is the core asset, and MonstroStaking is the contract that manages staking and reward distribution, with no additional shared infrastructure detected.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (0 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 20
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,461,928.91
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $3,461,928.91 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MonstroToken | token | base | n/a | [`0x1d3be1...e708f7`](./contracts/base-8453/0x1d3be1cc80ca89ddbabe5b5c254af63200e708f7/) | ⚠️ Unaudited |
| BasedLoansLendingLedger | core_logic | base | n/a | [`0x278cfe...c5141f`](./contracts/base-8453/0x278cfeadeaacbe88f24692ef199247cf17c5141f/) | ⚠️ Unaudited |
| AlgebraPool | core_logic | base | n/a | [`0x174b09...154575`](./contracts/base-8453/0x174b0950f7359f6197e92d8b274f0d6b27154575/) | ⚠️ Unaudited |
| MonstroDataTracker | unknown | base | n/a | [`0x813303...21f53f`](./contracts/base-8453/0x813303b6f253c74d997020518227f87ff721f53f/) | ⚠️ Unaudited |
| MonstroNFT | token | base | n/a | [`0x553fa1...373cf0`](./contracts/base-8453/0x553fa1d5e0bc4b1b98fc39c4e01f4b25d8373cf0/) | ⚠️ Unaudited |
| MonstroNFTFeatures | token | base | n/a | [`0x0d949b...28041d`](./contracts/base-8453/0x0d949bbe56bffe8d2bc333a6f830e1a8de28041d/) | ⚠️ Unaudited |
| MonstroNFTProps | token | base | n/a | [`0xbb0c01...4b3452`](./contracts/base-8453/0xbb0c01c090bbf77440119f1e2e83443fb04b3452/) | ⚠️ Unaudited |
| MonstroNFTSale | token | base | n/a | 4 deployments: base [`0x53f3f5...f1ec7c`](./contracts/base-8453/0x53f3f548f30639d4d0bd6020db7e789ee8f1ec7c/); base `0xcc0bec...29cec1`; base `0xcd6cda...76c76d`; base `0xf6509e...4ddcd4` | ⚠️ Unaudited |
| MonstroPayUSDC | unknown | base | n/a | [`0x37db84...ecbf6c`](./contracts/base-8453/0x37db84b897c6db3e509d74bc009efb9210ecbf6c/) | ⚠️ Unaudited |
| MonstroStaking | unknown | base | n/a | [`0x997417...f4742b`](./contracts/base-8453/0x99741758a3bcd7a95b80845e124c5c499df4742b/) | ⚠️ Unaudited |
| MonstroUSDC | unknown | base | n/a | [`0xfa68ac...6b0397`](./contracts/base-8453/0xfa68ac5ca298ab4b96bce6542ec74bb9516b0397/) | ⚠️ Unaudited |
| RatioDerivedAdapter | adapter | base | n/a | [`0xb5391e...f88b52`](./contracts/base-8453/0xb5391e137cd3bb9dda02c164b599c95af0f88b52/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | 5 deployments: base [`0x4713b3...5a8dd0`](./contracts/base-8453/0x4713b3ab36c9759043694757e6cb8123915a8dd0/); base `0xa67356...14085c`; base `0xa6cd98...5404dc`; base `0xcb7c19...9f4391`; base `0xce45b2...6f6b4a` | ⚠️ Unaudited |

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
| base | [`0x1d3be1...e708f7`](./contracts/base-8453/0x1d3be1cc80ca89ddbabe5b5c254af63200e708f7/) | MonstroToken | token | $3,433,424.50 | Verified native implementation with $3,433,424.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x813303...21f53f`](./contracts/base-8453/0x813303b6f253c74d997020518227f87ff721f53f/) | MonstroDataTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553fa1...373cf0`](./contracts/base-8453/0x553fa1d5e0bc4b1b98fc39c4e01f4b25d8373cf0/) | MonstroNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d949b...28041d`](./contracts/base-8453/0x0d949bbe56bffe8d2bc333a6f830e1a8de28041d/) | MonstroNFTFeatures | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbb0c01...4b3452`](./contracts/base-8453/0xbb0c01c090bbf77440119f1e2e83443fb04b3452/) | MonstroNFTProps | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x53f3f5...f1ec7c`](./contracts/base-8453/0x53f3f548f30639d4d0bd6020db7e789ee8f1ec7c/) | MonstroNFTSale | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x37db84...ecbf6c`](./contracts/base-8453/0x37db84b897c6db3e509d74bc009efb9210ecbf6c/) | MonstroPayUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x997417...f4742b`](./contracts/base-8453/0x99741758a3bcd7a95b80845e124c5c499df4742b/) | MonstroStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfa68ac...6b0397`](./contracts/base-8453/0xfa68ac5ca298ab4b96bce6542ec74bb9516b0397/) | MonstroUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
