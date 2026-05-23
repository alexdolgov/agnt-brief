# Agentic Audit Brief: Hera Finance

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Hera Finance (`hera-finance`)
- Website: [https://staking.hera.finance](https://staking.hera.finance)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-23T14:42:19.441Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: metis
- Contract surface: 28 unique implementations (28 raw deployments)
- DeFi Llama TVL: $5,801,066.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Hera Finance is a decentralized exchange (DEX) on the Metis chain, enabling users to swap tokens and provide liquidity. It features a native token, HeraToken, which likely serves as a governance or utility token within the ecosystem.

### Architecture

All contracts are deployed by the same deployer cluster, indicating a unified infrastructure. The unnamed contracts likely support the DEX operations, with HeraToken acting as the central token for the protocol.

## Audit Coverage Summary

- Verified implementations audited: 3/7 (42.9%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 28
- Raw deployments: 28
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 42.9% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HeraAggregatorV1 | unknown | metis | [`0xafcb08...deb24c`](./contracts/metis-1088/0xafcb0803f96dc1e9768d14ce55b1a46b26deb24c/) | ✅ Audited |
| HeraFeeOrganizer | unknown | metis | [`0xff2e95...0f2fa5`](./contracts/metis-1088/0xff2e95d887c426d724b3a873fe33d554a10f2fa5/) | ✅ Audited |
| HeraSecurity | unknown | metis | [`0x6da631...b02225`](./contracts/metis-1088/0x6da6317e819d6a19c28f0a59291f85fb41b02225/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HeraAggregator | unknown | metis | [`0xce3759...356fd0`](./contracts/metis-1088/0xce3759244610fc69f95db143338c9ed0dc356fd0/) | ⚠️ Unaudited |
| HeraPublicSale | unknown | metis | [`0x1bd717...9047e7`](./contracts/metis-1088/0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7/) | ⚠️ Unaudited |
| HeraPublicSaleV2 | unknown | metis | [`0x1a404c...1f19e1`](./contracts/metis-1088/0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1/) | ⚠️ Unaudited |
| HeraToken | token | metis | [`0x6f0570...2c9dce`](./contracts/metis-1088/0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | metis | `0x0f236b...7d8da7` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x2117f1...083c06` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x250896...7762d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x2ec373...835c03` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x748a89...87e3de` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x852d1f...d1f383` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x863361...5ca041` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x9abb86...57500e` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x9c598d...74ddf6` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0x9fbf11...d3bb6a` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xb4801c...0a7127` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xb4e109...3e5dde` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xbf6ca1...eb47b4` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xcb10b8...823ad0` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xd51732...9729bf` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xd5723d...fb41d6` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xd778b9...4c87a9` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xdbb733...200195` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xddfbeb...b400ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfd2466...1d0695` | ❓ Unverified |
| UnnamedContract | unknown | metis | `0xfdc464...895b63` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FAYXuPbqH2kInNyfTsUcv%2FHera-AggregatorV2_audit-report.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FUXpADKAVfIgit4tFsFbq%2FHera%20Aggregatorv1_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FmILY1xtqsQZdQO7FcOjW%2FHera%20Fee%20Organizer_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0xce3759...356fd0`](./contracts/metis-1088/0xce3759244610fc69f95db143338c9ed0dc356fd0/) | HeraAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1bd717...9047e7`](./contracts/metis-1088/0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7/) | HeraPublicSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1a404c...1f19e1`](./contracts/metis-1088/0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1/) | HeraPublicSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6f0570...2c9dce`](./contracts/metis-1088/0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce/) | HeraToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
