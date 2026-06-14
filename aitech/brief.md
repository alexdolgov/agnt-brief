# Agentic Audit Brief: AITECH

## Project Overview

- Project: AITECH (`aitech`)
- Website: [https://aitech.io](https://aitech.io)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-14T03:36:51.173Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: bsc
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $3,497,966.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AITECH / Solidus AI Tech is an AI infrastructure and cloud compute project focused on GPU/HPC compute, a compute marketplace, and AI agent/workflow services. The AITECH token and staking contracts are supporting components of the ecosystem rather than the core product; unsupported yield-farming framing should be removed unless backed by current documentation or contract behavior.

### Architecture

The AITECH token is used as the reward token in the DecubateMasterChef contract, which is deployed via a transparent upgradeable proxy, indicating a shared dependency on the token for reward distribution.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AITECH | unknown | bsc | [`0x2d060e...e4f944`](./contracts/bsc-56/0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | [`0xf1c3f6...84b096`](./contracts/bsc-56/0xf1c3f68f82e6d2560a12d977b322a5db4684b096/) | ⚠️ Unaudited |
| DecubateMasterChef | unknown | bsc | 2 deployments: bsc [`0x2c4dd7...c31184`](./contracts/bsc-56/0x2c4dd7db5ce6a9a2fb362f64ff189af772c31184/); bsc `0xb934f5...f7f36f` | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/solidus-ai-tech) | CertiK | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2d060e...e4f944`](./contracts/bsc-56/0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944/) | AITECH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2651] DL audit link

Fork inheritance lineage and inherited audits are included when available.
