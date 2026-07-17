# Agentic Audit Brief: Antfarm finance

## Project Overview

- Project: Antfarm finance (`antfarm-finance`)
- Website: [https://antfarm.finance](https://antfarm.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:03.877Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, ethereum, polygon
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $217,707.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 11 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AntfarmFactory | unknown | arbitrum | n/a | [`0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5`](./contracts/arbitrum-42161/0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5/) | ⚠️ Unaudited |
| AntfarmGovernanceToken | unknown | ethereum | n/a | [`0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd`](./contracts/ethereum-1/0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd/) | ⚠️ Unaudited |
| AntfarmGuild | unknown | arbitrum | n/a | [`0x7ea9ed05bcf4bccd9ed0eca7687e3b8541f2c897`](./contracts/arbitrum-42161/0x7ea9ed05bcf4bccd9ed0eca7687e3b8541f2c897/) | ⚠️ Unaudited |
| AntfarmPosition | unknown | arbitrum | n/a | [`0x15b1954fabff96f7e9231a7ca3976595095537b5`](./contracts/arbitrum-42161/0x15b1954fabff96f7e9231a7ca3976595095537b5/) | ⚠️ Unaudited |
| AntfarmReturner | unknown | polygon | n/a | [`0x1272ba8c0bd855ff15c4b29bad660e6f154fca28`](./contracts/polygon-137/0x1272ba8c0bd855ff15c4b29bad660e6f154fca28/) | ⚠️ Unaudited |
| AntfarmRouter | unknown | arbitrum | n/a | [`0x1272ba8c0bd855ff15c4b29bad660e6f154fca28`](./contracts/arbitrum-42161/0x1272ba8c0bd855ff15c4b29bad660e6f154fca28/) | ⚠️ Unaudited |
| AntfarmSale | unknown | ethereum | n/a | [`0x1b0470fc8b495dd39e40cbf4cd00e4095db65213`](./contracts/ethereum-1/0x1b0470fc8b495dd39e40cbf4cd00e4095db65213/) | ⚠️ Unaudited |
| AntfarmToken | unknown | ethereum | n/a | [`0x518b63da813d46556fea041a88b52e3caa8c16a8`](./contracts/ethereum-1/0x518b63da813d46556fea041a88b52e3caa8c16a8/) | ⚠️ Unaudited |
| PositionManager | unknown | ethereum | n/a | [`0xee8c1c668d533d38db792deeb35898fe8d3a33b1`](./contracts/ethereum-1/0xee8c1c668d533d38db792deeb35898fe8d3a33b1/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xfb9fbcb328317123f5275cda30b6589d5841216b`](./contracts/arbitrum-42161/0xfb9fbcb328317123f5275cda30b6589d5841216b/) | ⚠️ Unaudited |
| VoteEscrowedToken | unknown | ethereum | n/a | [`0xdcd2b58585df999dd145e529f09e8acafa6cd244`](./contracts/ethereum-1/0xdcd2b58585df999dd145e529f09e8acafa6cd244/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.docdroid.net/MxzpjSg/antfarmfinance-11-smart-contract-audit-report-pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Download](https://www.docdroid.net/file/download/MxzpjSg/antfarmfinance-11-smart-contract-audit-report-pdf.pdf?e=1783034687&s=a0536471cfb9d2295fbecfd888ef8cd0) | RAID Square | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5`](./contracts/arbitrum-42161/0x61f4ecd130291e5d5d7809a112f9f9081b8ed3a5/) | AntfarmFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd`](./contracts/ethereum-1/0x0bf43350076f95e0d16120b4d6bdfa1c9d50bdbd/) | AntfarmGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7ea9ed05bcf4bccd9ed0eca7687e3b8541f2c897`](./contracts/arbitrum-42161/0x7ea9ed05bcf4bccd9ed0eca7687e3b8541f2c897/) | AntfarmGuild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15b1954fabff96f7e9231a7ca3976595095537b5`](./contracts/arbitrum-42161/0x15b1954fabff96f7e9231a7ca3976595095537b5/) | AntfarmPosition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1272ba8c0bd855ff15c4b29bad660e6f154fca28`](./contracts/polygon-137/0x1272ba8c0bd855ff15c4b29bad660e6f154fca28/) | AntfarmReturner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1272ba8c0bd855ff15c4b29bad660e6f154fca28`](./contracts/arbitrum-42161/0x1272ba8c0bd855ff15c4b29bad660e6f154fca28/) | AntfarmRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0470fc8b495dd39e40cbf4cd00e4095db65213`](./contracts/ethereum-1/0x1b0470fc8b495dd39e40cbf4cd00e4095db65213/) | AntfarmSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518b63da813d46556fea041a88b52e3caa8c16a8`](./contracts/ethereum-1/0x518b63da813d46556fea041a88b52e3caa8c16a8/) | AntfarmToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee8c1c668d533d38db792deeb35898fe8d3a33b1`](./contracts/ethereum-1/0xee8c1c668d533d38db792deeb35898fe8d3a33b1/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfb9fbcb328317123f5275cda30b6589d5841216b`](./contracts/arbitrum-42161/0xfb9fbcb328317123f5275cda30b6589d5841216b/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcd2b58585df999dd145e529f09e8acafa6cd244`](./contracts/ethereum-1/0xdcd2b58585df999dd145e529f09e8acafa6cd244/) | VoteEscrowedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19442] DL audit link
- [19443] Download

Fork inheritance lineage and inherited audits are included when available.
