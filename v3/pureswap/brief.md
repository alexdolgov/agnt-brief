# Agentic Audit Brief: PureSwap

## Project Overview

- Project: PureSwap (`pureswap`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:43.702Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $220,801.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PureChef | unknown | bsc | n/a | [`0xb8692d...09adb8`](./contracts/bsc-56/0xb8692d7768cc70c8309b669c1f5a3d856909adb8/) | ⚠️ Unaudited |
| PureMaker | unknown | bsc | n/a | [`0xa7d7c0...082698`](./contracts/bsc-56/0xa7d7c06928a6a255a8e7083433f3fcea08082698/) | ⚠️ Unaudited |
| PureSwapFactory | unknown | bsc | n/a | [`0x208382...395958`](./contracts/bsc-56/0x208382f44c3042a4d788fd185133a76154395958/) | ⚠️ Unaudited |
| PureSwapRouter | unknown | bsc | n/a | [`0x3e8743...87f305`](./contracts/bsc-56/0x3e8743b5453a348606111ab0a4dee7f70a87f305/) | ⚠️ Unaudited |
| PureToken | unknown | bsc | n/a | [`0x481f05...ad89bc`](./contracts/bsc-56/0x481f0557fb3bb5ee461fd47f287b1ca944ad89bc/) | ⚠️ Unaudited |
| SingleChef | unknown | bsc | n/a | [`0x63621a...47b0f4`](./contracts/bsc-56/0x63621a878f6eae37dc5bdedb2b828d9e3747b0f4/) | ⚠️ Unaudited |

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
| [CertiK Audit Report for Pureswap.pdf](https://github.com/PureSwap2020/pureswap-contracts/blob/main/CertiK%20Audit%20Report%20for%20Pureswap.pdf) | CertiK | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21437] CertiK Audit Report for Pureswap.pdf

Fork inheritance lineage and inherited audits are included when available.
