# Agentic Audit Brief: Jaypeggers

## Project Overview

- Project: Jaypeggers (`jaypeggers`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:15.635Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $124,160.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 8 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| JAY | unknown | ethereum | n/a | [`0xda7c08...61ca6e`](./contracts/ethereum-1/0xda7c0810ce6f8329786160bb3d1734cf6661ca6e/) | ⚠️ Unaudited |
| JayDerivFeeSplitter | unknown | ethereum | n/a | [`0x0b4e01...73a08f`](./contracts/ethereum-1/0x0b4e01ab9938e554f4d02b579c3474b3b673a08f/) | ⚠️ Unaudited |
| JayDerivLiquidityStaking | unknown | ethereum | n/a | [`0xf70c26...a7226d`](./contracts/ethereum-1/0xf70c2657c4135c2ce81977c32f7bc1e012a7226d/) | ⚠️ Unaudited |
| JayERC20Deriv | unknown | ethereum | n/a | [`0xca9f96...0f0d9b`](./contracts/ethereum-1/0xca9f9671765f8d1a7e19ae2639e01fff730f0d9b/) | ⚠️ Unaudited |
| JayFeeSplitter | unknown | ethereum | n/a | [`0x4826b4...cbcae9`](./contracts/ethereum-1/0x4826b4de107623e0a42e85c2649caef736cbcae9/) | ⚠️ Unaudited |
| JayLiquidityStaking | unknown | ethereum | n/a | [`0x112e9f...c6e130`](./contracts/ethereum-1/0x112e9fdad728adfbb1ce407a9cfa9339e1c6e130/) | ⚠️ Unaudited |
| JayMart | unknown | ethereum | n/a | [`0x130f00...b3fe0a`](./contracts/ethereum-1/0x130f0002b4cf5e67adf4c7147ac80abee7b3fe0a/) | ⚠️ Unaudited |
| TheSplitoooor | unknown | ethereum | n/a | [`0xede8e7...628320`](./contracts/ethereum-1/0xede8e7d9659ae7fa69de57daf1f75d6729628320/) | ⚠️ Unaudited |

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
| [JayPeggers Final Audit Report.pdf](https://github.com/Credshields/audit-reports/blob/master/JayPeggers%20Final%20Audit%20Report.pdf) | CredShields | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21389] JayPeggers Final Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
