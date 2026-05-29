# Agentic Audit Brief: Republic Note

## Project Overview

- Project: Republic Note (`republic-note`)
- Website: [https://republic.com/note](https://republic.com/note)
- Lifecycle: active (Tier 0, 58.4% below peak)
- Generated: 2026-05-29T13:09:10.367Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: avalanche
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $16,054,934.84
- On-chain TVL (included contracts): $51,200,000.00
- TVL by chain: Avalanche $51,200,000.00

## Project Description

Republic Note is a tokenized real-world asset (RWA) protocol that issues a restricted, lockup-based token representing fractional ownership or revenue-sharing rights in private equity or venture capital assets.

### Architecture

The protocol consists of a single product family with no shared infrastructure or dependencies beyond the core token contract.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $51,200,000.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RestrictedLockupToken | token | avalanche | [`0x7c6a93...a8f7a7`](./contracts/avalanche-43114/0x7c6a937943f135283a2561938de2200994a8f7a7/) | ⚠️ Unaudited |
| TransferRules | unknown | avalanche | [`0xfb2310...cb81e7`](./contracts/avalanche-43114/0xfb23108ebefcb2079a98aa7b2480307f47cb81e7/) | ⚠️ Unaudited |

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
| avalanche | [`0x7c6a93...a8f7a7`](./contracts/avalanche-43114/0x7c6a937943f135283a2561938de2200994a8f7a7/) | RestrictedLockupToken | token | $51,200,000.00 | Verified native implementation with $51,200,000.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfb2310...cb81e7`](./contracts/avalanche-43114/0xfb23108ebefcb2079a98aa7b2480307f47cb81e7/) | TransferRules | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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

- [6656] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6657] 0002-metadata-manifest-and-pull-command.md
- [6658] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
