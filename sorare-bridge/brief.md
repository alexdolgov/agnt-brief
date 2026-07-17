# Agentic Audit Brief: Sorare Bridge

## Project Overview

- Project: Sorare Bridge (`sorare-bridge`)
- Website: [https://sorare.com/](https://sorare.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:57.719Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 28 unique implementations (34 raw deployments)
- DeFi Llama TVL: $2,840,787.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 42 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 65 common project-authored base contract(s) (merkleverifier, imerkleverifier, factregistry). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 207; live-surface contracts included: 34 (14 live, 20 unknown).
- Excluded by liveness: 173 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 8 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 28
- Raw deployments: 34
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
| CallProxy | unknown | ethereum | n/a | [`0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60`](./contracts/ethereum-1/0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60/) | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | 6 deployments: ethereum [`0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295`](./contracts/ethereum-1/0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295/); ethereum `0x1e601435e181423e7a8430813d7500012a6169cb`; ethereum `0x879cd57975d596004863d30c59d579ef78bbbe32`; ethereum `0x89472921f016bf024aab1696a3c0d2dc2f7a32c0`; ethereum `0x8a8e80e0762243f0df39f2847808b7f6d62e2bb1`; ethereum `0x90ceb3bd97284df8c3240f3a8c4aab29c1ee9542` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446`](./contracts/ethereum-1/0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xcc928977e4a75d25099e7da7b6fd79dac2f9fd2b`](./contracts/ethereum-1/0xcc928977e4a75d25099e7da7b6fd79dac2f9fd2b/) | ⚠️ Unaudited |
| StarkExchangeMigrationV2 | operational_periphery | ethereum | n/a | [`0x5fdcca53617f4d2b9134b29090c87d01058e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xbb3400f107804dfb482565ff1ec8d8ae66747605`](./contracts/ethereum-1/0xbb3400f107804dfb482565ff1ec8d8ae66747605/); ethereum `0xf6080d9fbeebcd44d89affbfd42f098cbff92816` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | n/a | [`0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419`](./contracts/ethereum-1/0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419/) | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | n/a | [`0x283751a21eafbfcd52297820d27c1f1963d9b5b4`](./contracts/ethereum-1/0x283751a21eafbfcd52297820d27c1f1963d9b5b4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0205172f25e791975edb4def203f3789b01f43bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b72b9b0de3d029391155071df9163a0e6b7d322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f400c055df0746896a67980f52b5f0172190c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2823d6b37174d7fc443f7ed184a4634590544b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ae85152f4882ac1e21025b633684f937bcfc859` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45697cb1d898cb7a9e3871008b59cd263ae6784f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51439318084aa5197d5157c59fa7808104de1e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x579b2d6a095278658f632e059886c6650055a589` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59aafd2eb1d42f96acb96eb182ce592a0c1646a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eab21c375912af4fc0c8d69de8eb34250df77be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64e48e5a65e9f47c976a0244f2df76507b0db43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655584fb66f617bb646fc670a399e2a6d4639d93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f6e52ae2c12a169aa3af475a126343639bfd614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaec1fb35875a3816a5d09d61f086feb6c252e096` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe0dff0e8dd7e4f1b972973e7a2bfef25639bf10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd387d150423af1f98bdd303a40c87f9192030c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd75f0b08867792681cd14e2be7104ed394825fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe75534623157e1493fd4a3d3e009bd88a6f3f9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5af6239b4a2c7bd4efa273e541cb7726f6dd2bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc126e8df298baa3530554122a458ad5ccf6f5a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60`](./contracts/ethereum-1/0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295`](./contracts/ethereum-1/0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446`](./contracts/ethereum-1/0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fdcca53617f4d2b9134b29090c87d01058e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | StarkExchangeMigrationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb3400f107804dfb482565ff1ec8d8ae66747605`](./contracts/ethereum-1/0xbb3400f107804dfb482565ff1ec8d8ae66747605/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419`](./contracts/ethereum-1/0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x283751a21eafbfcd52297820d27c1f1963d9b5b4`](./contracts/ethereum-1/0x283751a21eafbfcd52297820d27c1f1963d9b5b4/) | StarknetTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
