# Agentic Audit Brief: PieDAO

## Project Overview

- Project: PieDAO (`piedao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.142Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $586,125.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 8 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

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
| BasketMigrator | unknown | ethereum | n/a | [`0x42bb983670349c0a95e271121f2c236036fad146`](./contracts/ethereum-1/0x42bb983670349c0a95e271121f2c236036fad146/) | ⚠️ Unaudited |
| ERC20NonTransferableRewardsOwned | unknown | ethereum | n/a | [`0x4fb1afbb9de791e59222c385d87653e67728a321`](./contracts/ethereum-1/0x4fb1afbb9de791e59222c385d87653e67728a321/) | ⚠️ Unaudited |
| LendingManager | unknown | ethereum | n/a | [`0x52fbda94cff098c1c89725cedb40e65276f54a66`](./contracts/ethereum-1/0x52fbda94cff098c1c89725cedb40e65276f54a66/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xbab795479bff02c6ef52a10a54a95a42a1afa456`](./contracts/ethereum-1/0xbab795479bff02c6ef52a10a54a95a42a1afa456/) | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | n/a | [`0xad32a8e6220741182940c5abf610bde99e737b2d`](./contracts/ethereum-1/0xad32a8e6220741182940c5abf610bde99e737b2d/) | ⚠️ Unaudited |
| RewardEscrow | unknown | ethereum | n/a | [`0xfcf1abc45a264d1172af928ff04d3413bbc11a9f`](./contracts/ethereum-1/0xfcf1abc45a264d1172af928ff04d3413bbc11a9f/) | ⚠️ Unaudited |
| SharesTimeLock | unknown | ethereum | n/a | [`0x046b9c3a8a02a802fba7e61054b79e28e0928f01`](./contracts/ethereum-1/0x046b9c3a8a02a802fba7e61054b79e28e0928f01/) | ⚠️ Unaudited |
| wLSPair | unknown | ethereum | n/a | [`0x037efbc87ba34816ebe3326cf189910f82eb4128`](./contracts/ethereum-1/0x037efbc87ba34816ebe3326cf189910f82eb4128/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x42bb983670349c0a95e271121f2c236036fad146`](./contracts/ethereum-1/0x42bb983670349c0a95e271121f2c236036fad146/) | BasketMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb1afbb9de791e59222c385d87653e67728a321`](./contracts/ethereum-1/0x4fb1afbb9de791e59222c385d87653e67728a321/) | ERC20NonTransferableRewardsOwned | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52fbda94cff098c1c89725cedb40e65276f54a66`](./contracts/ethereum-1/0x52fbda94cff098c1c89725cedb40e65276f54a66/) | LendingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbab795479bff02c6ef52a10a54a95a42a1afa456`](./contracts/ethereum-1/0xbab795479bff02c6ef52a10a54a95a42a1afa456/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad32a8e6220741182940c5abf610bde99e737b2d`](./contracts/ethereum-1/0xad32a8e6220741182940c5abf610bde99e737b2d/) | MiniMeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcf1abc45a264d1172af928ff04d3413bbc11a9f`](./contracts/ethereum-1/0xfcf1abc45a264d1172af928ff04d3413bbc11a9f/) | RewardEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x046b9c3a8a02a802fba7e61054b79e28e0928f01`](./contracts/ethereum-1/0x046b9c3a8a02a802fba7e61054b79e28e0928f01/) | SharesTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037efbc87ba34816ebe3326cf189910f82eb4128`](./contracts/ethereum-1/0x037efbc87ba34816ebe3326cf189910f82eb4128/) | wLSPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
