# Agentic Audit Brief: Pond0x

## Project Overview

- Project: Pond0x (`pond0x`)
- Website: [http://pond0x.com/](http://pond0x.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.065Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 10 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,445,165.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 10 contract(s).

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 13 (8 live, 5 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 10
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PondCoin | unknown | ethereum | n/a | [`0x423f4e...631eea`](./contracts/ethereum-1/0x423f4e6138e475d85cf7ea071ac92097ed631eea/) | ⚠️ Unaudited |
| SablierV2LockupLinear | unknown | ethereum | n/a | [`0xafb979...e5dcc9`](./contracts/ethereum-1/0xafb979d9afad1ad27c5eff4e27226e3ab9e5dcc9/) | ⚠️ Unaudited |
| SpawnManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06c795...8b19fe`](./contracts/ethereum-1/0x06c79523ad3b4e285b2c0572d230ab81428b19fe/); ethereum `0x4c0da5...4aec36` | ⚠️ Unaudited |
| SpawnManagerV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x08939a...3393ca`](./contracts/ethereum-1/0x08939a9a6aefbd4bf9c0e128ed027591913393ca/); ethereum `0xab7b98...5dd3c5`; ethereum `0xcc57c9...9e946c` | ⚠️ Unaudited |
| TadpoleClaimer | unknown | ethereum | n/a | [`0x314a8e...ad3796`](./contracts/ethereum-1/0x314a8e2ea148c272ce379dee7580656159ad3796/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0bda79...30a72c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38b10a...42d288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e810a...a225f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81ce23...b86437` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9f234...93bf03` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x423f4e...631eea`](./contracts/ethereum-1/0x423f4e6138e475d85cf7ea071ac92097ed631eea/) | PondCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafb979...e5dcc9`](./contracts/ethereum-1/0xafb979d9afad1ad27c5eff4e27226e3ab9e5dcc9/) | SablierV2LockupLinear | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c795...8b19fe`](./contracts/ethereum-1/0x06c79523ad3b4e285b2c0572d230ab81428b19fe/) | SpawnManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08939a...3393ca`](./contracts/ethereum-1/0x08939a9a6aefbd4bf9c0e128ed027591913393ca/) | SpawnManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x314a8e...ad3796`](./contracts/ethereum-1/0x314a8e2ea148c272ce379dee7580656159ad3796/) | TadpoleClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
