# Agentic Audit Brief: MonoX

⚠️ Lifecycle status: DEAD - TVL dropped 0.6% over 90 days

## Project Overview

- Project: MonoX (`monox`)
- Website: [https://monox.finance/](https://monox.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T22:38:40.321Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum, polygon
- Contract surface: 9 unique implementations (11 raw deployments)
- DeFi Llama TVL: $10,939.71
- On-chain TVL (included contracts): $7,870.69
- TVL by chain: Ethereum $7,870.69

## Project Description

MonoX is a decentralized exchange protocol that uses single-sided liquidity pools, allowing users to provide liquidity and trade without needing a counterparty token pair. It aims to reduce capital requirements and slippage by pooling assets into a shared virtual pair.

### Architecture

The MonoXPool contract serves as the core liquidity engine, while Monoswap handles token swaps and MonoswapStaking manages staking rewards. TransparentUpgradeableProxy is used to upgrade these core contracts, and MagicInternetMoneyV1 and Vyper_contract appear as supporting tokens or integrations.

## Contract Surface Quality

- Indexed contracts: 322; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 293 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 3/189.

## Audit Coverage Summary

- Verified implementations audited: 1/9 (11.1%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 11
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 11.1% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MonoToken | token | polygon | n/a | 2 deployments: ethereum `0x2920f7...f8fa5d`; polygon [`0x053230...a0db83`](./contracts/polygon-137/0x05323017c00874198cf1b0832922074beea0db83/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DegenBox | unknown | ethereum | n/a | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x145668...08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | ⚠️ Unaudited |
| VCASH | unknown | polygon | n/a | [`0x7621ee...04d6e9`](./contracts/polygon-137/0x7621ee0ce0f686b88dd70551b05f90dd3c04d6e9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48ddd2...2dbce3`](./contracts/ethereum-1/0x48ddd27a4d54cd3e8c34f34f7e66e998442dbce3/); ethereum `0x92e187...2357d5` | ⚠️ Unaudited |

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
| [MonoX_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf (also discovered via alternate URL)](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/MonoX_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-05 | stale | Direct | contract_name|n/a | 2 | high |
| [DL audit link](https://drive.google.com/file/d/1nFS62QDifV4B8Mjo9Pj_rJ4fUujeVfq_/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1WtlRAAfBF4HyQcUHKSJtT6MD7-mPN5Vz/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1V2GRFZYIXPY3omYndR0N_NgnDM9LM_3B/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x145668...08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | USDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7621ee...04d6e9`](./contracts/polygon-137/0x7621ee0ce0f686b88dd70551b05f90dd3c04d6e9/) | VCASH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=27

Zero-match audit list:

- [13515] DL audit link
- [13516] DL audit link
- [13517] DL audit link

Fork inheritance lineage and inherited audits are included when available.
