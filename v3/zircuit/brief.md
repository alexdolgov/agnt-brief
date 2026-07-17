# Agentic Audit Brief: Zircuit

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Zircuit (`zircuit`)
- Website: [https://www.zircuit.com/](https://www.zircuit.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, sepolia
- Contract surface: 55 unique implementations (64 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,256,422.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zircuit. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across base, ethereum, sepolia. Structural roles: 5 core, 5 supporting, 5 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (5), supporting (5), unclassified (5)
- Contract kinds: contract (15)
- Detected standards: erc1967proxy (6), ownable (1), ownable2step (1)
- Frameworks: openzeppelin-upgradeable (6), solmate (6), openzeppelin (4)
- Upgradeable-pattern rows: 6

## Fork Analysis

1 of 10 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

**InstitutionLender** (`0xe83ef4375d806c02387069f1b753b2ab76ab1dc5`, chain 8453)
Origin: zircuit (`0x1a48cec817bcb5436efe99bab6dde228cc37e1cc`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- ERC20RevocableComplianceToken (`0x48ab4e39ac59f4e88974804b04a991b3a402717f`, chain 1)
- InstitutionLender (`0x1a48cec817bcb5436efe99bab6dde228cc37e1cc`, chain 8453)
- Proxy (`0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1`, chain 1)
- Proxy (`0x2a721cbe81a128be0f01040e3353c3805a5ea091`, chain 1)
- Proxy (`0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8`, chain 1)
- Proxy (`0x6c89104690452ad7e209f0ab72287c2561d5cf0e`, chain 1)
- Proxy (`0x7d43eb137185aea81a020563099e940bb380f35e`, chain 1)
- Proxy (`0x92ef6af472b39f1b363da45e35530c24619245a4`, chain 1)
- SP1VerifierGateway (`0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 32
- Confirmed-live implementations: 14 of 55 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/29
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 55
- Raw deployments: 64
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 3 | 10.3% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263726 | `0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8` | ✅ Audited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263727 | `0x92ef6af472b39f1b363da45e35530c24619245a4` | ✅ Audited |
| OptimismPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263741 | `0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountingReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c`; base `0x7fceb53b2959861d29057361158a2b41caaffd68` | ⚠️ Unaudited |
| CrisisControlRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263739 | `0x7d43eb137185aea81a020563099e940bb380f35e` | ⚠️ Unaudited |
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | project_anchor | own_supporting | 1 | ethereum | unit-263729 | `0x48ab4e39ac59f4e88974804b04a991b3a402717f` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2c0b27f7c8f083b539557a0ba787041bf22db276`; ethereum `0xc463eac02572cc964d43d2414023e2c6b62baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263731 | `0x2a721cbe81a128be0f01040e3353c3805a5ea091` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263737 | `0x994eeb321f9cd79b077a5455fc248c77f30dd244` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac991621fd8048d9f235324780abd6c3ad26421` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263743 | `0xc77ece87c91c44afb5f19638f9a0f75b5d90e932` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263712 | `0x5b1ef673d9c316b3ee9ed3b4e3cc84952bfc5257` | ⚠️ Unaudited |
| ResolverRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263735 | `0x6c89104690452ad7e209f0ab72287c2561d5cf0e` | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | project_anchor | own_supporting | 0 | ethereum | unit-263713 | `0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67` | ⚠️ Unaudited |
| StrategyManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x075193d36693da7ba3bb709cf63bef070ba04d94`; base `0xf7e745658fa6f1fe8f2cab47861a273991cd3374` | ⚠️ Unaudited |
| SuperchainConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263728 | `0x745393cc03b5fe668ecd52c0e625f59aad6d3da0` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263733 | `0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x28966ce36d0f25858dc5d10dfc2829f05c332c49`; ethereum `0x6424c7548e214f89b64ea5981c5a0c5ec22b6e38` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 2 | base | unit-263745 (2 proxies) | 2 deployments: base `0x1a48cec817bcb5436efe99bab6dde228cc37e1cc`; base `0xe83ef4375d806c02387069f1b753b2ab76ab1dc5` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc91e44e9302288fe5df24d6392875e5069e1aca7` | ⚠️ Unaudited |
| UnderlyingOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x264d6474802ef8bc1bc05f89f7d640d1e93c5330`; base `0xd7abc360dfcf1b6dd0a03138235e12a2bc1c1c8b` | ⚠️ Unaudited |
| UnderlyingOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2d342de4c58a871b3525740c58a1c112d5835865`; ethereum `0xd58e8c1c83d598ad76b5f0e26b4a25cdb885d190` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae`; base `0x25d90abd6c1e8dccd40932d2fdd2cd381bfc832d` | ⚠️ Unaudited |
| VaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x16ce6d9576a411911e62b6073f1cc9d1347ad96b`; base `0xbb801ed781df31f660cc743bef7bb9d04b030923` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6bce7408c0781dce7b71494274302d4b75a1447c` | ⚠️ Unaudited |
| VerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc25d093d3a3f58952252d2e763beaf2559dc9737` | ⚠️ Unaudited |
| ZRC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd418e42783382e86ae91e445406600ba144d162` | ⚠️ Unaudited |
| ZrcOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5eb63caad0ca6e068114c42794ada9b7757ebc1` | ⚠️ Unaudited |
| ZtakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0792c46723d479d4c29de5d78d93c0146edf3f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b49136665dc78347893bfacf3f9e2af546a1069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3fc87ec70705ba6fddacc72d5c71440f64463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e21a71ac3f7607da5c06153a17b1dd20e702c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540ff7ab7bb9894e408bb650ed4f060c390c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac894b2a32fed0dc09c2c617277c2f2bf1cf130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a7e2bca9e35ba49282e832a28a6023904460d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9641b86870bbe53264492854ad7af32e39079dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987d6008bb5c1e94a72b60a4bbfaaf67ef09746e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da6c219742518ae98e364184ce32fe81c08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9985758eed32892441faf6fe852b8c6d6847205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea946ff59f97eec54e4b32a01e68d67fb4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69d3ac5ca686ccf94b258291772bc520feaf211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0792c46723d479d4c29de5d78d93c0146edf3f5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263714 | `0x2b49136665dc78347893bfacf3f9e2af546a1069` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263715 | `0x3d3fc87ec70705ba6fddacc72d5c71440f64463f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263716 | `0x4e21a71ac3f7607da5c06153a17b1dd20e702c21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263717 | `0x540ff7ab7bb9894e408bb650ed4f060c390c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263718 | `0x6ac894b2a32fed0dc09c2c617277c2f2bf1cf130` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263719 | `0x87a7e2bca9e35ba49282e832a28a6023904460d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263720 | `0x9641b86870bbe53264492854ad7af32e39079dfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263721 | `0x987d6008bb5c1e94a72b60a4bbfaaf67ef09746e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263722 | `0x9da6c219742518ae98e364184ce32fe81c08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263723 | `0xb9985758eed32892441faf6fe852b8c6d6847205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263724 | `0xbea946ff59f97eec54e4b32a01e68d67fb4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263725 | `0xd69d3ac5ca686ccf94b258291772bc520feaf211` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [index.html](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | n/a | matched | 3 | 3 | 0 | 3 | n/a |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2012] index.html — no match: The provided text is not a valid audit report; it appears to be a placeholder or error message from Quantstamp's website requiring JavaScript.
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf — no match: Only one contract in scope: USDCAdapter.sol. Audit date from title: Sep 19th, 2024.
- [2015] Zircuit_zrc_token_Secure3_Audit_Report.pdf — no match: No reason recorded
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf — no match: Extracted 4 contracts from Appendix 1 - Files in Scope. Audit date from 'Dates Sep14 2024' in overview.
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf — no match: Scope section explicitly lists three contracts: BatchMigrator.sol, Migrator.sol, ZrcDistributor.sol. Audit date is the end date of engagement: August 2nd, 2024.
- [2018] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf — no match: No reason recorded
- [2019] Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf — matched: No reason recorded
- [2020] dedaub-audit-zkr-staking-ztakingpool.pdf — no match: No reason recorded
- [2021] ztakingpool_ottersec.pdf — no match: No reason recorded
- [2022] ZRC_OFT_final_report_Quantstamp.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf | USDCAdapter | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRC | unmatched — not counted | — | — | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRCL2 | unmatched — not counted | — | — | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LiquidityHub | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPool | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | BasePool | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPoolFactory | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | BatchMigrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | ZrcDistributor | unmatched — not counted | — | listed in scope | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | BatchTransfer | unmatched — not counted | — | — | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRC | unmatched — not counted | — | — | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRCL2 | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L1StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8` — deployed 2024-07-02 19:08:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x92ef6af472b39f1b363da45e35530c24619245a4` — deployed 2024-07-02 19:08:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2StandardBridge | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2ToL1MessagePasser | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1` — deployed 2024-07-02 19:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | StandardBridge | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IMigrator | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IWETH | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IZtakingPool | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| ztakingpool_ottersec.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ERC20PermitOFT | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFT | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFTAdapter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d43eb137185aea81a020563099e940bb380f35e` | CrisisControlRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48ab4e39ac59f4e88974804b04a991b3a402717f` | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a721cbe81a128be0f01040e3353c3805a5ea091` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x994eeb321f9cd79b077a5455fc248c77f30dd244` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc77ece87c91c44afb5f19638f9a0f75b5d90e932` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c89104690452ad7e209f0ab72287c2561d5cf0e` | ResolverRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67` | SP1VerifierGateway | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x745393cc03b5fe668ecd52c0e625f59aad6d3da0` | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1a48cec817bcb5436efe99bab6dde228cc37e1cc` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [2012] index.html
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [2015] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [2018] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [2020] dedaub-audit-zkr-staking-ztakingpool.pdf
- [2021] ztakingpool_ottersec.pdf
- [2022] ZRC_OFT_final_report_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
