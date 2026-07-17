# Agentic Audit Brief: Piku Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Piku Finance (`piku`)
- Website: [https://piku.co/](https://piku.co/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 57 unique implementations (58 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,681,859.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Piku Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 8 core, 3 supporting, 2 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (8), supporting (3), unclassified (2)
- Contract kinds: contract (13)
- Detected standards: erc20 (6), erc20permit (3), erc4626 (2), ownable (2), accesscontrol (1), erc165 (1), erc1967proxy (1), multicall (1), ownable2step (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC20IssuanceUpgradeable_Blacklist_v1 (`0x9e40b6be5affc984f36cf118c778f0a83be20370`, chain 1)
- PendleMarketV7 (`0x6354b7dd06050da44a21d680436838a08e7dcec4`, chain 1)
- PendlePrincipalToken (`0x3ffaa9ce7cfa5688277b97bf6a8c22249404d129`, chain 1)
- PendleYieldToken (`0xacd577ccc29e88a2b7aaa15026533abd91fdd6be`, chain 1)
- PIKU (`0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3`, chain 1)
- StakedPikuV2 (`0x5da17ca137f1128d4be7ce574bc61f3ac4839df8`, chain 1)
- TransparentUpgradeableProxy (`0xf5145335540c4116956c0936b7db08d1a862a2d9`, chain 1)
- VaultV2 (`0x153bd1abe60104bd46aa05a27fa12d1346d64a57`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (9 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 45 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 46
- Confirmed-live implementations: 8 of 57 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/55
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 57
- Raw deployments: 58
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omega Security | Tier 2 | 1 | 1.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20IssuanceUpgradeable_Blacklist_v1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-251262 | 2 deployments: ethereum `0x098697ba3fee4ea76294c5d6a466a4e3b3e95fe6`; ethereum `0x9e40b6be5affc984f36cf118c778f0a83be20370` | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AUT_Roles_v1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251259 | `0x2f76563dd0d491eb6c128f846cff2a98047c2fb3` | ⚠️ Unaudited |
| FM_PC_Oracle_Redeeming_v1 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251264 | `0x7e0305b212df3fb56366251c054c07748bf9a797` | ⚠️ Unaudited |
| LM_Oracle_Permissioned_v1 | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251261 | `0x433471901ba1a8bde764e8421790c7d9bab33552` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x514d2ff735434696df3f4e6b73e2c9093fc102cb` | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x751d64f7dd4082d95ad90e584857b8313b96940e` | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x936af9f9dd1f8f1377cdf3063690a9074a773f54` | ⚠️ Unaudited |
| PendleDoubleERC4626NoRedeemSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77d2bc95ab51b75960ec3a01e112460ea7bafb20` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x095707a011a500b2c2c043473249debb4e9c1dab` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x399e426e6812943ac22976333698e16eaa80a209` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4a312fca9b7e568ab99e4e5ccbfb409221e1ed36` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x54c398b3dff91759119f83965cfc2cd1c4f7bc75` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6231e66491ad4e608a093a8806449fdcbbb9bed4` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x725e18142472384e45e15084e308dbeae43381aa` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x785685b3a6a2af752694fda7058965302e59f8e6` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc34e7d9d5ec0626ed14b6b7cee02fe904bec4c8d` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdeb45ce184fa26211e07ff8ad842807ad703b75e` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeefa4255ba79ef3f6f769590e41fcfece10447c1` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-251260 | `0xf5145335540c4116956c0936b7db08d1a862a2d9` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3f029330c46049f97772295e3fb23721865614b0` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x44a4ff3934cf3833903a04261bd0d962f008d2c3` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x47b50da0e1186b27a2413b81a352d05853699629` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc9950c55126c125173e9319077253d633221283a` | ⚠️ Unaudited |
| PendleERC4626NoRedeemWithAdapterAndSupplyCapSY | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10c5e7711eaddc1b6b64e40ef1976fc462666409` | ⚠️ Unaudited |
| PendleERC4626SYYieldTokenScaled18 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4881103c5209704fb93c5b7289b017c95a9c2f0d` | ⚠️ Unaudited |
| PendleERC4626SYYieldTokenScaled18 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadbeb9e3afe0186c57cac78c6a801cc38c82fb62` | ⚠️ Unaudited |
| PendleLidoGGVSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x55cb9535aa1ee7c98916b044af5679eb5ea1c171` | ⚠️ Unaudited |
| PendleMarketV7 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251257 | `0x6354b7dd06050da44a21d680436838a08e7dcec4` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x093bb931965e10af75349b97d133aa8dab81bb4a` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x457904b54f47dd7a91253f225237a5b02ca059d6` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb3538aab6a46572b118692a05915582857d6bc17` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1e22d55e23900f30599d8bee74a0801f09b4e58` | ⚠️ Unaudited |
| PendlePrincipalToken | token | project_anchor | own_supporting | 0 | ethereum | unit-251255 | `0x3ffaa9ce7cfa5688277b97bf6a8c22249404d129` | ⚠️ Unaudited |
| PendleStrataMidasTrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x460783e7917b191e80954edd674bf46f66e3015e` | ⚠️ Unaudited |
| PendleStrataMidasTrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfb71d1e85048fbe2149edbf7ca1d7797dfb1fefb` | ⚠️ Unaudited |
| PendleStrataNUSDTrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x92899026d06343929c61e0987e09caeea6873fe5` | ⚠️ Unaudited |
| PendleStrataNUSDTrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdb8f1d15880b97dc38edfa46d8a5a7e5b506c45f` | ⚠️ Unaudited |
| PendleStrataUSDatTrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9d0fc59f88acb85520a8cfb74c7fe141d8563185` | ⚠️ Unaudited |
| PendleStrataUSDatTrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa26938b7eb9f097e23e73af30c8f2ad6d06e3c6a` | ⚠️ Unaudited |
| PendleStrataUSDETrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4f6673346ab4813f1665327ab39087008cc7d76f` | ⚠️ Unaudited |
| PendleStrataUSDETrancheSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc9bfebc79a722c05dc34bd2a227ef2db19fd1b8e` | ⚠️ Unaudited |
| PendleUniBTCSYUpgScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8d5cf57ee0cd5ae3ace43a7d6a40807c2a9e3908` | ⚠️ Unaudited |
| PendleUniBTCSYUpgScaled18 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb9950954d965550fabbe635a8ccb7ee1fe8d7353` | ⚠️ Unaudited |
| PendleUpshiftTokenizedVaultSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x832bbd18ba4407baeeb85cec5ceee21477e5ef2e` | ⚠️ Unaudited |
| PendleXPRISMSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84760fda5e2184ab989fffc6d77350fc491dcfdf` | ⚠️ Unaudited |
| PendleXStocksSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c44f9be658bde68e7b4091e9bd349fc64724450` | ⚠️ Unaudited |
| PendleYieldToken | token | project_anchor | own_supporting | 0 | ethereum | unit-251258 | `0xacd577ccc29e88a2b7aaa15026533abd91fdd6be` | ⚠️ Unaudited |
| PIKU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251254 | `0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000004444c5dc75cb358380d2e3de08a90` | ⚠️ Unaudited |
| PP_Queue_ManualExecution_v1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-251263 | `0x5a2d08b194e1764b0ff271c691b6a46fa10f6fd2` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe08b04aa20f16fd0d5c38a98731d2d812bf8a36f` | ⚠️ Unaudited |
| StakedPikuV2 | token | project_anchor | own_supporting | 0 | ethereum | unit-251256 | `0x5da17ca137f1128d4be7ce574bc61f3ac4839df8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e08c5499f953c6297a7755bcbced383b606896b` | ⚠️ Unaudited |
| VaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251253 | `0x153bd1abe60104bd46aa05a27fa12d1346d64a57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f7d5e74cf802c77ec9eb01d828bd7a68141a94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83515bff87eaa6f4e888b93f64b27a12fad8cb41` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view](https://drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view) | Omega Security | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [report.md](https://github.com/hats-finance/Inverter-Network-0xe47e52c4fea05e555920f1dcdcc6fb8eca103eeb/blob/main/report.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [2024-06-19-macro.pdf](https://github.com/InverterNetwork/contracts/blob/main/audits/2024-06-19-macro.pdf) | 0xMacro | Audit | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 28 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1965] drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view — matched: Extracted 5 contract names from the 'Code under review' section with file paths and commit hash.
- [1967] report.md — no match: No reason recorded
- [11968] 2024-06-19-macro.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | ERC20IssuanceUpgradeable_Blacklist_v1 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x098697ba3fee4ea76294c5d6a466a4e3b3e95fe6` — deployed 2025-08-22 12:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | FM_PC_Oracle_Redeeming_v1 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | LM_Oracle_Permissioned_v1 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | PP_Queue_v1 | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view | PP_Queue_ManualExecution_v1 | unmatched — not counted | — | listed in scope | no |
| 2024-06-19-macro.pdf | AUT_Roles_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | AUT_TokenGated_Roles_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | BancorFormula | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | BondingCurveBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ERC20Issuance_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ERC20PaymentClientBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | FM_BC_Bancor_Redeeming_VirtualSupply_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | FeeManager_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Governor_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | InverterBeaconProxy_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | InverterBeacon_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | LM_PC_KPIRewarder_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | LM_PC_Staking_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | LibMetadata | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ModuleFactory_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | ModuleManagerBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Module_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | OptimisticOracleIntegrator | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | OrchestratorFactory_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Orchestrator_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | PP_Simple_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | PP_Streaming_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | RedeemingBondingCurveBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | SafeMath | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | TransactionForwarder_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | Utils | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | VirtualCollateralSupplyBase_v1 | unmatched — not counted | — | — | no |
| 2024-06-19-macro.pdf | VirtualIssuanceSupplyBase_v1 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3` | PIKU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5da17ca137f1128d4be7ce574bc61f3ac4839df8` | StakedPikuV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x153bd1abe60104bd46aa05a27fa12d1346d64a57` | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 44 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 32 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [1967] report.md
- [11968] 2024-06-19-macro.pdf

Fork inheritance lineage and inherited audits are included when available.
