# Agentic Audit Brief: Stafi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stafi (`stafi`)
- Website: [https://www.stafi.io/](https://www.stafi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 43 unique implementations (58 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,993,926.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Stafi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), core (1)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (1), erc20 (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 43
- Raw deployments: 58
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressSetStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d14d8bb0e094c35583091ee346a4ca99e81506` | ⚠️ Unaudited |
| Multisig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x003aace7e639624b4d15cd923da81b356aee75d3`; ethereum `0x6aacff7ec8903c2c7883b1a6af85e6e330999aa6` | ⚠️ Unaudited |
| RateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x655603c5c034f89d8e0c25c7bb22cae091219665`; ethereum `0xc9e03910dddf689d3e309b42dbf4c581ed1e795d` | ⚠️ Unaudited |
| RETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d40f9dd83bd404fa4047c15da494e58c3c1f1ac` | ⚠️ Unaudited |
| RETHToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256788 | `0x9559aaa82d9649c7a7b220e7c461d2e74c9a3593` | ⚠️ Unaudited |
| StafiDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x44da6289a48f6af8e0917d8688b02b773ba16587`; ethereum `0x5a2ecb3e5574eb61098c93c2ee36f3d26ecc689b`; ethereum `0x5db09e020d94f923408661f94704073dc86dba3d` | ⚠️ Unaudited |
| StafiEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54896f542f044709807f0d79033934d661d39fc1` | ⚠️ Unaudited |
| StafiFeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb2aa2443564d9430b9483b1a5eea13a522df45` | ⚠️ Unaudited |
| StafiLightNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c906685384df71e3fafa6f3b21bd884e9d44f4b` | ⚠️ Unaudited |
| StafiNetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5474e63519bf47860856f03f414445382dc3f1` | ⚠️ Unaudited |
| StafiNodeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x50db2ce93c8b1f6771c985b6b840b587349496a0`; ethereum `0xafcf0e333614286d8e20000781121adb28cef33d` | ⚠️ Unaudited |
| StafiNodeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x342702e87e8714c759a21299402d9ec99efa0caf`; ethereum `0x4fd35afa32310eaa1354768be6ad2c5c6a62d572`; ethereum `0xd8575c32bbc1ea9d33856a6de74be258712307a8` | ⚠️ Unaudited |
| StafiSuperNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x588e859cb38fecf2d56925c0512471ab47aa9ff1` | ⚠️ Unaudited |
| StafiSuperNodeFeePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc5a28885a1800b1435982954ee9b51d2a8d3bf0` | ⚠️ Unaudited |
| StafiUpgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8737ca46aa6285de7b8777a8e3db232911bad41` | ⚠️ Unaudited |
| StafiUserDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x430cf6dd3e289adae63b50ff661d6bba2dbb3f28`; ethereum `0x625b7fd68b35ee8dc2c9405a712fa450ccd357be`; ethereum `0xc12dfb80d80d564db9b180abf61a252ee6355058` | ⚠️ Unaudited |
| StafiWithdraw | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256789 | 2 deployments: ethereum `0x27d64dd9172e4b59a444817d30f7af8228f174cc`; ethereum `0x91630f5e28f1f30067b92a8d9d7b8e836afddf9b` | ⚠️ Unaudited |
| StakeERC20Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebfd22d3a628a62f3e2ef91c957ec6d304b56e8` | ⚠️ Unaudited |
| StakeERC20PortalWithRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefd24026a958fff3870e624900cc21e6e9cedde2` | ⚠️ Unaudited |
| StakeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3aee3e96c9e340cbe0fffc5224db9e97949f3899` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x73822d7814e10a2d0c964ae52e74f08390de957b`; ethereum `0xb804d72d8c6545fed89cc56a093e460c4e065711`; ethereum `0xfd5a64ea2fec52fe959eb83892b04017e660c73c` | ⚠️ Unaudited |
| StakePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x48b1b0ac3e5e7cdbfbb67b0d2917b9ad9c3816cc`; ethereum `0x818dd839f3bd2e473cff9d952f755ee280eb9d31`; ethereum `0xed9d38b7f15fda2113c8d643439aebddae4c8af5` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x412330b91b991aa5a72e22bb5e43c1041dc25f9e` | ⚠️ Unaudited |
| TokenDropWithLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x630e78c7ac331d89e2fedbbaa93fecade842d460`; ethereum `0x85449dd4f0c09b667b1c1008c732ebc269057cd3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x014b688764422fd5a4f85bcfadf65bb9a0ceed90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9890c9cb9925a8651c10b5f557d744bafbed5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad9a923a56172ec6cac363b7a9487971b93353f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x473d3f115b09a4abed6529958d03090c084f80f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d3c3be6265932d156e6630cba2921ad7ebab094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536d6eed44d409d8a62695266b4b7ed01113c92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f3125291e183bf93595dabe162a7b90960df1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2f7b6110a37b3b0fbdd811876be368df02e8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7acd9bf3728f4223bf504b1a652cef5ad2e6420b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8320c23e3560dc9d21fb2ecc746911ad9b71f5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa21c509e574c3eac26933e339d8f01445eea8d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0da556df7c66ed429191e113974a6c474f2b389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59ea6cebb8089a0330800f50946610977c4fc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59ff0c05de52347b2d7bf38eebdc994d97cea8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8ce0b854ca9761ed9416fa18f4d33b2f07e336c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9726fd1b125a3923f9d9521e28fe888091698d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18decbd8b40a6e9a0903f1030efdd4c38238fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4534d8e84fddfd9caa9962fbb94d397e164d175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba81e821c8990e92f85d26aa428e45a8d26d1ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [REP-Stafi-21_01_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi-21_01_2021.pdf) | REP | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [REP-StafiBridgeSolidity-13_11_2020.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-StafiBridgeSolidity-13_11_2020.pdf) | REP | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [REP-Stafi_Token_Relay-19_04_2021.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/REP-Stafi_Token_Relay-19_04_2021.pdf) | REP | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rdex/PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/v2/PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blocksec_stafi_v1.0-signed.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/reth/withdraw/blocksec_stafi_v1.0-signed.pdf) | BlockSec | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [peckshield-audit-report-stafi-node-v1.0.pdf](https://github.com/stafiprotocol/stafi-bootstrap/blob/master/audits/rfis/peckshield-audit-report-stafi-node-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14985] REP-Stafi-21_01_2021.pdf — no match: The audit report lists two files in scope: common/src/lib.rs and swap/src/lib.rs. The contract names are derived from the directory names 'common' and 'swap' as they are Substrate pallets. The audit date is explicitly stated as January 15th, 2021.
- [14986] REP-StafiBridgeSolidity-13_11_2020.pdf — no match: Scope explicitly lists Bridge.sol, ERC20Safe.sol, ERC20Handler.sol, and GenericHandler.sol. HandlerHelper is mentioned in executive summary as having access control properly implemented.
- [14987] REP-Stafi_Token_Relay-19_04_2021.pdf — no match: Extracted 28 file names from the scope table. Audit date inferred from 'Apr 30th, 2023' in the header.
- [14988] PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf — no match: The audit scope explicitly states 'only the rdex module in the scope of this audit'. The report references files under node/pallets/rdex/swap/src/lib.rs and node/pallets/rdex/mining/src/lib.rs, but the module name is 'rdex'.
- [14989] PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf — no match: No reason recorded
- [14990] PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf — no match: No reason recorded
- [14991] PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf — no match: Only one contract in scope: StafiWithdraw. Audit date from cover page and version table.
- [14992] blocksec_stafi_v1.0-signed.pdf — no match: Only one contract, StafiWithdraw, is explicitly in scope. The report mentions 'withdraw contract' and provides a direct GitHub link to StafiWithdraw.sol.
- [14993] peckshield-audit-report-stafi-node-v1.0.pdf — no match: The audit report focuses on the Stafi-Node implementation, specifically the rtoken pallet. No individual contract names are listed; the scope is the entire node implementation.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| REP-Stafi-21_01_2021.pdf | common | unmatched — not counted | — | listed in scope table and findings | no |
| REP-Stafi-21_01_2021.pdf | swap | unmatched — not counted | — | listed in scope table and findings | no |
| REP-StafiBridgeSolidity-13_11_2020.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| REP-StafiBridgeSolidity-13_11_2020.pdf | ERC20Safe | unmatched — not counted | — | listed in scope | no |
| REP-StafiBridgeSolidity-13_11_2020.pdf | ERC20Handler | unmatched — not counted | — | listed in scope | no |
| REP-StafiBridgeSolidity-13_11_2020.pdf | GenericHandler | unmatched — not counted | — | listed in scope | no |
| REP-StafiBridgeSolidity-13_11_2020.pdf | HandlerHelper | unmatched — not counted | — | mentioned in executive summary | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | interface.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | chain.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | connection.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | event.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | event_handler.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | listener.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | proposal.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | writer.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | account.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | main.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | config.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | flags.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | stafi.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | substrate.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | core.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | message.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | model.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | router.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | event_parser.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | gsrpc.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | sarpc.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | types.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | bigint.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | blake.go | unmatched — not counted | — | listed in scope table | no |
| REP-Stafi_Token_Relay-19_04_2021.pdf | blockstore.go | unmatched — not counted | — | listed in scope table | no |
| PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf | rdex | unmatched — not counted | — | listed in scope as the rdex module | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | AddressQueueStorage | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | IAddressQueueStorage | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | IStafiNetworkSettings | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | IStafiNodeManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | IStafiStakingPool | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | IStafiStakingPoolManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | IStafiStorage | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiBase | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiNetworkBalances | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiNetworkSettings | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiNetworkWithdrawal | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiNodeManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiStakingPoolManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiStorage | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf | StafiUpgrade | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | AddressQueueStorage | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | EthDeposit | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiBase | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiEther | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiLightNode | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiNetworkSettings | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiNetworkWithdrawal | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiStakingPool | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiStakingPoolManager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf | StafiUserDeposit | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf | StafiWithdraw | unmatched — not counted | — | listed in scope: 'the audit only covers the contracts/withdraw/StafiWithdraw.sol file' | no |
| blocksec_stafi_v1.0-signed.pdf | StafiWithdraw | unmatched — not counted | — | Section 1.1: 'The target of this audit is the withdraw contract of the Stafi Protocol.' and file path provided. | no |
| peckshield-audit-report-stafi-node-v1.0.pdf | Stafi-Node | unmatched — not counted | — | listed in scope as the target of the audit | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 61 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [14985] REP-Stafi-21_01_2021.pdf
- [14986] REP-StafiBridgeSolidity-13_11_2020.pdf
- [14987] REP-Stafi_Token_Relay-19_04_2021.pdf
- [14988] PeckShield-Audit-Report-Stafi-rDEX-v1.0.pdf
- [14989] PeckShield-Audit-Report-StaFi-Eth2-Staking-v1.0.pdf
- [14990] PeckShield-Audit-Report-Stafi-Eth2Staking-v1.0.pdf
- [14991] PeckShield-Audit-Report-StafiWithdraw-v1.0.pdf
- [14992] blocksec_stafi_v1.0-signed.pdf
- [14993] peckshield-audit-report-stafi-node-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
