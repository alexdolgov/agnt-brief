# Agentic Audit Brief: Defi Kingdoms

⚠️ Lifecycle status: DECLINING - TVL dropped 57.0% over 90 days

## Project Overview

- Project: Defi Kingdoms (`defi-kingdoms`)
- Website: [https://www.defikingdoms.com](https://www.defikingdoms.com)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-14T05:53:19.544Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-39b4
- Chains: harmony, klaytn, metis
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $7,689,270.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DeFi Kingdoms is a cross-chain fantasy RPG/game integrated with DeFi features, including Hero NFTs, tokenized in-game resources, decentralized exchange functionality, liquidity pools, swaps, and reward mechanisms.

### Architecture

All contracts belong to a single product family and likely share infrastructure such as a common router or factory for liquidity pools, though specific relationships are not detailed in the provided data.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | metis | [`0xa0d026...c5dd92`](./contracts/metis-1088/0xa0d026484859b84709749047a0118e3932c5dd92/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | metis | `0x4cb622...c35d14` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xc76816...65b53b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x30c103...527b43` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x36fae7...98db2b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xaa8548...463ea6` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x72cb10...90048f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x9014b9...faa5f7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [solidity.finance/audits/DefiKingdoms](https://sourcehat.com/audits/DefiKingdoms) | SourceHat | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2260] solidity.finance/audits/DefiKingdoms

Fork inheritance lineage and inherited audits are included when available.
