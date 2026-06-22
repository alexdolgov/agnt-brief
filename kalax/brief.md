# Agentic Audit Brief: Kalax

## Project Overview

- Project: Kalax (`kalax`)
- Lifecycle: active (Tier 0, 72.4% below peak)
- Generated: 2026-06-21T09:26:53.560Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: blast
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $127,793.00
- On-chain TVL (included contracts): $896,390.00
- TVL by chain: Blast $896,390.00

## Project Description

Kalax is a yield aggregator on Blast that optimizes returns by auto-compounding rewards from liquidity pools and staking. It uses multi-reward farms to distribute incentives and a native token for governance and rewards.

### Architecture

The KalaxMultiRewardV2Farm contracts manage staking and reward distribution, while the Token contract serves as the native governance and reward token. TransparentUpgradeableProxy is used to enable upgradeability for the farm logic.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 14 (3 live, 11 unknown).
- Excluded by liveness: 14 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $896,390.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | blast | n/a | [`0x2f67f5...7e606d`](./contracts/blast-81457/0x2f67f59b3629bf24962290db9ede0cd4127e606d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x1aa622...fee02e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4f17...9f934a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8d171d...1bfae1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f0968...f2211b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x98ae4a...b4340a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa0fc27...191985` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa6bb88...ee638c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb99aed...8980ed` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbdf9ad...ed644f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe63153...aef5a1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xed3897...5a9f4f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe8994...9142a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xffeca8...5875b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://beosin.com/audits/Kalax_202405211051.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x2f67f5...7e606d`](./contracts/blast-81457/0x2f67f59b3629bf24962290db9ede0cd4127e606d/) | Token | token | $896,390.00 | Verified native implementation with $896,390.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13326] DL audit link

Fork inheritance lineage and inherited audits are included when available.
