# Agentic Audit Brief: Stafi

⚠️ Lifecycle status: DECLINING - TVL dropped 17.0% over 90 days

## Project Overview

- Project: Stafi (`stafi`)
- Website: [https://www.stafi.io/](https://www.stafi.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T06:26:02.696Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: ethereum
- Contract surface: 15 unique implementations (16 raw deployments)
- DeFi Llama TVL: $3,164,267.59
- On-chain TVL (included contracts): $3,923,672.10
- TVL by chain: Ethereum $3,923,672.10

## Project Description

StaFi is a cross-chain liquid staking and staking-derivatives protocol. It provides rToken liquid staking products and StaFi 2.0 infrastructure, including LSaaS and AI-positioned liquid staking services, designed to let users stake assets while retaining liquidity through derivative tokens. The listed contract coverage should be treated as Ethereum-only unless non-Ethereum deployments are separately included and verified.

### Architecture

The RETHToken is the core liquid staking token, while StafiWithdrawProxy and TransparentUpgradeableProxy serve as supporting infrastructure for withdrawals and stake management, respectively. These contracts share a common deployer cluster, indicating a unified deployment.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 44 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/10 (30.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 15
- Raw deployments: 16
- Audits discovered: 9
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $3,923,672.10
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $3,923,672.10 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 30.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StafiLightNode | unknown | ethereum | n/a | [`0x1c9066...d44f4b`](./contracts/ethereum-1/0x1c906685384df71e3fafa6f3b21bd884e9d44f4b/) | ✅ Audited |
| StafiNodeManager | governance | ethereum | n/a | [`0xd8575c...2307a8`](./contracts/ethereum-1/0xd8575c32bbc1ea9d33856a6de74be258712307a8/) | ✅ Audited |
| StafiUserDeposit | unknown | ethereum | n/a | [`0xc12dfb...355058`](./contracts/ethereum-1/0xc12dfb80d80d564db9b180abf61a252ee6355058/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RETHToken | token | ethereum | n/a | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | ethereum | n/a | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | 2 deployments: ethereum [`0x003aac...ee75d3`](./contracts/ethereum-1/0x003aace7e639624b4d15cd923da81b356aee75d3/); ethereum `0x6aacff...999aa6` | ⚠️ Unaudited |
| StafiDistributor | operational_periphery | ethereum | n/a | [`0x5db09e...6dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | ⚠️ Unaudited |
| StafiSuperNode | unknown | ethereum | n/a | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | ⚠️ Unaudited |
| StakeManager | governance | ethereum | unit-35520 | [`0x3aee3e...9f3899`](./contracts/ethereum-1/0x3aee3e96c9e340cbe0fffc5224db9e97949f3899/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x3ad9a9...93353f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa21c50...ea8d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0da55...f2b389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8ce0b...7e336c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda9726...91698d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Stafi-21_01_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi-21_01_2021.pdf) | REP | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [REP-StafiBridgeSolidity-13_11_2020.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-StafiBridgeSolidity-13_11_2020.pdf) | REP | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [REP-Stafi_Token_Relay-19_04_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi_Token_Relay-19_04_2021.pdf) | REP | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rdex/PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/v2/PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 0 | n/a |
| [blocksec_stafi_v1.0-signed.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/blocksec_stafi_v1.0-signed.pdf) | BlockSec | Audit | 2023-04 | stale | Direct | contract_name | 0 | n/a |
| [peckshield-audit-report-stafi-node-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rfis/peckshield-audit-report-stafi-node-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9559aa...9a3593`](./contracts/ethereum-1/0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593/) | RETHToken | token | $3,923,672.10 | Verified native implementation with $3,923,672.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc5a28...8d3bf0`](./contracts/ethereum-1/0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0/) | StafiSuperNodeFeePool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5db09e...6dba3d`](./contracts/ethereum-1/0x5db09e020d94f923408661f94704073dc86dba3d/) | StafiDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x588e85...aa9ff1`](./contracts/ethereum-1/0x588e859cb38fecf2d56925c0512471ab47aa9ff1/) | StafiSuperNode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412330...c25f9e`](./contracts/ethereum-1/0x412330b91b991aa5a72e22bb5e43c1041dc25f9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=15

Zero-match audit list:

- [14985] REP-Stafi-21_01_2021.pdf
- [14986] REP-StafiBridgeSolidity-13_11_2020.pdf
- [14987] REP-Stafi_Token_Relay-19_04_2021.pdf
- [14988] PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf
- [14991] PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf
- [14992] blocksec_stafi_v1.0-signed.pdf
- [14993] peckshield-audit-report-stafi-node-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
