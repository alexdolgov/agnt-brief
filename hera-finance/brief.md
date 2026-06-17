# Agentic Audit Brief: Hera Finance

## Project Overview

- Project: Hera Finance (`hera-finance`)
- Website: [https://staking.hera.finance](https://staking.hera.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:50.087Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, metis
- Contract surface: 37 unique implementations (38 raw deployments)
- DeFi Llama TVL: $6,235,328.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Hera Finance is a Metis-based DEX aggregator and portal focused on token swaps via route discovery, staking, and trade-mining programs around the HERA token. Current evidence supports aggregation and staking/trade-mining functionality, not an AMM-style DEX with user liquidity provision or independently documented HERA governance claims.

### Architecture

All contracts are deployed by the same deployer cluster, indicating a unified infrastructure. The unnamed contracts likely support the DEX operations, with HeraToken acting as the central token for the protocol.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (1 live, 37 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Unverified dependencies: 1/5.

## Audit Coverage Summary

- Verified implementations audited: 3/11 (27.3%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 37
- Raw deployments: 38
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 27.3% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HeraAggregatorV1 | unknown | metis | n/a | [`0xafcb08...deb24c`](./contracts/metis-1088/0xafcb0803f96dc1e9768d14ce55b1a46b26deb24c/) | ✅ Audited |
| HeraFeeOrganizer | unknown | metis | n/a | [`0xff2e95...0f2fa5`](./contracts/metis-1088/0xff2e95d887c426d724b3a873fe33d554a10f2fa5/) | ✅ Audited |
| HeraSecurity | unknown | metis | n/a | [`0x6da631...b02225`](./contracts/metis-1088/0x6da6317e819d6a19c28f0a59291f85fb41b02225/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | arbitrum | unit-30596 | [`0xca0dfc...d96e6e`](./contracts/arbitrum-42161/0xca0dfc4e1935ffa0019aa760db0564b8cdd96e6e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | metis | n/a | [`0xe089a4...007995`](./contracts/metis-1088/0xe089a4efa2da690f21a3ea682cb36dc4ac007995/) | ⚠️ Unaudited |
| HeraAggregator | unknown | metis | n/a | [`0xce3759...356fd0`](./contracts/metis-1088/0xce3759244610fc69f95db143338c9ed0dc356fd0/) | ⚠️ Unaudited |
| HeraAggregatorV2 | unknown | metis | n/a | 2 deployments: metis [`0x000000...fb183a`](./contracts/metis-1088/0x0000000000924fb1969e719eded2fed54afb183a/); arbitrum [`0x000000...fb183a`](./contracts/arbitrum-42161/0x0000000000924fb1969e719eded2fed54afb183a/) | ⚠️ Unaudited |
| HeraFeeSequencer | unknown | metis | n/a | [`0x000000...9fab15`](./contracts/metis-1088/0x000000fee322aaa0a5772e7f92de10180f9fab15/) | ⚠️ Unaudited |
| HeraPublicSale | unknown | metis | n/a | [`0x1bd717...9047e7`](./contracts/metis-1088/0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7/) | ⚠️ Unaudited |
| HeraPublicSaleV2 | unknown | metis | n/a | [`0x1a404c...1f19e1`](./contracts/metis-1088/0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1/) | ⚠️ Unaudited |
| HeraToken | token | metis | n/a | [`0x6f0570...2c9dce`](./contracts/metis-1088/0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1a404c...1f19e1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0f236b...7d8da7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2117f1...083c06` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x250896...7762d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2ec373...835c03` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x748a89...87e3de` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x765fa6...a973a0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x852d1f...d1f383` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x863361...5ca041` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9abb86...57500e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9c598d...74ddf6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9fbf11...d3bb6a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4801c...0a7127` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4e109...3e5dde` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf6ca1...eb47b4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcb10b8...823ad0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd51732...9729bf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd5723d...fb41d6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd778b9...4c87a9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdbb733...200195` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xddfbeb...b400ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfd2466...1d0695` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfdc464...895b63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd717...9047e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x699127...f2e9df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce3759...356fd0` | ❓ Unverified |

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
| metis | [`0x000000...fb183a`](./contracts/metis-1088/0x0000000000924fb1969e719eded2fed54afb183a/) | HeraAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x000000...9fab15`](./contracts/metis-1088/0x000000fee322aaa0a5772e7f92de10180f9fab15/) | HeraFeeSequencer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1bd717...9047e7`](./contracts/metis-1088/0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7/) | HeraPublicSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1a404c...1f19e1`](./contracts/metis-1088/0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1/) | HeraPublicSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6f0570...2c9dce`](./contracts/metis-1088/0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce/) | HeraToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
