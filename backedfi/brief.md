# Agentic Audit Brief: BackedFi

⚠️ Lifecycle status: UNKNOWN - TVL dropped 35.8% over 90 days

## Project Overview

- Project: BackedFi (`backedfi`)
- Website: [https://backed.fi](https://backed.fi)
- Lifecycle: unknown (Tier 0, 83.4% below peak)
- Generated: 2026-05-29T06:44:15.064Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-4212
- Chains: ethereum
- Contract surface: 2 unique implementations (11 raw deployments)
- DeFi Llama TVL: $8,201,934.33
- On-chain TVL (included contracts): $33,347,333.85
- TVL by chain: Ethereum $33,347,333.85

## Project Description

BackedFi issues tokenized real-world assets (RWAs) on Ethereum, allowing users to gain on-chain exposure to traditional financial instruments like equities and ETFs. Each token is backed 1:1 by the underlying asset held by a licensed custodian.

### Architecture

All tokens share the same proxy pattern and implementation contracts, with most using BackedTokenImplementation and one using BackedAutoFeeTokenImplementation for automatic fee handling. They are deployed from a single deployer cluster, indicating a unified issuance infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 11
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $33,347,333.85
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $33,347,333.85 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BackedTokenImplementation | token | ethereum | 10 deployments: ethereum [`0x0f76d3...e17245`](./contracts/ethereum-1/0x0f76d32cdccdcbd602a55af23eaf58fd1ee17245/); ethereum `0x1e2c4f...801d59`; ethereum `0x20c64d...83df7a`; ethereum `0x2f11ee...191b86`; ethereum `0x2f123c...9b45e7`; ethereum `0x3f95aa...9c52c9`; ethereum `0x52d134...fdf9e4`; ethereum `0xade605...995995`; ethereum `0xbbcb03...403ac9`; ethereum `0xca30c9...435fb5` | ⚠️ Unaudited |
| BackedAutoFeeTokenImplementation | token | ethereum | [`0xa34c5e...bcc495`](./contracts/ethereum-1/0xa34c5e0abe843e10461e2c9586ea03e55dbcc495/) | ⚠️ Unaudited |

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
| ethereum | [`0x0f76d3...e17245`](./contracts/ethereum-1/0x0f76d32cdccdcbd602a55af23eaf58fd1ee17245/) | BackedTokenImplementation | token | $31,194,508.50 | Verified native implementation with $31,194,508.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa34c5e...bcc495`](./contracts/ethereum-1/0xa34c5e0abe843e10461e2c9586ea03e55dbcc495/) | BackedAutoFeeTokenImplementation | token | $2,152,825.34 | Verified native implementation with $2,152,825.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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

- [7611] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7612] 0002-metadata-manifest-and-pull-command.md
- [7613] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
