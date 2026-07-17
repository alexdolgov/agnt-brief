# Agentic Audit Brief: KillSwitch

## Project Overview

- Project: KillSwitch (`killswitch`)
- Website: [https://killswitch.finance](https://killswitch.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.178Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $144,637.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 12 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 12 contract(s).

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeBurner | unknown | bsc | n/a | [`0x6caa59a946feeed92bc923aa15a19539b8988353`](./contracts/bsc-56/0x6caa59a946feeed92bc923aa15a19539b8988353/) | ⚠️ Unaudited |
| BridgeBurnerV2 | unknown | bsc | n/a | [`0x0f07e909826e5dbb18eba3a995a642e0bbfe6e20`](./contracts/bsc-56/0x0f07e909826e5dbb18eba3a995a642e0bbfe6e20/) | ⚠️ Unaudited |
| BridgeEther | unknown | bsc | n/a | [`0xa4e3a7de03d4138620eec38766c06d175df64963`](./contracts/bsc-56/0xa4e3a7de03d4138620eec38766c06d175df64963/) | ⚠️ Unaudited |
| BridgeLocker | unknown | bsc | n/a | [`0x144f00ef491bb058ea8a56f2b9bfa598a3dfbac6`](./contracts/bsc-56/0x144f00ef491bb058ea8a56f2b9bfa598a3dfbac6/) | ⚠️ Unaudited |
| FeeFixed | unknown | bsc | n/a | [`0x72a42526878bff41519cb3d071a5fbc9b0e3f2c3`](./contracts/bsc-56/0x72a42526878bff41519cb3d071a5fbc9b0e3f2c3/) | ⚠️ Unaudited |
| FeeV2 | unknown | bsc | n/a | [`0x482d4b1d2328dfca42903f43d07ec0fd7b58fada`](./contracts/bsc-56/0x482d4b1d2328dfca42903f43d07ec0fd7b58fada/) | ⚠️ Unaudited |
| KillSwitchToken | unknown | bsc | n/a | [`0x270178366a592ba598c2e9d2971da65f7baa7c86`](./contracts/bsc-56/0x270178366a592ba598c2e9d2971da65f7baa7c86/) | ⚠️ Unaudited |
| kMATIC | unknown | bsc | n/a | [`0x032574b64bf6fa42951f836cc8c5099d1c5747d3`](./contracts/bsc-56/0x032574b64bf6fa42951f836cc8c5099d1c5747d3/) | ⚠️ Unaudited |
| kTUK | unknown | bsc | n/a | [`0xfaa6c12cdeb3a63085fd78644756566c69778c53`](./contracts/bsc-56/0xfaa6c12cdeb3a63085fd78644756566c69778c53/) | ⚠️ Unaudited |
| KUB | unknown | bsc | n/a | [`0x65270ad4d7d33d797ea8d2d4ab7f3427e4c848b1`](./contracts/bsc-56/0x65270ad4d7d33d797ea8d2d4ab7f3427e4c848b1/) | ⚠️ Unaudited |
| kUSDC | unknown | bsc | n/a | [`0xa72a60a908e6cfd89feec670e332422e3f3655ae`](./contracts/bsc-56/0xa72a60a908e6cfd89feec670e332422e3f3655ae/) | ⚠️ Unaudited |
| LimiterDaily | unknown | bsc | n/a | [`0x7c187d0a9107e6845ee064ca66fed07810435c72`](./contracts/bsc-56/0x7c187d0a9107e6845ee064ca66fed07810435c72/) | ⚠️ Unaudited |

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
| [Report: <>](https://skynet.certik.com/projects/killswitch) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [Audit Report](https://killswitchofficial.gitbook.io/killswitch/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Inspex_AUDIT2021010_KillSwitch_AutoCompound_FullReport_v2.0.pdf](https://2848548487-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MX2ZPq3oPp3ll0b4nFi%2Fuploads%2F7v4aDSXIdC3Aw06KjZpH%2FInspex_AUDIT2021010_KillSwitch_AutoCompound_FullReport_v2.0.pdf) | Inspex | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x6caa59a946feeed92bc923aa15a19539b8988353`](./contracts/bsc-56/0x6caa59a946feeed92bc923aa15a19539b8988353/) | BridgeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f07e909826e5dbb18eba3a995a642e0bbfe6e20`](./contracts/bsc-56/0x0f07e909826e5dbb18eba3a995a642e0bbfe6e20/) | BridgeBurnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4e3a7de03d4138620eec38766c06d175df64963`](./contracts/bsc-56/0xa4e3a7de03d4138620eec38766c06d175df64963/) | BridgeEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x144f00ef491bb058ea8a56f2b9bfa598a3dfbac6`](./contracts/bsc-56/0x144f00ef491bb058ea8a56f2b9bfa598a3dfbac6/) | BridgeLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72a42526878bff41519cb3d071a5fbc9b0e3f2c3`](./contracts/bsc-56/0x72a42526878bff41519cb3d071a5fbc9b0e3f2c3/) | FeeFixed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x482d4b1d2328dfca42903f43d07ec0fd7b58fada`](./contracts/bsc-56/0x482d4b1d2328dfca42903f43d07ec0fd7b58fada/) | FeeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x270178366a592ba598c2e9d2971da65f7baa7c86`](./contracts/bsc-56/0x270178366a592ba598c2e9d2971da65f7baa7c86/) | KillSwitchToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032574b64bf6fa42951f836cc8c5099d1c5747d3`](./contracts/bsc-56/0x032574b64bf6fa42951f836cc8c5099d1c5747d3/) | kMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfaa6c12cdeb3a63085fd78644756566c69778c53`](./contracts/bsc-56/0xfaa6c12cdeb3a63085fd78644756566c69778c53/) | kTUK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x65270ad4d7d33d797ea8d2d4ab7f3427e4c848b1`](./contracts/bsc-56/0x65270ad4d7d33d797ea8d2d4ab7f3427e4c848b1/) | KUB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa72a60a908e6cfd89feec670e332422e3f3655ae`](./contracts/bsc-56/0xa72a60a908e6cfd89feec670e332422e3f3655ae/) | kUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c187d0a9107e6845ee064ca66fed07810435c72`](./contracts/bsc-56/0x7c187d0a9107e6845ee064ca66fed07810435c72/) | LimiterDaily | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20603] Report: <>
- [20604] Audit Report
- [20605] Inspex_AUDIT2021010_KillSwitch_AutoCompound_FullReport_v2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
