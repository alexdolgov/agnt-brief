# Agentic Audit Brief: Stafi

⚠️ Lifecycle status: DECLINING - TVL dropped 17.0% over 90 days

## Project Overview

- Project: Stafi (`stafi`)
- Website: [https://www.stafi.io/](https://www.stafi.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:16.500Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 42 unique implementations (58 raw deployments)
- DeFi Llama TVL: $3,990,023.60
- On-chain TVL (included contracts): $3,923,672.10
- TVL by chain: Ethereum $3,923,672.10

## Project Description

StaFi is a cross-chain liquid staking and staking-derivatives protocol. It provides rToken liquid staking products and StaFi 2.0 infrastructure, including LSaaS and AI-positioned liquid staking services, designed to let users stake assets while retaining liquidity through derivative tokens. The listed contract coverage should be treated as Ethereum-only unless non-Ethereum deployments are separately included and verified.

### Architecture

The RETHToken is the core liquid staking token, while StafiWithdrawProxy and TransparentUpgradeableProxy serve as supporting infrastructure for withdrawals and stake management, respectively. These contracts share a common deployer cluster, indicating a unified deployment.

## Audit Coverage Summary

- Verified implementations audited: 6/23 (26.1%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 42
- Raw deployments: 58
- Audits discovered: 9
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $3,923,672.10
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 9 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,923,672.10 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 26.1% | 2023-03 |
| BlockSec | Tier 2 | 1 | 4.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StafiEther | unknown | ethereum | [`0x54896f...d39fc1`](./contracts/ethereum-1/0x54896f542f044709807f0d79033934d661d39fc1/) | ✅ Audited |
| StafiLightNode | unknown | ethereum | [`0x1c9066...d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ✅ Audited |
| StafiNetworkSettings | unknown | ethereum | [`0x1a5474...2dc3f1`](./contracts/ethereum-1/0x1a5474e63519bf47860856f03f414445382dc3f1/) | ✅ Audited |
| StafiUpgrade | unknown | ethereum | [`0xd8737c...1bad41`](./contracts/ethereum-1/0xd8737ca46aa6285de7b8777a8e3db232911bad41/) | ✅ Audited |
| StafiUserDeposit | unknown | ethereum | 3 deployments: ethereum [`0x430cf6...bb3f28`](./contracts/ethereum-1/0x430cf6dd3e289adae63b50ff661d6bba2dbb3f28/); ethereum `0x625b7f...d357be`; ethereum `0xc12dfb...355058` | ✅ Audited |
| StafiWithdraw | operational_periphery | ethereum | 2 deployments: ethereum [`0x27d64d...f174cc`](./contracts/ethereum-1/0x27d64dd9172e4b59a444817d30f7af8228f174cc/); ethereum `0x91630f...fddf9b` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RETHToken | token | ethereum | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| StafiFeePool | core_logic | ethereum | [`0x6fb2aa...22df45`](./contracts/ethereum-1/0x6fb2aa2443564d9430b9483b1a5eea13a522df45/) | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | [`0x86d14d...e81506`](./contracts/ethereum-1/0x86d14d8bb0e094c35583091ee346a4ca99e81506/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | 2 deployments: ethereum [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff...999aa6` | ⚠️ Unaudited |
| RateSender | unknown | ethereum | 2 deployments: ethereum [`0x655603...219665`](./contracts/ethereum-1/0x655603c5c034f89d8e0c25c7bb22cae091219665/); ethereum `0xc9e039...1e795d` | ⚠️ Unaudited |
| RETHRateProvider | unknown | ethereum | [`0x3d40f9...c1f1ac`](./contracts/ethereum-1/0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac/) | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | 3 deployments: ethereum [`0x44da62...a16587`](./contracts/ethereum-1/0x44da6289a48f6af8e0917d8688b02b773ba16587/); ethereum `0x5a2ecb...cc689b`; ethereum `0x5db09e...6dba3d` | ⚠️ Unaudited |
| StafiNodeDeposit | unknown | ethereum | 2 deployments: ethereum [`0x50db2c...9496a0`](./contracts/ethereum-1/0x50db2ce93c8b1f6771c985b6b840b587349496a0/); ethereum `0xafcf0e...cef33d` | ⚠️ Unaudited |
| StafiNodeManager | governance | ethereum | 3 deployments: ethereum [`0x342702...fa0caf`](./contracts/ethereum-1/0x342702e87e8714c759a21299402d9ec99efa0caf/); ethereum `0x4fd35a...62d572`; ethereum `0xd8575c...2307a8` | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StakeERC20Portal | token | ethereum | [`0xbebfd2...4b56e8`](./contracts/ethereum-1/0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8/) | ⚠️ Unaudited |
| StakeERC20PortalWithRate | token | ethereum | [`0xefd240...cedde2`](./contracts/ethereum-1/0xefd24026a958fff3870e624900cc21e6e9cedde2/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | 4 deployments: ethereum [`0x3aee3e...9f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/); ethereum `0x73822d...de957b`; ethereum `0xb804d7...065711`; ethereum `0xfd5a64...60c73c` | ⚠️ Unaudited |
| StakePool | core_logic | ethereum | 3 deployments: ethereum [`0x48b1b0...3816cc`](./contracts/ethereum-1/0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc/); ethereum `0x818dd8...eb9d31`; ethereum `0xed9d38...4c8af5` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | ⚠️ Unaudited |
| TokenDropWithLock | token | ethereum | 2 deployments: ethereum [`0x630e78...42d460`](./contracts/ethereum-1/0x630e78c7ac331d89e2fedbbaa93fecade842d460/); ethereum `0x85449d...057cd3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x014b68...ceed90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9890...fbed5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ad9a9...93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x473d3f...4f80f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d3c3b...bab094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x536d6e...13c92b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55f312...60df1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c2f7b...02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7acd9b...e6420b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8320c2...71f5be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa21c50...ea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0da55...f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc59ea6...c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc59ff0...7cea8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc8ce0b...7e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda9726...91698d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe18dec...238fa9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4534d...64d175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeba81e...26d1ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Stafi-21_01_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi-21_01_2021.pdf) | REP | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [REP-StafiBridgeSolidity-13_11_2020.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-StafiBridgeSolidity-13_11_2020.pdf) | REP | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [REP-Stafi_Token_Relay-19_04_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi_Token_Relay-19_04_2021.pdf) | REP | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rdex/PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/v2/PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 6 | high |
| [PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |
| [blocksec_stafi_v1.0-signed.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/blocksec_stafi_v1.0-signed.pdf) | BlockSec | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [peckshield-audit-report-stafi-node-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rfis/peckshield-audit-report-stafi-node-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | RETHToken | token | $3,923,672.10 | Verified native implementation with $3,923,672.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | StafiSuperNodeFeePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fb2aa...22df45`](./contracts/ethereum-1/0x6fb2aa2443564d9430b9483b1a5eea13a522df45/) | StafiFeePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86d14d...e81506`](./contracts/ethereum-1/0x86d14d8bb0e094c35583091ee346a4ca99e81506/) | AddressSetStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x655603...219665`](./contracts/ethereum-1/0x655603c5c034f89d8e0c25c7bb22cae091219665/) | RateSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d40f9...c1f1ac`](./contracts/ethereum-1/0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac/) | RETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44da62...a16587`](./contracts/ethereum-1/0x44da6289a48f6af8e0917d8688b02b773ba16587/) | StafiDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50db2c...9496a0`](./contracts/ethereum-1/0x50db2ce93c8b1f6771c985b6b840b587349496a0/) | StafiNodeDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342702...fa0caf`](./contracts/ethereum-1/0x342702e87e8714c759a21299402d9ec99efa0caf/) | StafiNodeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | StafiSuperNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbebfd2...4b56e8`](./contracts/ethereum-1/0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8/) | StakeERC20Portal | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefd240...cedde2`](./contracts/ethereum-1/0xefd24026a958fff3870e624900cc21e6e9cedde2/) | StakeERC20PortalWithRate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48b1b0...3816cc`](./contracts/ethereum-1/0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc/) | StakePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x630e78...42d460`](./contracts/ethereum-1/0x630e78c7ac331d89e2fedbbaa93fecade842d460/) | TokenDropWithLock | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=12

Zero-match audit list:

- [2641] REP-Stafi-21_01_2021.pdf
- [2642] REP-StafiBridgeSolidity-13_11_2020.pdf
- [2643] REP-Stafi_Token_Relay-19_04_2021.pdf
- [2644] PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf
- [2649] peckshield-audit-report-stafi-node-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
