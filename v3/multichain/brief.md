# Agentic Audit Brief: Multichain

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 16 (0 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Multichain (`multichain`)
- Website: [https://multichain.org/](https://multichain.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, arbitrum-nova, aurora, avalanche, boba, bsc, celo, cronos, ethereum, fantom, gnosis, harmony, heco, kaia, kava, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm
- Contract surface: 30 unique implementations (32 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $36,348,243.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Multichain in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x0a992d191deec32afe36203ad87d7d289a738f81`, chain 1)
- UnnamedContract (`0x8efd012977dd5c97e959b9e48c04ee5fcd604374`, chain 1)
- UnnamedContract (`0xbd3fa81b58ba92a82136038b25adec7066af3155`, chain 1)
- UnnamedContract (`0x6b25532e1060ce10cc3b0a99e5683b91bfde6982`, chain 43114)
- UnnamedContract (`0x8186359af5f57fbb40c6b14a588d2a59c0c29880`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 30 unique; 25 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 30
- Raw deployments: 32
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 16 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyCallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37414a8662bc1d25be3ee51fb27c2686e2490a89`; ethereum `0xd50ab2485e20103fbd0a7e8c09230bfbef6d4e90` | ⚠️ Unaudited |
| AnyswapV4Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b7a87899490ece95443e979ca9485cbe7e71522`; ethereum `0x765277eebeca2e31912c9946eae1021199b39c61` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fb9a33956351cf4fa040f65a13b835a3c8764e3` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0615dbba33fe61a31c7ed131bda6655ed76748b1` | ⚠️ Unaudited |
| AnyswapV6Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8da9dcf11b50b03fd5284f164ef5cdef910705` | ⚠️ Unaudited |
| MultichainToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ef703f5594d2573eb71aaf55bc0cb548492df4` | ⚠️ Unaudited |
| MultiDao | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1722800c0f1bfdf916ef948ef7790a861e90d558` | ⚠️ Unaudited |
| Reward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44529a37a43bab8af2336698e31f2e4585ad7db6` | ⚠️ Unaudited |
| SwapTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed0472b498548b1354925d222b832b99bb2ec60` | ⚠️ Unaudited |
| ve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba4115ecb1f811061ecb5a8dc8fcdee2748ceba` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065d014e0c898ae6a35bcf1c5effa98796ab2261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389575 | `0x0a992d191deec32afe36203ad87d7d289a738f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d37f507dfc63b6232a997c8958922781c382602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca1a086c97a102d0aeb45743c99f4a7fbfd3df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fc1af4b7b031bd39af7009e0a62694a795f7b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ef596b77d0f0a961b1a2eb9659609915aab5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33486c492a1e918204a150b6a962bcb4a69a38d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42921049ccf54fa9e5e97185bbf8a07b2ccd77d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc6e050b3db999a322093c6c8144da517f04508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c24baa5469c04f18dbbbf020682f5fba9303a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7209b4941e20787d7486a694d56c573e6dfc2092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cb207b2603f3f0ddc9e90a48fd7f7fdd976b81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389577 | `0x8efd012977dd5c97e959b9e48c04ee5fcd604374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f38107a18f8599331677c14374fd3a952fb2c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389579 | `0xbd3fa81b58ba92a82136038b25adec7066af3155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc75b1860f553012a16de727b2bb2402aaf73eb03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6790811c1404758185ef06ae63315be5f833197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21f337db7a718f23e061262470af8c1fd01232d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-389582 | `0x6b25532e1060ce10cc3b0a99e5683b91bfde6982` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-389583 | `0x8186359af5f57fbb40c6b14a588d2a59c0c29880` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 19
- Live contracts: 0
- Unknown liveness contracts: 19
- Source-verified contracts: 4
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=2, source verified unclassified=2, unverified unclassified=15

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x21f337db7a718f23e061262470af8c1fd01232d1` | non_address_book | unknown | unknown | unverified | n/a | `0xf35a003cca31267c77b97102de85e5ca10c741d3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x065d014e0c898ae6a35bcf1c5effa98796ab2261` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fc1af4b7b031bd39af7009e0a62694a795f7b00` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42921049ccf54fa9e5e97185bbf8a07b2ccd77d6` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bc6e050b3db999a322093c6c8144da517f04508` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c24baa5469c04f18dbbbf020682f5fba9303a4e` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72cb207b2603f3f0ddc9e90a48fd7f7fdd976b81` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc75b1860f553012a16de727b2bb2402aaf73eb03` | non_address_book | unknown | unknown | unverified | n/a | `0x408f9410c9dabff032b1c2acdfcaaa977e0f93df` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ca1a086c97a102d0aeb45743c99f4a7fbfd3df1` | non_address_book | unknown | unknown | unverified | n/a | `0x6bf89579ff3fc3f2b57c0231e93ee78d35fbddac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30ef596b77d0f0a961b1a2eb9659609915aab5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6bf89579ff3fc3f2b57c0231e93ee78d35fbddac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33486c492a1e918204a150b6a962bcb4a69a38d8` | non_address_book | unknown | unknown | unverified | n/a | `0x6bf89579ff3fc3f2b57c0231e93ee78d35fbddac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7209b4941e20787d7486a694d56c573e6dfc2092` | non_address_book | unknown | unknown | unverified | n/a | `0x6bf89579ff3fc3f2b57c0231e93ee78d35fbddac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2f38107a18f8599331677c14374fd3a952fb2c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6bf89579ff3fc3f2b57c0231e93ee78d35fbddac` |
| ethereum | source verified unclassified | AnyCallProxy<br>`0xd50ab2485e20103fbd0a7e8c09230bfbef6d4e90` | non_address_book | unknown | unknown | verified | n/a | `0x9ad2fd279ff72f8b7c167118dd0e077050d3027d` |
| ethereum | contamination review | Reward<br>`0x44529a37a43bab8af2336698e31f2e4585ad7db6` | non_address_book | unknown | unknown | verified | n/a | `0xa80f73b93526ef992b52e3998bb103a0a8f2359d` |
| ethereum | contamination review | SwapTokens<br>`0xaed0472b498548b1354925d222b832b99bb2ec60` | non_address_book | unknown | unknown | verified | n/a | `0xa80f73b93526ef992b52e3998bb103a0a8f2359d` |
| ethereum | source verified unclassified | ve<br>`0xbba4115ecb1f811061ecb5a8dc8fcdee2748ceba` | non_address_book | unknown | unknown | verified | n/a | `0xa80f73b93526ef992b52e3998bb103a0a8f2359d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d37f507dfc63b6232a997c8958922781c382602` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ab73b6a141db9e01b9847b0d792b430999bc54` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6790811c1404758185ef06ae63315be5f833197` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ab73b6a141db9e01b9847b0d792b430999bc54` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec_audit_multichain_routerv7_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_routerv7_v1.0-signed.pdf) | BlockSec | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_audit_multichain_v1.0-signed.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/BlockSec/blocksec_audit_multichain_v1.0-signed.pdf) | BlockSec | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf) | CertiK | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/CertiK/CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf) | CertiK | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Coinspect - Security Assessment - Multichain Stellar - V230330.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Coinspect/Coinspect%20-%20Security%20Assessment%20-%20Multichain%20Stellar%20-%20V230330.pdf) | Coinspect | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Multichain Contract V6 Audit Report by Dedaub.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/DEDAUB/Multichain%20Contract%20V6%20Audit%20Report%20by%20Dedaub.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [PeckShield-Audit-Report-MultiChainV6-v1.0.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/PeckShield/PeckShield-Audit-Report-MultiChainV6-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [AnySwap CrossChain-Bridge Security Audit Report.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/AnySwap%20CrossChain-Bridge%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2020-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [AnySwap 跨链桥白盒安全审计报告.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/AnySwap%20%E8%B7%A8%E9%93%BE%E6%A1%A5%E7%99%BD%E7%9B%92%E5%AE%89%E5%85%A8%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8A.pdf) | SlowMist | Audit | 2020-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Anyswap Smart Contract Security Audit.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/Anyswap%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SlowMist Audit Report - AnySwap AnyCall App.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/SlowMist%20Audit%20Report%20-%20AnySwap%20AnyCall%20App.pdf) | SlowMist | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [智能合约审计报告DApp - Anyswap.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/SlowMist/%E6%99%BA%E8%83%BD%E5%90%88%E7%BA%A6%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8ADApp%20-%20Anyswap.pdf) | SlowMist | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [AnySwap Threshold-DSA Final Report Edited.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/TrailOfBits/AnySwap%20Threshold-DSA%20Final%20Report%20Edited.pdf) | Trail of Bits | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/TrailOfBits/Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final%20Report.pdf) | Trail of Bits | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf](https://github.com/anyswap/Anyswap-Audit/blob/master/Verichain/Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf) | Verichains | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4569] blocksec_audit_multichain_routerv7_v1.0-signed.pdf — no match: Scope explicitly limited to contracts/access and contracts/router folders. MultichainV7Router is the main contract; SushiSwapProxy and CurveAaveProxy are mentioned in findings as part of the audited codebase.
- [4570] blocksec_audit_multichain_v1.0-signed.pdf — no match: The report explicitly lists 'Multichain veMULTI Contracts' as target, with two main contracts: ve (VotingEscrow) and VEReward. The date is from the cover page.
- [4571] CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf — no match: Three files audited: USDC.move, Pool.move, Router.move. Audit date from cover page.
- [4572] CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf — no match: Extracted 19 file names from the audit scope table. The audit date is explicitly stated as 'Nov 30th, 2022' in the header and summary.
- [4573] Coinspect - Security Assessment - Multichain Stellar - V230330.pdf — no match: Scope section lists 14 source files in tokens/stellar directory with sha256 hashes. Audit date is March 2023, interpreted as end of month.
- [4574] Multichain Contract V6 Audit Report by Dedaub.pdf — no match: No reason recorded
- [4575] PeckShield-Audit-Report-MultiChainV6-v1.0.pdf — no match: No reason recorded
- [4576] AnySwap CrossChain-Bridge Security Audit Report.pdf — no match: The audit report is for the AnySwap CrossChain-Bridge project, which is a Go-based cross-chain bridge. The scope includes the entire codebase except the dcrm module. No specific smart contract names are listed; the project is referred to as 'CrossChain-Bridge'.
- [4577] AnySwap 跨链桥白盒安全审计报告.pdf — no match: The audit report is for the AnySwap CrossChain-Bridge project, which is a Go-based cross-chain bridge. The scope explicitly excludes the dcrm module. No specific smart contract names are listed; the entire codebase is the target. The audit date is the start date mentioned in the report.
- [4578] Anyswap Smart Contract Security Audit.pdf — no match: Audit report for Anyswap project. Scope includes four contracts: AnyswapToken.sol, Distribute.sol, uniswap_factory.vy, uniswap_exchange.vy. Audit date is July 20, 2020.
- [4579] SlowMist Audit Report - AnySwap AnyCall App.pdf — no match: Contracts listed in audit scope and vulnerability sections. Audit date from audit result table: 2022.09.16 - 2022.09.19, using end date.
- [4580] 智能合约审计报告DApp - Anyswap.pdf — no match: Audit report for Anyswap system. Scope includes AnyswapToken, Distribute, uniswap_factory, and uniswap_exchange contracts. Audit date found on cover page and in summary.
- [4581] AnySwap Threshold-DSA Final Report Edited.pdf — no match: The report is for a Go-based threshold signature scheme, not smart contracts. No Solidity contracts or blockchain-specific contracts are mentioned. The audit date is from the cover page: February 22, 2022.
- [4582] Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf — no match: The report covers CrossChain-Bridge (primary), CrossChain-Router (best-effort), and Anyswap MPC Node (initially in scope but excluded; findings still documented).
- [4583] Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf — no match: Only one file (router/src/lib.rs) is explicitly listed in scope. No individual contract names are extracted from the file path; the file itself is the scope item.
- [15194] PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_audit_multichain_routerv7_v1.0-signed.pdf | MultichainV7Router | unmatched — not counted | — | mentioned in scope as part of contracts/router folder | no |
| blocksec_audit_multichain_routerv7_v1.0-signed.pdf | SushiSwapProxy | unmatched — not counted | — | mentioned in findings as a contract with retrySwapinAndExec function | no |
| blocksec_audit_multichain_routerv7_v1.0-signed.pdf | CurveAaveProxy | unmatched — not counted | — | mentioned in findings as a contract with retrySwapinAndExec function | no |
| blocksec_audit_multichain_v1.0-signed.pdf | ve | unmatched — not counted | — | Listed in scope as target contract | no |
| blocksec_audit_multichain_v1.0-signed.pdf | VEReward | unmatched — not counted | — | Listed in scope as target contract | no |
| CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf | USDC | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf | Pool | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf | Router | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | address.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | bridge.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | cardanoCmd.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | verifytx.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | init.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | buildtx.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | sendtx.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | aggregate.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | instance.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | key.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | register.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | rpcClient.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | signtx.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | type.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | utils.go | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | getStubChainID | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | queryUtxos | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | scan | unmatched — not counted | — | listed in audit scope table | no |
| CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf | sendTransaction | unmatched — not counted | — | listed in audit scope table | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | bridge.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | buildtx.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | register.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | sendtx.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | signtx.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | verifytx.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | address.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | init.go | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | main.go (sendPaymentTx) | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | main.go (publicKeyToAddress) | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | main.go (addressToPublickey) | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | main.go (sendTrustLineTx) | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | main.go (buildSwapMemo) | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Security Assessment - Multichain Stellar - V230330.pdf | main.go (getStubChainID) | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Multichain Contract V6 Audit Report by Dedaub.pdf | AnyswapV4CallProxy | unmatched — not counted | — | — | no |
| Multichain Contract V6 Audit Report by Dedaub.pdf | AnyswapV6ERC20 | unmatched — not counted | — | — | no |
| Multichain Contract V6 Audit Report by Dedaub.pdf | AnyswapV6Router | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-MultiChainV6-v1.0.pdf | AnyswapV4CallProxy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-MultiChainV6-v1.0.pdf | AnyswapV6ERC20 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-MultiChainV6-v1.0.pdf | AnyswapV6Router | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-MultiChainV6-v1.0.pdf | MultiDAO | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-MultiChainV6-v1.0.pdf | MultichainToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-MultiChainV6-v1.0.pdf | SwapTokens | unmatched — not counted | — | — | no |
| AnySwap CrossChain-Bridge Security Audit Report.pdf | CrossChain-Bridge | unmatched — not counted | — | Audit version code repository | no |
| AnySwap 跨链桥白盒安全审计报告.pdf | CrossChain-Bridge | unmatched — not counted | — | listed in scope as the audited project | no |
| Anyswap Smart Contract Security Audit.pdf | AnyswapToken | unmatched — not counted | — | listed in project structure and code overview | no |
| Anyswap Smart Contract Security Audit.pdf | Distribute | unmatched — not counted | — | listed in project structure and code overview | no |
| Anyswap Smart Contract Security Audit.pdf | uniswap_factory | unmatched — not counted | — | listed in project structure and code overview | no |
| Anyswap Smart Contract Security Audit.pdf | uniswap_exchange | unmatched — not counted | — | listed in project structure and code overview | no |
| SlowMist Audit Report - AnySwap AnyCall App.pdf | ERC721Gateway_LILO | unmatched — not counted | — | listed in scope and vulnerability section | no |
| SlowMist Audit Report - AnySwap AnyCall App.pdf | ERC721Gateway_MintBurn | unmatched — not counted | — | listed in scope and vulnerability section | no |
| SlowMist Audit Report - AnySwap AnyCall App.pdf | ERC721Gateway | unmatched — not counted | — | listed in scope and vulnerability section | no |
| SlowMist Audit Report - AnySwap AnyCall App.pdf | AnyCallApp | unmatched — not counted | — | listed in scope and vulnerability section | no |
| SlowMist Audit Report - AnySwap AnyCall App.pdf | Administrable | unmatched — not counted | — | listed in scope and vulnerability section | no |
| 智能合约审计报告DApp - Anyswap.pdf | AnyswapToken | unmatched — not counted | — | listed in scope section 3.1 and project structure | no |
| 智能合约审计报告DApp - Anyswap.pdf | Distribute | unmatched — not counted | — | listed in scope section 3.1 and project structure | no |
| 智能合约审计报告DApp - Anyswap.pdf | uniswap_factory | unmatched — not counted | — | listed in scope section 3.1 and project structure | no |
| 智能合约审计报告DApp - Anyswap.pdf | uniswap_exchange | unmatched — not counted | — | listed in scope section 3.1 and project structure | no |
| Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf | CrossChain-Bridge | unmatched — not counted | — | listed in scope as primary target | no |
| Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf | CrossChain-Router | unmatched — not counted | — | listed in scope as best-effort review | no |
| Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf | Anyswap MPC Node | unmatched — not counted | — | initially considered in scope but later excluded; findings documented | no |
| Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf | router/src/lib.rs | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf | AnyswapV5ERC20 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 70 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1, medium=2
- Match method counts: n/a

Zero-match audit list:

- [4569] blocksec_audit_multichain_routerv7_v1.0-signed.pdf
- [4570] blocksec_audit_multichain_v1.0-signed.pdf
- [4571] CertiK_Public_Audit_Report_Multichain_Aptos_Router.pdf
- [4572] CertiK_Public_Audit_Report_Multichain_Cardano_Router.pdf
- [4573] Coinspect - Security Assessment - Multichain Stellar - V230330.pdf
- [4574] Multichain Contract V6 Audit Report by Dedaub.pdf
- [4575] PeckShield-Audit-Report-MultiChainV6-v1.0.pdf
- [4576] AnySwap CrossChain-Bridge Security Audit Report.pdf
- [4577] AnySwap 跨链桥白盒安全审计报告.pdf
- [4578] Anyswap Smart Contract Security Audit.pdf
- [4579] SlowMist Audit Report - AnySwap AnyCall App.pdf
- [4580] 智能合约审计报告DApp - Anyswap.pdf
- [4581] AnySwap Threshold-DSA Final Report Edited.pdf
- [4582] Anyswap-CrossChain-Bridge-TrailofBits-Audit-Final Report.pdf
- [4583] Verichains_Public_Audit_Report_Multichain_Solana_Router_v1_1.pdf
- [15194] PeckShield-Audit-Report-Travala-AnyswapV5ERC20-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
