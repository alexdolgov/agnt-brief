# Agentic Audit Brief: cap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 10 (4 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: cap (`cap`)
- Website: [https://cap.app/](https://cap.app/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 141 unique implementations (143 raw deployments)
- Coverage basis: 2/8 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $305,971,773.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for cap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 4 infra, 4 supporting, 3 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: infra (4), supporting (4), core (3)
- Contract kinds: contract (9), unclassified (2)
- Detected standards: erc1967proxy (4), accesscontrol (1), chainlinkaggregator (1), erc165 (1)
- Frameworks: openzeppelin (7), chainlink (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CapSymbioticVaultFactory (`0x0b9230...bbae2e`, chain 1)
- CapTokenAdapter (`0xacc9ce...3d2faf`, chain 1)
- ERC1967Proxy (`0x0036c7...4bef0b`, chain 1)
- ERC1967Proxy (`0x08a728...2953ea`, chain 1)
- ERC1967Proxy (`0x09a397...a91225`, chain 1)
- TimelockController (`0xd82360...a329ab`, chain 1)
- Token (`0x99991c...9b9999`, chain 1)
- Yearn V3 Vault (`0x3ed6aa...cd0072`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (8 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/8 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 120 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 15 standard proxy/library)
- Proxy deployments represented within implementation groups: 65
- Confirmed-live implementations: 8 of 141 unique; 133 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/140
- Verified + Unaudited implementations: 138
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 141
- Raw deployments: 143
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 12.5% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Octane | Tier 2 | 1 | 0.7% | 2026-03 |
| Recon | Tier 2 | 1 | 0.7% | 2025-07 |
| Sherlock | Tier 1 | 1 | 0.7% | 2025-09 |
| Spearbit | Tier 1 | 1 | 0.7% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CapTokenAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400507 | `0xacc9ce...3d2faf` | ✅ Audited |
| Token | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400522 | `0x99991c...9b9999` | ✅ Audited |

### ⚠️ Verified + Unaudited (138)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControl | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400517 | `0x773112...d2c683` | ⚠️ Unaudited |
| CapNotify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb76bc8...261611` | ⚠️ Unaudited |
| CapSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307c0c...308238` | ⚠️ Unaudited |
| CapSymbioticVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400499 | `0x0b9230...bbae2e` | ⚠️ Unaudited |
| CapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031b51...c99b24` | ⚠️ Unaudited |
| CapToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400523 | `0xcccc62...a3cccc` | ⚠️ Unaudited |
| CCAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498722...85ebbb` | ⚠️ Unaudited |
| CoverageLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1942a...48e621` | ⚠️ Unaudited |
| DadFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c110...db072d` | ⚠️ Unaudited |
| DaiFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07674...69ebbb` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886861...edfd6d` | ⚠️ Unaudited |
| DebtToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400524 | `0xfa8c6d...c04ff9` | ⚠️ Unaudited |
| Delegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x386c93...4958ab` | ⚠️ Unaudited |
| Delegation | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400521 | `0xf3e3ea...4d693f` | ⚠️ Unaudited |
| DSChief | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2a84...057152` | ⚠️ Unaudited |
| DSChiefFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7ca0...8f1483` | ⚠️ Unaudited |
| DSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x068083...cc5523` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400525 | `0x0036c7...4bef0b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x019b65...2e52cd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x04b577...01163c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400519 | `0x08a728...2953ea` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-400520 | `0x09a397...a91225` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f6067...c49832` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1036c2...835772` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18f8b2...9c355d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x32fd97...d13170` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x434558...ce7d8c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x44f7e6...095962` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x69a22f...4b2bbf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xbde7c8...c5036b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsEurspkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4b2c40...7a942b` | ⚠️ Unaudited |
| EthereumMergedAdapterWithRoundsSpkccNavV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14449c...cb97f9` | ⚠️ Unaudited |
| EthereumMultiFeedAdapterWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a2b8...286021` | ⚠️ Unaudited |
| EthereumPriceFeedAcredFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6bcbb...65d51c` | ⚠️ Unaudited |
| EthereumPriceFeedAmcashplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x767b89...241db9` | ⚠️ Unaudited |
| EthereumPriceFeedAvltFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x105eac...022021` | ⚠️ Unaudited |
| EthereumPriceFeedAzndFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2c69...8818de` | ⚠️ Unaudited |
| EthereumPriceFeedBeraethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1c87...14170d` | ⚠️ Unaudited |
| EthereumPriceFeedBeraStoneFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f67fd...410add` | ⚠️ Unaudited |
| EthereumPriceFeedBfbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9e11c...98a86e` | ⚠️ Unaudited |
| EthereumPriceFeedBtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24edd6...7a9187` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d4f31...92654e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f4e63...baf52e` | ⚠️ Unaudited |
| EthereumPriceFeedBuidlIEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf2db7b...c17bf3` | ⚠️ Unaudited |
| EthereumPriceFeedCbbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe13e2b...0ae049` | ⚠️ Unaudited |
| EthereumPriceFeedCusdFundamentalWithoutRoundsV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400513 | 2 deployments: ethereum `0x2d7a68...b92bcb`; ethereum `0x9a5a3c...24434a` | ⚠️ Unaudited |
| EthereumPriceFeedDeusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4c8996...8282fd` | ⚠️ Unaudited |
| EthereumPriceFeedDlfPublicationTsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a855...039ba5` | ⚠️ Unaudited |
| EthereumPriceFeedEgethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d295...791346` | ⚠️ Unaudited |
| EthereumPriceFeedEigenWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2ee5ce...8cb86d` | ⚠️ Unaudited |
| EthereumPriceFeedEthfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f9a1...eb577e` | ⚠️ Unaudited |
| EthereumPriceFeedEthWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ed6a...23e4db` | ⚠️ Unaudited |
| EthereumPriceFeedEthxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f71d...bd74f4` | ⚠️ Unaudited |
| EthereumPriceFeedFxusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4bad96...ea7a57` | ⚠️ Unaudited |
| EthereumPriceFeedHlscopeFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1f14a5...4398d7` | ⚠️ Unaudited |
| EthereumPriceFeedHwhlpFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x031380...22a05f` | ⚠️ Unaudited |
| EthereumPriceFeedMsusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573bb5...6e96f8` | ⚠️ Unaudited |
| EthereumPriceFeedMsyFundamentalusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89621c...9a3e9a` | ⚠️ Unaudited |
| EthereumPriceFeedMubondFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x636eca...e32a7b` | ⚠️ Unaudited |
| EthereumPriceFeedNgiplusFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ba94...cd5b06` | ⚠️ Unaudited |
| EthereumPriceFeedNusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e7281...c19d95` | ⚠️ Unaudited |
| EthereumPriceFeedPrimeEchelonWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc328cd...7146b6` | ⚠️ Unaudited |
| EthereumPriceFeedPromptWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25a23c...f5da40` | ⚠️ Unaudited |
| EthereumPriceFeedPufferWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x197225...04c57c` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae02d5...237979` | ⚠️ Unaudited |
| EthereumPriceFeedPumpbtcFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x85c4f8...bfe97d` | ⚠️ Unaudited |
| EthereumPriceFeedPyusdWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb7699e...f1d6be` | ⚠️ Unaudited |
| EthereumPriceFeedRswethFundamentalWithoutRoundsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60224...0d2c94` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3587a7...0bc2cc` | ⚠️ Unaudited |
| EthereumPriceFeedSolvbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24c896...ea42cc` | ⚠️ Unaudited |
| EthereumPriceFeedSpkWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f145f...f5a721` | ⚠️ Unaudited |
| EthereumPriceFeedStacFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e3c4...c0147a` | ⚠️ Unaudited |
| EthereumPriceFeedSthusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6dd1e6...78cd52` | ⚠️ Unaudited |
| EthereumPriceFeedStrcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x041a85...5f33d7` | ⚠️ Unaudited |
| EthereumPriceFeedSusdxEthFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3401da...c3df29` | ⚠️ Unaudited |
| EthereumPriceFeedSwellethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ad47...92f96b` | ⚠️ Unaudited |
| EthereumPriceFeedTacbtcFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a6fd5...dc77b3` | ⚠️ Unaudited |
| EthereumPriceFeedTacethFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9d0ab8...c18519` | ⚠️ Unaudited |
| EthereumPriceFeedTacusdFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cec96...a66da0` | ⚠️ Unaudited |
| EthereumPriceFeedThbillFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x80b073...5a2c93` | ⚠️ Unaudited |
| EthereumPriceFeedUsdcV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3ebfaa...76607b` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtbFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243507...e32ece` | ⚠️ Unaudited |
| EthereumPriceFeedUsdtV2WithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02e1f8...b54ed2` | ⚠️ Unaudited |
| EthereumPriceFeedUsdxWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x096396...d80dc8` | ⚠️ Unaudited |
| EthereumPriceFeedUsrWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x107dd3...0779ee` | ⚠️ Unaudited |
| EthereumPriceFeedUsstFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x261997...6b7f3f` | ⚠️ Unaudited |
| EthereumPriceFeedUsualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2240ae...a54840` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumDailyAccrualWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ea33...4a63cc` | ⚠️ Unaudited |
| EthereumPriceFeedVbillEthereumFundamentalWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e202a...0eaaa8` | ⚠️ Unaudited |
| EthereumPriceFeedWbtcbtcWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019697...958de9` | ⚠️ Unaudited |
| EthereumPriceFeedWlfiWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x131141...bf4a7e` | ⚠️ Unaudited |
| EthereumPriceFeedWstethstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa7b024...d5da98` | ⚠️ Unaudited |
| EthereumPriceFeedWstethWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c698...978f64` | ⚠️ Unaudited |
| EthereumPriceFeedXrpWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d0124...1daeb9` | ⚠️ Unaudited |
| EthereumPriceFeedXvsWithoutRoundsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56b13a...191d71` | ⚠️ Unaudited |
| FeeAuction | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400516 | `0xa1a20a...7324d0` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde2...77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa...0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088247...57fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a...3778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a...4cbdcf` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ffc5...04031a` | ⚠️ Unaudited |
| GemFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431e93...845692` | ⚠️ Unaudited |
| GemPit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69076e...83c275` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90de8...7be4f1` | ⚠️ Unaudited |
| Lender | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400518 | `0x15622c...7f01fc` | ⚠️ Unaudited |
| LimitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e44d0...3dfbef` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11...674335` | ⚠️ Unaudited |
| MomFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141a20...3669ea` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400505 | `0x8e3386...d175c0` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa99c0a...00ff6f` | ⚠️ Unaudited |
| Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400526 | `0xcd7f45...e662bb` | ⚠️ Unaudited |
| Safe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | ethereum | unit-400514 (2 proxies) | 2 deployments: ethereum `0x80a216...64c2ea`; ethereum `0xb8fc49...1a8793` | ⚠️ Unaudited |
| SoulboundERC1155Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c443...839555` | ⚠️ Unaudited |
| Stabledrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eca13...6bb159` | ⚠️ Unaudited |
| StakedCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c088...b42a3d` | ⚠️ Unaudited |
| StakedCap | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400515 | `0x88887b...1d8888` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed902...4fd578` | ⚠️ Unaudited |
| SymbioticNetwork | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-400512 | `0x98e52e...089f2a` | ⚠️ Unaudited |
| TapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521c42...51f14f` | ⚠️ Unaudited |
| TerminatedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87729b...51ba89` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc088...2e4fc8` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400508 | `0xd82360...a329ab` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb0d399...4e9259` | ⚠️ Unaudited |
| TopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda20...733ed4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18c9b9...011a9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2e65b1...7aa4f6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x354d1e...2aae3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x613769...3d6bb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6682c5...c7bf47` | ⚠️ Unaudited |
| TubFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b670...d1b987` | ⚠️ Unaudited |
| ValidationHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4464a0...bc6c64` | ⚠️ Unaudited |
| VaultComposerSync | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad237...ed8eed` | ⚠️ Unaudited |
| VoxFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414b1d...2499bf` | ⚠️ Unaudited |
| WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353f89...c4bf52` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400502 | `0x3ed6aa...cd0072` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-400511 | `0xdf48eb...a6ecd0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-03-17-Zellic.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-03-17-Zellic.pdf) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-05-15-TrailOfBits.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-15-TrailOfBits.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2025-05-25-Electisec.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-05-25-Electisec.pdf) | Electisec | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-06-23-Spearbit.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-06-23-Spearbit.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 21 | high |
| [2025-07-04-Recon.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-07-04-Recon.pdf) | Recon | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 14 | medium |
| [2025-09-03-Sherlock.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-03-Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 49 | high |
| [2025-09-15-Certora (EigenAVS).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-09-15-Certora%20(EigenAVS).pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-11-27-Spearbit (PR Review).pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2025-11-27-Spearbit%20(PR%20Review).pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-03-24-Octane.pdf](https://github.com/cap-labs-dev/cap-audits/blob/main/2026-03-24-Octane.pdf) | Octane | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [[Sherlock Bug Bounty](): Up to $1m in rewards](https://audits.sherlock.xyz/bug-bounties/114) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16877] 2025-03-17-Zellic.pdf — no match: Scope section lists 'contracts/*' as programs. Extracted contract names from findings targets and file paths.
- [16878] 2025-05-15-TrailOfBits.pdf — no match: Extracted contract names from Project Targets and Project Coverage sections, plus findings targets. Audit date from cover page and fix review delivery date.
- [16879] 2025-05-25-Electisec.pdf — no match: Two contracts in scope: OAppMessenger and PreMainnetVault. Audit date from review period end (March 6, 2025).
- [16880] 2025-06-23-Spearbit.pdf — matched: Extracted contract names from findings and scope section. Audit date from cover page.
- [16881] 2025-07-04-Recon.pdf — matched: No explicit scope section found; contracts extracted from findings and file paths mentioned in the report.
- [16882] 2025-09-03-Sherlock.pdf — matched: All contracts listed in the scope section of the audit report. Date is the end date of the audit period (July 10 - July 24, 2025).
- [16883] 2025-09-15-Certora (EigenAVS).pdf — no match: Audit report from Certora, dated September 22, 2025. Scope explicitly lists four Solidity contracts.
- [16884] 2025-11-27-Spearbit (PR Review).pdf — no match: The scope section describes components (Access Control, Delegation, Lending Pool, etc.) but does not list specific contract names or file paths. No individual contract names are identifiable.
- [16885] 2026-03-24-Octane.pdf — matched: Only Token.sol is explicitly listed in scope.
- [16886] [Sherlock Bug Bounty](): Up to $1m in rewards — no match: The provided text is a bug bounty page header with no contract names or audit report content.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-03-17-Zellic.pdf | ValidationLogic | unmatched — not counted | — | Target in finding 3.1 | no |
| 2025-03-17-Zellic.pdf | Delegation | unmatched — not counted | — | Target in findings 3.2 and 3.3 | no |
| 2025-03-17-Zellic.pdf | PriceOracle | unmatched — not counted | — | Target in finding 3.4 | no |
| 2025-03-17-Zellic.pdf | Vault | unmatched — not counted | — | Target in findings 3.5 and 3.6 | no |
| 2025-03-17-Zellic.pdf | FeeAuction | unmatched — not counted | — | Target in finding 3.7 | no |
| 2025-03-17-Zellic.pdf | MinterLogic | unmatched — not counted | — | Target in finding 3.8 | no |
| 2025-03-17-Zellic.pdf | VaultLogic | unmatched — not counted | — | Target in finding 3.9 | no |
| 2025-03-17-Zellic.pdf | Lender | unmatched — not counted | — | Mentioned in finding 3.1 | no |
| 2025-03-17-Zellic.pdf | BorrowLogic | unmatched — not counted | — | Mentioned in finding 3.1 | no |
| 2025-03-17-Zellic.pdf | IOracle | unmatched — not counted | — | Interface used in PriceOracle | no |
| 2025-03-17-Zellic.pdf | IDelegation | unmatched — not counted | — | Interface used in ValidationLogic | no |
| 2025-03-17-Zellic.pdf | IVault | unmatched — not counted | — | Interface used in VaultLogic | no |
| 2025-03-17-Zellic.pdf | IMinter | unmatched — not counted | — | Interface used in MinterLogic | no |
| 2025-05-15-TrailOfBits.pdf | FeeAuction | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | PriceOracle | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | NetworkMiddleware | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | StakedCap | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | VaultLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | Delegation | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | VaultAdapter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | StakedCapAdapter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | Lender | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | FractionalReserveLogic | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | FractionalReserve | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-15-TrailOfBits.pdf | ZapOFTComposer | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-25-Electisec.pdf | OAppMessenger | unmatched — not counted | — | listed in scope | no |
| 2025-05-25-Electisec.pdf | PreMainnetVault | unmatched — not counted | — | listed in scope | no |
| 2025-06-23-Spearbit.pdf | Access | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2025-06-23-Spearbit.pdf | AccessControl | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2025-06-23-Spearbit.pdf | BorrowLogic | unmatched — not counted | — | mentioned in finding M-5 | no |
| 2025-06-23-Spearbit.pdf | CapTokenAdapter | own contract | CapTokenAdapter (selected) `0xacc9ce...3d2faf` — deployed 2025-07-07 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-06-23-Spearbit.pdf | ChainlinkAdapter | unmatched — not counted | — | mentioned in finding I-2 | no |
| 2025-06-23-Spearbit.pdf | Delegation | unmatched — not counted | — | mentioned in finding L-2 | no |
| 2025-06-23-Spearbit.pdf | FractionalReserveLogic | unmatched — not counted | — | mentioned in finding M-3, M-5, I-3 | no |
| 2025-06-23-Spearbit.pdf | IAccessControl | unmatched — not counted | — | mentioned in finding L-1 | no |
| 2025-06-23-Spearbit.pdf | IDebtToken | unmatched — not counted | — | mentioned in finding L-2 | no |
| 2025-06-23-Spearbit.pdf | IDelegation | unmatched — not counted | — | mentioned in finding L-2 | no |
| 2025-06-23-Spearbit.pdf | IERC4626 | unmatched — not counted | — | mentioned in finding M-5 | no |
| 2025-06-23-Spearbit.pdf | ILender | unmatched — not counted | — | mentioned in finding H-1, M-2, L-2, I-6 | no |
| 2025-06-23-Spearbit.pdf | IMinter | unmatched — not counted | — | mentioned in finding M-6 | no |
| 2025-06-23-Spearbit.pdf | IOracle | unmatched — not counted | — | mentioned in finding M-2 | no |
| 2025-06-23-Spearbit.pdf | IVault | unmatched — not counted | — | mentioned in finding H-1, M-3, M-7, L-5, I-1 | no |
| 2025-06-23-Spearbit.pdf | Lender | unmatched — not counted | — | mentioned in finding I-7 | no |
| 2025-06-23-Spearbit.pdf | MinterLogic | unmatched — not counted | — | mentioned in finding M-1, L-4, L-7 | no |
| 2025-06-23-Spearbit.pdf | StakedCap | unmatched — not counted | — | mentioned in finding M-8 | no |
| 2025-06-23-Spearbit.pdf | ValidationLogic | unmatched — not counted | — | mentioned in finding I-6 | no |
| 2025-06-23-Spearbit.pdf | VaultAdapter | unmatched — not counted | — | mentioned in finding H-2, M-7, L-8 | no |
| 2025-06-23-Spearbit.pdf | VaultLogic | unmatched — not counted | — | mentioned in finding M-3, L-3, L-5 | no |
| 2025-06-23-Spearbit.pdf | ViewLogic | unmatched — not counted | — | mentioned in finding M-2, L-2 | no |
| 2025-07-04-Recon.pdf | Vault | unmatched — not counted | — | mentioned in M-02 and other findings | no |
| 2025-07-04-Recon.pdf | CapTokenAdapter | own contract | CapTokenAdapter (selected) `0xacc9ce...3d2faf` — deployed 2025-07-07 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-04-Recon.pdf | BorrowLogic | unmatched — not counted | — | mentioned in L-02 | no |
| 2025-07-04-Recon.pdf | ViewLogic | unmatched — not counted | — | mentioned in L-04 and Q-01 | no |
| 2025-07-04-Recon.pdf | Lender | unmatched — not counted | — | mentioned in properties and findings | no |
| 2025-07-04-Recon.pdf | Delegation | unmatched — not counted | — | mentioned in Q-03 | no |
| 2025-07-04-Recon.pdf | DebtToken | unmatched — not counted | — | mentioned in L-04 | no |
| 2025-07-04-Recon.pdf | CapToken | unmatched — not counted | — | mentioned in properties and L-03 | no |
| 2025-07-04-Recon.pdf | Minter | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | AccessControl | unmatched — not counted | — | mentioned in Q-03 and Q-04 | no |
| 2025-07-04-Recon.pdf | ConfigureAccessControl | unmatched — not counted | — | mentioned in Q-03 | no |
| 2025-07-04-Recon.pdf | DeployVault | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | InfraConfig | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | VaultConfig | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-07-04-Recon.pdf | UsersConfig | unmatched — not counted | — | mentioned in Q-04 | no |
| 2025-09-03-Sherlock.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Access | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Delegation | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetworkMiddleware | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetwork | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FeeAuction | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | AgentConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ViewLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MintableERC20 | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ScaledToken | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | AaveAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | CapTokenAdapter | own contract | CapTokenAdapter (selected) `0xacc9ce...3d2faf` — deployed 2025-07-07 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-03-Sherlock.pdf | ChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | RateOracle | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | AccessStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | DebtTokenStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | DelegationStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FeeAuctionStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FractionalReserveStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | LenderStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MintableERC20StorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MinterStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | PriceOracleStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | RateOracleStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | ScaledTokenStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | StakedCapStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetworkMiddlewareStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | SymbioticNetworkStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultAdapterStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | CapToken | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | StakedCap | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FractionalReserve | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | FractionalReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | MinterLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | VaultLogic | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Minter | unmatched — not counted | — | listed in scope | no |
| 2025-09-03-Sherlock.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenServiceManager | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenOperator | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenServiceManagerStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2025-09-15-Certora (EigenAVS).pdf | EigenOperatorStorageUtils | unmatched — not counted | — | listed in scope | no |
| 2026-03-24-Octane.pdf | Token | own proxy deployment | Token (proxy) (selected) `0x99991c...9b9999` — deployed 2026-05-08 17:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0b9230...bbae2e` | CapSymbioticVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 108 |
| upstream | 3 |
| standard_library | 20 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 116 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2, medium=1
- Match method counts: unique_name=4

Zero-match audit list:

- [16877] 2025-03-17-Zellic.pdf
- [16878] 2025-05-15-TrailOfBits.pdf
- [16879] 2025-05-25-Electisec.pdf
- [16883] 2025-09-15-Certora (EigenAVS).pdf
- [16884] 2025-11-27-Spearbit (PR Review).pdf
- [16886] [Sherlock Bug Bounty](): Up to $1m in rewards

Fork inheritance lineage and inherited audits are included when available.
