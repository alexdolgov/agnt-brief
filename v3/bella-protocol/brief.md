# Agentic Audit Brief: Bella Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 11.3% over 90 days

## Project Overview

- Project: Bella Protocol (`bella-protocol`)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-07-03T21:05:33.482Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum, manta, mantle, zksync-era
- Contract surface: 20 unique implementations (41 raw deployments)
- DeFi Llama TVL: $153,481.87
- On-chain TVL (included contracts): $272,623.47
- TVL by chain: Ethereum $272,623.47

## Project Description

Yield. Structurally: 16 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (crvlocker, optimismmintableerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 41 (11 live, 30 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 20
- Raw deployments: 41
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $272,623.47
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $272,623.47 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| bVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| StrategyArpa | core_logic | ethereum | n/a | [`0xa3063c...63095e`](./contracts/ethereum-1/0xa3063cf3a934068cbe8f55212577a1ffbe63095e/) | ⚠️ Unaudited |
| Bella | unknown | ethereum | n/a | [`0xa91ac6...a07e14`](./contracts/ethereum-1/0xa91ac63d040deb1b7a5e4d4134ad23eb0ba07e14/) | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | manta | n/a | 17 deployments: manta [`0x01d275...dbc02a`](./contracts/manta-169/0x01d27580c464d5b3b26f78bee12e684901dbc02a/); manta `0x078f71...90604b`; manta `0x091745...627442`; manta `0x0f52a5...3ccbb4`; manta `0x207d76...8a2181`; manta `0x4220e9...e8c8ff`; manta `0x6025f8...06cfb0`; manta `0x8d7090...ab566a`; manta `0x90e957...eb6917`; manta `0x916476...295f9a`; manta `0x975896...85eadd`; manta `0xab8653...fa5605`; manta `0xb01e11...7c5aa9`; manta `0xb385e5...88e1ce`; manta `0xbab1c5...59d154`; manta `0xd21237...0bc46d`; manta `0xe22e3d...7f0020` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | n/a | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | n/a | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x9f624b...980808`](./contracts/ethereum-1/0x9f624b25991b99d7b14d6740a9d581dd77980808/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | n/a | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x2c9bfc...2d7c0f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x6731a6...dfde2a` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x994be2...96f5a7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x9e98de...91ca35` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa91ac6...a07e14` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbe138a...966cc3` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xbf2b95...23980c` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc865dd...8c1df9` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf0d110...edf61a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa91ac6...a07e14` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3bd7a1...b74d94` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9fb6ca...d2803c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bella_audit_report_2020_48_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/bella_audit_report_2020_48_en_1_0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $269,135.76 | Verified native implementation with $269,135.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3063c...63095e`](./contracts/ethereum-1/0xa3063cf3a934068cbe8f55212577a1ffbe63095e/) | StrategyArpa | core_logic | $3,487.71 | Verified native implementation with $3,487.71 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa91ac6...a07e14`](./contracts/ethereum-1/0xa91ac63d040deb1b7a5e4d4134ad23eb0ba07e14/) | Bella | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | WhiteList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
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

- [12756] bella_audit_report_2020_48_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
