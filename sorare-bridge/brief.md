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
| CallProxy | unknown | ethereum | n/a | [`0x473124...5bdb60`](./contracts/ethereum-1/0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60/) | ⚠️ Unaudited |
| Committee | unknown | ethereum | n/a | 6 deployments: ethereum [`0x16ba0f...0aa295`](./contracts/ethereum-1/0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295/); ethereum `0x1e6014...6169cb`; ethereum `0x879cd5...bbbe32`; ethereum `0x894729...7a32c0`; ethereum `0x8a8e80...2e2bb1`; ethereum `0x90ceb3...ee9542` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | n/a | [`0x4f8b2d...bc4446`](./contracts/ethereum-1/0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xcc9289...f9fd2b`](./contracts/ethereum-1/0xcc928977e4a75d25099e7da7b6fd79dac2f9fd2b/) | ⚠️ Unaudited |
| StarkExchangeMigrationV2 | operational_periphery | ethereum | n/a | [`0x5fdcca...8e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xbb3400...747605`](./contracts/ethereum-1/0xbb3400f107804dfb482565ff1ec8d8ae66747605/); ethereum `0xf6080d...f92816` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | n/a | [`0xae0ee0...48d419`](./contracts/ethereum-1/0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419/) | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | n/a | [`0x283751...d9b5b4`](./contracts/ethereum-1/0x283751a21eafbfcd52297820d27c1f1963d9b5b4/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x020517...1f43bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b72b9...b7d322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f400c...190c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2823d6...544b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ae851...cfc859` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45697c...e6784f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x514393...de1e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x579b2d...55a589` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59aafd...1646a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eab21...df77be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64e48e...0db43a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655584...639d93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f6e52...bfd614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaec1fb...52e096` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe0dff...39bf10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd387d1...030c8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd75f0b...825fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe75534...f3f9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5af62...6dd2bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc126e...f6f5a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x473124...5bdb60`](./contracts/ethereum-1/0x47312450b3ac8b5b8e247a6bb6d523e7605bdb60/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16ba0f...0aa295`](./contracts/ethereum-1/0x16ba0f221664a5189cf2c1a7af0d3abfc70aa295/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f8b2d...bc4446`](./contracts/ethereum-1/0x4f8b2dd49d958b6ac3e5f4705bf1a9ada5bc4446/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fdcca...8e27e9`](./contracts/ethereum-1/0x5fdcca53617f4d2b9134b29090c87d01058e27e9/) | StarkExchangeMigrationV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb3400...747605`](./contracts/ethereum-1/0xbb3400f107804dfb482565ff1ec8d8ae66747605/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae0ee0...48d419`](./contracts/ethereum-1/0xae0ee0a63a2ce6baeeffe56e7714fb4efe48d419/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x283751...d9b5b4`](./contracts/ethereum-1/0x283751a21eafbfcd52297820d27c1f1963d9b5b4/) | StarknetTokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
