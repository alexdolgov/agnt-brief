# Agentic Audit Brief: Vesper

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 12 audit(s)
- Eligible audit results: 30 (12 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Vesper (`vesper`)
- Website: [https://vesper.finance/](https://vesper.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 226 unique implementations (395 raw deployments)
- Coverage basis: 6/14 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $41,017,483.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Vesper. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 45 contract row(s) across avalanche, base, bsc, ethereum, optimism. Structural roles: 31 unclassified, 12 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 45
- Structural roles: unclassified (31), core (12), supporting (2)
- Contract kinds: contract (28), abstract (17)
- Detected standards: erc1967proxy (7), erc20 (7), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 63 contracts are derived from known codebases. 63 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01e1d41c1159b745298724c5fd3eaff3da1c6efd`, chain 1)
- UnnamedContract (`0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b`, chain 1)
- UnnamedContract (`0x1f9840a85d5af5bf1d1762f925bdaddc4201f984`, chain 1)
- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0x4d224452801aced8b2f0aebe155379bb5d594381`, chain 1)
- UnnamedContract (`0x514910771af9ca656af840dff83e8264ecf986ca`, chain 1)
- UnnamedContract (`0x64351fc9810adad17a690e4e1717df5e7e085160`, chain 1)
- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0x853d955acef822db058eb8505911ed77f175b99e`, chain 1)
- UnnamedContract (`0x956f47f50a910163d8bf957cf5846d573e7f87ca`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xa8b607aa09b6a2e306f93e74c282fb13f6a80452`, chain 1)
- UnnamedContract (`0xab5eb14c09d416f0ac63661e57edb7aecdb9befa`, chain 1)
- UnnamedContract (`0xae78736cd615f374d3085123a210448e74fc6393`, chain 1)
- UnnamedContract (`0xae7ab96520de3a18e5e111b5eaab095312d7fe84`, chain 1)
- UnnamedContract (`0xbc6da0fe9ad5f3b0d58160288917aa56653660e9`, chain 1)
- UnnamedContract (`0xbe9895146f7af43049ca1c1ae358b0541ea49704`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xc14900dfb1aa54e7674e1ecf9ce02b3b35157ba5`, chain 1)
- UnnamedContract (`0xd1c117319b3595fbc39b471ab1fd485629eb05f2`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0xe2f2a5c287993345a840db3b0845fbc70f5935a5`, chain 1)
- UnnamedContract (`0xef4f4604106de23cdadfeae08fcc34602cb475c1`, chain 1)
- UnnamedContract (`0x19382707d5a47e74f60053b652ab34b6e30febad`, chain 10)
- UnnamedContract (`0x1f32b1c2345538c0c6f582fcb022739c4a194ebb`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 10)
- UnnamedContract (`0x4200000000000000000000000000000000000042`, chain 10)
- UnnamedContract (`0x539505dde2b9771debe0898a84441c5e7fdf6bc0`, chain 10)
- UnnamedContract (`0x7f5c764cbc14f9669b88837ca1490cca17c31607`, chain 10)
- UnnamedContract (`0xccf3d1acf799bae67f6e354d685295557cf64761`, chain 10)
- UnnamedContract (`0xdd63ae655b388cd782681b7821be37fdb6d0e78d`, chain 10)
- UnnamedContract (`0x1e41238acd3a9ff90b0dcb9ea96cf45f104e09ef`, chain 8453)
- UnnamedContract (`0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22`, chain 8453)
- UnnamedContract (`0x3899a6090c5c178db8a1800da39dad0d06eeefbe`, chain 8453)
- UnnamedContract (`0x4200000000000000000000000000000000000006`, chain 8453)
- UnnamedContract (`0x46fb68eb2b1fc43654abae5691d39d18d933e4b4`, chain 8453)
- UnnamedContract (`0x7ba6f01772924a82d9626c126347a28299e98c98`, chain 8453)
- UnnamedContract (`0x82562507429876486b60af4f32390ef0947b3d13`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x913ece180df83a2b81a4976f83ca88543a0c51b8`, chain 8453)
- UnnamedContract (`0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452`, chain 8453)
- UnnamedContract (`0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab`, chain 43114)
- UnnamedContract (`0x50b7545627a5162f82a992c33b87adc75187b218`, chain 43114)
- UnnamedContract (`0x8729438eb15e2c8b576fcc6aecda6a148776c0f5`, chain 43114)
- UnnamedContract (`0xa30e1a67026b9cb4dec0ea2338cc5cd34d076f30`, chain 43114)
- UnnamedContract (`0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664`, chain 43114)
- UnnamedContract (`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`, chain 43114)
- UnnamedContract (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)
- UnnamedContract (`0xd586e7f844cea2f87f50152665bcbc2c279d8d70`, chain 43114)
- UnnamedContract (`0xe70efb1ff1c0b63fdf84b5ea319693cf804914a8`, chain 43114)
- Controller (`0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217`, chain 1)
- TransparentUpgradeableProxy (`0x4c73f025a1947ec770327b9956fc61f535f72c22`, chain 1)
- TransparentUpgradeableProxy (`0x4dbe3f01abe271d3e65432c74851625a8c30aa7b`, chain 1)
- TransparentUpgradeableProxy (`0x650cd45dedb19c33160acc522ad1a82d9701036a`, chain 1)
- TransparentUpgradeableProxy (`0x6aff1846413bf15a8d7e72c799b96bf37e424b13`, chain 1)
- TransparentUpgradeableProxy (`0xca7c607c590ad16007ccbbba9d26f4df656a36c2`, chain 1)
- TransparentUpgradeableProxy (`0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b`, chain 1)
- TransparentUpgradeableProxy (`0xdd9f61a85ffe73e41ef889817972f0b0aae6d6dd`, chain 1)
- VETH (`0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e`, chain 1)
- VSP (`0x1b40183efb4dd766f11bda7a7c3ad8982e998421`, chain 1)
- VUSD (`0x677ddbd918637e5f2c79e164d402454de7da8619`, chain 1)
- VUSDC (`0x0c49066c0808ee8c673553b7cbd99bcc9abf113d`, chain 1)
- VWBTC (`0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 45; live-surface rows included: 45 (27 live, 18 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 64/104 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/14 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 64 own, 40 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 122 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 77
- Confirmed-live implementations: 64 of 226 unique; 162 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/147
- Verified + Unaudited implementations: 141
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 226
- Raw deployments: 395
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 30 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 3.4% | 2021-09 |
| Bloq | Tier 2 | 4 | 2.7% | 2021-02 |
| Dedaub | Tier 2 | 3 | 2.0% | 2022-04 |
| CertiK | Tier 2 | 2 | 1.4% | 2021-06 |
| Coinspect | Tier 2 | 2 | 1.4% | 2022-03 |
| yAudit | Tier 2 | 2 | 1.4% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395752 | `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` | ✅ Audited |
| Controller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395757 | `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` | ✅ Audited |
| VETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395726 | `0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e` | ✅ Audited |
| VPool | unknown | project_anchor | own_supporting | 7 | ethereum | unit-395818 (7 proxies) | 7 deployments: ethereum `0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee`; ethereum `0xb4edcefd59750144882170fcc52ffed40bfd5f7d`; ethereum `0xba680a906d8f624a5f11fba54d3c672f09f26e47`; ethereum `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335`; ethereum `0xd11d9b4c0b3bd5ec324123b241fb07af19caeac5`; ethereum `0xd25ee8509302bd23dc11d1ab867fe995cdd7b531`; ethereum `0xff43c327410f960261057ba1da787ed78b42c257` | ✅ Audited |
| VSP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395728 | `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` | ✅ Audited |
| VUSDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395725 | `0x0c49066c0808ee8c673553b7cbd99bcc9abf113d` | ✅ Audited |

### ⚠️ Verified + Unaudited (141)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679`; ethereum `0x7d1e43f34dbab8468bf617bacb00b0b561eee6be` | ⚠️ Unaudited |
| AlphaHomora | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ce999d8709db87b211d3dd9a78dcdc2f9babcc` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377`; ethereum `0xad8b320245c2008551803e184e181a935e1523cf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54525f751b71e1ea58a558649f0057451e4946b4`; ethereum `0xe2131907e2a999d60e765660e96decca0d4372d0` | ⚠️ Unaudited |
| CollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x6349e8dda81c2e997130bc99827284355e82aa83`; ethereum `0x6846470150e5273c61f16c5ffb94fff5fed259df`; ethereum `0xabc64889601f01e7b26277ef8756250d6abf8c18`; ethereum `0xf8ffaae4fc8c1b8d9680a4498b87f5b9dd4f70bc`; ethereum `0xfa3552dc90e41241112eac7b7c984a301ca666f5` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ea0ee6818c6cf798a1b208139f6b56563f6067` | ⚠️ Unaudited |
| CreamStrategyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3e89f1a781e2776bbecd101164b8d98c914b447d`; ethereum `0x7b2db76723b38838a336a4a50f4fdfff904484ec`; ethereum `0xb92d607dc7ddaaa6a3a213cd0a01c9dd4ce569e6` | ⚠️ Unaudited |
| CreamStrategyUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5a6aad61ca0e3d45457628f82d493101a85f6314`; ethereum `0x8eacba80bee37ed291b084752375c49cd489590b`; ethereum `0xc7e98cf7a5e55a4c5a9f1f6cc23291d4205fd6c8` | ⚠️ Unaudited |
| Crv3PoolStrategyDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3`; ethereum `0x656636a157f29ba5008f398fa83a350f1be1db6f`; ethereum `0xd11e6772a430c45c7b64927069af37fa9ab3be75`; ethereum `0xe94046b46d2b58599a09d91fc5cc00ca3e1dfd1d` | ⚠️ Unaudited |
| Crv4PoolStrategySUSDPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5708e07300e5d6ea9fb6e0dc0c6b6a22f640d9e0`; ethereum `0x6674f7eaafabed615b7261174e95e8a501bd05ce` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3085721aa6f36081ee5e00583da5526d57a87e` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x347eacc4710eb045ccf0c56c0635d81840689847`; ethereum `0x486b92c950dc7abd78c6aba9e3ffb0f7040ec1bd`; ethereum `0xda09586ff22f4521dabe2538692d8114bab294da` | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a`; ethereum `0xc00a3923c0486f56596d182e95656fe31a6ee134`; ethereum `0xe4dfd8bf9fa718af957a808b9bf8ec3fe5ed31c9` | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6` | ⚠️ Unaudited |
| EarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642`; bsc `0x66de07893db7492b56ba88503b4cc99bab1796f3` | ⚠️ Unaudited |
| EarnVesperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d94ce384cf6b51f93f8c702b039333fc95d66a5` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x02fc8523510be4c6085d8d820ecced3f2a58623b`; ethereum `0xd18709acc6db21c7db15fc077154dd6c2e2076f5`; ethereum `0xd55d884fd3f9adc545a24fb491a0a93fef3028fa`; ethereum `0xeba312e290444cd4bb5d0b127a869322c37d5d05` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbbc50dafd976d4bd7854a8329646fb88d7fa1018`; ethereum `0xbcb6081c01e2d2c1a3a2f871cb949e762de0fe29` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc6be0eea986acfcd6379cf080b7b766b358572bf`; ethereum `0xf86472575d9c56b2034651870f977787b25bd807` | ⚠️ Unaudited |
| ESVSP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395821 | `0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b` | ⚠️ Unaudited |
| ESVSP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x676c0a314284ace713c74add192a0b30f4014363`; ethereum `0xede48867af081d747242944f2f3c747974736d27` | ⚠️ Unaudited |
| ESVSP721 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395820 | `0x6aff1846413bf15a8d7e72c799b96bf37e424b13` | ⚠️ Unaudited |
| ESVSP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x927367b4cecb2ac2723488411eae967eb70393d4`; ethereum `0x9b62d5e13250d41cc00b61c6006d413ce5f48428` | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e8c5c81053581341ba45ea149982ebf862cbd4e`; ethereum `0xa958a7ecc4996f69ab91d09dd08d5aea75837126` | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307`; ethereum `0xd3bd28a160cc2ae5ad5a24513173fc109929c85a` | ⚠️ Unaudited |
| Euler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67be8549cc27f0e10dd5925191354f7aefcc1165` | ⚠️ Unaudited |
| EulerVesperXy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2b5de50a1db84dd2dc66146cd513d2688394b609`; ethereum `0x46667f3771514e7d76c3948acad6dda378db63f5`; ethereum `0xf1886aa6f728d9006141644207ebc7f4090c17ad` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1015bd1ff0af19d8ce63380b636907f2c4390a5c`; ethereum `0x3c043951c8ce42d0a484425c8a945b2bb9a6aca1` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x161fe0ca2152693e72d8f7f5761a7bd391d08050`; ethereum `0xc2ffbf93b39e2f3b082c640fafc922527750f48c` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x27f4de8f9bb7a47a6550508573036a5547addaec`; ethereum `0x420ec761a5422cc97655a2900f3ea67905073d44` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x8a65a97d96b48007cfd01a501ab0daa62c6bbf0c`; ethereum `0xe19fa8bfc59c216f2db9cc9e6fcf73a1cda41c3c`; ethereum `0xe69d411ebb798638cd9aa4c668d48f09378d6fe4` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a360a00f781ec5130a8e1e406d7ee144f756346`; ethereum `0xf1010d8994c45429ea635bb8f8db10b89362f54d` | ⚠️ Unaudited |
| MakerVesper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078` | ⚠️ Unaudited |
| MakerVesperStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc2dda4d6ca0e2728bdc7b0a738d4664bf58698e1`; ethereum `0xf1543e97c79b3581a2ed60184f5dac840efb20f5` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x80704acdf97723963263c78f861f091ad04f46e2`; ethereum `0xf54f2d9eeb59746219e79050e9018b16d40133ce` | ⚠️ Unaudited |
| MerkleBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x469c9fb59ebc19e141927c0308d98f2a9c400d2f`; ethereum `0x693c78ca4c7b061eadf65ab3e6c12448af2b6cfb`; ethereum `0xe67516417a934b27cf0c14868f8165b1bc94bf73` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x583e4938f95e75906b1b69514c9bf7ebc648201a`; ethereum `0x5d72a9f081990219c97af877e0e79eadaeafca80`; ethereum `0xda5e6d9c7103abfa8866cc96bb75a7ab15368b2d`; ethereum `0xdab66fd2daf2935ffc2e1f1828e61d170166626c` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395772 | `0xca5a5b83fc6ed8577102e0b3b19379683f33b346` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bc1a26ec4ab5948b950a64479a4046701370599`; ethereum `0x7c148217c7f99504abeb4582334c9189e5f11397` | ⚠️ Unaudited |
| MockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff7495004c01f6550ff753b0b726bfae2b5e984` | ⚠️ Unaudited |
| MockVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5cda6590162a095fd7c55b1482574dd8635e3f97`; ethereum `0x85cbb45f819704a0b2ff8e8fd8cf1c3983244777` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f58bb64aa5138a5d0147024f5e3474321e5f66c` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x097ee00f42f9d7512929a6434185ae94ac6dafd7`; ethereum `0x223809e09ec28c28219769c3ff05c790c213152c`; ethereum `0xecc4bed07750eab7ce1ba634326db046877524df` | ⚠️ Unaudited |
| PingPong | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43978097ce538cb9aa09d4a6532f2b68b62badaa` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f18ab22298b5faca652c267bf0b6a5bca078bac`; ethereum `0x46b13e7e8f1aef156973ae3ed975e738cafb08c8` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530e54138266f6e3eb7b3b828c2ed98c6cab151a` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x011881efbdbb250702f9d7ca2a74788b26ca7128`; ethereum `0x042565d8c21f82a936031816f390fff3d2760213`; ethereum `0x16cdfeced40a98818587c007204bee1d0c055659`; ethereum `0x4d71a07106f1b632c1286281860a73dbaee5d674`; ethereum `0x6cf8b89103a83b9d739c33e3d91348ec4cbcee2a`; ethereum `0x762ff5490e6f4836fed3399207094c46b720380d`; ethereum `0x804cd69439608985439fbb559d1b5109907bc7ed`; ethereum `0x8ad5b311a7d9111bcc3e92811cd23dce9ba62e0a`; ethereum `0xa929510d07bfcb796c181ff3764c5168675b2cbb`; ethereum `0xc5bdbad3fb77f8cf95f2888fb78d3ccecc8e5a04`; ethereum `0xc88a0a80fa38a828bc697b92a8cb4ea50a93c4b6`; ethereum `0xd01062212c30475ffddfb86bf63932727cb1de7c`; ethereum `0xdd36620d7b94e001c3bed7ff51320c2df31117b4`; ethereum `0xec8c448e025ef3819957b90a29c75ba00d6f0505`; ethereum `0xfb0df6fc8c06e1d71fad8bf293176b8c1194561a` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0879f1821e0b41913ba6fdbd691a11675ce89542`; ethereum `0x64a76d3e194bf36c28b0974a5dedde41ca3619b5` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 11 deployments: ethereum `0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56`; ethereum `0x102507268748cca215871f571f0bafc7f5842428`; ethereum `0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd`; ethereum `0x2337c59180357ce1d771da2b2df56a91e7c442c0`; ethereum `0x4f746baa8775a5cb7c69bd79b4d4ebc203cfefe0`; ethereum `0x542ffafff05e076478b62871f7ff2e156fa3d919`; ethereum `0x7c6226a0a3d6e87bb79a301c74004bd0240e639e`; ethereum `0x90b8450a582814d504caecd07ac9d138cfd728f6`; ethereum `0x955613704cf4f99e270e7a470c020f7af1379b95`; ethereum `0xa17f64b7d3222d538ce0bf137199aed373a6088c`; ethereum `0xfb7fa759fb93e56e1dcd2f0cd7098369c624eb44` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12fdffb52297a13a29041299ad43458ebcfc89d7`; ethereum `0x5524263bffaa482d7e7ea922ba1602a825833ca7` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a7534a2a4293068931e7d287efbce7889031794`; ethereum `0xbdf903d93f5625950670f487db4d9157062474fa` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x45aba68af23de6de7dc8963e97e4f6f68de5e94e`; ethereum `0xd87b3b807757b42dbcdd81ef2dbc16e7c025b421` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da`; ethereum `0xbf2e3f32422f8f770f04663fb56a957130940c1b` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x751e5e3f4b22641d693593cff60932980386d23a`; ethereum `0xd66b769b99714e49d599d6ed6bc46a01fa409661` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4889f992220345dc3e4375c933ab441e5513f9c1`; ethereum `0xacca7cd8c908b6acbc488c8990a22a6a41a4638d`; ethereum `0xb5144e9ead98d7c0b47b7549f3b2e0b89eb585c6`; ethereum `0xce91056e4c9a12871d66fa17f2ff2f9237fdf13e` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44`; ethereum `0xbf571976e411cbec9e5a3bce817ae9e4fc570115` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5079e29313b3d9021bc4a82194b6bc32abe8315b` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10c72fdedd8eb17916c362c33c0c453928761919`; ethereum `0x877d05e606b9b8a572f8fa084b62506741d05be9` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10fde8c254a100674439d707628569686c8580fa`; ethereum `0x2cb31dccb77c7f8099e0b83fc241de9d6c406046` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17eff816ef9646481c8bac6a50b3c9a67f4d417b`; ethereum `0xe2751fd3fa863be8bf924296edb4386618acb121` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x31d9b05d89ac6b621b42a616696df9d1de8ee863`; ethereum `0x479a8666ad530af3054209db74f3c74ecd295f8d`; ethereum `0x858a0a2be8f117e8f25bf3c7b8da49ac8bc1bd1c`; ethereum `0x93567318aabd27e21c52f766d2844fc6de9dc738`; ethereum `0xb412e98f1ec54b0161aa81d6846c96a2440ba854`; ethereum `0xca9aeeb14ff396f8661f7df3128f88c31d2fdec5`; ethereum `0xd59996055b5e0d154f2851a030e207e0df0343b0`; ethereum `0xec5a0f4be5eb54f229e078fefdda0f2ebc512a3e` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a7644067584151e5861848c4942b9a15ed16653`; ethereum `0x487f4fe98c383f71d0059811ee458658a19e9211` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4279cc1ace3c89eea54fa49df11ee46e34c01106`; ethereum `0xe82cec55c0ad923195a523a6953a0dad432e7a9f` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a539836db582ded710b3dd974ae017ddbbd5486`; ethereum `0xb8208c3192d75cf8c8463e5abee802556dc8906d` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c`; ethereum `0xf9fbc8021bd0f849c393aa0e3d5e304eb5cc064c` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5323427696cbce0e15d2e21627e8aa646a5f5d83`; ethereum `0x90bb3e3aa5fa88f0a83dcb9485f65d2592f4307e` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6d7746336def5dd009cee7cef9a0331495e64153`; ethereum `0x8a36f26fd4b94392cc967037ddbd6af5a2f6fbb7` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6dc34784c84b74dc928b5977812f4603e56def93`; ethereum `0xebf4c7e909157db518475b8d3b073d54f8a2023d` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa7205492c0a35a1ebbaabe25956391012da0bfaa`; ethereum `0xc1fe9a02fd9caa37dc3704297afa0d8501d17749` | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x655845ac2db0c1955815bdc33f0270bc37e03d23`; ethereum `0x6671745a4ff7a3358beae215495040179a881942`; ethereum `0xa6d77cc044bc3f32d055bb993e9cc8e9bdab9a29`; ethereum `0xc2228b31ed970e9eaf8acd40e3dade805937cc7b` | ⚠️ Unaudited |
| PoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37ff84f9ebe44530074142de42469ae40051b92b`; ethereum `0x516f93d90afdf3d663db1fe35c05727736e900fd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca` | ⚠️ Unaudited |
| RariFuse8Eth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f53ce55c412b7614beaca41ae7607405c3458a` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7915ce4f43e1378f0c3720351a973a023f7fb3e8` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d6d94f53c2ecb24f3c632745a535a947ee43b97`; ethereum `0x4979585df899130aed4e2d945e89bbfeb01c51c0` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2005e43c86cefe594c1e8e7d72077dadcda17994`; ethereum `0xfb9b6481aa3c4b55db99db42ab9e03482e1f7d65` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x025347f4cc7865068de5a139951411084e7bcad7`; ethereum `0x1a19a413b3343468c7007e18fa553cbb3f02872a` | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618d0b1f16b87de1231cd9ec224700046aad9b2b` | ⚠️ Unaudited |
| RewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2bdba054af6b11c85428cd817d55355b487553f2`; ethereum `0xd88e30794d3baa5accedeabd08ed76b8a968a720` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f8b104748a0ad707ae610d0ce97686cb4dd1745`; ethereum `0xb9e4632b141856308d6f811589f04b7abf71b8bf` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x341c2abe8901353e12b955b1f3462afe7ba1e27d`; ethereum `0xea454c961287222150780f656e3f7e27dfb50038` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x091f06081ac7083a27a966d466e04cafec486cda`; ethereum `0xfd5216426b516008137e9b7ec33d2b0931690773` | ⚠️ Unaudited |
| SwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc48ea9a2daa4d816e4c9333d6689c70070010174` | ⚠️ Unaudited |
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x9105a793a24de69b1ac6f2051036d69670843ee9`; ethereum `0x9f71f7e34567c25672ed6b6e51b5da602757b8d0`; ethereum `0xb298aa5b1b8540413f4804a6eecd5074f67a129f` | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc097a77eb6831957508050c6645423253661b3ad` | ⚠️ Unaudited |
| SynthUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00518d6e7a7589e4de60899966e4ea6d5b311cd5` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x051e40d0d7639cfb611b37e6dde25999685ea7b9`; ethereum `0x122deb548bdfc9c3d40ad1dcb522674bcf1cf4e3`; ethereum `0x2377e249494645394d5406e2b25b7e8fffd54466`; ethereum `0x4e7b98af072df0c50ba1e775a9a28828ea23a2c5`; ethereum `0xa7d20cab70a24a50da1972e0a458e1dafbf9fcda` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d858d6d96a8b40414ec54b3019aaee431cb754f`; ethereum `0x23140f76bcb844bc6256401dc01fb4816794db99`; ethereum `0x6cb3b9de2b68f97181773119aaa9cee9fa727fff`; ethereum `0xbdb0fb4b0e2f2aead3aff40821d46433735d93ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11e21cf12af6a2188fc37265b6a02dac27cc80ed`; ethereum `0x861db15d8f414e48f3f3a40234de0edc0471a0d4` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0e2ba4df2ab32fcc0a6975093e040568b37faf49`; ethereum `0x813e891e2bb6729bef4185663624bd09f4902bd8`; ethereum `0x8b609c2502202cbd828b9dd2e13a9df23214b9d9`; ethereum `0xe6cffe0182a39c3683d6eda9a850fcf02a76ff12` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x312f8f1df85a193c9ff1bbd89da3721b12313764`; ethereum `0xe90c137d296e08b4a135f6423121a135fe7405ef` | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8868579c6152bbbb8db46606354b56bfd8819b9` | ⚠️ Unaudited |
| USDPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278957e88bdba45442acc49e07ac143d893bafb1` | ⚠️ Unaudited |
| VBetaETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395734 | `0x2c361913e2da663e1898162ec01497c46eb87abf` | ⚠️ Unaudited |
| VBetaUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395729 | `0x1e86044468b92c310800d4b350e0f83387a7097f` | ⚠️ Unaudited |
| VBetaWBTC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395744 | `0x74cc5bc20b0c396df5680ee4aeb6169a6288a8af` | ⚠️ Unaudited |
| VBTC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395775 | `0xd773ca264b5363f25f7f96319076753849af168b` | ⚠️ Unaudited |
| VDAI | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395771 | `0xca0c34a3f35520b9490c1d58b35a19ab64014d80` | ⚠️ Unaudited |
| VesperBridgeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1cbb7b6190bb2721e2b658e315692bd98cc2b9b5`; ethereum `0x210e1b607f995f687bc6d1a1574dfcdf1346f585`; ethereum `0x4f1d2b92ef396a17b25234238644e14e9e16b3fe`; ethereum `0x6d7d6db99dbb341b32b48b6248112304c3018578`; ethereum `0x7ff95072875ca9cd735ac57f29bf71b5e8ac0969`; ethereum `0x99bfef73a7935492a19b63526d983e21eb37b12e` | ⚠️ Unaudited |
| VesperEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3783586abde50e7b03c171bd1062354641f661` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x285a45c29a738dbc5bc092daed3efa5c579f6dbb`; ethereum `0x311b514e369eac678d25a6b54bdcdf621f8cee4d` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x339b20136282a9de3a6fc448b5ba9534116b3b08`; ethereum `0xbc390a652ea16b836a98107478e2aa4e3768dff6` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x60958e4c8d39fdd8d0f631fd942870851afa3414`; ethereum `0xb76ec44427c1f970ee8ee8c03229823257a641f9` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7b07296561d0ea40dd6ffc5c19a934796a829eef`; ethereum `0xea6c376d019119230b69f5aa9d59507b9b564791` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf5ae3095be887004a5df20ef6f2786563836acca`; ethereum `0xfc667c88bc4a114b10235c9085601869d0820ace` | ⚠️ Unaudited |
| VesperEarnSaddleLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a` | ⚠️ Unaudited |
| VesperIronBankXYStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d198221d0bb53a1f03491ae902eb0dac63828a` | ⚠️ Unaudited |
| VesperMakerStrategyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980e7693fdbba39ba75a9be85cda6c336ec8e697` | ⚠️ Unaudited |
| VesperMakerStrategyLINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59543a595b69897b295f12964d3c7c37b3ad29c0`; ethereum `0x636a02323121b31e9a4956cac41eff697ef54409` | ⚠️ Unaudited |
| VesperV3StrategyDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ddfc22afed1ac0476685fb81cc237434d3db4` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804f330f9f55623a50befdf4a18812a532c82ea3` | ⚠️ Unaudited |
| VETH | unknown | project_anchor | own_supporting | 2 | ethereum | unit-395825 (2 proxies) | 2 deployments: ethereum `0x951397286e4b78ae5827502ed494d7902d3cca8c`; ethereum `0xa89566489e932a2d334b9eff7884feb21a07d2b3` | ⚠️ Unaudited |
| VETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395778 | `0xe4e3da7d4ed8d936f3224f0ffd7e29dde3f39a29` | ⚠️ Unaudited |
| VirtualDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d` | ⚠️ Unaudited |
| VLINK | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395723 | `0x0a27e910aee974d05000e05eab8a4b8ebd93d40c` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6`; ethereum `0xad680b77a8d0bb66e6a0000028168ab147f440b5` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x43ef34f296afe23b654bda084de43ccbec34f841`; ethereum `0x479dfa0612ea457235cdeefcdea4e3ff072778ca`; ethereum `0x4da20a6ebf1e2740aedb432471bedd91a7bbcf29`; ethereum `0x7f0088f5a7b8d29936c1119a6446ea90f69d5c0f`; ethereum `0x8c657a734ed527d9b05b5d9e61d3f09684c48770`; ethereum `0xb7cec2ecac026dbd2b7c6705fd2967f59c6d27bf`; ethereum `0xda92f9beeb3aeee9ac0c7f8a67ccb03f0742cf04` | ⚠️ Unaudited |
| VPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-395819 | 2 deployments: ethereum `0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe`; ethereum `0x8b3c8626cbfaa71d44bd76c1304214f4858e3639` | ⚠️ Unaudited |
| VPool | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-395822 (3 proxies) | 4 deployments: ethereum `0x4c73f025a1947ec770327b9956fc61f535f72c22`; ethereum `0x650cd45dedb19c33160acc522ad1a82d9701036a`; ethereum `0x91f92f75e547db066c39dea4d4a8b45f4b8ede4a`; ethereum `0xca7c607c590ad16007ccbbba9d26f4df656a36c2` | ⚠️ Unaudited |
| VPool | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-395824 (3 proxies) | 4 deployments: ethereum `0x4dbe3f01abe271d3e65432c74851625a8c30aa7b`; ethereum `0xd948ba1b50c474199db204ef128ba413c49fd9b8`; ethereum `0xdd9f61a85ffe73e41ef889817972f0b0aae6d6dd`; ethereum `0xecd7790fd35e5f529a63cf3e058b555f2ff23234` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7`; ethereum `0x8c2d8bffc6363198baae1bab7d747961188ec6f3` | ⚠️ Unaudited |
| VPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-395823 | 2 deployments: ethereum `0xa7c21fd948c44830541b8561b31abde09cc32719`; ethereum `0xc882316b15b0dec45fdb4550167cdaf7d58433cc` | ⚠️ Unaudited |
| VPoolTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a57ed64e1b703a7250a04f0a90f5e0a116cd2e` | ⚠️ Unaudited |
| VPoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x582ebf6d677d54d54bd26980d076047fcb9e0446`; ethereum `0xa1d7046fdda8ec7758b687b88b6803ef7a9aa3ee`; ethereum `0xa924b6725f7ea2650c6e3f09eb0d36a76486c5b0`; ethereum `0xe647951b8e67247643abd45b5acb80096f561624` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527`; ethereum `0xa889d4993c44ea78e2c87bc5897c74977a126dee` | ⚠️ Unaudited |
| VspMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e` | ⚠️ Unaudited |
| VSPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4`; ethereum `0x94c7c51a3ff556b46fc697da0be0dc811e334e7e`; ethereum `0xd5579a994194c142846abafa5919fbad0ae32aa2`; ethereum `0xfd61f9c0796d917466e3ab5f2a40984fc15794b6` | ⚠️ Unaudited |
| VSPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff40fc748bb27ceffed88c0e9fd39027ff1a736` | ⚠️ Unaudited |
| VUNI | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395782 | `0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae` | ⚠️ Unaudited |
| VUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395741 | `0x677ddbd918637e5f2c79e164d402454de7da8619` | ⚠️ Unaudited |
| VUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0648e517670d71ba46d7a27ba04677db7c7957cf`; ethereum `0x56ee98121d65162500ff7705f540426c962e581b`; ethereum `0x85c7862e4fb6593bc4ce40c77dff908f1c547a46` | ⚠️ Unaudited |
| VUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395736 | `0x4a4a54e2f8bcafdbe426f4c45ec9f9e64f411101` | ⚠️ Unaudited |
| VUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395745 | `0x777a7850251b7a301cfa1e7b1d8a9c4a9c49cf85` | ⚠️ Unaudited |
| VUSDC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395764 | `0xb1c0d6efd3bab0fc3ca648a12c15d0827e3bcde5` | ⚠️ Unaudited |
| VUSDT | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395754 | `0x95c0b30c6276e67ae95127af458573a63113bdff` | ⚠️ Unaudited |
| VVSP | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395766 | `0xba4cfe5741b357fa371b506e5db0774abfecf8fc` | ⚠️ Unaudited |
| VWBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-395737 | `0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b` | ⚠️ Unaudited |
| VWBTC | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395773 | `0xcc9be1b4ae3c9d20e8dfe6cc041e196150ac0605` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395722 | `0x01e1d41c1159b745298724c5fd3eaff3da1c6efd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395724 | `0x0b1e5e449ca0d7d8937d038e298737e023e86dc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395727 | `0x1494ca1f11d487c2bbe4543e90080aeba4ba3c2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395730 | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395731 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395732 | `0x252c805e999115158174dfc997bf5c1342aadff2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395733 | `0x2b6c40ef15db0d78d08a7d1b4e12d57e88a3e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334fa95235ff746ad8f7cd93c9dd4021d14cabd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395735 | `0x35b225880df01cde935db463d0e70a9e737d516e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b54ff46256b0e9246c9fcfa02616b24b60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc3aedf492df5d3f2dce7cbd5ad38a06f415e36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395738 | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395739 | `0x514910771af9ca656af840dff83e8264ecf986ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395740 | `0x64351fc9810adad17a690e4e1717df5e7e085160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395742 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395743 | `0x6f8d5fd58f5f825fdbf4f3301c0bdd361653488c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395746 | `0x7a74b6d3a07d3249ea2fbb58e47f0daf6d6a2ebf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395747 | `0x8209f3a03730c035163b4414c1545a3137d5b402` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395748 | `0x83a99daff5f84b278d3150a36385fcdf04a0fecf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395749 | `0x83c608b3997db00b5c6d93746785857cd22d4495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395750 | `0x853d955acef822db058eb8505911ed77f175b99e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395751 | `0x8bcdd6a8168d658dfa19721eab7470e43398db25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395753 | `0x956f47f50a910163d8bf957cf5846d573e7f87ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395755 | `0x9b91ab47cefc35dbe4ddcc7983ffa1fb40795663` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395756 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395758 | `0xa5bc6eb0a7e6738e2f2ac6c92280b32771ac52ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395759 | `0xa8b607aa09b6a2e306f93e74c282fb13f6a80452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395760 | `0xab5eb14c09d416f0ac63661e57edb7aecdb9befa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395761 | `0xabff8f065318a8cf0de66bd1e90e976381859ef0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395762 | `0xae78736cd615f374d3085123a210448e74fc6393` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395763 | `0xae7ab96520de3a18e5e111b5eaab095312d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395765 | `0xb4c912714f07fcd078d17479010f705f807bb115` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395767 | `0xbc6da0fe9ad5f3b0d58160288917aa56653660e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395768 | `0xbe9895146f7af43049ca1c1ae358b0541ea49704` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395769 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395770 | `0xc14900dfb1aa54e7674e1ecf9ce02b3b35157ba5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395774 | `0xd1c117319b3595fbc39b471ab1fd485629eb05f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395776 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0222df54d27ecd3a9930f249446f10a4c4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395777 | `0xe2f2a5c287993345a840db3b0845fbc70f5935a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395779 | `0xe4fe646a43daec8323922ca3e4fe782d70805d93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395780 | `0xebcf77cce55ed6091f82aee3c5539841e4d75f49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395781 | `0xef4f4604106de23cdadfeae08fcc34602cb475c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf502d127f38da7f2c875be78ede6b6b0434602ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395783 | `0x19382707d5a47e74f60053b652ab34b6e30febad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395784 | `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395785 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395786 | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395787 | `0x539505dde2b9771debe0898a84441c5e7fdf6bc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395788 | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395789 | `0xccf3d1acf799bae67f6e354d685295557cf64761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395790 | `0xdd63ae655b388cd782681b7821be37fdb6d0e78d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395808 | `0x1e41238acd3a9ff90b0dcb9ea96cf45f104e09ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395809 | `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395810 | `0x3899a6090c5c178db8a1800da39dad0d06eeefbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395811 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395812 | `0x46fb68eb2b1fc43654abae5691d39d18d933e4b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395813 | `0x7ba6f01772924a82d9626c126347a28299e98c98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395814 | `0x82562507429876486b60af4f32390ef0947b3d13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395815 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395816 | `0x913ece180df83a2b81a4976f83ca88543a0c51b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-395817 | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395791 | `0x13aecc59a88a65f02e053eece29d743a952d6f1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395792 | `0x148a829492bec827fe9638c690ee6a71de6f1736` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395793 | `0x2b6c40ef15db0d78d08a7d1b4e12d57e88a3e324` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395794 | `0x4378041dcef18713ce30e36a6b9c8aa41c0db631` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395795 | `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395796 | `0x4b915eab9d1dd1def39e1e8af16cb6a28375e5f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395797 | `0x50b7545627a5162f82a992c33b87adc75187b218` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395798 | `0x5323f445a8665239222b117ae095423a238f5706` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395799 | `0x8729438eb15e2c8b576fcc6aecda6a148776c0f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395800 | `0xa30e1a67026b9cb4dec0ea2338cc5cd34d076f30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395801 | `0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395802 | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395803 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395804 | `0xba3fb2277c7b33d1c3e1b558cf8060bc7443b13d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395805 | `0xd586e7f844cea2f87f50152665bcbc2c279d8d70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395806 | `0xe70efb1ff1c0b63fdf84b5ea319693cf804914a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-395807 | `0xea94ebb08e9604afd225f2c61fa61401f1ed1047` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [REP-Bloq-11_11_20.pdf](https://github.com/vesperfi/doc/blob/main/audit/v1/REP-Bloq-11_11_20.pdf) | Bloq | Audit | 2020-11 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 11 | high |
| [REP-Bloq-VesperPools-20_01_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq-VesperPools-20_01_2021.pdf) | Bloq | Audit | 2021-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [REP-Bloq_15_02_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq_15_02_2021.pdf) | Bloq | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Vesper Pools Security - Fourth Audit v210119.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Fourth%20Audit%20v210119.pdf) | unknown | Audit | 2021-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [Vesper Pools Security - PaymentSplitter Audit v210210.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20PaymentSplitter%20Audit%20v210210.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Vesper Pools Security - Second Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Second%20Audit%20v201230.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 21 | high |
| [Vesper Pools Security - Third Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Third%20Audit%20v201230.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Vesper Pools Security Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20Audit%20v201230.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 20 | high |
| [Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20-%20Nov%202021.pdf) | Coinspect | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 51 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Earn%20-%20September%202021.pdf) | Coinspect | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20February%202022.pdf) | Coinspect | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20January%202022.pdf) | Coinspect | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/PRE-Bloq_%20Vesper%20Pools%20V3-2021-06-26-certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 65 | high |
| [Vesper Pools audit-poolv2-dedaub-April-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20audit-poolv2-dedaub-April-2021.pdf) | Dedaub | Audit | 2021-04 | stale | Direct | n/a | matched | 2 | 0 | 0 | 10 | n/a |
| [Vesper Pools v3 audit-dedaub-May-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub-May-2021.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [Vesper Pools v3 audit-dedaub.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [Vesper Pools+Strategies September-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%2BStrategies%20September-2021.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Vesper Pools-Dedaub-Nov-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools-Dedaub-Nov-2021.pdf) | Dedaub | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Vesper Strategies - April v210428.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Strategies%20-%20April%20v210428.pdf) | unknown | Audit | 2021-04 | stale | Direct | n/a | matched | 1 | 1 | 0 | 11 | n/a |
| [Vesper V3 - 2nd Review - v2-may-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v2-may-2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [Vesper V3 - 2nd Review - v210519 (1).pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v210519%20(1).pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [Vesper-Pools-Audit-Coinspect-Jan21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Jan21.pdf) | Coinspect | Audit | 2021-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [Vesper-Pools-Audit-Coinspect-March21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March21.pdf) | Coinspect | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 13 | high |
| [Vesper-Pools-Audit-Coinspect-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March22.pdf) | Coinspect | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [Vesper-Pools-Audit-Coinspect-Nov21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Nov21.pdf) | Coinspect | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 51 | n/a |
| [Vesper-Pools-Audit-Coinspect-Sept21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Sept21.pdf) | Coinspect | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 43 | n/a |
| [Vesper-Pools-Audit-Dedaub-April 22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-April%2022.pdf) | Dedaub | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Vesper-Pools-Audit-Dedaub-Oct21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-Oct21.pdf) | Dedaub | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf) | Halborn | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4861] REP-Bloq-11_11_20.pdf — matched: No explicit scope section; contracts extracted from findings and report metadata. Audit date from delivery date.
- [4862] REP-Bloq-VesperPools-20_01_2021.pdf — matched: No reason recorded
- [4863] REP-Bloq_15_02_2021.pdf — no match: Only one contract in scope: PaymentSplitter.sol
- [4864] Vesper Pools Security - Fourth Audit v210119.pdf — matched: No reason recorded
- [4865] Vesper Pools Security - PaymentSplitter Audit v210210.pdf — no match: Only one contract in scope: PaymentSplitter from strategies/PaymentSplitter.sol
- [4866] Vesper Pools Security - Second Audit v201230.pdf — matched: Extracted 24 contract names from the scope section listing Solidity source files with sha256 hashes. Audit date inferred from 'November 2020' on cover page, using last day of month.
- [4867] Vesper Pools Security - Third Audit v201230.pdf — no match: Extracted 9 contracts from the scope section listing Solidity source files with sha256 hashes. Audit date inferred from 'December 2020' in the executive summary and cover page; using last day of month.
- [4868] Vesper Pools Security Audit v201230.pdf — matched: Scope section explicitly lists 22 Solidity source files with sha256 hashes. Audit date inferred from 'September 2020' on cover page; using last day of month.
- [4869] Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf — no match: No reason recorded
- [4870] Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf — no match: No reason recorded
- [4871] Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf — no match: Extracted 49 contract names from the scope section listing files with sha256 hashes. Audit date inferred from document title 'V220421' (April 21, 2022) and the April 20, 2022 status updates.
- [4872] Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf — no match: ambiguous_frozen_extraction_cache
- [4873] PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf — matched: All contracts listed in the Audit Scope section of the report are extracted. The audit date is explicitly stated as 'Jun 26, 2021' in the Audit Summary.
- [4874] Vesper Pools audit-poolv2-dedaub-April-2021.pdf — matched: No reason recorded
- [4875] Vesper Pools v3 audit-dedaub-May-2021.pdf — matched: No reason recorded
- [4876] Vesper Pools v3 audit-dedaub.pdf — matched: No reason recorded
- [4877] Vesper Pools+Strategies September-2021.pdf — no match: Extracted contract names from scope listing and findings. Audit date from cover page.
- [4878] Vesper Pools-Dedaub-Nov-2021.pdf — no match: No reason recorded
- [4879] Vesper Strategies - April v210428.pdf — matched: No reason recorded
- [4880] Vesper V3 - 2nd Review - v2-may-2021.pdf — no match: Audit report does not have a dedicated scope section; contracts were inferred from sections describing changes. Date is May 2021, last day of month used.
- [4881] Vesper V3 - 2nd Review - v210519 (1).pdf — no match: No explicit scope table; contracts inferred from assessment sections and findings. Date is May 2021, last day of month used.
- [4882] Vesper-Pools-Audit-Coinspect-Jan21.pdf — matched: No reason recorded
- [4883] Vesper-Pools-Audit-Coinspect-March21.pdf — matched: All 14 Solidity files listed in the scope section with sha256 hashes. Audit date inferred from 'March 2021' on cover page, using last day of month.
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf — no match: All contracts listed in the scope section with file paths and hashes. Audit date inferred from 'March 2022' in title and executive summary.
- [4885] Vesper-Pools-Audit-Coinspect-Nov21.pdf — no match: No reason recorded
- [4886] Vesper-Pools-Audit-Coinspect-Sept21.pdf — no match: No reason recorded
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf — no match: No explicit scope table; contracts inferred from findings. Audit date from cover page.
- [4888] Vesper-Pools-Audit-Dedaub-Oct21.pdf — no match: No reason recorded
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf — no match: All 11 contracts listed in scope section 1.4. Audit date is end date of engagement (September 5, 2022).
- [4890] Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf — no match: Extracted contract names from findings sections; scope described as deltas in three repos but specific files not listed; date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| REP-Bloq-11_11_20.pdf | AaveStrategy | unmatched — not counted | — | mentioned in findings BLQ-01, BLQ-03, BLQ-05, BLQ-06 | no |
| REP-Bloq-11_11_20.pdf | AaveMakerStrategy | unmatched — not counted | — | mentioned in findings BLQ-01, BLQ-06 | no |
| REP-Bloq-11_11_20.pdf | Controller | own contract | Controller (selected) `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-11_11_20.pdf | IVesperpool | unmatched — not counted | — | mentioned in finding BLQ-01 as interface | no |
| REP-Bloq-11_11_20.pdf | IStrategy | unmatched — not counted | — | mentioned in finding BLQ-01 as interface | no |
| REP-Bloq-11_11_20.pdf | PoolRewards | unmatched — not counted | — | mentioned in findings BLQ-03, BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-11_11_20.pdf | VTokenBase | unmatched — not counted | — | mentioned in findings BLQ-03, BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | IMakerDAO | unmatched — not counted | — | mentioned in finding BLQ-04 | no |
| REP-Bloq-11_11_20.pdf | IToken | unmatched — not counted | — | mentioned in finding BLQ-04 | no |
| REP-Bloq-11_11_20.pdf | Timelock | unmatched — not counted | — | mentioned in finding BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | Pausable | unmatched — not counted | — | mentioned in finding BLQ-05 | no |
| REP-Bloq-11_11_20.pdf | PoolShareToken | unmatched — not counted | — | mentioned in finding BLQ-08 | no |
| REP-Bloq-11_11_20.pdf | VETH | own contract | TransparentUpgradeableProxy (proxy) (alternative) `0x951397286e4b78ae5827502ed494d7902d3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (selected) `0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 37d from audit; next candidate 602d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-VesperPools-20_01_2021.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | AaveV2Strategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | GovernanceToken | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| REP-Bloq-VesperPools-20_01_2021.pdf | VSP | own contract | VSP (selected) `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Bloq-VesperPools-20_01_2021.pdf | VVSP | unmatched — not counted | — | — | no |
| REP-Bloq_15_02_2021.pdf | PaymentSplitter | unmatched — not counted | — | listed in scope table and findings | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | GovernanceToken | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | VSP | own contract | VSP (selected) `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Fourth Audit v210119.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper Pools Security - Fourth Audit v210119.pdf | VVSP | unmatched — not counted | — | — | no |
| Vesper Pools Security - PaymentSplitter Audit v210210.pdf | PaymentSplitter | unmatched — not counted | — | listed in scope section | no |
| Vesper Pools Security - Second Audit v201230.pdf | Owned | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | Pausable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | ICollateralManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IController | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IVPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IAddressListExt | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IMakerDAO | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | IAave | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | Timelock | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | VSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | VETH | own contract | TransparentUpgradeableProxy (proxy) (alternative) `0x951397286e4b78ae5827502ed494d7902d3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (selected) `0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 18d from audit; next candidate 583d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Second Audit v201230.pdf | VTokenBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | PoolShareToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | PoolRewards | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | Controller | own contract | Controller (selected) `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Second Audit v201230.pdf | AaveStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | AaveMakerStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | AaveMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Second Audit v201230.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security - Second Audit v201230.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | YearnEarnStrategyEthDai | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | YearnVaultStrategyEthDai | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | YearnMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | CompoundStrategyUSDC | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | CompoundStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | VSPRStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | VSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security - Third Audit v201230.pdf | VVSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VETH | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x951397286e4b78ae5827502ed494d7902d3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (alternative) `0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Vesper Pools Security Audit v201230.pdf | VSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VMANA | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | Pausable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VTokenBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | ICollateralManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IStrategyManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IVPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IAave | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IMakerDAO | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | AddressProvider | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | AaveStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | PoolShareToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VVSPR | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | VSPRStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | Controller | own contract | Controller (selected) `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools Security Audit v201230.pdf | VBTC | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper Pools Security Audit v201230.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | AaveStrategyPolygon | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundLeverageStrategyUNI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Crv3PoolStrategyBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | CrvsBTCPoolStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Earn | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCrvsBTCStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnCrvsBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperStrategyDAIWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnVesperStrategyDAIWETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | FlashLoanHelper | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IAave | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IAddressList | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IConvexToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | ISoloMargin | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | IUniswapV3Oracle | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PaymentSplitter | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolAccountant | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Strategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | Timelock | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VFR | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VPoolBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf | VesperV3Strategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundCoverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundStableStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundStableStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | CompoundXYStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexCoverageStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStableStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStableStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | ConvexStrategyDAI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | Earn | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAaveStrategyWETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAlphaLendStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnAlphaLendStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCompoundStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCreamStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnCreamStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnRariFuseStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | EarnYearnStrategyETH | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFR | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRBuffer | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRCoveragePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRPool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ILiquidityGauge | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | PoolAccountant | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | PoolRewards | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VPool | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x4dbe3f01abe271d3e65432c74851625a8c30aa7b` — deployed 2022-07-26 21:49:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xca7c607c590ad16007ccbbba9d26f4df656a36c2` — deployed 2024-10-04 05:53:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd11d9b4c0b3bd5ec324123b241fb07af19caeac5` — deployed 2022-06-24 21:53:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c73f025a1947ec770327b9956fc61f535f72c22` — deployed 2024-11-14 15:30:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee` — deployed 2021-07-08 00:53:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd25ee8509302bd23dc11d1ab867fe995cdd7b531` — deployed 2022-07-06 10:29:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdd9f61a85ffe73e41ef889817972f0b0aae6d6dd` — deployed 2023-02-02 17:17:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb4edcefd59750144882170fcc52ffed40bfd5f7d` — deployed 2021-08-03 19:19:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x650cd45dedb19c33160acc522ad1a82d9701036a` — deployed 2023-02-15 14:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VPoolBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VFRStablePool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Earn | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveStrategyAvalanche | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveStrategyPolygon | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AaveV1Strategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | AlphaLendStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundLeverageStrategyLINK | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundLeverageStrategyUNI | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundXYStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnCompoundStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnCompoundStrategyETH | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundCoverageStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CompoundStableStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex2PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex2PoolStrategyMIMUSTPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4MetaPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4MetaPoolStrategyMIMPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Convex4PoolStrategySUSDPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexStrategyBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexCoverage3PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexCoverageStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | ConvexStableStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv2PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv2PoolStrategyArbitrumUSDCUSDTPool | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvSBTCPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnCrvSBTCPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv4MetaPoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | Crv4PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvPoolStrategyBase | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | CrvA3PoolStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | MakerStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | RariFuseStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | EarnRariFuseStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VesperStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | YearnStrategy | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf | VPoolUpgrader | unmatched — not counted | — | listed in scope | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Governed | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAave | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAaveV1 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAddressList | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAddressListFactory | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ISwapManager | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IAggregatorV3 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ICompound | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ILiquidityGaugeV2 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IStableSwap3Pool | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ITokenMinter | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IMakerDAO | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IToken | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | ICollateralManager | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IPoolRewards | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IVesperPool | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | IYToken | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolERC20 | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolERC20Permit | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolRewards | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolShareToken | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | PoolStorage | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VETH | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x951397286e4b78ae5827502ed494d7902d3cca8c` — deployed 2022-07-06 10:21:56+03 — liveness: live (current_address_book_code)<br>VETH (alternative) `0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e` — deployed 2020-12-18 07:59:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VPool | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x4dbe3f01abe271d3e65432c74851625a8c30aa7b` — deployed 2022-07-26 21:49:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xca7c607c590ad16007ccbbba9d26f4df656a36c2` — deployed 2024-10-04 05:53:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd11d9b4c0b3bd5ec324123b241fb07af19caeac5` — deployed 2022-06-24 21:53:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c73f025a1947ec770327b9956fc61f535f72c22` — deployed 2024-11-14 15:30:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee` — deployed 2021-07-08 00:53:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xd25ee8509302bd23dc11d1ab867fe995cdd7b531` — deployed 2022-07-06 10:29:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdd9f61a85ffe73e41ef889817972f0b0aae6d6dd` — deployed 2023-02-02 17:17:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb4edcefd59750144882170fcc52ffed40bfd5f7d` — deployed 2021-08-03 19:19:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x650cd45dedb19c33160acc522ad1a82d9701036a` — deployed 2023-02-15 14:18:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-07-08 was 12d from audit; next candidate 38d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VPoolBase | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveCore | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveV1Strategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveV1StrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyUNI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyUSDT | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundStrategyWBTC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyLINK | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CreamStrategyWBTC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolMgr | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | Crv3PoolStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CrvPoolMgrBase | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveMakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | AaveMakerStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundMakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | CompoundMakerStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | MakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VesperMakerStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | VesperMakerStrategyETH | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | YearnStrategy | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | YearnStrategyDAI | unmatched — not counted | — | listed in scope table | no |
| PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf | YearnStrategyUSDC | unmatched — not counted | — | listed in scope table | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | AaveStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | Controller | own contract | Controller (selected) `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` — deployed 2020-12-18 00:17:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | IVesperPool | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VSP | own contract | VSP (selected) `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Pools audit-poolv2-dedaub-April-2021.pdf | VVSP | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | AaveCore | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | AaveStrategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | AaveStrategyUSDC | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Governed | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Owned | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Pausable | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | UniswapManager | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub-May-2021.pdf | VUSDC | own contract | VUSDC (selected) `0x0c49066c0808ee8c673553b7cbd99bcc9abf113d` — deployed 2020-12-18 08:32:13+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 134d from audit; next candidate 431d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools v3 audit-dedaub.pdf | AaveCore | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | AaveStrategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | AaveStrategyUSDC | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Governed | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Owned | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Pausable | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | UniswapManager | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Pools v3 audit-dedaub.pdf | VUSDC | own contract | VUSDC (selected) `0x0c49066c0808ee8c673553b7cbd99bcc9abf113d` — deployed 2020-12-18 08:32:13+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335` — deployed 2022-07-06 10:13:42+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-12-18 was 134d from audit; next candidate 431d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Pools+Strategies September-2021.pdf | CompoundXYStrategy | unmatched — not counted | — | listed in scope: 'The CompoundXYStrategy and CompoundLeverageStrategy strategies' | no |
| Vesper Pools+Strategies September-2021.pdf | CompoundLeverageStrategy | unmatched — not counted | — | listed in scope: 'The CompoundXYStrategy and CompoundLeverageStrategy strategies' | no |
| Vesper Pools+Strategies September-2021.pdf | VFRBuffer | unmatched — not counted | — | mentioned in finding H2: 'VFRBuffer: non-standard ERC20 Tokens can be stuck inside the VFRBuffer' | no |
| Vesper Pools+Strategies September-2021.pdf | VFRStablePool | unmatched — not counted | — | mentioned in finding M4: 'VFRStablePool: The checkpoint method only considers profiting strategies' | no |
| Vesper Pools+Strategies September-2021.pdf | AlphaLendStrategy | unmatched — not counted | — | mentioned in finding L1: 'AlphaLendStrategy: ALPHA rewards are not claimed on-chain' | no |
| Vesper Pools+Strategies September-2021.pdf | VFRCoveragePool | unmatched — not counted | — | mentioned in finding A1: 'VFRCoveragePool contract seems to serve no purpose' | no |
| Vesper Pools+Strategies September-2021.pdf | VFR | unmatched — not counted | — | mentioned in finding A2: 'VFR contract is there only for code reuse' | no |
| Vesper Pools+Strategies September-2021.pdf | RariFuseStrategy | unmatched — not counted | — | mentioned in finding A6: 'RariFuseStrategy: looser checks are performed on construction than on migrateFusePool()' | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PaymentStream | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PaymentStreamFactory | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper Pools-Dedaub-Nov-2021.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | AaveV2Strategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | AaveV2StrategyLINK | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | CompoundMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | SwapManager | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | UniswapManager | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VLINK | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd11d9b4c0b3bd5ec324123b241fb07af19caeac5` — deployed 2022-06-24 21:53:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper Strategies - April v210428.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VTokenBase | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper Strategies - April v210428.pdf | VesperMakerStrategyLINK | unmatched — not counted | — | — | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | VTokenBase | unmatched — not counted | — | mentioned in sections 3.5, 3.6, and finding VSP-035 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | PoolShareToken | unmatched — not counted | — | mentioned in section 3.4 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | AaveStrategy | unmatched — not counted | — | mentioned in section 3.8 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | Crv3PoolMgr | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | Crv3PoolStrategy | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | SwapManager | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | OracleSimple | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v2-may-2021.pdf | UniswapManager | unmatched — not counted | — | mentioned in section 3.10 as removed and replaced | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | VTokenBase | unmatched — not counted | — | mentioned in findings and assessment sections | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | PoolShareToken | unmatched — not counted | — | mentioned in section 3.4 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | AaveStrategy | unmatched — not counted | — | mentioned in section 3.8 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | Crv3PoolMgr | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | Crv3PoolStrategy | unmatched — not counted | — | mentioned in section 3.9 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | SwapManager | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | OracleSimple | unmatched — not counted | — | mentioned in section 3.10 | no |
| Vesper V3 - 2nd Review - v210519 (1).pdf | Strategy | unmatched — not counted | — | mentioned in section 3.8 as base contract | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | AaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | AaveV2MakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | GovernanceToken | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | VSP | own contract | VSP (selected) `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` — deployed 2021-02-11 16:50:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Jan21.pdf | VVSP | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveV2Strategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveV2MakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CompoundMakerStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CompoundMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | AaveStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | MakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | Strategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | VSPStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | VesperMakerStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | VesperMakerStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March21.pdf | CollateralManager | own contract | CollateralManager (selected) `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` — deployed 2020-12-18 07:54:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Vesper-Pools-Audit-Coinspect-March21.pdf | UniswapManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | FlashLoanHelper | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | IComptrollerMultiReward | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | IComptroller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | BenqiCompoundLeverageAvalancheStrategyAVAX | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | BenqiCompoundMultiRewardAvalancheStrategyAVAX | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundLeverageAvalancheStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundLeverageStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundMultiRewardAvalancheStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundXYStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | CompoundXYStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | VesperCompoundXYStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariCore | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariFuseLeverageStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariFuseStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | RariFuseStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | EarnRariFuseStrategy | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-March22.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | AaveStrategyPolygon | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundLeverageStrategyUNI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Crv3PoolStrategyBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | CrvsBTCPoolStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Earn | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCompoundStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCrvsBTCStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnCrvsBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperStrategyDAIWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnVesperStrategyDAIWETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | FlashLoanHelper | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IAave | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IAddressList | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IConvexToken | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | ISoloMargin | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | IUniswapV3Oracle | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | MakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PaymentSplitter | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolAccountant | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | PoolShareToken | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Strategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | Timelock | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VFR | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VPoolBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperMakerStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Nov21.pdf | VesperV3Strategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundCoverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundLeverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundLeverageStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundStableStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundStableStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | CompoundXYStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexCoverageStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexCoverageStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStableStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStableStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | ConvexStrategyDAI | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | Earn | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAaveStrategyWETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAlphaLendStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnAlphaLendStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCompoundStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCreamStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnCreamStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnDrip | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnRariFuseStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnVesperMakerStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | EarnYearnStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | OraclesBase | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFR | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRBuffer | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRCoveragePool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRPool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VFRStablePool | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Coinspect-Sept21.pdf | VSPStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | EarnAaveMakerStrategy | unmatched — not counted | — | mentioned in L1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | EarnCompoundMakerStrategy | unmatched — not counted | — | mentioned in L1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | AaveLeverageStrategy | unmatched — not counted | — | mentioned in A1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | CompoundLeverageStrategy | unmatched — not counted | — | mentioned in A1 finding | no |
| Vesper-Pools-Audit-Dedaub-April 22.pdf | EarnVesperMakerStrategy | unmatched — not counted | — | mentioned in A2 finding | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | CompoundXYStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | ConvexSBTCStrategyWBTC | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | ConvexStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | EarnRariFuseStrategyETH | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | EarnYearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | FlashLoanHelper | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PaymentStream | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PaymentStreamFactory | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PoolRewards | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | PoolRewardsUpgrader | unmatched — not counted | — | — | no |
| Vesper-Pools-Audit-Dedaub-Oct21.pdf | YearnStrategy | unmatched — not counted | — | — | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | VesperMakerStrategy | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | AaveV3 | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | AaveV3VesperXy | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex2PlainPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex3PlainPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex4FactoryMetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Convex4MetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve2LendingPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve3LendingPoolAave | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve4FactoryMetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf | Curve4PlainOr4MetaPool | unmatched — not counted | — | listed in scope section 1.4 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | Convex4PoolStrategyMUSDPool | unmatched — not counted | — | Listed in findings H1, L2 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariFuseStrategy | unmatched — not counted | — | Listed in finding M1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariFuseStrategyETH | unmatched — not counted | — | Listed in finding M1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariFusePool | unmatched — not counted | — | Listed in finding M2 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | CompoundLegerageAvancheStrategy | unmatched — not counted | — | Listed in finding M3 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | VesperCompoundXYStrategy | unmatched — not counted | — | Listed in findings M3, L1, A2 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | CompoundStrategy | unmatched — not counted | — | Listed in finding L1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | CrvPoolStrategyBase | unmatched — not counted | — | Listed in finding L3 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | EarnCrvSBTCPoolStrategy | unmatched — not counted | — | Listed in finding L3 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | RariCore | unmatched — not counted | — | Listed in finding A1 | no |
| Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf | Minter | unmatched — not counted | — | Listed in finding A3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd02d6ec21851092a9cca8a8eb388fdf66ba96f9b` | ESVSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6aff1846413bf15a8d7e72c799b96bf37e424b13` | ESVSP721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca5a5b83fc6ed8577102e0b3b19379683f33b346` | MiniArmyKnife | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x951397286e4b78ae5827502ed494d7902d3cca8c` | VETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c73f025a1947ec770327b9956fc61f535f72c22` | VPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4dbe3f01abe271d3e65432c74851625a8c30aa7b` | VPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x677ddbd918637e5f2c79e164d402454de7da8619` | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b` | VWBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 144 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 79 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 523 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=3
- Match method counts: temporal_name=5, unique_name=14

Zero-match audit list:

- [4863] REP-Bloq_15_02_2021.pdf
- [4865] Vesper Pools Security - PaymentSplitter Audit v210210.pdf
- [4867] Vesper Pools Security - Third Audit v201230.pdf
- [4869] Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf
- [4870] Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf
- [4871] Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf
- [4872] Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf
- [4877] Vesper Pools+Strategies September-2021.pdf
- [4878] Vesper Pools-Dedaub-Nov-2021.pdf
- [4880] Vesper V3 - 2nd Review - v2-may-2021.pdf
- [4881] Vesper V3 - 2nd Review - v210519 (1).pdf
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf
- [4885] Vesper-Pools-Audit-Coinspect-Nov21.pdf
- [4886] Vesper-Pools-Audit-Coinspect-Sept21.pdf
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf
- [4888] Vesper-Pools-Audit-Dedaub-Oct21.pdf
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf
- [4890] Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf

Fork inheritance lineage and inherited audits are included when available.
