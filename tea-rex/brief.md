# Agentic Audit Brief: Tea-REX

⚠️ Lifecycle status: SUNSETTING - TVL dropped 95.1% over 90 days

## Project Overview

- Project: Tea-REX (`tea-rex`)
- Website: [https://alpha.trex.trade](https://alpha.trex.trade)
- Lifecycle: sunsetting (Tier 1, sunsetting)
- Generated: 2026-06-19T21:51:08.718Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: sei
- Contract surface: 9 unique implementations (16 raw deployments)
- DeFi Llama TVL: $9,530.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tea-REX is a decentralized derivatives protocol on Sei that enables users to trade perpetual contracts and provide liquidity through pools. It uses a modular architecture with upgradeable contracts for trading, routing, and liquidity management.

### Architecture

The protocol uses a single product family where Pool contracts hold liquidity and are managed via UpgradeableBeacon proxies. Router and TradingCore contracts handle trade execution and routing, while TeaVaultV3Pair and StakeVault manage vault strategies and staking. MarketNFT likely represents positions or access tokens.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 15 inactive, 65 singleton, 0 uninitialized.
- Deployment units: 2/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/9 (55.6%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 16
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [sunsetting]. ASD of n/a represents exposure in a protocol with sunsetting activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 55.6% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SEINativeOracle | operational_periphery | sei | n/a | [`0xde3693...fe062f`](./contracts/sei-1329/0xde3693d33e594404aa1df704b6ad9dbbf7fe062f/) | ✅ Audited |
| TradingCore | unknown | sei | n/a | [`0x7917fe...529491`](./contracts/sei-1329/0x7917fe88e1ba136135d951b91f0c27c1fa529491/) | ✅ Audited |
| TradingCore | unknown | sei | unit-40417 | [`0x99c290...21823e`](./contracts/sei-1329/0x99c2901d2883f8d295a989544f118e31ec21823e/) | ✅ Audited |
| TradingCore | unknown | sei | unit-40425 | [`0xe33793...c27b9d`](./contracts/sei-1329/0xe33793230ad4587ec74306d52d28e80e36c27b9d/) | ✅ Audited |
| VariableInterestRateModel | operational_periphery | sei | n/a | 3 deployments: sei [`0x483160...61c2c2`](./contracts/sei-1329/0x4831603ee903070e65927d78cebc1d82f861c2c2/); sei `0x72cabd...faf3a7`; sei `0x8aa64e...ceea4f` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SwapRelayer | unknown | sei | n/a | 6 deployments: sei [`0x031edb...e5d5ea`](./contracts/sei-1329/0x031edb936896978d1fc6f1b3ea9cfc9682e5d5ea/); sei `0x25f6f1...d1948a`; sei `0x2e39ef...3e074b`; sei `0x5e0659...1401c7`; sei `0x650895...156b6d`; sei `0xc525cf...dcc3d0` | ⚠️ Unaudited |
| TeaREX | unknown | sei | n/a | [`0xedf773...6ad859`](./contracts/sei-1329/0xedf7732991b3de8f46fb97dcd4c5cdb28e6ad859/) | ⚠️ Unaudited |
| TeaVaultV2Deployer | core_logic | sei | n/a | [`0xcaf51f...2326fa`](./contracts/sei-1329/0xcaf51fe06c62cf4bd855afba6a579c24d02326fa/) | ⚠️ Unaudited |
| VaultUtils | core_logic | sei | n/a | [`0x525045...7b5ee9`](./contracts/sei-1329/0x52504590d7f82ce82eab61f7d84353bc757b5ee9/) | ⚠️ Unaudited |

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
| [audit.pdf](https://github.com/TeahouseFinance/Tea-REX/blob/master/audit.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x031edb...e5d5ea`](./contracts/sei-1329/0x031edb936896978d1fc6f1b3ea9cfc9682e5d5ea/) | SwapRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xedf773...6ad859`](./contracts/sei-1329/0xedf7732991b3de8f46fb97dcd4c5cdb28e6ad859/) | TeaREX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xcaf51f...2326fa`](./contracts/sei-1329/0xcaf51fe06c62cf4bd855afba6a579c24d02326fa/) | TeaVaultV2Deployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x525045...7b5ee9`](./contracts/sei-1329/0x52504590d7f82ce82eab61f7d84353bc757b5ee9/) | VaultUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=70

Fork inheritance lineage and inherited audits are included when available.
