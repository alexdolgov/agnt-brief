# Agentic Audit Brief: Alpaca Finance

⚠️ Lifecycle status: DECLINING - TVL changed 3.5% over 90 days

## Project Overview

- Project: Alpaca Finance (`alpaca-finance`)
- Lifecycle: declining (Tier 0, 97.5% below peak)
- Generated: 2026-06-17T07:00:35.833Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 17 unique implementations (30 raw deployments)
- DeFi Llama TVL: $41,658,869.00
- On-chain TVL (included contracts): $11,376,682.47
- TVL by chain: Bsc $11,376,682.47

## Project Description

Alpaca Finance is a multi-chain DeFi protocol with lending and leveraged yield farming as core products, including Alpaca Finance 2.0 lending and deployments beyond BSC such as Fantom. Users can lend assets, borrow to amplify yield-farming strategies, and interact with associated vaults, workers, adapters, and stablecoin-related modules. Alpaca also has a smaller derivatives/perpetuals product, but it should be treated as secondary to the lending and leveraged yield-farming surface rather than as one of only two primary product families.

### Architecture

Both families share infrastructure such as oracles (e.g., ChainLinkPriceOracle, BandPriceOracle), access control (AccessControlConfig), and the ALPACA token. The perpetual futures exchange uses its own stablecoin (AlpacaStablecoin) and debt engine, while leveraged farming relies on vaults, debt tokens, and DEX-specific workers.

## Contract Surface Quality

- Indexed contracts: 550; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 245 inactive, 275 singleton, 0 uninitialized.
- Deployment units: 11/115 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/7.

## Audit Coverage Summary

- Verified implementations audited: 6/17 (35.3%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 30
- Audits discovered: 19
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $11,226,636.59
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 19 stale, 0 unknown
- Tier 1 coverage: 11.8% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $11,226,636.59 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 6 | 35.3% | 2021-05 |
| PeckShield | Tier 2 | 4 | 23.5% | 2022-03 |
| SlowMist | Tier 1 | 2 | 11.8% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlpacaToken | token | bsc | n/a | [`0x8f0528...091d2f`](./contracts/bsc-56/0x8f0528ce5ef7b51152a59745befdd91d97091d2f/) | ✅ Audited |
| Vault | core_logic | bsc | unit-18440 (2 proxies) | 2 deployments: bsc [`0x3282d2...8cd3cd`](./contracts/bsc-56/0x3282d2a151ca00bfe7ed17aa16e42880248cd3cd/); bsc `0xf1be8e...16d421` | ✅ Audited |
| FairLaunch | unknown | bsc | n/a | [`0xa625ab...489a8f`](./contracts/bsc-56/0xa625ab01b08ce023b2a342dbb12a16f2c8489a8f/) | ✅ Audited |
| StronkAlpaca | unknown | bsc | n/a | [`0x6f695b...6ce7a7`](./contracts/bsc-56/0x6f695bd5ffd25149176629f8491a5099426ce7a7/) | ✅ Audited |
| Timelock | governance | bsc | n/a | [`0x2d5408...1d0a59`](./contracts/bsc-56/0x2d5408f2287bf9f9b05404794459a846651d0a59/) | ✅ Audited |
| WorkerConfig | governance | bsc | n/a | [`0x3175ec...884a11`](./contracts/bsc-56/0x3175ec52c36fff63dce00e8a50e6066d38884a11/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultAip25 | core_logic | bsc | unit-18425 (2 proxies) | 2 deployments: bsc [`0x08fc9b...1c24e7`](./contracts/bsc-56/0x08fc9ba2cac74742177e0afc3dc8aed6961c24e7/); bsc `0xbff4a3...723afe` | ⚠️ Unaudited |
| AdminFacet | proxy | bsc | unit-18432 | [`0x18a15b...0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | unit-18430 (2 proxies) | 2 deployments: bsc [`0x158da8...951e59`](./contracts/bsc-56/0x158da805682bdc8ee32d52833ad41e74bb951e59/); bsc `0xd7d069...fc0063` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | unit-18476 | [`0x7c9e73...87592f`](./contracts/bsc-56/0x7c9e73d4c71dae564d41f78d56439bb4ba87592f/) | ⚠️ Unaudited |
| DeltaNeutralPancakeMCV2Worker02 | unknown | bsc | unit-18420 (8 proxies) | 8 deployments: bsc [`0x07767d...62f3ae`](./contracts/bsc-56/0x07767daf4e84bdaabf3a72c80cec8c8eb962f3ae/); bsc `0x0d9faf...32efd9`; bsc `0x42da67...fb2b64`; bsc `0x4b70c4...7a4162`; bsc `0x54d321...ef4db5`; bsc `0x83a5d5...e52723`; bsc `0x8ef56e...2cb067`; bsc `0xfa4b1e...4fa832` | ⚠️ Unaudited |
| RevenueTreasury02 | operational_periphery | bsc | unit-18422 | [`0x08b5a9...5afc7e`](./contracts/bsc-56/0x08b5a95cb94f926a8b620e87ee92e675b35afc7e/) | ⚠️ Unaudited |
| TerminateAV02 | unknown | bsc | unit-18485 (4 proxies) | 4 deployments: bsc [`0x8e5cfa...af6f16`](./contracts/bsc-56/0x8e5cfa7c06f187b56537f7f0cabfb55611af6f16/); bsc `0x9fe961...a99aa1`; bsc `0xc57876...92cc94`; bsc `0xe9bd0b...b711ab` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-18474 | [`0x6fee87...1ddc3c`](./contracts/bsc-56/0x6fee87f744fc612948001b09b2808c87b91ddc3c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | unit-18477 | [`0x800933...1e26d7`](./contracts/bsc-56/0x800933d685e7dc753758ceb77c8bd34abf1e26d7/) | ⚠️ Unaudited |
| VaultAip42 | core_logic | bsc | n/a | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | ⚠️ Unaudited |
| xALPACAMigrator | periphery | bsc | unit-18500 | [`0xb7d85a...ad24a9`](./contracts/bsc-56/0xb7d85ab25b9d478961face285fa3d8aaecad24a9/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/add-collateral-routine/PeckShield-Audit-Report-Alpaca-addCollateral-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 3 | high |
| [Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/cakemaxi/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |
| [alpaca_v1.0-signed.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/delta-neutral/alpaca_v1.0-signed.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 0 | n/a |
| [Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 0 | n/a |
| [Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/grazing-range/Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 0 | n/a |
| [Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/mdex-integration/Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 0 | n/a |
| [Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/optimized-worker/Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/oracle/Smart%20Contract%20Security%20Audit%20Report%20-%20Alpaca%20Finance%20Oracle.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/partial-close/PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [CertiK Security Assessment for Alpaca Finance 1.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/CertiK%20Security%20Assessment%20for%20Alpaca%20Finance%201.pdf) | CertiK | Audit | 2021-05 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-Alpaca-v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/protocol/PeckShield-Audit-Report-Alpaca-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 4 | high |
| [Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf](https://github.com/alpaca-finance/bsc-alpaca-contract/blob/main/audits/spooky-minifl/Inspex_AUDIT2022008_Alpaca%20Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 0 | n/a |
| [SlowMist_Audit_Report_-_AlpacaStablecoin.pdf](https://github.com/alpaca-finance/alpaca-stablecoin/blob/main/audits/SlowMist_Audit_Report_-_AlpacaStablecoin.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf](https://github.com/alpaca-finance/alpies-contract/blob/main/audits/PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x18a15b...0fdc4e`](./contracts/bsc-56/0x18a15bf2aa1e514dc660cc4b08d05f9f6f0fdc4e/) | AdminFacet | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fd571...e67c26`](./contracts/bsc-56/0x5fd571bea8d104a28bfe44874f2aaf69f8e67c26/) | VaultAip42 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=428

Zero-match audit list:

- [5762] Inspex_AUDIT2021002_Alpaca_CakeMaxi_FullReport_v3.0.pdf
- [5763] PeckShield-Audit-Report-Alpaca-CakeMaxi-v1.0.pdf
- [5764] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_3.pdf
- [5765] PeckShield-Audit-Report-AlpacaDeltaNeutral-v1.0.pdf
- [5766] alpaca_v1.0-signed.pdf
- [5767] Alpaca_GrazingRange_SmartContractReview_fcd2f3c_Report.pdf
- [5768] Smart_Contract_Security_Audit_Report_Alpaca_Finance_Phase_1.pdf
- [5769] Inspex_AUDIT2021025_AlpacaFinance_MDEXIntegration_FullReport_v1.0.pdf
- [5770] Inspex_AUDIT2021009_Alpaca_OptimizedWorker_FinalReport_v1.0.pdf
- [5771] Smart Contract Security Audit Report - Alpaca Finance Oracle.pdf
- [5772] PeckShield-Audit-Report-Alpaca-PartialCloseStrategies-v1.0.pdf
- [5775] Inspex_AUDIT2022008_Alpaca Finance_SpookySwapIntegrationFantomExpansion_FullReport_v1.0.pdf
- [5776] Inspex_AUDIT2021035_AlpacaFinance_AlpacaStablecoin_FullReport_v1.0.pdf
- [5777] PeckShield-Audit-Report-Alpaca-USD-v1.0.pdf
- [5779] PeckShield-Audit-Report-Alpaca-Alpies-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
