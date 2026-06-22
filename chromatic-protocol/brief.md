# Agentic Audit Brief: Chromatic Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 0.4% over 90 days

## Project Overview

- Project: Chromatic Protocol (`chromatic-protocol`)
- Website: [https://www.chromatic.finance](https://www.chromatic.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T19:28:59.785Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum
- Contract surface: 10 unique implementations (15 raw deployments)
- DeFi Llama TVL: $3,392.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chromatic Protocol is a decentralized derivatives platform on Arbitrum One that enables users to trade perpetual futures and provide liquidity. It uses a vault-based system for settlement and liquidity provision, with dedicated LP tokens and market factory contracts to create and manage trading markets.

### Architecture

The ChromaticRouter and ChromaticLens in the Arbitrum One family serve as the user interface layer, routing trades and queries to the core Chromatic Protocol contracts. The ChromaticMarketFactory creates markets that use ChromaticVault for settlement, while ChromaticLP tokens represent liquidity positions and are tracked by the ChromaticLPRegistry.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 15 (0 live, 15 unknown).
- Excluded by liveness: 37 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/9 (66.7%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 15
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 66.7% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChromaticBPFactory | registry | arbitrum | n/a | [`0xfb913c...9cfb0e`](./contracts/arbitrum-42161/0xfb913c25e35f48a0809a0a7420e4ea77859cfb0e/) | ✅ Audited |
| ChromaticLP | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0xcab81a...525b27`](./contracts/arbitrum-42161/0xcab81a613bff3f56f6d6a14edcad87f7cb525b27/); arbitrum `0xee808d...2c7b6a`; arbitrum `0xfa334b...2423a2`; arbitrum `0xfe6e1f...dc74f7` | ✅ Audited |
| ChromaticLPRegistry | registry | arbitrum | n/a | [`0xc33732...d51a4a`](./contracts/arbitrum-42161/0xc337325525ef17b7852fd36da400d3f9eed51a4a/) | ✅ Audited |
| ChromaticRouter | adapter | arbitrum | n/a | [`0xbcc972...8e220a`](./contracts/arbitrum-42161/0xbcc97243f965ecbe31071887b5ddba1add8e220a/) | ✅ Audited |
| MarketLiquidateFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd85949...3c58f0`](./contracts/arbitrum-42161/0xd859492325d2035c73a3d317918590dc673c58f0/); arbitrum `0xe92b90...7fa6fb` | ✅ Audited |
| MarketStateFacet | unknown | arbitrum | n/a | [`0xed8f31...a418c1`](./contracts/arbitrum-42161/0xed8f31f4ba61beaf9bdc0ed32387de5901a418c1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLBTokenDeployerLib | token | arbitrum | n/a | [`0xf0ba5f...ea794d`](./contracts/arbitrum-42161/0xf0ba5f54af8d3dfd379ce97e6597d63deeea794d/) | ⚠️ Unaudited |
| MarketRemoveLiquidityFacet | unknown | arbitrum | n/a | [`0xcd92fa...eb90c8`](./contracts/arbitrum-42161/0xcd92faf0f5bcc980f2edeee2c74352b8c9eb90c8/) | ⚠️ Unaudited |
| MarketTradeOpenPositionFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbb7ae7...ca342b`](./contracts/arbitrum-42161/0xbb7ae79a07abedd635b6b4143ef494d8a0ca342b/); arbitrum `0xff9ab6...0bac0e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0xed9799...7f838d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chromatic_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Chromatic_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2024-02 | stale | Direct | contract_name | 10 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xf0ba5f...ea794d`](./contracts/arbitrum-42161/0xf0ba5f54af8d3dfd379ce97e6597d63deeea794d/) | CLBTokenDeployerLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcd92fa...eb90c8`](./contracts/arbitrum-42161/0xcd92faf0f5bcc980f2edeee2c74352b8c9eb90c8/) | MarketRemoveLiquidityFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbb7ae7...ca342b`](./contracts/arbitrum-42161/0xbb7ae79a07abedd635b6b4143ef494d8a0ca342b/) | MarketTradeOpenPositionFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=39

Fork inheritance lineage and inherited audits are included when available.
