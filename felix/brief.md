# Agentic Audit Brief: Felix

## Project Overview

- Project: Felix (`felix`)
- Website: [https://www.usefelix.xyz?ref=4BF702FF](https://www.usefelix.xyz?ref=4BF702FF)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.766Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum, hyperliquid
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $109,598,043.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0x36f586a30502ae3afb555b8aa4dcc05d233c2ece`](./contracts/ethereum-1/0x36f586a30502ae3afb555b8aa4dcc05d233c2ece/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | [`0x207ccae51ad2e1c240c4ab4c94b670d438d2201c`](./contracts/hyperliquid-999/0x207ccae51ad2e1c240c4ab4c94b670d438d2201c/) | ⚠️ Unaudited |
| MToken | unknown | ethereum | n/a | [`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`](./contracts/ethereum-1/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | ⚠️ Unaudited |

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
| [Smart Contract Audits](https://usefelix.gitbook.io/docs/advanced/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Certora - Formal Verification](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Recon - Liquity Security Review](https://github.com/GalloDaSballo/bold-review) | Recon | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Felix Audit by Dedaub.pdf](https://2357968670-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FVH6och7EAxl0pIZxgbqv%2Fuploads%2FckGCSwgMVirpVuz2oDep%2FFelix%20Audit%20by%20Dedaub.pdf) | Dedaub | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b`](./contracts/ethereum-1/0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b/) | MToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17208] Smart Contract Audits
- [17213] Certora - Formal Verification
- [17220] Recon - Liquity Security Review
- [17221] Felix Audit by Dedaub.pdf

Fork inheritance lineage and inherited audits are included when available.
