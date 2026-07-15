# Agentic Audit Brief: Mezo Bridge

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

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum, sepolia
- Contract surface: 62 unique implementations (62 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,707,134.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mezo Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across base, bsc, ethereum, sepolia. Structural roles: 7 supporting, 2 core, 2 unclassified. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (7), core (2), unclassified (2)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (6), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04b94f...0f4d32`, chain 1)
- UnnamedContract (`0x1531b6...a4b154`, chain 1)
- UnnamedContract (`0x18084f...d93a88`, chain 1)
- UnnamedContract (`0x1d50d7...889c24`, chain 1)
- UnnamedContract (`0x29fa8f...78261c`, chain 1)
- UnnamedContract (`0x2dfdeb...88076b`, chain 1)
- UnnamedContract (`0x3d282c...5ce889`, chain 1)
- UnnamedContract (`0x4c9edd...1e68b3`, chain 1)
- UnnamedContract (`0x52317a...e96abc`, chain 1)
- UnnamedContract (`0x5e4861...0e8e7b`, chain 1)
- UnnamedContract (`0x6a7cd8...35c5d7`, chain 1)
- UnnamedContract (`0x6b1754...271d0f`, chain 1)
- UnnamedContract (`0x7a56e1...652f97`, chain 1)
- UnnamedContract (`0x812fcc...3b2db8`, chain 1)
- UnnamedContract (`0x82f080...82b25a`, chain 1)
- UnnamedContract (`0x8db235...864dde`, chain 1)
- UnnamedContract (`0x8e4cbb...d4848b`, chain 1)
- UnnamedContract (`0x9c0700...4fe3cd`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xaac423...65b71f`, chain 1)
- UnnamedContract (`0xc96de2...d6c364`, chain 1)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 1)
- UnnamedContract (`0xd7097a...46fe60`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xdd468a...f9f186`, chain 1)
- UnnamedContract (`0xdf6542...41f4c4`, chain 1)
- UnnamedContract (`0xdf7084...fcf9de`, chain 1)
- UnnamedContract (`0xf6680e...e6908c`, chain 1)
- UnnamedContract (`0x099597...599eab`, chain 56)
- UnnamedContract (`0x8e4cbb...d4848b`, chain 56)
- UnnamedContract (`0xa10ad2...9bc747`, chain 56)
- UnnamedContract (`0x0c46f4...2ede4f`, chain 8453)
- UnnamedContract (`0x15c465...3f4467`, chain 8453)
- UnnamedContract (`0x27321f...89a3d5`, chain 8453)
- UnnamedContract (`0x3eb418...cd1bc1`, chain 8453)
- UnnamedContract (`0x8e4cbb...d4848b`, chain 8453)
- UnnamedContract (`0xdd468a...f9f186`, chain 8453)
- BeaconProxy (`0xd9d920...159def`, chain 1)
- ERC1967Proxy (`0x13916d...40686a`, chain 1)
- ERC1967Proxy (`0x529315...f4477e`, chain 1)
- ERC1967Proxy (`0x76ddb3...d18d3e`, chain 1)
- ERC1967Proxy (`0x920871...9283b1`, chain 1)
- GnosisSafeProxy (`0x98d889...397c7a`, chain 1)
- ProxyAdmin (`0x260ca2...681734`, chain 1)
- ProxyAdmin (`0x66ce24...8f1267`, chain 1)
- ProxyAdmin (`0xef619b...c096a2`, chain 1)
- T (`0xcdf702...94bee5`, chain 1)
- TransparentUpgradeableProxy (`0xab13b8...5b8a39`, chain 1)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 48/75 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 48 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 48 of 62 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 62
- Raw deployments: 62
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 3 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-389085 | `0x98d889...397c7a` | ⚠️ Unaudited |
| NttManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-389084 | `0x13916d...40686a` | ⚠️ Unaudited |
| NttManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-389080 | `0x529315...f4477e` | ⚠️ Unaudited |
| Portal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389083 | `0xab13b8...5b8a39` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-389019 | `0x260ca2...681734` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-389027 | `0x66ce24...8f1267` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-389049 | `0xef619b...c096a2` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 1 | ethereum | unit-389082 | `0xd9d920...159def` | ⚠️ Unaudited |
| T | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389042 | `0xcdf702...94bee5` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389081 | `0x76ddb3...d18d3e` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389086 | `0x920871...9283b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389013 | `0x04b94f...0f4d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389015 | `0x1531b6...a4b154` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389016 | `0x18084f...d93a88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389017 | `0x1d50d7...889c24` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389018 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389020 | `0x29fa8f...78261c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389021 | `0x2dfdeb...88076b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389022 | `0x3d282c...5ce889` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389023 | `0x4c9edd...1e68b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389024 | `0x52317a...e96abc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389026 | `0x5e4861...0e8e7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389028 | `0x6a7cd8...35c5d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389029 | `0x6b1754...271d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389030 | `0x7a56e1...652f97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389033 | `0x812fcc...3b2db8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389034 | `0x82f080...82b25a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389035 | `0x8db235...864dde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389036 | `0x8e4cbb...d4848b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389037 | `0x9c0700...4fe3cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389038 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389039 | `0xaac423...65b71f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389040 | `0xc96de2...d6c364` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389041 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389043 | `0xd7097a...46fe60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389044 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389045 | `0xdd468a...f9f186` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389046 | `0xdf6542...41f4c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389047 | `0xdf7084...fcf9de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389050 | `0xf6680e...e6908c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389064 | `0x099597...599eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389068 | `0x8e4cbb...d4848b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-389069 | `0xa10ad2...9bc747` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389071 | `0x0c46f4...2ede4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389072 | `0x15c465...3f4467` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389073 | `0x27321f...89a3d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389074 | `0x3eb418...cd1bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389078 | `0x8e4cbb...d4848b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389079 | `0xdd468a...f9f186` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389051 | `0x2de056...ac3ac1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389052 | `0x3a3bae...32497c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389053 | `0x517f29...470161` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389054 | `0x5581c7...89643d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389055 | `0x6617c6...ca7f38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389056 | `0x6978e3...b6b0db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389057 | `0x720553...bbdd84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389058 | `0x93c4e8...9693ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389059 | `0x9aa2e8...39d720` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389060 | `0x9b1a7f...113403` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389061 | `0xab940c...1c7d86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389062 | `0xb5679d...9448d5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-389063 | `0xdc5558...4d357d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://github.com/mezo-org/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-04-19 - Thesis Defense - Passport contracts.pdf](https://github.com/mezo-org/audits/blob/main/2024-04-19%20-%20Thesis%20Defense%20-%20Passport%20contracts.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2024-10-18 - Halborn - mezod.pdf](https://github.com/mezo-org/audits/blob/main/2024-10-18%20-%20Halborn%20-%20mezod.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-01-31 - Halborn - mezod.pdf](https://github.com/mezo-org/audits/blob/main/2025-01-31%20-%20Halborn%20-%20mezod.pdf) | Halborn | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03-18 - OtterSec - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2025-03-18%20-%20OtterSec%20-%20native%20bridge.pdf) | OtterSec | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-09-08 - Halborn - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2025-09-08%20-%20Halborn%20-%20native%20bridge.pdf) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-09-10 - Thesis Defense - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2025-09-10%20-%20Thesis%20Defense%20-%20native%20bridge.pdf) | Thesis Defense | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2026-01-30 - Thesis Defense - Earn.pdf](https://github.com/mezo-org/audits/blob/main/2026-01-30%20-%20Thesis%20Defense%20-%20Earn.pdf) | Thesis Defense | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2026-04-08 - Halborn - native bridge.pdf](https://github.com/mezo-org/audits/blob/main/2026-04-08%20-%20Halborn%20-%20native%20bridge.pdf) | Halborn | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [30121] Audits — no match: The provided text is a GitHub repository README listing audit reports by date and component, but does not include the actual audit report content. No specific contract names, source files, or scope sections are present.
- [30123] 2024-04-19 - Thesis Defense - Passport contracts.pdf — no match: Extracted from the audit report header and scope section. The report has two dates: initial report April 5, 2024 and final report April 19, 2024. The final report date is used.
- [30126] 2024-10-18 - Halborn - mezod.pdf — no match: Scope lists files under precompile/validatorpool/ and x/poa/keeper/. Contract names derived from directory names: validatorpool and poa. IValidatorPool.sol is an interface. Audit date is end of engagement period (October 18, 2024).
- [30127] 2025-01-31 - Halborn - mezod.pdf — no match: The scope section lists files and directories, but no specific smart contract names are identified. The report mentions precompiled contracts and smart contracts in the repository, but no contract names are explicitly listed as in scope.
- [30128] 2025-03-18 - OtterSec - native bridge.pdf — no match: Extracted contract names from scope description and findings. Mezo chain is a blockchain, not a contract. MezoBridge and BitcoinBridge are the only Solidity contracts explicitly mentioned.
- [30130] 2025-09-08 - Halborn - native bridge.pdf — no match: The scope section lists files but does not explicitly name contracts. However, the Introduction mentions 'the Solidity contract MezoBridgeV2' as in scope. The precompile file IAssetsBridge.sol is listed. The findings frequently reference 'MezoBridge' which appears to be the same as MezoBridgeV2. No other contract names are explicitly identified.
- [30131] 2025-09-10 - Thesis Defense - native bridge.pdf — no match: Only one contract in scope: MezoBridge.sol. Audit date is the final report date (September 10, 2025).
- [30133] 2026-01-30 - Thesis Defense - Earn.pdf — no match: Extracted contract names from findings locations and scope section. Audit date from cover page: 'Final Report // January 30, 2026'.
- [30134] 2026-04-08 - Halborn - native bridge.pdf — no match: Report is a fix validation report, not a standard audit. No explicit scope section; contracts inferred from code changes and test contracts. Date inferred from copyright year 2026, assumed end of year.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | BitcoinSafeOwner | unmatched — not counted | — | listed in scope and findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | OrangeKitSafeFactory | unmatched — not counted | — | listed in scope and findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | EmergencyGovernance | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | LegacyERC1271 | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | OrangeKitDeployer | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | ERC1271 | unmatched — not counted | — | listed in findings | no |
| 2024-04-19 - Thesis Defense - Passport contracts.pdf | Proxy | unmatched — not counted | — | listed in findings | no |
| 2024-10-18 - Halborn - mezod.pdf | validatorpool | unmatched — not counted | — | listed in scope | no |
| 2024-10-18 - Halborn - mezod.pdf | IValidatorPool | unmatched — not counted | — | listed in scope | no |
| 2024-10-18 - Halborn - mezod.pdf | poa | unmatched — not counted | — | listed in scope | no |
| 2025-03-18 - OtterSec - native bridge.pdf | MezoBridge | unmatched — not counted | — | Scope section: 'The bridge’s pillar on Ethereum is implemented as a Solidity contract called MezoBridge.' | no |
| 2025-03-18 - OtterSec - native bridge.pdf | BitcoinBridge | unmatched — not counted | — | Finding OS-MZO-SUG-00 references 'BitcoinBridge::finalizeBTCBridging' and file path 'solidity/contracts/BitcoinBridge.sol'. | no |
| 2025-09-08 - Halborn - native bridge.pdf | MezoBridgeV2 | unmatched — not counted | — | mentioned in Introduction as the Solidity contract in scope | no |
| 2025-09-08 - Halborn - native bridge.pdf | IAssetsBridge | unmatched — not counted | — | listed in scope file list | no |
| 2025-09-08 - Halborn - native bridge.pdf | MezoBridge | unmatched — not counted | — | referenced in findings as the contract containing functions like attestBridgeOut, addBridgeValidator, etc. | no |
| 2025-09-10 - Thesis Defense - native bridge.pdf | MezoBridge | unmatched — not counted | — | listed in scope | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | VotingEscrow | unmatched — not counted | — | mentioned in findings locations and scope | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | ManagedNFT | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | BoostVoter | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | NonStakingVoter | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | Voter | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | Grant | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-01-30 - Thesis Defense - Earn.pdf | MUSDSavingsRate | unmatched — not counted | — | mentioned in findings locations | no |
| 2026-04-08 - Halborn - native bridge.pdf | StateChange | unmatched — not counted | — | New type added in statedb.go | no |
| 2026-04-08 - Halborn - native bridge.pdf | StateDB | unmatched — not counted | — | commit() and CommittedStateChanges() methods | no |
| 2026-04-08 - Halborn - native bridge.pdf | Keeper | unmatched — not counted | — | ApplyMessage method signature change | no |
| 2026-04-08 - Halborn - native bridge.pdf | ApplyMessage | unmatched — not counted | — | Returns []statedb.StateChange | no |
| 2026-04-08 - Halborn - native bridge.pdf | ExecuteContractCall | unmatched — not counted | — | Returns []statedb.StateChange | no |
| 2026-04-08 - Halborn - native bridge.pdf | BurnERC20 | unmatched — not counted | — | Returns []statedb.StateChange | no |
| 2026-04-08 - Halborn - native bridge.pdf | BridgeOutMethod | unmatched — not counted | — | execute() method returns changes | no |
| 2026-04-08 - Halborn - native bridge.pdf | Contract | unmatched — not counted | — | Run() replays changes into outer StateDB | no |
| 2026-04-08 - Halborn - native bridge.pdf | ExploitContract | unmatched — not counted | — | Exploit contract used in testing | no |
| 2026-04-08 - Halborn - native bridge.pdf | EdgeCaseTest | unmatched — not counted | — | Edge case test contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x13916d...40686a` | NttManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x529315...f4477e` | NttManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xab13b8...5b8a39` | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9d920...159def` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcdf702...94bee5` | T | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 33 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [30121] Audits
- [30123] 2024-04-19 - Thesis Defense - Passport contracts.pdf
- [30126] 2024-10-18 - Halborn - mezod.pdf
- [30127] 2025-01-31 - Halborn - mezod.pdf
- [30128] 2025-03-18 - OtterSec - native bridge.pdf
- [30130] 2025-09-08 - Halborn - native bridge.pdf
- [30131] 2025-09-10 - Thesis Defense - native bridge.pdf
- [30133] 2026-01-30 - Thesis Defense - Earn.pdf
- [30134] 2026-04-08 - Halborn - native bridge.pdf

Fork inheritance lineage and inherited audits are included when available.
