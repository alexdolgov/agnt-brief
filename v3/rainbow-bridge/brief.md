# Agentic Audit Brief: Rainbow Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rainbow Bridge (`rainbow-bridge`)
- Website: [https://rainbowbridge.app/transfer](https://rainbowbridge.app/transfer)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, polygon, polygon-amoy, sepolia
- Contract surface: 9 unique implementations (9 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,581,305.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Rainbow Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe00c62...4c85b9`, chain 1)
- UnnamedContract (`0x073c8a...7f5720`, chain 56)
- UnnamedContract (`0xd025b3...00d989`, chain 137)
- UnnamedContract (`0xd025b3...00d989`, chain 8453)
- UnnamedContract (`0xd025b3...00d989`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 5 of 9 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 9 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391277 | `0xe00c62...4c85b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391285 | `0x073c8a...7f5720` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391283 | `0xd025b3...00d989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391287 | `0xd025b3...00d989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391284 | `0xd025b3...00d989` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-391286 | `0xec81af...0b283a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-391278 | `0x0c9813...f33ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-391279 | `0x3701b9...ddf2c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-391280 | `0x68a86e...fe4401` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf](https://www.datocms-assets.com/50156/1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf) | Sigma Prime | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf](https://www.datocms-assets.com/50156/1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Rainbow-Bridge-audit-report-_compressed.pdf](https://blaize.tech/wp-content/uploads/2023/03/Rainbow-Bridge-audit-report-_compressed.pdf) | Blaize Security | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Manual audit seed](https://aurora.dev/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [January 2025 / HackenNEAR IntentsView audit report](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [May 2024 / AuditOneEngine/BridgeView audit report](https://www.datocms-assets.com/50156/1719854230-aurora-engine-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [May 2023 / AuditOneFast BridgeView audit report](https://www.datocms-assets.com/50156/1686729017-auditone-fast-bridge-final-report-v3-may2023-1.pdf) | Hacken | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [January 2023 / HackenVote Token & Election ContractView audit report](https://www.datocms-assets.com/50156/1675403586-hacken-election-vote-contracts-final-report.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [October 2022 / BlaizeNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1676635327-blaize-near-ftconnector-reportv2-october-2022.pdf) | Hacken | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [June 2022 / HackenStaking ContractView audit report](https://www.datocms-assets.com/50156/1659612404-hacken-staking-contract-final-report-08-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [June 2022 / BlaizeStaking ContractView audit report](https://www.datocms-assets.com/50156/1660299853-blaize-staking-contract-final-report-8-6-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21316] 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf — no match: Extracted contracts from scope description and findings. Date from cover page: 'June, 2022' -> last day of month.
- [21317] 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf — no match: Extracted from the report title page which states 'June, 2023'. Used last day of month.
- [21318] Rainbow-Bridge-audit-report-_compressed.pdf — no match: Scope explicitly listed on page 2: BridgeToken.sol, BridgeTokenFactory.sol, BridgeTokenProxy.sol, ProofConsumer.sol, ResultsDecoder.sol, ERC20Locker.sol, Locker.sol, ERC20MetadataLogger.sol, and Rust files bridge-common/src/lib.rs, bridge-common/src/prover.rs, token-locker/src/lib.rs, token-locker/src/token_receiver.rs, token-locker/src/unlock_event.rs. Also bridge-common/src/result_types.rs appears in test coverage. Audit date from cover page: October 5th 2022.
- [24384] Manual audit seed — no match: The provided text is a webpage listing multiple audit reports with links, but does not contain the full text of any single audit report. No contract names or audit dates can be extracted.
- [24385] January 2025 / HackenNEAR IntentsView audit report — no match: Scope section lists multiple Rust source files organized into crates (bitmap, core, crypto, defuse, erc191, nep413). The audit date is explicitly given as 27/01/2025.
- [24386] May 2024 / AuditOneEngine/BridgeView audit report — no match: Extracted contract names from the 'Contracts in scope' section (page 5) and additional contracts mentioned in findings. Audit date from finishing date 10-05-2024.
- [24390] May 2023 / AuditOneFast BridgeView audit report — no match: Contracts in scope are Rust modules (lib.rs, lp_relayer.rs, whitelist.rs, ft.rs, utils.rs) from the fast-bridge-protocol repository. Audit date is 09-05-2023 (May 9, 2023) from the cover page.
- [24393] January 2023 / HackenVote Token & Election ContractView audit report — no match: Four contracts in scope across three review rounds. Date from cover page: January 18, 2023.
- [24394] October 2022 / BlaizeNEAR FT ConnectorView audit report — no match: Scope explicitly lists 8 Solidity contracts and 5 Rust source files. Audit date from cover page.
- [24395] June 2022 / HackenStaking ContractView audit report — no match: Contracts listed in scope for initial, second, and third reviews. Date from cover page: June 8th, 2022.
- [24396] June 2022 / BlaizeStaking ContractView audit report — no match: Scope explicitly lists Treasury.sol, AdminControlled.sol, JetStakingV1.sol. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | w-near | unmatched — not counted | — | listed in scope as w-near contracts | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | FungibleToken | unmatched — not counted | — | listed in scope as FungibleToken standard library | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | EthOnNearClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | NearOnEthClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | AdminControlled | unmatched — not counted | — | finding NSS-08 targets AdminControlled.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | NearBridge | unmatched — not counted | — | finding NSS-09 and NSS-10 target NearBridge.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | NearProver | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | EthCustodian | unmatched — not counted | — | finding NSS-06 and NSS-13 target EthCustodian.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ERC20Locker | unmatched — not counted | — | finding NSS-06 targets ERC20Locker.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | eNear | unmatched — not counted | — | mentioned in resolution of NSS-05 and NSS-07 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ProofKeeper | unmatched — not counted | — | mentioned in finding NSS-07 and NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ERC20MetadataLogger | unmatched — not counted | — | finding NSS-11 targets ERC20MetadataLogger.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | Borsh | unmatched — not counted | — | finding NSS-05 targets Borsh.sol | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | ProofDecoder | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | Bridge | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf | Locker | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | eth2-client | unmatched — not counted | — | listed in scope as NEAR contract | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | eth2-validator | unmatched — not counted | — | listed in scope as DAO validator | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | eth2_to_near_relay | unmatched — not counted | — | listed in scope as off-chain relayer | no |
| 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf | contract_wrapper | unmatched — not counted | — | mentioned in finding RBE2-15 | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | BridgeToken | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | BridgeTokenFactory | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | BridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ProofConsumer | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ResultsDecoder | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ERC20Locker | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | ERC20MetadataLogger | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | bridge-common/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | bridge-common/src/prover.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | bridge-common/src/result_types.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | token-locker/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | token-locker/src/token_receiver.rs | unmatched — not counted | — | listed in scope | no |
| Rainbow-Bridge-audit-report-_compressed.pdf | token-locker/src/unlock_event.rs | unmatched — not counted | — | listed in scope | no |
| January 2025 / HackenNEAR IntentsView audit report | bitmap | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | core | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | crypto | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | defuse | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | erc191 | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | nep413 | unmatched — not counted | — | listed in scope table | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin_controlled | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | deposit_event | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | errors | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | external | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | fungible_token | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | internal | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | mod | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | silo | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | evm_transaction | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | xcc | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | accounting | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | engine | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | hashchain | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | lib | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | map | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | prelude | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | state | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | connector | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EthConnectorContract | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineFungibleToken | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineStorageManagement | unmatched — not counted | — | mentioned in findings | no |
| May 2023 / AuditOneFast BridgeView audit report | bridge | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | lp_relayer | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | ft | unmatched — not counted | — | listed in scope | no |
| May 2023 / AuditOneFast BridgeView audit report | utils | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AuroraVoteTokenV1 | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ERC20VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ElectionManager | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeToken | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenFactory | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ProofConsumer | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ResultsDecoder | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20MetadataLogger | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/prover.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/result_types.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/token_receiver.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/unlock_event.rs | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | DelegateCallGuard | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | ITreasury | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope | no |
| June 2022 / HackenStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 95 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1
- Match method counts: n/a

Zero-match audit list:

- [21316] 1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf
- [21317] 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf
- [21318] Rainbow-Bridge-audit-report-_compressed.pdf
- [24384] Manual audit seed
- [24385] January 2025 / HackenNEAR IntentsView audit report
- [24386] May 2024 / AuditOneEngine/BridgeView audit report
- [24390] May 2023 / AuditOneFast BridgeView audit report
- [24393] January 2023 / HackenVote Token & Election ContractView audit report
- [24394] October 2022 / BlaizeNEAR FT ConnectorView audit report
- [24395] June 2022 / HackenStaking ContractView audit report
- [24396] June 2022 / BlaizeStaking ContractView audit report

Fork inheritance lineage and inherited audits are included when available.
