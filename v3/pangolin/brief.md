# Agentic Audit Brief: Pangolin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 6 audit(s)
- Eligible audit results: 13 (6 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Pangolin (`pangolin`)
- Website: [https://pangolin.exchange](https://pangolin.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, flare, hedera, monad, songbird
- Contract surface: 60 unique implementations (60 raw deployments)
- Coverage basis: 10/16 confirmed own live verified implementations (62.5%); conservative 62.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,337,252.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pangolin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across avalanche, flare, hedera, monad, songbird. Structural roles: 4 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (3)
- Contract kinds: contract (7)
- Detected standards: ownable (2), accesscontrol (1), erc165 (1), erc20 (1), pausable (1)
- Frameworks: openzeppelin (6), boringcrypto (1), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 58 contracts are derived from known codebases. 58 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12245b...92ff40`, chain 14)
- UnnamedContract (`0x290593...c46cf3`, chain 14)
- UnnamedContract (`0x5d29ad...25501c`, chain 14)
- UnnamedContract (`0xa981cb...7e2308`, chain 14)
- UnnamedContract (`0xb5010d...501c73`, chain 14)
- UnnamedContract (`0xbfe137...43d79a`, chain 14)
- UnnamedContract (`0xe19a6a...f8cb60`, chain 14)
- UnnamedContract (`0xe68839...685d51`, chain 14)
- UnnamedContract (`0x3b8377...c26cf6`, chain 19)
- UnnamedContract (`0x6591cf...a6fb0f`, chain 19)
- UnnamedContract (`0x7428a0...fae777`, chain 19)
- UnnamedContract (`0x764891...0642b7`, chain 19)
- UnnamedContract (`0x784076...052ca6`, chain 19)
- UnnamedContract (`0xa2e6ef...cbb1aa`, chain 19)
- UnnamedContract (`0xb29877...aa5ff4`, chain 19)
- UnnamedContract (`0xb66e62...f329fb`, chain 19)
- UnnamedContract (`0xe18dfc...06dc94`, chain 19)
- UnnamedContract (`0x03bab1...19b87f`, chain 143)
- UnnamedContract (`0x04a003...a5b137`, chain 143)
- UnnamedContract (`0x0660bb...da91aa`, chain 143)
- UnnamedContract (`0x2a7f28...888ebe`, chain 143)
- UnnamedContract (`0x598484...8466d2`, chain 143)
- UnnamedContract (`0x7f877e...eb0bcd`, chain 143)
- UnnamedContract (`0xc2fc48...980f18`, chain 143)
- UnnamedContract (`0xe73e3e...04025f`, chain 143)
- UnnamedContract (`0x000000...1a8837`, chain 295)
- UnnamedContract (`0x000000...1a88b2`, chain 295)
- UnnamedContract (`0x000000...1a88b5`, chain 295)
- UnnamedContract (`0x000000...1a88bc`, chain 295)
- UnnamedContract (`0x000000...1a88c9`, chain 295)
- UnnamedContract (`0x000000...1a88db`, chain 295)
- UnnamedContract (`0x000000...1a8957`, chain 295)
- UnnamedContract (`0x1128f2...8b8256`, chain 43114)
- UnnamedContract (`0x27ecb0...e41ab8`, chain 43114)
- UnnamedContract (`0x5485a0...22547f`, chain 43114)
- UnnamedContract (`0x5dfe6d...44cac1`, chain 43114)
- UnnamedContract (`0x7528b8...a7e315`, chain 43114)
- UnnamedContract (`0x7d115c...0694a2`, chain 43114)
- UnnamedContract (`0xa86522...983822`, chain 43114)
- UnnamedContract (`0xae9d04...664d9f`, chain 43114)
- UnnamedContract (`0xb87a8a...d505aa`, chain 43114)
- UnnamedContract (`0xf40937...f06a7f`, chain 43114)
- Airdrop (`0x0c58c2...3902d9`, chain 43114)
- CommunityTreasury (`0x650f58...a72358`, chain 43114)
- FeeCollector (`0xac61fd...6f43a7`, chain 43114)
- GovernorAlpha (`0xb0ff2b...f43ee1`, chain 43114)
- LiquidityPoolManagerV2 (`0x912b5d...397994`, chain 43114)
- MiniChefV2 (`0x1f806f...98e928`, chain 43114)
- MultiSigWalletWithDailyLimit (`0x6cdd4b...379185`, chain 43114)
- MultiSigWalletWithDailyLimit (`0x8d2e50...bf51f2`, chain 43114)
- MultiSigWalletWithDailyLimit (`0xa4cb6e...5cc1e6`, chain 43114)
- PangolinFactory (`0xefa94d...e9fd88`, chain 43114)
- PangolinRouter (`0xe54ca8...c89106`, chain 43114)
- PangolinV3Factory (`0x44805f...5b0e0e`, chain 143)
- Png (`0x60781c...aca982`, chain 43114)
- StakingRewards (`0x88afda...a0135b`, chain 43114)
- Timelock (`0xeb5c91...4b1ff8`, chain 43114)
- TreasuryVester (`0x6747ac...12acee`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 58/62 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/16 (62.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 58 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 58 of 60 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/16
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 10 | 62.5% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391103 | `0x0c58c2...3902d9` | ✅ Audited |
| CommunityTreasury | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391111 | `0x650f58...a72358` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391122 | `0xac61fd...6f43a7` | ✅ Audited |
| GovernorAlpha | governance | project_anchor | own_supporting | 0 | avalanche | unit-391124 | `0xb0ff2b...f43ee1` | ✅ Audited |
| LiquidityPoolManagerV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391119 | `0x912b5d...397994` | ✅ Audited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391105 | `0x1f806f...98e928` | ✅ Audited |
| Png | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391110 | `0x60781c...aca982` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391117 | `0x88afda...a0135b` | ✅ Audited |
| Timelock | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391128 | `0xeb5c91...4b1ff8` | ✅ Audited |
| TreasuryVester | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391112 | `0x6747ac...12acee` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391113 | `0x6cdd4b...379185` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391118 | `0x8d2e50...bf51f2` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391120 | `0xa4cb6e...5cc1e6` | ⚠️ Unaudited |
| PangolinFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-391129 | `0xefa94d...e9fd88` | ⚠️ Unaudited |
| PangolinRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-391127 | `0xe54ca8...c89106` | ⚠️ Unaudited |
| PangolinV3Factory | unknown | project_anchor | own_supporting | 0 | monad | unit-391081 | `0x44805f...5b0e0e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391069 | `0x12245b...92ff40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391070 | `0x290593...c46cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391071 | `0x5d29ad...25501c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391072 | `0xa981cb...7e2308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391073 | `0xb5010d...501c73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391074 | `0xbfe137...43d79a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391075 | `0xe19a6a...f8cb60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391076 | `0xe68839...685d51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391086 | `0x3b8377...c26cf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391087 | `0x6591cf...a6fb0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391088 | `0x7428a0...fae777` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391089 | `0x764891...0642b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391090 | `0x784076...052ca6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391091 | `0xa2e6ef...cbb1aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391092 | `0xb29877...aa5ff4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391093 | `0xb66e62...f329fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391094 | `0xe18dfc...06dc94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391077 | `0x03bab1...19b87f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391078 | `0x04a003...a5b137` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391079 | `0x0660bb...da91aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391080 | `0x2a7f28...888ebe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391082 | `0x598484...8466d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391083 | `0x7f877e...eb0bcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391084 | `0xc2fc48...980f18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391085 | `0xe73e3e...04025f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391095 | `0x000000...1a8837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391096 | `0x000000...1a88b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391097 | `0x000000...1a88b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391098 | `0x000000...1a88bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391099 | `0x000000...1a88c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391100 | `0x000000...1a88db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391101 | `0x000000...1a8957` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-391102 | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391104 | `0x1128f2...8b8256` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391106 | `0x27ecb0...e41ab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391108 | `0x5485a0...22547f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391109 | `0x5dfe6d...44cac1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-391114 | `0x749115...d10a1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391115 | `0x7528b8...a7e315` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391116 | `0x7d115c...0694a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391121 | `0xa86522...983822` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391123 | `0xae9d04...664d9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391125 | `0xb87a8a...d505aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391130 | `0xf40937...f06a7f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/pangolin](https://paladinsec.co/projects/pangolin) | Paladin | Audit | 2025-04 | aging | Direct | address | matched | 2 | 0 | 0 | 1 | high |
| [Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) | Omniscia | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | matched | 3 | 0 | 0 | 1 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-10 | stale | Direct | n/a | matched | 9 | 0 | 0 | 5 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2689] paladinsec.co/projects/pangolin — matched: Extracted from the 'Contracts Audited' section of the Pangolin audit report page.
- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf — no match: Scope section explicitly lists PangolinBridgeMigrationRouter.sol and BridgeToken.sol as in-scope. Audit date is the end date of engagement: August 12th, 2021.
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Only one contract in scope: AllocationVester.sol. Audit date is the end date of engagement (March 30th, 2022).
- [2692] Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf — no match: Contracts in scope: PangolinLibrary8.sol and PangolinRouterSupportingFees.sol. Audit date found in header: '08 01 2022'.
- [2693] Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2695] Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2696] Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Only one contract in scope: MiniChefV2Zapper.sol. Audit date is the end date of engagement (February 9th, 2022).
- [2698] Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Only one contract in scope: RewarderViaMultiplier.sol. Audit date is the end date of the engagement (January 11th, 2022).
- [2699] Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf — no match: Audit report for Pangolin Staking Positions. Main contract is PangoChef.sol, with PangoChefFunding.sol referenced in a finding. Date from delivery date.
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf — no match: The audit report covers the PangoChef contract and the SafeExternalCalls contract (which is defined in the same file). The audit date is explicitly stated as Jan 25, 2023.
- [15165] Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/pangolin | PangolinV3Factory | own contract | 0x1128f2… (selected) `0x1128f2...8b8256` — deployed 2025-04-04 17:44:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/pangolin | PangolinV3Pool | unmatched — not counted | — | listed as deployed by PangolinV3Factory | no |
| paladinsec.co/projects/pangolin | NonfungiblePositionManager | own contract | 0xf40937… (selected) `0xf40937...f06a7f` — deployed 2025-04-04 17:45:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf | PangolinBridgeMigrationRouter | unmatched — not counted | — | listed in scope section | no |
| Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf | BridgeToken | unmatched — not counted | — | listed in scope section | no |
| Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AllocationVester | unmatched — not counted | — | Listed in scope section: 'AllocationVester.sol' | no |
| Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf | PangolinLibrary8 | unmatched — not counted | — | listed in scope | no |
| Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf | PangolinRouterSupportingFees | unmatched — not counted | — | listed in scope | no |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Airdrop.sol | own contract | Airdrop (selected) `0x0c58c2...3902d9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PNG.sol | own contract | Png (selected) `0x60781c...aca982` — deployed 2021-02-08 23:15:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RevenueDistributor.sol | unmatched — not counted | — | — | no |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TreasuryVester.sol | own contract | TreasuryVester (selected) `0x6747ac...12acee` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | FeeCollector | own contract | FeeCollector (selected) `0xac61fd...6f43a7` — deployed 2022-04-28 22:56:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | FeeCollector | own contract | FeeCollector (selected) `0xac61fd...6f43a7` — deployed 2022-04-28 22:56:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MiniChefV2Zapper | unmatched — not counted | — | listed in scope section | no |
| Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RewarderViaMultiplier | unmatched — not counted | — | listed in scope section 1.4 | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Airdrop | own contract | Airdrop (selected) `0x0c58c2...3902d9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | CommunityTreasury | own contract | CommunityTreasury (selected) `0x650f58...a72358` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | GovernorAlpha | own contract | GovernorAlpha (selected) `0xb0ff2b...f43ee1` — deployed 2021-04-03 00:59:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | LiquidityPoolManager | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | LiquidityPoolManagerV2 | own contract | LiquidityPoolManagerV2 (selected) `0x912b5d...397994` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MiniChefV2 | own contract | MiniChefV2 (selected) `0x1f806f...98e928` — deployed 2021-11-15 20:38:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PNG | own contract | Png (selected) `0x60781c...aca982` — deployed 2021-02-08 23:15:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PangolinVoteCalculator | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RewarderComplex | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RewarderSimple | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | StakingRewards | own contract | StakingRewards (selected) `0x88afda...a0135b` — deployed 2021-12-02 04:24:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Timelock | own contract | Timelock (selected) `0xeb5c91...4b1ff8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TreasuryVester | own contract | TreasuryVester (selected) `0x6747ac...12acee` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TreasuryVesterProxy | unmatched — not counted | — | — | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf | PangoChef | unmatched — not counted | — | listed in scope and findings | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf | PangoChefFunding | unmatched — not counted | — | mentioned in finding WP-G5 | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf | PangoChef | unmatched — not counted | — | listed in scope and findings | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf | SafeExternalCalls | unmatched — not counted | — | mentioned in finding WP-G2 as a contract within the codebase | no |
| Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf | FeeCollector | own contract | FeeCollector (selected) `0xac61fd...6f43a7` — deployed 2022-04-28 22:56:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xefa94d...e9fd88` | PangolinFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe54ca8...c89106` | PangolinRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: address=2, unique_name=15

Zero-match audit list:

- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2692] Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2698] Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf

Fork inheritance lineage and inherited audits are included when available.
