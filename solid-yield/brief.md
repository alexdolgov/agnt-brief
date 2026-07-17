# Agentic Audit Brief: Solid Yield

## Project Overview

- Project: Solid Yield (`solid-yield`)
- Website: [https://solid.xyz](https://solid.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.488Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $329,833.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 8 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (5 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | n/a | [`0x10f3996904f1fa09db48e5d46aadd6d9fd516efe`](./contracts/ethereum-1/0x10f3996904f1fa09db48e5d46aadd6d9fd516efe/) | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | ethereum | n/a | [`0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9`](./contracts/ethereum-1/0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9/) | ⚠️ Unaudited |
| BoringSolver | unknown | ethereum | n/a | [`0x0546bb4676936dc93f7eb5ca7ffd2e33a13de972`](./contracts/ethereum-1/0x0546bb4676936dc93f7eb5ca7ffd2e33a13de972/) | ⚠️ Unaudited |
| BoringVault | unknown | ethereum | n/a | [`0x1e0d158ce986abb26b35da11f876268c60d7c9df`](./contracts/ethereum-1/0x1e0d158ce986abb26b35da11f876268c60d7c9df/) | ⚠️ Unaudited |
| BridgePaymaster | unknown | ethereum | n/a | [`0x038d86dbd493284a7e1b37a19dad52a35a7070cd`](./contracts/ethereum-1/0x038d86dbd493284a7e1b37a19dad52a35a7070cd/) | ⚠️ Unaudited |
| FuseRolesAuthority | unknown | ethereum | n/a | [`0x110924f5b072679147785e9211612d43490718cf`](./contracts/ethereum-1/0x110924f5b072679147785e9211612d43490718cf/) | ⚠️ Unaudited |
| PendleDecoderAndSanitizer | unknown | ethereum | n/a | [`0x197927610dabd7b7f5f09c4b4f14f78644bbc9ca`](./contracts/ethereum-1/0x197927610dabd7b7f5f09c4b4f14f78644bbc9ca/) | ⚠️ Unaudited |
| SolidDecoderAndSanitizer | unknown | ethereum | n/a | [`0x0a0910164937be95479a6349d1cd13f7a89a6f93`](./contracts/ethereum-1/0x0a0910164937be95479a6349d1cd13f7a89a6f93/) | ⚠️ Unaudited |

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
| ethereum | [`0x10f3996904f1fa09db48e5d46aadd6d9fd516efe`](./contracts/ethereum-1/0x10f3996904f1fa09db48e5d46aadd6d9fd516efe/) | AccountantWithRateProviders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9`](./contracts/ethereum-1/0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9/) | ArcticArchitectureLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0546bb4676936dc93f7eb5ca7ffd2e33a13de972`](./contracts/ethereum-1/0x0546bb4676936dc93f7eb5ca7ffd2e33a13de972/) | BoringSolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e0d158ce986abb26b35da11f876268c60d7c9df`](./contracts/ethereum-1/0x1e0d158ce986abb26b35da11f876268c60d7c9df/) | BoringVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038d86dbd493284a7e1b37a19dad52a35a7070cd`](./contracts/ethereum-1/0x038d86dbd493284a7e1b37a19dad52a35a7070cd/) | BridgePaymaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x110924f5b072679147785e9211612d43490718cf`](./contracts/ethereum-1/0x110924f5b072679147785e9211612d43490718cf/) | FuseRolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a0910164937be95479a6349d1cd13f7a89a6f93`](./contracts/ethereum-1/0x0a0910164937be95479a6349d1cd13f7a89a6f93/) | SolidDecoderAndSanitizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 1 |
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
