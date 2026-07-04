# Agentic Audit Brief: Xave Finance

## Project Overview

- Project: Xave Finance (`xave-finance`)
- Website: [https://xave.co](https://xave.co)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.371Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum, polygon
- Contract surface: 62 unique implementations (62 raw deployments)
- DeFi Llama TVL: $148,158.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 58 project-authored contract(s) across 2 chain(s); 17 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (debttokenbase, incentivizederc20, versionedinitializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 62 (61 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/59 (20.3%)
- Deployed-live implementations: 61 of 62 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/62
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 62
- Raw deployments: 62
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Akira Tech | Tier 2 | 12 | 19.4% | 2022-09 |
| PeckShield | Tier 2 | 5 | 8.1% | 2022-07 |
| unknown | Tier 2 | 4 | 6.5% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssimilatorFactory | unknown | polygon | n/a | [`0x1cd131...1535f1`](./contracts/polygon-137/0x1cd131aef741b378cf886ad1be5aaa2b871535f1/) | ✅ Audited |
| FXPoolDeployer | unknown | polygon | n/a | [`0x14728e...11d901`](./contracts/polygon-137/0x14728e0997be392af7e35ff99191dc259d11d901/) | ✅ Audited |
| FXPoolFactory | unknown | polygon | n/a | [`0x627d75...dfed71`](./contracts/polygon-137/0x627d759314d5c4007b461a74ebafa7ebc5dfed71/) | ✅ Audited |
| FXSwaps | unknown | ethereum | n/a | [`0x390bcd...7b279c`](./contracts/ethereum-1/0x390bcd94446fcc6da992995c66b58e3a7a7b279c/) | ✅ Audited |
| Orchestrator | unknown | ethereum | n/a | [`0xeb1879...f0b299`](./contracts/ethereum-1/0xeb1879edc723a1dba37fd480878cab5706f0b299/) | ✅ Audited |
| ProportionalLiquidity | unknown | ethereum | n/a | [`0xa1c650...d2251b`](./contracts/ethereum-1/0xa1c6506ff7a9c9d510dadaed6798529af2d2251b/) | ✅ Audited |
| RebalanceAddLiq | unknown | polygon | n/a | [`0x095ef4...919343`](./contracts/polygon-137/0x095ef4d09b7746403e34c6cb64c39e0211919343/) | ✅ Audited |
| Swaps | unknown | ethereum | n/a | [`0x85476a...522fbf`](./contracts/ethereum-1/0x85476ab9523168d8143a20bb873e33ee7e522fbf/) | ✅ Audited |
| UsdcToUsdAssimilator | unknown | ethereum | n/a | [`0x311fdd...f9c59a`](./contracts/ethereum-1/0x311fdde361e6258e9730c6147aaf584ac0f9c59a/) | ✅ Audited |
| VariableDebtToken | unknown | ethereum | n/a | [`0x317a2a...21198c`](./contracts/ethereum-1/0x317a2aec6ee9474945b1a8e08e0183060721198c/) | ✅ Audited |
| ViewLiquidity | unknown | ethereum | n/a | [`0x9f9d0b...5b968b`](./contracts/ethereum-1/0x9f9d0bb490f7fa5894ffbd07dc46f858bd5b968b/) | ✅ Audited |
| ZapLib | unknown | ethereum | n/a | [`0xe2003b...aee090`](./contracts/ethereum-1/0xe2003bd9971665c8942794e66b4886ecedaee090/) | ✅ Audited |

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmmRewards | unknown | ethereum | n/a | [`0x1af007...bcda45`](./contracts/ethereum-1/0x1af00782f74ddc4c7fcefe8752113084febcda45/) | ⚠️ Unaudited |
| AToken | unknown | ethereum | n/a | [`0x02f937...ff2799`](./contracts/ethereum-1/0x02f937266007d93706fae23c2b0b071f4eff2799/) | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | ethereum | n/a | [`0x2441b8...dabe8a`](./contracts/ethereum-1/0x2441b8071ecdf696b5ce272aade08d9833dabe8a/) | ⚠️ Unaudited |
| Authorizer | unknown | ethereum | n/a | [`0x6b4761...553dde`](./contracts/ethereum-1/0x6b4761dfab4cf4c531adc379e83e85d62b553dde/) | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | ethereum | n/a | [`0xd05d85...d412de`](./contracts/ethereum-1/0xd05d8542827e4f534ab408c0ed21782d9fd412de/) | ⚠️ Unaudited |
| Curve | unknown | ethereum | n/a | [`0x20e1d8...1ef8b0`](./contracts/ethereum-1/0x20e1d8daf58358cf11be5616946e1df55f1ef8b0/) | ⚠️ Unaudited |
| CurveFactory | unknown | ethereum | n/a | [`0xfa505d...2717e5`](./contracts/ethereum-1/0xfa505d02269bf4ea59355a4e37fbd882122717e5/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | polygon | n/a | [`0x03199d...b3675e`](./contracts/polygon-137/0x03199d8d9aeba9844a4c12d9d4a6fad6c2b3675e/) | ⚠️ Unaudited |
| EpochManager | unknown | ethereum | n/a | [`0xfae4cf...a83551`](./contracts/ethereum-1/0xfae4cfec9f2570f35d7d6bef455ecce3dca83551/) | ⚠️ Unaudited |
| ERC20Mintable | unknown | ethereum | n/a | [`0x02510a...bdf8f5`](./contracts/ethereum-1/0x02510a18068b57b010b4cbc2e02d8ce5ccbdf8f5/) | ⚠️ Unaudited |
| FXPoolDeployerTracker | unknown | polygon | n/a | [`0xa2fc51...1a8e2a`](./contracts/polygon-137/0xa2fc51a7f5246a718848f5bdadbc4a78191a8e2a/) | ⚠️ Unaudited |
| GenericLogic | unknown | ethereum | n/a | [`0x45318d...2a297e`](./contracts/ethereum-1/0x45318d29987b70da17c19ac0f22c1228f42a297e/) | ⚠️ Unaudited |
| GenericUsdOracle | unknown | polygon | n/a | [`0x142ca0...4d3162`](./contracts/polygon-137/0x142ca0037ef73aee701817a1c3ef15db794d3162/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | polygon | n/a | [`0x1d5da1...c9551a`](./contracts/polygon-137/0x1d5da10918cac00a62a22532881b9c83c1c9551a/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | polygon | n/a | [`0x0605ac...7d23bf`](./contracts/polygon-137/0x0605ac982661d633c95e329d7d5df94ddc7d23bf/) | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | ethereum | n/a | [`0x9355fd...05b673`](./contracts/ethereum-1/0x9355fdfba6acd5178f6fcba48a4d3218f705b673/) | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | ethereum | n/a | [`0xc8c8e2...50eb8c`](./contracts/ethereum-1/0xc8c8e23dfddb3082d50e18342d26a06a8150eb8c/) | ⚠️ Unaudited |
| LendingRateOracle | unknown | polygon | n/a | [`0x25290e...7cafe7`](./contracts/polygon-137/0x25290edb1633c6b60a24c5fb3a321b91a67cafe7/) | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | ethereum | n/a | [`0x49dd29...e3f4ce`](./contracts/ethereum-1/0x49dd29b8d2c7a979e0a406225fefc48bbfe3f4ce/) | ⚠️ Unaudited |
| MockAggregator | unknown | polygon | n/a | [`0x1f0ac8...87d199`](./contracts/polygon-137/0x1f0ac8c7b6f9d6d014124919e5039c1dab87d199/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x4924be...a0b36c`](./contracts/ethereum-1/0x4924bebf9a3ac9eaf0d3a83e30bfee2b3fa0b36c/) | ⚠️ Unaudited |
| PrimaryBridge | unknown | ethereum | n/a | [`0x1ee3c7...ecfe50`](./contracts/ethereum-1/0x1ee3c77383ad0a0a9b8e68f7bc6b5f5c38ecfe50/) | ⚠️ Unaudited |
| ReserveLogic | unknown | ethereum | n/a | [`0xd56344...39c7b4`](./contracts/ethereum-1/0xd563445537f5e83b7a2a62712c6ce1d7ba39c7b4/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | [`0x585b52...d80802`](./contracts/ethereum-1/0x585b52fe4712a74404aba83deb09a0e087d80802/) | ⚠️ Unaudited |
| SecondaryBridge | unknown | polygon | n/a | [`0x6f2275...9b2d14`](./contracts/polygon-137/0x6f2275cab5d20ec0dcc4878824eb9425029b2d14/) | ⚠️ Unaudited |
| SGDRewardsDistributor | unknown | polygon | n/a | [`0x15308f...f6b8c5`](./contracts/polygon-137/0x15308f419f141baf659160adac3255bff7f6b8c5/) | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | ethereum | n/a | [`0x057b4e...99e3c3`](./contracts/ethereum-1/0x057b4e0f15b642494013984543872a801f99e3c3/) | ⚠️ Unaudited |
| ST_Basic_Token | unknown | polygon | n/a | [`0xa9a66d...c9b949`](./contracts/polygon-137/0xa9a66d796e38a9f5154d023f68d6f7b3b6c9b949/) | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | ethereum | n/a | [`0xa0e91e...33bd00`](./contracts/ethereum-1/0xa0e91e69b43021b3c6748cfe16296ff4b933bd00/) | ⚠️ Unaudited |
| StableDebtToken | unknown | ethereum | n/a | [`0x00ee7f...d12344`](./contracts/ethereum-1/0x00ee7f1020bbc5423a25ec5f5a08139a17d12344/) | ⚠️ Unaudited |
| TaudToUsdAssimilator | unknown | ethereum | n/a | [`0x17c3a1...f430d4`](./contracts/ethereum-1/0x17c3a12f68c95c637055ea65aa90d72813f430d4/) | ⚠️ Unaudited |
| TcadToUsdAssimilator | unknown | ethereum | n/a | [`0x70ba04...654df5`](./contracts/ethereum-1/0x70ba0482fd6343e8fcbd2480c8b4c11d6c654df5/) | ⚠️ Unaudited |
| TgbpToUsdAssimilator | unknown | ethereum | n/a | [`0x20a590...77ecfb`](./contracts/ethereum-1/0x20a590c339a5a6ea0bd6817b832847067377ecfb/) | ⚠️ Unaudited |
| TrybToUsdAssimilator | unknown | ethereum | n/a | [`0xc3108c...af2f46`](./contracts/ethereum-1/0xc3108cfc6746233732d09858d2bb16fb83af2f46/) | ⚠️ Unaudited |
| UiIncentiveDataProvider | unknown | ethereum | n/a | [`0xb435f0...9286fb`](./contracts/ethereum-1/0xb435f07c348ae7b8122d1e50de8af7009c9286fb/) | ⚠️ Unaudited |
| VNXAUGramOracle | unknown | polygon | n/a | [`0x58e352...c9ae2f`](./contracts/polygon-137/0x58e352054e8f15d40da2093283ada632aec9ae2f/) | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | ethereum | n/a | [`0x45ea84...9689b9`](./contracts/ethereum-1/0x45ea8435e6d06fc62b1c2540d67ea4ae7d9689b9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x7111a3...3bf374`](./contracts/ethereum-1/0x7111a302b929d14a323b489f234ef912903bf374/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | polygon | n/a | [`0x0d6c36...527309`](./contracts/polygon-137/0x0d6c3611e476fb6b2d97c782a90351732d527309/) | ⚠️ Unaudited |
| WETHGateway | unknown | ethereum | n/a | [`0xa0576e...23c796`](./contracts/ethereum-1/0xa0576e91069098271951559369a31d89a123c796/) | ⚠️ Unaudited |
| WrappedHaloToken | unknown | polygon | n/a | [`0x18e7bd...3a560c`](./contracts/polygon-137/0x18e7bdb379928a651f093ef1bc328889b33a560c/) | ⚠️ Unaudited |
| WrappedToken | unknown | polygon | n/a | [`0x0aab1f...592a4a`](./contracts/polygon-137/0x0aab1f0104af8ab3bc54756602cbd90dae592a4a/) | ⚠️ Unaudited |
| WrappedVestingHaloToken | unknown | polygon | n/a | [`0xc104e5...f47193`](./contracts/polygon-137/0xc104e54803aba12f7a171a49ddc333da39f47193/) | ⚠️ Unaudited |
| XaveStratXSGDUSDCIndexUSDC | unknown | ethereum | n/a | [`0xaf2ab9...0b1a01`](./contracts/ethereum-1/0xaf2ab9e73f417ab51f8ad6172698356ba40b1a01/) | ⚠️ Unaudited |
| XaveStratXSGDUSDCIndexUSDCv2 | unknown | polygon | n/a | [`0x156f3f...193c29`](./contracts/polygon-137/0x156f3f49ca3ef1721e5af39bf70f9c6bd8193c29/) | ⚠️ Unaudited |
| xAveToken | unknown | ethereum | n/a | [`0x2c66d4...6438e2`](./contracts/ethereum-1/0x2c66d4a60f9decddab32856e2e50dd50926438e2/) | ⚠️ Unaudited |
| XaveVesting | unknown | ethereum | n/a | [`0x5fe701...3768d5`](./contracts/ethereum-1/0x5fe701a8f15a5cef854ca26ad26da874853768d5/) | ⚠️ Unaudited |
| XAVToken | unknown | ethereum | n/a | [`0xd08a10...68aded`](./contracts/ethereum-1/0xd08a10b69bf8ef6b354e68f3012443814968aded/) | ⚠️ Unaudited |
| XsgdToUsdAssimilator | unknown | ethereum | n/a | [`0x0bdb61...a91062`](./contracts/ethereum-1/0x0bdb612b8083ccbe8161a5b4320dd5b7d7a91062/) | ⚠️ Unaudited |
| Zap | unknown | ethereum | n/a | [`0xe950ec...7d5b72`](./contracts/ethereum-1/0xe950ec7fc508dd86fd9b36671f6b1602007d5b72/) | ⚠️ Unaudited |

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
| [here](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Xave-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |
| [Lending Market](https://xave-finance.gitbook.io/general/contract-audits/lending-market.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [FXPool Final Audit](https://xave-finance.gitbook.io/general/contract-audits/fxpool-final-audit.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | low |
| [Price Oracles Final Audit](https://xave-finance.gitbook.io/general/contract-audits/price-oracles-final-audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Standard Operating Procedure for Security](https://xave-finance.gitbook.io/general/contract-audits/standard-operating-procedure-for-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Overview](https://xave-finance.gitbook.io/general/contract-audits/overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* The repository used by the auditors, Akira Tech, is also now publicly accessible here: <>](https://github.com/akiratechhq/review-xave-lending-market-2021-10) | Akira Tech | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |
| [Report.pdf](https://github.com/akiratechhq/review-xave-lending-market-2021-10/blob/master/Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Xave-v1.0.pdf](https://2822860750-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6utITMNjJXVJJVMgUpbZ%2Fuploads%2FLQAXXEvpoWMKI7r6OS5M%2FPeckShield-Audit-Report-Xave-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |
| [Akira-Tech-Audit-Report.pdf](https://2822860750-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6utITMNjJXVJJVMgUpbZ%2Fuploads%2FTYQRLx7EbvMNno8HoNxI%2FAkira-Tech-Audit-Report.pdf) | Akira Tech | Audit | 2022-09 | stale | Direct | contract_name | 10 | high |
| [PriceOracle-Final-Report.pdf](https://2822860750-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6utITMNjJXVJJVMgUpbZ%2Fuploads%2FYcVqQtVTNZmK0SAh7JoK%2FPriceOracle-Final-Report.pdf) | CertiK | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1af007...bcda45`](./contracts/ethereum-1/0x1af00782f74ddc4c7fcefe8752113084febcda45/) | AmmRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02f937...ff2799`](./contracts/ethereum-1/0x02f937266007d93706fae23c2b0b071f4eff2799/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2441b8...dabe8a`](./contracts/ethereum-1/0x2441b8071ecdf696b5ce272aade08d9833dabe8a/) | ATokensAndRatesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b4761...553dde`](./contracts/ethereum-1/0x6b4761dfab4cf4c531adc379e83e85d62b553dde/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd05d85...d412de`](./contracts/ethereum-1/0xd05d8542827e4f534ab408c0ed21782d9fd412de/) | AuthorizerAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03199d...b3675e`](./contracts/polygon-137/0x03199d8d9aeba9844a4c12d9d4a6fad6c2b3675e/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfae4cf...a83551`](./contracts/ethereum-1/0xfae4cfec9f2570f35d7d6bef455ecce3dca83551/) | EpochManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02510a...bdf8f5`](./contracts/ethereum-1/0x02510a18068b57b010b4cbc2e02d8ce5ccbdf8f5/) | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2fc51...1a8e2a`](./contracts/polygon-137/0xa2fc51a7f5246a718848f5bdadbc4a78191a8e2a/) | FXPoolDeployerTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45318d...2a297e`](./contracts/ethereum-1/0x45318d29987b70da17c19ac0f22c1228f42a297e/) | GenericLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x142ca0...4d3162`](./contracts/polygon-137/0x142ca0037ef73aee701817a1c3ef15db794d3162/) | GenericUsdOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d5da1...c9551a`](./contracts/polygon-137/0x1d5da10918cac00a62a22532881b9c83c1c9551a/) | LendingPoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0605ac...7d23bf`](./contracts/polygon-137/0x0605ac982661d633c95e329d7d5df94ddc7d23bf/) | LendingPoolAddressesProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9355fd...05b673`](./contracts/ethereum-1/0x9355fdfba6acd5178f6fcba48a4d3218f705b673/) | LendingPoolCollateralManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8c8e2...50eb8c`](./contracts/ethereum-1/0xc8c8e23dfddb3082d50e18342d26a06a8150eb8c/) | LendingPoolConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x25290e...7cafe7`](./contracts/polygon-137/0x25290edb1633c6b60a24c5fb3a321b91a67cafe7/) | LendingRateOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49dd29...e3f4ce`](./contracts/ethereum-1/0x49dd29b8d2c7a979e0a406225fefc48bbfe3f4ce/) | LiquidityGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f0ac8...87d199`](./contracts/polygon-137/0x1f0ac8c7b6f9d6d014124919e5039c1dab87d199/) | MockAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4924be...a0b36c`](./contracts/ethereum-1/0x4924bebf9a3ac9eaf0d3a83e30bfee2b3fa0b36c/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee3c7...ecfe50`](./contracts/ethereum-1/0x1ee3c77383ad0a0a9b8e68f7bc6b5f5c38ecfe50/) | PrimaryBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd56344...39c7b4`](./contracts/ethereum-1/0xd563445537f5e83b7a2a62712c6ce1d7ba39c7b4/) | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x585b52...d80802`](./contracts/ethereum-1/0x585b52fe4712a74404aba83deb09a0e087d80802/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6f2275...9b2d14`](./contracts/polygon-137/0x6f2275cab5d20ec0dcc4878824eb9425029b2d14/) | SecondaryBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x15308f...f6b8c5`](./contracts/polygon-137/0x15308f419f141baf659160adac3255bff7f6b8c5/) | SGDRewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057b4e...99e3c3`](./contracts/ethereum-1/0x057b4e0f15b642494013984543872a801f99e3c3/) | SingleRecipientGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa9a66d...c9b949`](./contracts/polygon-137/0xa9a66d796e38a9f5154d023f68d6f7b3b6c9b949/) | ST_Basic_Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e91e...33bd00`](./contracts/ethereum-1/0xa0e91e69b43021b3c6748cfe16296ff4b933bd00/) | StableAndVariableTokensHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00ee7f...d12344`](./contracts/ethereum-1/0x00ee7f1020bbc5423a25ec5f5a08139a17d12344/) | StableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c3a1...f430d4`](./contracts/ethereum-1/0x17c3a12f68c95c637055ea65aa90d72813f430d4/) | TaudToUsdAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70ba04...654df5`](./contracts/ethereum-1/0x70ba0482fd6343e8fcbd2480c8b4c11d6c654df5/) | TcadToUsdAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a590...77ecfb`](./contracts/ethereum-1/0x20a590c339a5a6ea0bd6817b832847067377ecfb/) | TgbpToUsdAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3108c...af2f46`](./contracts/ethereum-1/0xc3108cfc6746233732d09858d2bb16fb83af2f46/) | TrybToUsdAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb435f0...9286fb`](./contracts/ethereum-1/0xb435f07c348ae7b8122d1e50de8af7009c9286fb/) | UiIncentiveDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x58e352...c9ae2f`](./contracts/polygon-137/0x58e352054e8f15d40da2093283ada632aec9ae2f/) | VNXAUGramOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45ea84...9689b9`](./contracts/ethereum-1/0x45ea8435e6d06fc62b1c2540d67ea4ae7d9689b9/) | VotingEscrowDelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7111a3...3bf374`](./contracts/ethereum-1/0x7111a302b929d14a323b489f234ef912903bf374/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0d6c36...527309`](./contracts/polygon-137/0x0d6c3611e476fb6b2d97c782a90351732d527309/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0576e...23c796`](./contracts/ethereum-1/0xa0576e91069098271951559369a31d89a123c796/) | WETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x18e7bd...3a560c`](./contracts/polygon-137/0x18e7bdb379928a651f093ef1bc328889b33a560c/) | WrappedHaloToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0aab1f...592a4a`](./contracts/polygon-137/0x0aab1f0104af8ab3bc54756602cbd90dae592a4a/) | WrappedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc104e5...f47193`](./contracts/polygon-137/0xc104e54803aba12f7a171a49ddc333da39f47193/) | WrappedVestingHaloToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf2ab9...0b1a01`](./contracts/ethereum-1/0xaf2ab9e73f417ab51f8ad6172698356ba40b1a01/) | XaveStratXSGDUSDCIndexUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x156f3f...193c29`](./contracts/polygon-137/0x156f3f49ca3ef1721e5af39bf70f9c6bd8193c29/) | XaveStratXSGDUSDCIndexUSDCv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c66d4...6438e2`](./contracts/ethereum-1/0x2c66d4a60f9decddab32856e2e50dd50926438e2/) | xAveToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fe701...3768d5`](./contracts/ethereum-1/0x5fe701a8f15a5cef854ca26ad26da874853768d5/) | XaveVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd08a10...68aded`](./contracts/ethereum-1/0xd08a10b69bf8ef6b354e68f3012443814968aded/) | XAVToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bdb61...a91062`](./contracts/ethereum-1/0x0bdb612b8083ccbe8161a5b4320dd5b7d7a91062/) | XsgdToUsdAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe950ec...7d5b72`](./contracts/ethereum-1/0xe950ec7fc508dd86fd9b36671f6b1602007d5b72/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, low=1
- Match method counts: extraction_exact=26

Zero-match audit list:

- [18771] Lending Market
- [18773] Price Oracles Final Audit
- [18774] Standard Operating Procedure for Security
- [18775] Overview
- [18780] PriceOracle-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
