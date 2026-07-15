# Agentic Audit Brief: Stafi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Stafi (`stafi`)
- Website: [https://www.stafi.io/](https://www.stafi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
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
- Indexed contracts: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RETHToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256788 | `0x9559aa...9a3593` | ⚠️ Unaudited |
| StafiWithdraw | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256789 | `0x27d64d...f174cc` | ⚠️ Unaudited |

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
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
