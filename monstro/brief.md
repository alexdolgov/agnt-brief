# Agentic Audit Brief: MONSTRO

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 100.0% over 90 days

## Project Overview

- Project: MONSTRO (`monstro`)
- Website: [https://v2.monstro.fun](https://v2.monstro.fun)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-05-24T04:14:58.830Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 9 unique implementations (12 raw deployments)
- DeFi Llama TVL: $3,563,283.70
- On-chain TVL (included contracts): $3,433,424.50
- TVL by chain: Base $3,433,424.50

## Project Description

MONSTRO is a yield protocol on Base that allows users to stake its native token to earn rewards.

### Architecture

The MonstroToken is the core asset, and MonstroStaking is the contract that manages staking and reward distribution, with no additional shared infrastructure detected.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 12
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,433,424.50
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $3,433,424.50 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MonstroToken | token | base | [`0x1d3be1...e708f7`](./contracts/base-8453/0x1d3be1cc80ca89ddbabe5b5c254af63200e708f7/) | ⚠️ Unaudited |
| MonstroDataTracker | unknown | base | [`0x813303...21f53f`](./contracts/base-8453/0x813303b6f253c74d997020518227f87ff721f53f/) | ⚠️ Unaudited |
| MonstroNFT | token | base | [`0x553fa1...373cf0`](./contracts/base-8453/0x553fa1d5e0bc4b1b98fc39c4e01f4b25d8373cf0/) | ⚠️ Unaudited |
| MonstroNFTFeatures | token | base | [`0x0d949b...28041d`](./contracts/base-8453/0x0d949bbe56bffe8d2bc333a6f830e1a8de28041d/) | ⚠️ Unaudited |
| MonstroNFTProps | token | base | [`0xbb0c01...4b3452`](./contracts/base-8453/0xbb0c01c090bbf77440119f1e2e83443fb04b3452/) | ⚠️ Unaudited |
| MonstroNFTSale | token | base | 4 deployments: base [`0x53f3f5...f1ec7c`](./contracts/base-8453/0x53f3f548f30639d4d0bd6020db7e789ee8f1ec7c/); base `0xcc0bec...29cec1`; base `0xcd6cda...76c76d`; base `0xf6509e...4ddcd4` | ⚠️ Unaudited |
| MonstroPayUSDC | unknown | base | [`0x37db84...ecbf6c`](./contracts/base-8453/0x37db84b897c6db3e509d74bc009efb9210ecbf6c/) | ⚠️ Unaudited |
| MonstroStaking | unknown | base | [`0x997417...f4742b`](./contracts/base-8453/0x99741758a3bcd7a95b80845e124c5c499df4742b/) | ⚠️ Unaudited |
| MonstroUSDC | unknown | base | [`0xfa68ac...6b0397`](./contracts/base-8453/0xfa68ac5ca298ab4b96bce6542ec74bb9516b0397/) | ⚠️ Unaudited |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
