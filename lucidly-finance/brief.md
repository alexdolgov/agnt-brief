# Agentic Audit Brief: Lucidly Finance

## Project Overview

- Project: Lucidly Finance (`lucidly-finance`)
- Website: [https://app.lucidly.finance](https://app.lucidly.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.218Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $137,011.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 9 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; built on solmate.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (erc721holder, erc1155holder, erc165). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 7 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | n/a | [`0x03d9a9ce13d16c7cfce564f41bd7e85e5cde8da6`](./contracts/ethereum-1/0x03d9a9ce13d16c7cfce564f41bd7e85e5cde8da6/) | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | ethereum | n/a | [`0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9`](./contracts/ethereum-1/0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9/) | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | n/a | [`0xf632c10b19f2a0451cd4a653fc9ca0c15ea1040b`](./contracts/ethereum-1/0xf632c10b19f2a0451cd4a653fc9ca0c15ea1040b/) | ⚠️ Unaudited |
| BoringSolver | unknown | ethereum | n/a | [`0x1d82e9bcc8f325cabbca6e6a3b287fe586536805`](./contracts/ethereum-1/0x1d82e9bcc8f325cabbca6e6a3b287fe586536805/) | ⚠️ Unaudited |
| BoringVault | unknown | ethereum | n/a | [`0x279cad277447965af3d24a78197aad1b02a2c589`](./contracts/ethereum-1/0x279cad277447965af3d24a78197aad1b02a2c589/) | ⚠️ Unaudited |
| LayerZeroTeller | unknown | ethereum | n/a | [`0xaefc11908ff97c335d16bdf9f2bf720817423825`](./contracts/ethereum-1/0xaefc11908ff97c335d16bdf9f2bf720817423825/) | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | ethereum | n/a | [`0x9b3e565ffc70c4b72516bc2dbec4b3c790940ce8`](./contracts/ethereum-1/0x9b3e565ffc70c4b72516bc2dbec4b3c790940ce8/) | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x31b9236a58f6ef7e0431811dabba8c706afb0f2d`](./contracts/ethereum-1/0x31b9236a58f6ef7e0431811dabba8c706afb0f2d/) | ⚠️ Unaudited |
| RolesAuthority | unknown | ethereum | n/a | [`0xf7f3ace7f6ca2cb1e7ccbe3bf2da13d001d36fdf`](./contracts/ethereum-1/0xf7f3ace7f6ca2cb1e7ccbe3bf2da13d001d36fdf/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xf27ccf60b6e10a80b333c5f14031712bfe13ab13`](./contracts/ethereum-1/0xf27ccf60b6e10a80b333c5f14031712bfe13ab13/) | ⚠️ Unaudited |

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
| ethereum | [`0x03d9a9ce13d16c7cfce564f41bd7e85e5cde8da6`](./contracts/ethereum-1/0x03d9a9ce13d16c7cfce564f41bd7e85e5cde8da6/) | AccountantWithRateProviders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9`](./contracts/ethereum-1/0x074f543e7daa7c67f77bfd8c41c79127c4dd80d9/) | ArcticArchitectureLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf632c10b19f2a0451cd4a653fc9ca0c15ea1040b`](./contracts/ethereum-1/0xf632c10b19f2a0451cd4a653fc9ca0c15ea1040b/) | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d82e9bcc8f325cabbca6e6a3b287fe586536805`](./contracts/ethereum-1/0x1d82e9bcc8f325cabbca6e6a3b287fe586536805/) | BoringSolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x279cad277447965af3d24a78197aad1b02a2c589`](./contracts/ethereum-1/0x279cad277447965af3d24a78197aad1b02a2c589/) | BoringVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b3e565ffc70c4b72516bc2dbec4b3c790940ce8`](./contracts/ethereum-1/0x9b3e565ffc70c4b72516bc2dbec4b3c790940ce8/) | ManagerWithMerkleVerification | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31b9236a58f6ef7e0431811dabba8c706afb0f2d`](./contracts/ethereum-1/0x31b9236a58f6ef7e0431811dabba8c706afb0f2d/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7f3ace7f6ca2cb1e7ccbe3bf2da13d001d36fdf`](./contracts/ethereum-1/0xf7f3ace7f6ca2cb1e7ccbe3bf2da13d001d36fdf/) | RolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
