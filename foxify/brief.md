# Agentic Audit Brief: foxify

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: foxify (`foxify`)
- Website: [https://www.foxify.trade/](https://www.foxify.trade/)
- Lifecycle: unknown (Tier 0, 99.8% below peak)
- Generated: 2026-05-29T18:13:30.606Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-e9c3
- Chains: arbitrum, sonic
- Contract surface: 5 unique implementations (10 raw deployments)
- DeFi Llama TVL: $3,570,035.38
- On-chain TVL (included contracts): $72,645.21
- TVL by chain: Arbitrum $72,645.21

## Project Description

Foxify is a decentralized derivatives protocol enabling users to trade options and perpetuals with leverage. It uses vaults for liquidity and risk management, and controllers to manage trading parameters.

### Architecture

Vaults hold user funds and are managed by Controllers, which set trading rules. Foxify, FoxifyMaxi, and EBFOX tokens likely represent positions or governance within the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 10
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $72,645.21
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $72,645.21 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | arbitrum | 2 deployments: arbitrum [`0x4b91bf...c2193b`](./contracts/arbitrum-42161/0x4b91bfdc97690f67c0ba8dc85050f81ce7c2193b/); arbitrum `0xe5a4f2...83446f` | ⚠️ Unaudited |
| Controller | governance | arbitrum | 5 deployments: arbitrum [`0x035941...a24457`](./contracts/arbitrum-42161/0x0359410be114bea68120641cf6f97d5b4ca24457/); arbitrum `0x09523a...056f74`; arbitrum `0x97cf72...20a38b`; arbitrum `0xc82bd5...fa4f08`; arbitrum `0xda299b...b96c1e` | ⚠️ Unaudited |
| EBFOX | unknown | sonic | [`0xbd87a9...64d0ab`](./contracts/sonic-146/0xbd87a909f9a40fdad6d9be703e89a0383064d0ab/) | ⚠️ Unaudited |
| Foxify | unknown | sonic | [`0x261dfa...af0eb6`](./contracts/sonic-146/0x261dfa2528dfa19011f10b168c856e02baaf0eb6/) | ⚠️ Unaudited |
| FoxifyMaxi | unknown | sonic | [`0x3725b7...4edd37`](./contracts/sonic-146/0x3725b740b33e75898e4e2e616e9bb519884edd37/) | ⚠️ Unaudited |

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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x4b91bf...c2193b`](./contracts/arbitrum-42161/0x4b91bfdc97690f67c0ba8dc85050f81ce7c2193b/) | Vault | core_logic | $72,645.21 | Verified native implementation with $72,645.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x035941...a24457`](./contracts/arbitrum-42161/0x0359410be114bea68120641cf6f97d5b4ca24457/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbd87a9...64d0ab`](./contracts/sonic-146/0xbd87a909f9a40fdad6d9be703e89a0383064d0ab/) | EBFOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x261dfa...af0eb6`](./contracts/sonic-146/0x261dfa2528dfa19011f10b168c856e02baaf0eb6/) | Foxify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3725b7...4edd37`](./contracts/sonic-146/0x3725b740b33e75898e4e2e616e9bb519884edd37/) | FoxifyMaxi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [8080] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [8081] 0002-metadata-manifest-and-pull-command.md
- [8082] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
