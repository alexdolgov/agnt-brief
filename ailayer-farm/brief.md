# Agentic Audit Brief: AILayer farm

## Project Overview

- Project: AILayer farm (`ailayer-farm`)
- Website: [https://ailayer.xyz/](https://ailayer.xyz/)
- Lifecycle: active (Tier 0, 89.1% below peak)
- Generated: 2026-05-28T14:36:23.847Z
- Pipeline run: v2-pipeline-2026-05-28-8b27fb-f4c2
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $79,723,526.47
- On-chain TVL (included contracts): $211,858.71
- TVL by chain: Bsc $211,858.71

## Project Description

AILayer farm is a yield farming protocol on BSC that allows users to stake or farm AILayer tokens to earn rewards.

### Architecture

The protocol consists of a single product family centered around the AILayerToken contract, with no additional infrastructure or shared components identified.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $211,858.71
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 6 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AILayerToken | token | bsc | [`0x66e3da...442244`](./contracts/bsc-56/0x66e3daa0c86e0ad56302d36af0e7c1ba24442244/) | ⚠️ Unaudited |

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
| [BUILD-TIME_ENVS.md](https://github.com/AINNLayer2/ail2-explorer/blob/main/docs/BUILD-TIME_ENVS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CONTRIBUTING.md](https://github.com/AINNLayer2/ail2-explorer/blob/main/docs/CONTRIBUTING.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CUSTOM_BUILD.md](https://github.com/AINNLayer2/ail2-explorer/blob/main/docs/CUSTOM_BUILD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DEPRECATED_ENVS.md](https://github.com/AINNLayer2/ail2-explorer/blob/main/docs/DEPRECATED_ENVS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ENVS.md](https://github.com/AINNLayer2/ail2-explorer/blob/main/docs/ENVS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PULL_REQUEST_TEMPLATE.md](https://github.com/AINNLayer2/ail2-explorer/blob/main/docs/PULL_REQUEST_TEMPLATE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x66e3da...442244`](./contracts/bsc-56/0x66e3daa0c86e0ad56302d36af0e7c1ba24442244/) | AILayerToken | token | $211,858.71 | Verified native implementation with $211,858.71 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5476] BUILD-TIME_ENVS.md
- [5477] CONTRIBUTING.md
- [5478] CUSTOM_BUILD.md
- [5479] DEPRECATED_ENVS.md
- [5480] ENVS.md
- [5481] PULL_REQUEST_TEMPLATE.md

Fork inheritance lineage and inherited audits are included when available.
