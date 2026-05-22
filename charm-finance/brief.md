# Agentic Audit Brief: Charm Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.8% over 90 days

## Project Overview

- Project: Charm Finance (`charm-finance`)
- Website: [https://www.charm.fi/](https://www.charm.fi/)
- Lifecycle: unknown (Tier 0, 83% below peak)
- Generated: 2026-05-22T00:52:42.037Z
- Pipeline run: v2-pipeline-2026-05-22-bcffcb-4895
- Chains: berachain, blast, boba, linea, scroll
- Contract surface: 4 unique implementations (7 raw deployments)
- DeFi Llama TVL: $2,195,939.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Charm Finance is a liquidity management protocol that automates concentrated liquidity positions on Uniswap V3-style AMMs. It deploys AlphaProVaults that actively rebalance and compound fees to optimize yields for liquidity providers.

### Architecture

The protocol consists of a single product family centered around the AlphaProVaultFactory, which deploys and manages vault instances. No shared infrastructure or cross-family dependencies are present in the contract surface.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 4
- Raw deployments: 7
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/charm/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AlphaProVaultFactory | registry | berachain | 4 deployments: linea `0x8c554f...e50e07`; berachain [`0x189bd7...6ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/); blast `0x8c554f...e50e07`; scroll `0xc2cc57...a32e77` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | boba | `0xfaf1af...6d8a07` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc2cc57...a32e77` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xc2cc57...a32e77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/charm/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Rendered PDF capture](https://3306594273-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FncWpbfiN022KvH5AGrQq%2Fuploads%2FIM3bniGpiEo24osqeSJ5%2Freport-cantinacode-charm-0604.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x189bd7...6ed137`](./contracts/berachain-80094/0x189bd734c2f1beeaca81e0edbb1ce3b8a16ed137/) | AlphaProVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1779] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
