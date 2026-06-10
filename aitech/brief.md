# Agentic Audit Brief: AITECH

## Project Overview

- Project: AITECH (`aitech`)
- Website: [https://aitech.io](https://aitech.io)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:58:56.591Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $3,961,626.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

AITECH / Solidus AI Tech is an AI infrastructure and cloud compute project focused on GPU/HPC compute, a compute marketplace, and AI agent/workflow services. The AITECH token and staking contracts are supporting components of the ecosystem rather than the core product; unsupported yield-farming framing should be removed unless backed by current documentation or contract behavior.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AITECH | token | bsc | [`0x2d060e...e4f944`](./contracts/bsc-56/0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944/) | ⚠️ Unaudited |
| DecubateMasterChef | proxy | bsc | [`0x2c4dd7...c31184`](./contracts/bsc-56/0x2c4dd7db5ce6a9a2fb362f64ff189af772c31184/) | ⚠️ Unaudited |

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
| bsc | [`0x2d060e...e4f944`](./contracts/bsc-56/0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944/) | AITECH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
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
