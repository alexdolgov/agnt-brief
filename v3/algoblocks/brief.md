# Agentic Audit Brief: AlgoBlocks

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: AlgoBlocks (`algoblocks`)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-03T21:05:26.554Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 19 unique implementations (36 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 15 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (interesthelper, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 36 (23 live, 13 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 19
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 16.7% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Algoblocks | unknown | bsc | n/a | [`0xfecca8...fd3a48`](./contracts/bsc-56/0xfecca80ff6deb2b492e93df3b67f0c523cfd3a48/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DCBLiqLocker | unknown | bsc | n/a | [`0x1587d7...78dfae`](./contracts/bsc-56/0x1587d7bf992a854a23ffd7b1bcf96393d978dfae/) | ⚠️ Unaudited |
| DCBVault | core_logic | bsc | n/a | 3 deployments: bsc [`0x5729cd...ff1523`](./contracts/bsc-56/0x5729cdd601a9ddc6fb81c27a7d84558e95ff1523/); bsc `0x8222e5...4749a2`; bsc `0xa459da...45677e` | ⚠️ Unaudited |
| DecubateMasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0xac87de...46ffe7`](./contracts/bsc-56/0xac87de420894eaa8234d288334faec08bb46ffe7/); bsc `0xd17481...30884a` | ⚠️ Unaudited |
| DecubateTiers | unknown | bsc | n/a | 14 deployments: bsc [`0x073dd3...9fac41`](./contracts/bsc-56/0x073dd345accc5398138242d8f7b8bcc1a29fac41/); bsc `0x15a74f...9ef81e`; bsc `0x1c0386...c9f27b`; bsc `0x20e858...27e5f6`; bsc `0x3a795d...61b2fa`; bsc `0x3c6fcb...d9221e`; bsc `0x3e954b...7f379e`; bsc `0x45a5ea...2d79d3`; bsc `0x8befb4...aebc66`; bsc `0x94b8dc...2ce9be`; bsc `0xbe4696...a67e50`; bsc `0xbf792c...0757f4`; bsc `0xc6153c...e77f3d`; bsc `0xe4c32d...42134a` | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | bsc | n/a | 2 deployments: bsc [`0xc4754d...89cd2f`](./contracts/bsc-56/0xc4754dac9c047e3772ddffb8dc641bf15689cd2f/); bsc `0xdb3161...988659` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x235208...141fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26c557...c78891` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c5527...3a310f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4946c2...0f732b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d3227...7161ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x747bf7...69ceae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d056d...e9db11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa07bfc...fa0184` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa16fe7...39a13a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf99a7...14296a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb269ed...aeb0fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc38c4a...f3e8f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf83a7...48c86c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Security Audit of Project ALGOBLOCKS_report 040622.pdf](https://github.com/ALGOBLOCKS/smart-contracts-audits/blob/main/ALGOBLK/Security%20Audit%20of%20Project%20ALGOBLOCKS_report%20040622.pdf) | yAudit | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5729cd...ff1523`](./contracts/bsc-56/0x5729cdd601a9ddc6fb81c27a7d84558e95ff1523/) | DCBVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xac87de...46ffe7`](./contracts/bsc-56/0xac87de420894eaa8234d288334faec08bb46ffe7/) | DecubateMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x073dd3...9fac41`](./contracts/bsc-56/0x073dd345accc5398138242d8f7b8bcc1a29fac41/) | DecubateTiers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4754d...89cd2f`](./contracts/bsc-56/0xc4754dac9c047e3772ddffb8dc641bf15689cd2f/) | DecubateVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
