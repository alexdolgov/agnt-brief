# Agentic Audit Brief: Stafi

## Project Overview

- Project: Stafi (`stafi`)
- Website: [https://www.stafi.io/](https://www.stafi.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.654Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 35 unique implementations (40 raw deployments)
- DeFi Llama TVL: $2,993,926.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 25 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (stafibase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 55; live-surface contracts included: 40 (14 live, 26 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/12 (33.3%)
- Deployed-live implementations: 12 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/16
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 35
- Raw deployments: 40
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 25.0% | 2023-03 |
| BlockSec | Tier 2 | 1 | 6.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StafiLightNode | unknown | ethereum | n/a | [`0x1c906685384df71e3fafa6f3b21bd884e9d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ✅ Audited |
| StafiNodeManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x342702e87e8714c759a21299402d9ec99efa0caf`](./contracts/ethereum-1/0x342702e87e8714c759a21299402d9ec99efa0caf/); ethereum `0x4fd35afa32310eaa1354768be6ad2c5c6a62d572`; ethereum `0xd8575c32bbc1ea9d33856a6de74be258712307a8` | ✅ Audited |
| StafiUserDeposit | unknown | ethereum | n/a | [`0xc12dfb80d80d564db9b180abf61a252ee6355058`](./contracts/ethereum-1/0xc12dfb80d80d564db9b180abf61a252ee6355058/) | ✅ Audited |
| StafiWithdraw | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27d64dd9172e4b59a444817d30f7af8228f174cc`](./contracts/ethereum-1/0x27d64dd9172e4b59a444817d30f7af8228f174cc/); ethereum `0x91630f5e28f1f30067b92a8d9d7b8e836afddf9b` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressSetStorage | unknown | ethereum | n/a | [`0x86d14d8bb0e094c35583091ee346a4ca99e81506`](./contracts/ethereum-1/0x86d14d8bb0e094c35583091ee346a4ca99e81506/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | 2 deployments: ethereum [`0x003aace7e639624b4d15cd923da81b356aee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff7ec8903c2c7883b1a6af85e6e330999aa6` | ⚠️ Unaudited |
| RETHToken | token | ethereum | n/a | [`0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | n/a | [`0x5db09e020d94f923408661f94704073dc86dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | ⚠️ Unaudited |
| StafiNetworkSettings | unknown | ethereum | n/a | [`0x1a5474e63519bf47860856f03f414445382dc3f1`](./contracts/ethereum-1/0x1a5474e63519bf47860856f03f414445382dc3f1/) | ⚠️ Unaudited |
| StafiNodeDeposit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x50db2ce93c8b1f6771c985b6b840b587349496a0`](./contracts/ethereum-1/0x50db2ce93c8b1f6771c985b6b840b587349496a0/); ethereum `0xafcf0e333614286d8e20000781121adb28cef33d` | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | n/a | [`0x588e859cb38fecf2d56925c0512471ab47aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | n/a | [`0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| StafiUpgrade | unknown | ethereum | n/a | [`0xd8737ca46aa6285de7b8777a8e3db232911bad41`](./contracts/ethereum-1/0xd8737ca46aa6285de7b8777a8e3db232911bad41/) | ⚠️ Unaudited |
| StakeERC20PortalWithRate | unknown | ethereum | n/a | [`0xefd24026a958fff3870e624900cc21e6e9cedde2`](./contracts/ethereum-1/0xefd24026a958fff3870e624900cc21e6e9cedde2/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | n/a | [`0x3aee3e96c9e340cbe0fffc5224db9e97949f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x412330b91b991aa5a72e22bb5e43c1041dc25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x014b688764422fd5a4f85bcfadf65bb9a0ceed90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9890c9cb9925a8651c10b5f557d744bafbed5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad9a923a56172ec6cac363b7a9487971b93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x473d3f115b09a4abed6529958d03090c084f80f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d3c3be6265932d156e6630cba2921ad7ebab094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536d6eed44d409d8a62695266b4b7ed01113c92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55f3125291e183bf93595dabe162a7b90960df1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c2f7b6110a37b3b0fbdd811876be368df02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7acd9bf3728f4223bf504b1a652cef5ad2e6420b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8320c23e3560dc9d21fb2ecc746911ad9b71f5be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21c509e574c3eac26933e339d8f01445eea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0da556df7c66ed429191e113974a6c474f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59ea6cebb8089a0330800f50946610977c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59ff0c05de52347b2d7bf38eebdc994d97cea8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8ce0b854ca9761ed9416fa18f4d33b2f07e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda9726fd1b125a3923f9d9521e28fe888091698d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe18decbd8b40a6e9a0903f1030efdd4c38238fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4534d8e84fddfd9caa9962fbb94d397e164d175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeba81e821c8990e92f85d26aa428e45a8d26d1ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Stafi-21_01_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi-21_01_2021.pdf) | REP | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [REP-StafiBridgeSolidity-13_11_2020.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-StafiBridgeSolidity-13_11_2020.pdf) | REP | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [REP-Stafi_Token_Relay-19_04_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi_Token_Relay-19_04_2021.pdf) | REP | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rdex/PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/v2/PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [blocksec_stafi_v1.0-signed.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/blocksec_stafi_v1.0-signed.pdf) | BlockSec | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [peckshield-audit-report-stafi-node-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rfis/peckshield-audit-report-stafi-node-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x86d14d8bb0e094c35583091ee346a4ca99e81506`](./contracts/ethereum-1/0x86d14d8bb0e094c35583091ee346a4ca99e81506/) | AddressSetStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003aace7e639624b4d15cd923da81b356aee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/) | Multisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | RETHToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5db09e020d94f923408661f94704073dc86dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | StafiDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a5474e63519bf47860856f03f414445382dc3f1`](./contracts/ethereum-1/0x1a5474e63519bf47860856f03f414445382dc3f1/) | StafiNetworkSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50db2ce93c8b1f6771c985b6b840b587349496a0`](./contracts/ethereum-1/0x50db2ce93c8b1f6771c985b6b840b587349496a0/) | StafiNodeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x588e859cb38fecf2d56925c0512471ab47aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | StafiSuperNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | StafiSuperNodeFeePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8737ca46aa6285de7b8777a8e3db232911bad41`](./contracts/ethereum-1/0xd8737ca46aa6285de7b8777a8e3db232911bad41/) | StafiUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefd24026a958fff3870e624900cc21e6e9cedde2`](./contracts/ethereum-1/0xefd24026a958fff3870e624900cc21e6e9cedde2/) | StakeERC20PortalWithRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aee3e96c9e340cbe0fffc5224db9e97949f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/) | StakeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330b91b991aa5a72e22bb5e43c1041dc25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=3, extraction_exact=4

Zero-match audit list:

- [14985] REP-Stafi-21_01_2021.pdf
- [14986] REP-StafiBridgeSolidity-13_11_2020.pdf
- [14987] REP-Stafi_Token_Relay-19_04_2021.pdf
- [14988] PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf
- [14993] peckshield-audit-report-stafi-node-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
