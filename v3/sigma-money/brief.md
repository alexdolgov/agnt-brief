# Agentic Audit Brief: Sigma Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sigma Money (`sigma-money`)
- Website: [https://sigma.money](https://sigma.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 932 unique implementations (1472 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $2,706,891.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Sigma Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across bsc. Structural roles: 7 core, 6 supporting, 2 unclassified. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (7), supporting (6), unclassified (2)
- Contract kinds: contract (15)
- Detected standards: ownable (4), erc1967proxy (3), accesscontrol (2), erc165 (2), erc20 (1), erc20permit (1), ownable2step (1)
- Frameworks: openzeppelin (11), chainlink (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 15; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 34 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 898 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/168
- Verified + Unaudited implementations: 168
- Verified by bytecode match: 0
- Unverified implementations: 764
- Unique implementations: 932
- Raw deployments: 1472
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (168)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveFundingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x705523...1cd593` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x86884a...3c3e8e`; bsc `0xa0efda...1e3327` | ⚠️ Unaudited |
| AsBnbPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13542...00704d` | ⚠️ Unaudited |
| AtlasOracleAdaptor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x095989...1dca8b`; bsc `0x0cd947...ce609c`; bsc `0x154d34...9f28c2`; bsc `0x2279c2...b9c81e`; bsc `0x2f8af2...b815a1`; bsc `0x36a9d9...330005`; bsc `0x412923...117358`; bsc `0x48e911...8ee676`; bsc `0x512ef1...4a2760`; bsc `0x5dd12f...7e6c64`; bsc `0x6e7b79...10994e`; bsc `0x73a73d...e07f53`; bsc `0x85d454...580ddd`; bsc `0x8d28ce...b4ae19`; bsc `0x8ed54a...f7f742`; bsc `0x8fb319...c2d55d`; bsc `0xa19f9b...979c37`; bsc `0xc8373c...095e98`; bsc `0xe479a4...1ea18f`; bsc `0xeb898a...302cde` | ⚠️ Unaudited |
| BasePegKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x9dd8e6...4ae7c5`; bsc `0xa76bc9...43f27c`; bsc `0xb0a52e...eba950`; bsc `0xc95220...00e0c7`; bsc `0xdcb013...87a020`; bsc `0xea854e...569d26` | ⚠️ Unaudited |
| BatchManagementUtils | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcde8d...5e5089` | ⚠️ Unaudited |
| BNBPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x032e07...9e6e22`; bsc `0x369309...4b5954`; bsc `0x604b27...d3ecd6`; bsc `0x67fdfa...d0c372`; bsc `0x837bd2...3e6c89`; bsc `0x90ace5...0d248e`; bsc `0xa3096e...6d83fd`; bsc `0xa8a94c...d8aef8`; bsc `0xd8447d...e4e61a`; bsc `0xee0b0b...73e6df` | ⚠️ Unaudited |
| BNBPriceOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254886 | `0x45dcdf...3efa3e` | ⚠️ Unaudited |
| BNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2ff01...10b173` | ⚠️ Unaudited |
| BNBSlisBNBConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9844e7...be9693` | ⚠️ Unaudited |
| BNBUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x11212d...ab39f9`; bsc `0x219be2...c4ca94`; bsc `0x79d91d...51bb49`; bsc `0x89b70c...3f8598`; bsc `0x99b488...1086e2`; bsc `0xb323c8...a826a4`; bsc `0xb69066...a25576`; bsc `0xc7f067...cd8653`; bsc `0xdc0d3d...050bdd`; bsc `0xf0ebab...991a9d` | ⚠️ Unaudited |
| BnbUSDBasePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254873 | `0x16d39a...754c94` | ⚠️ Unaudited |
| BnbUSDBasePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254876 | `0x1a36aa...86a635` | ⚠️ Unaudited |
| BnbUSDBasePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254901 | `0x2b9c1f...4a3aa3` | ⚠️ Unaudited |
| BnbUSDBasePool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254899 | `0xde1bdd...eacea7` | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1752f...bb6b7b` | ⚠️ Unaudited |
| BrokerLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xab3eef...947a57`; bsc `0xde86fc...f4aaf4`; bsc `0xef30b2...d56eee` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x7e67e4...3a658f`; bsc `0x9a7ca2...4222e1`; bsc `0xa2d1a0...989224`; bsc `0xc3904a...adc615` | ⚠️ Unaudited |
| CDPLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce9c8...5123b5` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2525f...3d95fc` | ⚠️ Unaudited |
| ConverterRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee2d1...74b1a1` | ⚠️ Unaudited |
| CoreDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd23eb2...769c1c` | ⚠️ Unaudited |
| CreditBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb63989...efad89` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xe6e290...741cd4`; bsc `0xed55ff...5507ff` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb84637...bbf625` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x89d42c...fe6574`; bsc `0xb37ac2...83b8be` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0xbc44ba...0fcedd`; bsc `0xd8950c...ce99aa`; bsc `0xee9559...66c2a0`; bsc `0xf1cc7f...b0d2ac` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x8dbd7c...9fb17c`; bsc `0x95646d...d530fe`; bsc `0xd91c72...b774ba`; bsc `0xf8bfd1...d4e75a` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6de1...00a5b1` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 21 deployments: bsc `0x01d2c1...af068e`; bsc `0x07d60c...6293d3`; bsc `0x2b67cf...31b17a`; bsc `0x42e34b...86e200`; bsc `0x5c375f...adc2ae`; bsc `0x678913...67f286`; bsc `0x8120fa...f7b3c4`; bsc `0x827362...01e6ea`; bsc `0x833643...30649c`; bsc `0x867e51...bda1f8`; bsc `0x9322b4...e40101`; bsc `0x944dd8...54a7ae`; bsc `0x984e62...7db630`; bsc `0xa0e3ed...1f8f14`; bsc `0xa699f3...a80899`; bsc `0xb1069e...29482c`; bsc `0xb7e8ac...87d854`; bsc `0xc5f94e...354fc9`; bsc `0xc6d80f...a8fd7f`; bsc `0xcccedf...8f431c`; bsc `0xffff06...8384ed` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 43 deployments: bsc `0x12ebc1...572a1a`; bsc `0x15cc25...30ac30`; bsc `0x17c1bf...53aca7`; bsc `0x19c329...facf2b`; bsc `0x1cb5b9...3bd677`; bsc `0x28ef29...a8bd88`; bsc `0x2d460c...6db19d`; bsc `0x301b82...0bcd6c`; bsc `0x355949...a6e738`; bsc `0x38b741...89abce`; bsc `0x3d35d2...3dfb6d`; bsc `0x487545...d7068f`; bsc `0x5147e4...c2cf5e`; bsc `0x56d654...cf5c7a`; bsc `0x68fd8f...6af095`; bsc `0x6b0173...edbe04`; bsc `0x8127ca...dbdaa0`; bsc `0x92fe47...8976e3`; bsc `0x938cc7...a1556f`; bsc `0x96f66b...6b1dac`; bsc `0x97ac42...bfa52d`; bsc `0x9bdfa6...bf014f`; bsc `0x9daf5d...47b080`; bsc `0x9f80a7...e7a510`; bsc `0xa1efd2...cff036`; bsc `0xac1c50...91d0b9`; bsc `0xb2477a...e522b8`; bsc `0xb79660...50f020`; bsc `0xc25688...38bcde`; bsc `0xc26caa...d39c79`; bsc `0xc45583...dd07e2`; bsc `0xcb712c...940cc3`; bsc `0xcd00c2...6542d0`; bsc `0xcfa6b1...411d17`; bsc `0xd12c4d...a7fdd4`; bsc `0xd5fcc3...70334b`; bsc `0xd69e4b...31fddb`; bsc `0xd76665...1e93ef`; bsc `0xe1e887...7b2ed2`; bsc `0xe52592...e7031b`; bsc `0xf0ca1c...1a5e0d`; bsc `0xf93ecb...ca64ac`; bsc `0xfc2a24...8ac1fc` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254875 | `0x185cd2...9c1c86` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254898 | `0xd7dd08...cea28c` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x10c9cc...f08c82`; bsc `0x14efa5...bdac72` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe45661...5d6805` | ⚠️ Unaudited |
| FxUSDBasePoolV2Facet | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x93cc21...d144b5`; bsc `0xb2624f...774345`; bsc `0xbc22dd...7ea6ed`; bsc `0xe5fca7...801d45` | ⚠️ Unaudited |
| GaugeEmission | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254871 | `0x0626bd...f70348` | ⚠️ Unaudited |
| GaugeEmission | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x460b41...a67412`; bsc `0xca5956...670b3e`; bsc `0xed724f...1956ae` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa16bb6...8e6ad9` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6c9f8c...f37c11`; bsc `0xcc0330...e1e701` | ⚠️ Unaudited |
| IdleCollateralToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39d01...763fa3` | ⚠️ Unaudited |
| IdleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259ee...ff8733` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7d482d...db439d`; bsc `0xce3389...110ed3` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4b64f6...97b824`; bsc `0xbdb2cf...443d33`; bsc `0xdc45ed...93e22d` | ⚠️ Unaudited |
| InverseBnbPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9eb54...974bc0` | ⚠️ Unaudited |
| L2FxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x13fc1e...721790`; bsc `0x750e14...39e531`; bsc `0xa46c1e...e2b7aa`; bsc `0xb47d4e...43e06a`; bsc `0xe5bae5...f8b2f0`; bsc `0xff7cee...bcd379` | ⚠️ Unaudited |
| L2FxUSD | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-254888 | `0x5519a4...fda265` | ⚠️ Unaudited |
| LendingBroker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 53 deployments: bsc `0x039c4a...36bbe9`; bsc `0x0f8aab...7a6b8d`; bsc `0x1cbd43...69afa8`; bsc `0x218095...b38d78`; bsc `0x28fb75...ac74fc`; bsc `0x2ef465...b83223`; bsc `0x31f60d...eef54b`; bsc `0x3a2c35...3200ee`; bsc `0x3be25d...7f331f`; bsc `0x3c4b64...7e7877`; bsc `0x3e4f45...06ef6d`; bsc `0x44cf38...eccdd5`; bsc `0x463efd...17fbab`; bsc `0x46d795...f630aa`; bsc `0x580275...054282`; bsc `0x5d440a...b707c0`; bsc `0x5ee171...ff3a23`; bsc `0x67e0d8...913b48`; bsc `0x684e01...9cc30f`; bsc `0x6a183f...637ac4`; bsc `0x6d1377...d50011`; bsc `0x6e0200...57e853`; bsc `0x714e63...535b1c`; bsc `0x7deb46...a1d718`; bsc `0x85ec16...d4a9d6`; bsc `0x864e21...439f5d`; bsc `0x882064...067307`; bsc `0x900b4d...ba5f0e`; bsc `0x91e79f...18c48c`; bsc `0x948c51...a7d36d`; bsc `0x9b1f52...d355bf`; bsc `0xa96553...9882fd`; bsc `0xa9ca92...0f0350`; bsc `0xad04ad...6e153d`; bsc `0xb1aa81...551e09`; bsc `0xbdc978...dff7aa`; bsc `0xbf7c2a...e4c1fd`; bsc `0xc7c519...7d854e`; bsc `0xc8a0ae...57352c`; bsc `0xc97e90...25a061`; bsc `0xcde5e3...7db0a0`; bsc `0xd16ee3...1d6425`; bsc `0xd2d086...25aa25`; bsc `0xd54ff6...53f621`; bsc `0xd7242c...be6d4e`; bsc `0xea3dd7...c92043`; bsc `0xea51d4...628301`; bsc `0xec19e3...215b0e`; bsc `0xee82e1...f1a30a`; bsc `0xef2468...71379a`; bsc `0xf3c6df...0b9d0a`; bsc `0xf65756...da711a`; bsc `0xfd13bb...c1b292` | ⚠️ Unaudited |
| LendingFeeRecipient | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3c0d0...6d89ff` | ⚠️ Unaudited |
| Liquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x534ae7...1973d0`; bsc `0x93414b...f138a5`; bsc `0xff0895...4d8b1d` | ⚠️ Unaudited |
| ListaAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x087b98...7d5089`; bsc `0x30639f...613cc3`; bsc `0x3127b4...d370a1`; bsc `0x42d9dd...0627b6`; bsc `0xa18ae7...400d61`; bsc `0xa64fe2...099301`; bsc `0xc59f2f...dfcc9d`; bsc `0xf7b841...dbea01` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x362d27...9446ea`; bsc `0x55fd8e...29b186`; bsc `0xedd876...2f4214` | ⚠️ Unaudited |
| ListaDAORateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x833213...2c47df` | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x95cacf...b14635`; bsc `0xa45625...5dacba` | ⚠️ Unaudited |
| ListaStakeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5bf5c3...9f301c`; bsc `0x89b2eb...e9486a`; bsc `0xd99ab8...c64e91` | ⚠️ Unaudited |
| ListaStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5cf8a3...827b76`; bsc `0xd8c4e5...14495e` | ⚠️ Unaudited |
| ListaStrategyV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x288f27...6370c8`; bsc `0x42d6bd...fd8c9c`; bsc `0x5137cd...da0485`; bsc `0x8843fa...971b86` | ⚠️ Unaudited |
| ListaStrategyV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254885 | `0x434a55...35f87e` | ⚠️ Unaudited |
| ListaStrategyV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254891 | `0x6dbc02...936668` | ⚠️ Unaudited |
| ListaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x29202d...457167`; bsc `0x7dcafc...36adaf` | ⚠️ Unaudited |
| lisUSDPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x989af6...d7c2c0` | ⚠️ Unaudited |
| LongPositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x071104...a64664`; bsc `0x5eb095...6346f7`; bsc `0x9d49ae...9b9181`; bsc `0xa249fa...d973fb`; bsc `0xb99040...c090e0`; bsc `0xc0f9f5...1f1836`; bsc `0xe87add...a26ff8`; bsc `0xf0db6d...99ecb9` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x12b09b...1424c0`; bsc `0x81d163...6e2e4d` | ⚠️ Unaudited |
| LpUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe924a...6d02ee` | ⚠️ Unaudited |
| mBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad745b...731521` | ⚠️ Unaudited |
| MerkleVerifier | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x92dffe...a1aa3e`; bsc `0xac6a68...a95739`; bsc `0xaf2982...6a722d`; bsc `0xcf7b18...9fe9d0`; bsc `0xd69e7b...281eac` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa12663...55ee3d` | ⚠️ Unaudited |
| MockGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0xb03e82...684ce0`; bsc `0xc8dd8a...2a2f7f`; bsc `0xf08d6c...384c0f` | ⚠️ Unaudited |
| Moolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x0af5cd...6bc34f`; bsc `0x316039...95e316`; bsc `0x4b1ec9...3510b9`; bsc `0x627527...294be9`; bsc `0x75c42e...059686`; bsc `0x7ee9ed...2b13b6`; bsc `0xa621ef...f14dca`; bsc `0xd3b6aa...53004a`; bsc `0xdb33cc...c20e2f`; bsc `0xf97ce1...0d8568` | ⚠️ Unaudited |
| MoolahVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x2d98c9...a47405`; bsc `0x33a343...d15a1b`; bsc `0x6357a5...8f2714`; bsc `0x89d6f9...2617b6`; bsc `0x8de848...1eeee4`; bsc `0xb5854e...e7841f`; bsc `0xb5fcba...97702c`; bsc `0xd39429...5158fe`; bsc `0xfaeccd...785f4c` | ⚠️ Unaudited |
| MoolahVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0d1fac...b9fb52`; bsc `0x3984e9...28a443`; bsc `0x49fab7...7d5bdf`; bsc `0x55a937...8cf5fc`; bsc `0xa505ac...4af80f`; bsc `0xcd13a4...cb91ac`; bsc `0xdcae13...535134` | ⚠️ Unaudited |
| MoolahVaultManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4a678...14db12` | ⚠️ Unaudited |
| MultiPathConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf44ef3...3179a3` | ⚠️ Unaudited |
| mXRPPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0999ca...3f84bf`; bsc `0xcec9dd...6d2a51` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x84047b...238c77`; bsc `0xb83d60...4abd6d`; bsc `0xdc7365...f622f8` | ⚠️ Unaudited |
| PancakeSwapExample | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x354c4b...2e46bc`; bsc `0x89f85f...675e1e` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d23ef...d5493c` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x871f80...fee1fa` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0998cd...71941d` | ⚠️ Unaudited |
| PancakeV3SpotPriceReader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: bsc `0x033555...4e4e67`; bsc `0x0871bb...554389`; bsc `0x11cf98...a18def`; bsc `0x1fea48...c05eed`; bsc `0x211c99...47a32d`; bsc `0x4b1a50...6923c4`; bsc `0xbcaa5b...af316c`; bsc `0xc2f0dd...7a921c`; bsc `0xc30d13...935ff0`; bsc `0xcb1132...9ee05e`; bsc `0xd76387...2dc46a`; bsc `0xdb0b57...ed32fa`; bsc `0xdf23e3...8989b8`; bsc `0xeded81...be3c84`; bsc `0xf39e92...1691e5` | ⚠️ Unaudited |
| PancakeV3SpotPriceReader | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254880 | `0x220ed3...4780e5` | ⚠️ Unaudited |
| PausableMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7e8ef7...4a5ee0`; bsc `0xead4fe...fda3a7`; bsc `0xf5e80f...fc77a0` | ⚠️ Unaudited |
| PegKeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0644a9...6d5515`; bsc `0x1f13a0...fd57c0`; bsc `0x24a4ef...7b06fc`; bsc `0x704ab0...026475`; bsc `0xa00a1e...e1677b`; bsc `0xd043f9...47422b`; bsc `0xd5283c...b82492`; bsc `0xeaa146...03f1d5`; bsc `0xff5d0e...d88b2d` | ⚠️ Unaudited |
| PegKeeper | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254902 | `0xee3f89...7373f6` | ⚠️ Unaudited |
| PoolManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254872 | `0x0a43ca...ca600e` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3c9a60...6c3f4e`; bsc `0x62d43d...d664cf`; bsc `0x66471b...6cb4cb`; bsc `0x903d3c...fb88f0` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 33 deployments: bsc `0x0c1879...cff8ad`; bsc `0x2088df...b5c138`; bsc `0x252b59...e840b3`; bsc `0x288e44...e533da`; bsc `0x2d332f...4434f4`; bsc `0x2f0927...032c11`; bsc `0x37e0b4...af9fd3`; bsc `0x3ed43c...95a9d6`; bsc `0x3ee560...e71c73`; bsc `0x5afc98...8d3492`; bsc `0x6560d1...8fdc46`; bsc `0x696001...5a2b20`; bsc `0x7254bf...39c136`; bsc `0x794105...d5e9be`; bsc `0x808d1b...a08105`; bsc `0x8662ce...585d8f`; bsc `0x8f0512...29a4a1`; bsc `0x9627b4...a9ac7d`; bsc `0x9acdc9...fee1f3`; bsc `0x9c0e2b...c3fc20`; bsc `0x9f114e...eeee22`; bsc `0xa05c04...028fcf`; bsc `0xa1e000...bb51f7`; bsc `0xa2e52c...aad0a4`; bsc `0xb6df19...920134`; bsc `0xb9e701...9c9f6c`; bsc `0xe2a252...7b9d2a`; bsc `0xe4a1c4...98d2ca`; bsc `0xeeda1b...ed5cab`; bsc `0xf094b0...219a61`; bsc `0xf12b56...0cd409`; bsc `0xf3bd8d...a3fb02`; bsc `0xff8cb5...30f22a` | ⚠️ Unaudited |
| PTLinearDiscountOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x0f5fef...c72695`; bsc `0x1b2d36...4cd91b`; bsc `0x246917...6915ec`; bsc `0x25efb2...cb8e91`; bsc `0x3340df...efc133`; bsc `0x358614...3a0c66`; bsc `0x3afcaa...4849d8`; bsc `0x3e739b...9a44bd`; bsc `0x75856b...57edd1`; bsc `0x7b4717...3b6aa4`; bsc `0x97093f...3afea3`; bsc `0xa23b3b...384c8f`; bsc `0xb3be6e...7387f0`; bsc `0xc948b0...e9e7bb`; bsc `0xcd5aea...83c880`; bsc `0xd84d26...8f57e5`; bsc `0xe09e7b...6ac914`; bsc `0xf5ed7f...fce294`; bsc `0xf87e99...e77ef3`; bsc `0xffe3a7...d5074d` | ⚠️ Unaudited |
| PublicLiquidator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50c542...e42572` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe701f1...d10b1e` | ⚠️ Unaudited |
| RateCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3a8431...05c5de`; bsc `0xd7e46d...3342d8` | ⚠️ Unaudited |
| ReservePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x0776c7...b0790d`; bsc `0x1be63b...a810f7`; bsc `0x3a94a1...e3e371`; bsc `0x72c551...418e60`; bsc `0x7c5e3c...bc4611`; bsc `0x8b6a5b...fc4639`; bsc `0xb5b2d8...0f4237`; bsc `0xc7c7ef...b663e0`; bsc `0xd54344...b035e3`; bsc `0xec69a0...09d363`; bsc `0xf7314c...6064b6`; bsc `0xfc6b69...928570`; bsc `0xfe708f...a373f4` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 44 deployments: bsc `0x0164a2...65c3dd`; bsc `0x048df3...d7fbf4`; bsc `0x0d0b40...10a768`; bsc `0x185949...53de52`; bsc `0x2387ab...213446`; bsc `0x2bd7c4...51ebf8`; bsc `0x48a854...1583d5`; bsc `0x4c3917...b560f1`; bsc `0x692c00...30714d`; bsc `0x80ac75...b56787`; bsc `0x82d83d...b624fc`; bsc `0x8acbde...80e460`; bsc `0x95d565...05851c`; bsc `0x981a49...d45538`; bsc `0x9861be...e47a0c`; bsc `0x9e3ddb...e56554`; bsc `0xa1fa84...6bb7a8`; bsc `0xa23868...8aa310`; bsc `0xa2a915...5b1fa7`; bsc `0xa32630...543d93`; bsc `0xa41e1b...789e6c`; bsc `0xa6f4fb...9f65cd`; bsc `0xa7ed2c...ed7423`; bsc `0xb0eaa5...309b36`; bsc `0xb38ad2...f31d5a`; bsc `0xb5c93f...9129ac`; bsc `0xb9e8f1...f4cba7`; bsc `0xc22432...25d272`; bsc `0xc46347...5c3580`; bsc `0xcd1119...61fd2f`; bsc `0xd55d9d...404f62`; bsc `0xd58e23...4056e9`; bsc `0xd69ac4...b45d3b`; bsc `0xdc42ca...fd4eb2`; bsc `0xddb4bb...ee38f3`; bsc `0xdf3292...00aad8`; bsc `0xe02586...daf6cd`; bsc `0xe5acc1...7ea153`; bsc `0xee7878...98a3a4`; bsc `0xeffd62...9e129f`; bsc `0xf48913...2f92e6`; bsc `0xf6c92e...b3efb5`; bsc `0xf8b14b...584027`; bsc `0xf98e7a...7c4e37` | ⚠️ Unaudited |
| RevenuePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254877 | `0x1b54fe...e08d44` | ⚠️ Unaudited |
| RevenuePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254881 | `0x232da2...64d4cb` | ⚠️ Unaudited |
| RevenuePool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254895 | `0x9a4c05...424e42` | ⚠️ Unaudited |
| ReverseStabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x2f4d20...4a8657`; bsc `0x720961...fb60f6`; bsc `0x95bece...645e1b`; bsc `0x992b0d...09c376`; bsc `0xc01898...84503b` | ⚠️ Unaudited |
| RewardClaimers | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x56c9f9...55b8f1`; bsc `0x9c524b...a3708f` | ⚠️ Unaudited |
| RouterManagementFacet | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc24de5...49e4b6` | ⚠️ Unaudited |
| RWAAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0b116d...e350eb`; bsc `0x24ef66...17516e`; bsc `0x86f7c1...41ce7a` | ⚠️ Unaudited |
| RWAEarnPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x505829...357a33`; bsc `0xaf886f...21901a` | ⚠️ Unaudited |
| SafeGuard | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x59828a...770ef6`; bsc `0xb35276...0ffb6c`; bsc `0xb4a366...7d3097` | ⚠️ Unaudited |
| SafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254870 | `0x0609c8...317f34` | ⚠️ Unaudited |
| Shadow | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-254893 | `0x85375d...0a40e7` | ⚠️ Unaudited |
| ShortPoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcf90d...a2fc0d` | ⚠️ Unaudited |
| ShortPositionOperateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x09a5fb...8b347a`; bsc `0x1b6ac7...0d9536` | ⚠️ Unaudited |
| SigmaAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x08ad73...e6ab54`; bsc `0x34ac34...d96f7a`; bsc `0x54db51...652cf0`; bsc `0x5e7109...2c00f5`; bsc `0x7f29d9...5f0a6a`; bsc `0x82ba7a...17bcf9`; bsc `0xa39144...35ab7f`; bsc `0xad465f...f3d138`; bsc `0xc328a4...de8ff5`; bsc `0xdd6876...3dd713` | ⚠️ Unaudited |
| SigmaClisBNBPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0b0f50...736511`; bsc `0x1b6e6e...553bf2`; bsc `0x782b16...368f5f`; bsc `0xa3d7e7...35c25c`; bsc `0xf4f429...dff568` | ⚠️ Unaudited |
| SigmaClisBNBPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x7fe50e...d2f8c9`; bsc `0x8f9d40...ae5ee0`; bsc `0x949673...1496d1`; bsc `0x987dad...45996c`; bsc `0x9a62b8...d046d7`; bsc `0xcae968...6bea3e`; bsc `0xce315d...f93564`; bsc `0xd1a55e...5e1bb1`; bsc `0xdcadbe...06d40b`; bsc `0xe23d61...72a6a5`; bsc `0xef9f01...b7a4fa` | ⚠️ Unaudited |
| SigmaClisBNBSY | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x4ad309...783b6c`; bsc `0x9c16d5...2c9f4c`; bsc `0xa1f57c...c7be5c`; bsc `0xa4476f...661c04`; bsc `0xc80a20...406659`; bsc `0xd72bea...ec89c8`; bsc `0xfbf84c...0d6ed1` | ⚠️ Unaudited |
| SigmaClisBNBSY | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-254894 | `0x8b9856...847a29` | ⚠️ Unaudited |
| SigmaClisBNBSYBNBRateProvider | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x199bc7...c17f2a`; bsc `0x4fbeb5...ce0492`; bsc `0x5737f5...5c1baf`; bsc `0x6e88c9...53bbcf`; bsc `0x7ef811...8886dc`; bsc `0xb0bca5...74d17e`; bsc `0xc59568...d7c9f3`; bsc `0xd6bea4...129136` | ⚠️ Unaudited |
| SigmaClisBNBSYBNBRateProvider | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254878 | `0x1cf9bf...a92095` | ⚠️ Unaudited |
| SigmaClisBNBSYSlisBNBRateProvider | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8b8207...9b024a`; bsc `0xcd27cc...6b3fb4`; bsc `0xd916d1...3b961d` | ⚠️ Unaudited |
| SigmaController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x450970...90891c`; bsc `0x5ae2be...8f58d7`; bsc `0x657bf4...f3c4ea`; bsc `0x7ac1f4...7ef385`; bsc `0x7eb2df...2bd92d`; bsc `0x8aef3e...800b15`; bsc `0xae4f78...a9271a`; bsc `0xb911ea...79d95d`; bsc `0xb9c0c1...7a337f`; bsc `0xbade8c...bfe4be`; bsc `0xe18dff...eeb863`; bsc `0xec5fa8...bf0a30`; bsc `0xf4259e...8d5e2b` | ⚠️ Unaudited |
| SigmaController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254896 | `0xab98d1...01188b` | ⚠️ Unaudited |
| SigmaDisperser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9a16c...292dbe` | ⚠️ Unaudited |
| SigmaFeeDistributorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x163ec8...915c7a`; bsc `0x7e0cca...defa11`; bsc `0x8937e9...efe316`; bsc `0xceda08...ebf638` | ⚠️ Unaudited |
| SigmaGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x73ce30...6eab09`; bsc `0xaf2b59...4d9533`; bsc `0xb5e189...04fbd7`; bsc `0xb93b95...5e656b` | ⚠️ Unaudited |
| SigmaLongPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x31c464...4f70fb` | ⚠️ Unaudited |
| SigmaLongPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ae92f...474d6d` | ⚠️ Unaudited |
| SigmaLongPool | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254900 | `0xe8a16f...187b7d` | ⚠️ Unaudited |
| SigmaSPAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc04f63...57e91b` | ⚠️ Unaudited |
| SigmaSPAdapterExample | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03557a...890bb3` | ⚠️ Unaudited |
| SigmaVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x042666...c84e53` | ⚠️ Unaudited |
| SlisBnbOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc49b40...c7a58d` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x53c14f...280f1c`; bsc `0x9498e3...c6e890`; bsc `0x9d9d18...d0adf8`; bsc `0xb3c4ed...693db0`; bsc `0xbae10a...7f2f59`; bsc `0xc4ebc6...9085ae`; bsc `0xd10a02...8b0d30` | ⚠️ Unaudited |
| slisBNBx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f987...64c5aa` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb03518...d36da8` | ⚠️ Unaudited |
| SmartProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x450cfe...6667f2`; bsc `0x59fa44...6baeda`; bsc `0x6bdb0d...039369`; bsc `0x8dadaf...c63ff6`; bsc `0x99bf20...31caf3`; bsc `0xb51e9c...3bf9d2`; bsc `0xc3ea03...b35de3` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5342f...a60042` | ⚠️ Unaudited |
| StableSwapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c43dc...87a84c` | ⚠️ Unaudited |
| StableSwapLPCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x1a7226...81a806`; bsc `0x1d76e2...b86f59`; bsc `0x225f3f...4f9c1c`; bsc `0x637020...105098`; bsc `0x94f1af...b1c0ba`; bsc `0xacb63b...712478`; bsc `0xc0c4a8...496cc6`; bsc `0xc68d35...3e77db` | ⚠️ Unaudited |
| StableSwapPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x212b83...a3a126`; bsc `0x74082e...0c2615`; bsc `0xfe76a4...387862` | ⚠️ Unaudited |
| StonePriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6860a...55c4d8` | ⚠️ Unaudited |
| sUSD1PriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54e881...b380b3` | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152624...7c81c0` | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x573ca8...c5c308` | ⚠️ Unaudited |
| TimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x90b1f0...01b08a`; bsc `0x9705cd...0e7e3e` | ⚠️ Unaudited |
| TimelockedTransparentUpgradableProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82fad...dcad79` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 53 deployments: bsc `0x0ef74a...7f13a0`; bsc `0x112612...b7296c`; bsc `0x1523b0...a605b7`; bsc `0x169469...3c3683`; bsc `0x18878a...933fc9`; bsc `0x1bf29b...9d34fc`; bsc `0x22ebf9...4d97e7`; bsc `0x23d0a4...55cf1c`; bsc `0x2b01c6...5b5337`; bsc `0x2e4276...8de4fa`; bsc `0x2fdcf2...c7ff5b`; bsc `0x36eb3a...c3bf73`; bsc `0x393dbd...163835`; bsc `0x3a9aee...f2d697`; bsc `0x43be4c...f6f7c6`; bsc `0x4fbd64...cbeb65`; bsc `0x5ce9d3...531848`; bsc `0x5f394d...82c258`; bsc `0x69c692...d165ec`; bsc `0x6d5a76...f43c02`; bsc `0x6df2e2...751e1c`; bsc `0x6f1c4a...6f0f6b`; bsc `0x72dac4...01ab24`; bsc `0x7c62e9...653346`; bsc `0x837854...b7f10a`; bsc `0x86c193...9473c0`; bsc `0x8ea874...26ec3d`; bsc `0x8eaf54...f015e1`; bsc `0x92ab25...163b7a`; bsc `0x9c0724...d4fe50`; bsc `0x9cb24d...5c92a4`; bsc `0xaa0d47...ffd1ff`; bsc `0xabc2d0...cad1e9`; bsc `0xbb557b...b38e55`; bsc `0xbb78ee...0b8329`; bsc `0xc0a44a...435754`; bsc `0xc23675...9e9d7f`; bsc `0xc2a6dc...85d335`; bsc `0xc83dfd...95f191`; bsc `0xd042f9...d1e4af`; bsc `0xd3a168...a51ab5`; bsc `0xd40cf9...6a7cbf`; bsc `0xd6527d...7adc9c`; bsc `0xd690ab...7ec5b4`; bsc `0xda230c...7f273c`; bsc `0xe1d0bb...c18afe`; bsc `0xe2b995...6a4ab0`; bsc `0xe2ec4c...c5daf6`; bsc `0xea5e7e...d37948`; bsc `0xec6a6a...16c895`; bsc `0xecf341...465254`; bsc `0xf0ba22...07fbc8`; bsc `0xf9a27d...9da1ad` | ⚠️ Unaudited |
| uniBTCPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150d8f...bbb936` | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4c41...626d2d` | ⚠️ Unaudited |
| VeFunderGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1d0fd2...8621cf`; bsc `0x3de258...772353`; bsc `0x704231...603f31`; bsc `0xffb02c...917fb0` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x765d17...70274e` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321abb...19caee` | ⚠️ Unaudited |
| VestingWallet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0e45f7...8229df`; bsc `0x260df7...53ee56`; bsc `0x315e18...6b2218`; bsc `0x6789e8...c50a40`; bsc `0x86a305...047b72`; bsc `0x86a412...7d68ba`; bsc `0xa1f41a...e9c242`; bsc `0xc248fe...1e305c`; bsc `0xea0197...6e6122` | ⚠️ Unaudited |
| VoteModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254884 | `0x3fab76...f99965` | ⚠️ Unaudited |
| VoteModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3ffd01...d515c5`; bsc `0xaa492b...269515` | ⚠️ Unaudited |
| Voter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254883 | `0x3e8832...80f56e` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc2630...29b009` | ⚠️ Unaudited |
| WBETHOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3da9...384584` | ⚠️ Unaudited |
| WBETHPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3ac5...92f5a6` | ⚠️ Unaudited |
| WBNBSlisBNBConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf30c24...0f8134` | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf86155...de4262` | ⚠️ Unaudited |
| wsrUSDPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee2c5...76a46f` | ⚠️ Unaudited |
| WstETHPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950620...d23fc5` | ⚠️ Unaudited |
| wstUSRNewPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc3360...324104` | ⚠️ Unaudited |
| wstUSRPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5439ec...4722c8` | ⚠️ Unaudited |
| x33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf7fea...4af7df` | ⚠️ Unaudited |
| XShadow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2b808d...050605`; bsc `0x587612...3247a9`; bsc `0x87b662...675fb3`; bsc `0x9922bc...213b03` | ⚠️ Unaudited |
| XShadow | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254889 | `0x66a247...2e8442` | ⚠️ Unaudited |
| xSolvBTCOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e6cb...26527c` | ⚠️ Unaudited |
| xSolvBtcPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267cbe...a0bc5e` | ⚠️ Unaudited |
| YieldStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x1e5ada...48d089`; bsc `0x7bfee1...9d9a2d`; bsc `0xbd92ae...b18994`; bsc `0xde06b1...b21e73`; bsc `0xeec811...7a934e` | ⚠️ Unaudited |
| YieldStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254887 | `0x53f28d...8ef2fc` | ⚠️ Unaudited |
| yUSDFixedPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaff27...6d3365` | ⚠️ Unaudited |
| yUSDPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687c3e...e24a04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (764)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xbcc285be22d236daa775fdeea1ebb117bbfc0a48) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x05a8d0...143a54`; bsc `0xbcc285...fc0a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00066f...e06fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x001ac9...f6b90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00ef4b...f05425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x016b34...9a4647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01b312...61e76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01ccc0...cce29f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01e88f...35e208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02a4a2...680da7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x02ab9f...973b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02da65...46ce48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030e6f...1f09a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x031a6f...7c1461` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x031ab3...bf5ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0383d8...af7a0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254869 | `0x04bd5c...05b2ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04e494...78b906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05440f...490a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05c0a7...cbae62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05c7a6...40bf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x060eef...15b86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x061d2b...20ef3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070975...8c4aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07399c...ee04b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0762fd...b3c36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07b72a...c0cd74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d46d...8598c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07e1e0...9cf40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0808bd...1c3eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x081ce2...53d133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x084bd8...9a33f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x086b97...6164cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087dd7...063f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x088a3c...a64e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x091e6e...15418d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0925ec...e20c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098a0c...cc9bfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09966c...108b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09e664...534fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a2381...8802de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a797e...23efde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aefec...820c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b16cf...e367cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b2e66...668970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba7c9...b4ab3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c16de...d7e79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5631...b41ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cc33d...16d779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cffd5...bc2014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d1f51...814ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e1bb5...968f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e5247...31c610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e91ee...f398a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ed93c...b9072e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f2818...2c3aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fb12a...b3080a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104e7b...d42058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10548a...36e00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c9f7...063320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x110ec5...4e8191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x111a52...4ae568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x114742...80819b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11691e...82a504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x117c7c...42d67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11a77a...065e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11e73c...1d41f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11eb9f...7209eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125bce...1dc1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bb76...a128e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13393f...059bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13ea68...6960d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x141d00...2262f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x146cfd...7a84d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14c2fe...c72203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14dc04...b8e3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x151e88...63d601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x155b5c...4e9694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x155e98...918ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15c493...a35302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ec39...d59ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x168931...ef8da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16a19c...b997e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17b84b...57ab14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254874 | `0x17e6e5...59c62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1826e3...de20d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a172b...6c95b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a438f...67ac17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a9bee...306ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1aa0a0...6bfb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1aa821...7bcb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ac727...c98d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7ba5...181f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7ccb...fa6d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be38f...bce3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bf235...dab8e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c11b6...b55444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c5211...724c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c7443...1fb26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c83fd...19096b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb5b9...27d8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cc2e8...fc201c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ccefa...74d7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cd4e4...f1456d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d002c...05dd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d25dd...00ec86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d285d...37df2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d6282...a432ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1de1fd...824a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e3771...838bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e65de...9eac90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1edbd6...ab27ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1edd9b...384d9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254879 | `0x1f04a2...5d95f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f48d5...6ea87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f819b...73f7d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f8d8d...003436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f9831...eb52d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fa260...be8b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fbb16...d51496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fdb6d...001e7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2001ae...f2e6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2073dd...9d9f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ea8f...c4af93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2162c6...b05da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21650e...597b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227849...b7d179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22b13b...c00e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22c4c1...838bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22e744...8419b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2311f9...9dde70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x239c40...3242f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23bc29...af3330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23d92a...cb46d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24284b...3d9e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24632b...819683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250c53...fd26bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25a0e4...f9e473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x262dd5...abbd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26a2a1...1db06e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26f99c...e7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274992...18ee5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x274cf4...edb517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27b7aa...2bac40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x289146...f58c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28df4c...31a39c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254882 | `0x2903fd...67942b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2959c4...73f11a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2993e9...b3ae76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29eb22...f66a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a0cb6...1d9671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a119f...840587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a1896...32ed19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3100...3a5949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a6704...04d578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b3e5b...21d0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b59c5...0970da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b82a2...cd8147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bb416...7b2462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bbd84...3516b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bd759...e557bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bef04...207ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bf6ac...e6a929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c21ec...0fa846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c8ccf...688eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cb60a...676cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0a2d...e4c3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d4662...44ba37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2db9fc...c35208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dbf30...6aa29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dea11...6f83ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2def76...afb35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e1b43...16d07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e2807...ccbb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e2eed...3551f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e3295...610774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e3bbd...eee7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e5c75...049f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eb07a...ac00b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f1e42...ecd735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f39cc...782076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f54f1...63eb0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f60a7...9f19e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f6256...52c72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fa11f...3a41b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fbf35...f68705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x303cb4...efc61b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x305a50...20d39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x306b71...7528d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x307078...85d151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30b255...b2f9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30ddb3...75bae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31527f...1e2f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315b29...c4c1a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x316775...95f5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31bc65...ac034f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31deb2...bc2104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31f884...870c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32e788...d754af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x331b2a...6fd0f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3350fc...68bb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3356bf...7f6c38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33b9b0...1582d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33f7a9...7d4d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x342aa2...298a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x344dbc...efa74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34a436...84ca45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34bd81...a5ebd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34f834...dc8141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x355e32...f2af15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35720f...1a9dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3572ca...2cd554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3591d7...e4d045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35c23a...bb32c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3602b6...908d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36283d...33b444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x363349...274b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3634d3...895346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x367384...fd5701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36a744...f31c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36f278...a87af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375fda...c428ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37b48a...472ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38454f...6a4a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x384729...c22fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38819e...952932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x395720...67fd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x396615...1164d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39cc74...2c4154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39d534...dbd511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a2bbc...27a0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa647...aa4868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ade95...db1287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b41a7...a66aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b9d0f...8ca554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0eec...aec2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c9d73...fbcf82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d30bd...33cbf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d786c...69fd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da4f7...4b5606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3db29a...e0c3c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dbcf5...b7fb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dff67...8b6a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e49ef...091959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e4b09...6a2f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ea042...3835a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f1b7d...367771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f71d5...6d6b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fa64d...f6bc31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fbe56...308667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40c34a...0818fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40d695...1b39fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x410941...c46d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4183b7...4314b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41e2a8...df7981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41e926...3a9c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4242ba...72e0ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4429ee...751998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4455e7...8801df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44dc4c...bd549b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451a41...5d6ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x453923...e05e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45667d...b02445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x458437...b4bf3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x471a4c...ceb01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4739ce...107705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47480e...26d444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4776d0...597678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4837fb...58e5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x483966...6fd514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x489981...d9e513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48f93a...41d405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49d842...7f7a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a45a8...71a7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a4a53...3ec1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a9f0b...12d867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bcea4...f1da3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bf6a8...a0668b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dcc11...16d3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e82fa...c7a004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f1497...ae6a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6797...14bf88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f8e6f...505fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f93ce...4b5b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fe7fe...b43386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x501240...dd53d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x501be1...1a35c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x502131...d91aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x509326...fdb3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50c0e0...60d9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x512b66...479e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x525674...73b94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x526d09...0dbdfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52844a...6a6743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x528d64...8a76fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52acea...5d7f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52b3f3...ffdb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52ee1f...839864` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x53273f...87edfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53c702...9a2fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53e953...e52410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54b583...0560f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54ec19...8e2728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x550128...0472b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x552143...0c1868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x552f1e...685be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x556d96...6c7b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56007b...2614c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5652dc...0419c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57134a...e3e2d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5728b3...96bba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57b40a...5884c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x582388...f41561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5854ce...50b8d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5887c3...73106e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b408...af03ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5934b8...4a3387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a1690...3efe12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b6348...63f8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bb751...635517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cf0fb...1460d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d0929...4fed91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dc848...26faff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e3358...d30752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e9f4e...f29f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5eb696...910c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f12a3...1c00c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f43c6...4c30f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f97a1...87a12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f9f91...9797e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd397...75c06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60512a...3e7282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6059b8...6be168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x608f49...612bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60c9ef...7c8b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60eb36...34c7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60eed3...f91163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x620632...caab3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6213fa...687833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x622d87...9ebaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x623fd8...81e405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624edc...247f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x627b55...821a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63142b...e51c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63393e...a96b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x634e29...fb9724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63dc1c...c6378d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63f724...5aad44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63fcf7...807ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6402d6...0f162d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f9de...766f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65232b...725fb5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x65338a...fdaeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6566c6...e2fe9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x657114...62d878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6575fc...710bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65825a...a87155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6606cc...2a39b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x660c94...750c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x665410...163d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6660a8...08e12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66eb74...d24fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6784b6...f6f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x681df8...daa956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x683039...4f477e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68a892...a2cdb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68b9a9...f63807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68e83c...ae24ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6936c7...d0003a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6961fe...fbed13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69724d...180c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69ada3...781c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69d15b...c50105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a1f7c...7443ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254890 | `0x6a25b4...a74ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a39b0...f2e144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a87c1...97a59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a95f4...d8a2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b4b0d...78741c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b5001...3a4f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b8cb4...fe52ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6baf96...bd59bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c47bf...515fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c7eba...10beb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d00a5...56e859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d22d5...2d584c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d3568...4348f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d5849...6b1201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d6783...502525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8723...05db2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6db9d6...a675f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dc7b5...e16b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e6492...2e0b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eb970...becf35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f4d75...1a9f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fc086...f148e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x702dc7...59c6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x703e54...4b06a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x717efb...8bc53e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x719f64...4bcfee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71fbec...8d7b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72227f...2c79af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x725a4a...ff2937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7266b9...c8b490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b1b1...573f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73bd59...1bb2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73d262...557a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73fbf1...6dc596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7432bf...b7a94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74432f...f9023c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74e0aa...44462d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74f733...0e8739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x750a22...fc5ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x757898...837a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x758eb0...8f88b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7601aa...d6eb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x761e97...aef544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76390c...8f7b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76928a...4855c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76c291...c1a5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76cb63...7cd38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76ccdf...432e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76d830...a4a8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x774a8c...a09328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x775402...0bd2b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e49a...5ddde1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x784554...00f748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78886b...d08723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78d1c6...b3ebf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78f333...99a6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78f491...25d2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78fbb2...45f2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7901cb...8ef64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x791cd6...566495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79367b...415c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x793c0b...993aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79d024...77174b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ad8c1...172352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b35e3...804dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b61aa...3fc943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c05d7...f835eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c0ef3...831afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ca108...70110c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cc20a...596569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7da003...1265e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254892 | `0x7e1f2e...8a07ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ea1d4...d28e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ffeab...8e502e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80c9ba...21a0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80e663...b2641e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81de52...1d4ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82664f...2ecd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8307b2...6b7364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83192f...656609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x835e75...b07dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x837b20...18a863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83f84e...3231ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x844860...fced24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x856516...ced47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x868c85...9f0edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b919...25ecb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86e092...d8945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8703d3...66f183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8762c7...0870ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x882475...ecc6d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89852c...7ec370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89df28...1c43ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a06ac...571869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a6786...d081ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a6e34...6f8131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b0bbc...b51ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b3529...e9e164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b7d33...40f990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d488e...3c1a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e34f6...1185a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e58eb...76dd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eba9b...8fc7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ebfa9...df3ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8efbb1...8651c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f73b6...8e5d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8e7e...9ce75a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f9475...2e51c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9043e6...f1e68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91281e...df16d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92468a...1a3e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92a504...40b8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x931247...12af06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x932158...3bb79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x934892...27e73f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936454...ee1151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x947d86...43c490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94f48c...7cf265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95f23f...00e556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96146e...8959a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9632d1...9fae0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9687ca...19e5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9712b0...0599a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9726e7...b45764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97458a...a9312f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97e36b...915ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97f10c...0ad0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x984cae...7c777a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98f0a4...209e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9994d7...d4c841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a17fd...75a759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a63d1...3483b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a7b02...027a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ad89b...fa0c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b6be1...684a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b7fae...6b5e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9bb8a4...b478d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c1012...70e7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c215e...122cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c369e...9cf85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c5f8b...0c3d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cba0d...4f8d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d1659...f46cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d4dce...582f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e80fe...ac227d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8574...3b5c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e9b73...ccee46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ea317...02074d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ecf66...5b524a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9edecb...4d297b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ee9ba...642b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f0aa6...bc947d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fa29e...58796a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0050e...9e5742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0de3c...ae3a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa12c79...50f9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa17a49...9c9f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1f832...c15982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa26488...5072dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2e64b...e12dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2f28f...50b089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa30c8f...1a26a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa33630...cb684e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa42539...55e091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa43afe...3d3ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4da30...10a5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4eb03...c7dd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa53a9a...b6b107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5c65b...e5fe3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5f53c...2749db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa60540...61806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa64c28...e0b1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa654cf...351513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6c832...ad3d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa76220...83bf95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa76684...20912d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7dd75...1d63ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa813a3...bf48ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8552c...3ba57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa857f6...cc0355` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa85958...38f02c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8a986...a03ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8b69b...b6acbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8c4a0...912063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa930c5...96f56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa94d92...62613d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xa9cab8...873929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa0451...a30986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa1231...9b817d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa3a1b...5d0379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa5b88...4f1a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaab620...78a777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab1b9e...78ab3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab251d...0ce1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabf3a7...a83a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabfb0b...0e24b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac840d...b031d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad087d...fd9988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadd935...fc82cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaefba4...a0c2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0257c...12f8ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0dc1f...aba537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0e3b6...8b4cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb247cb...1e68c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb32abe...f515a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3df1b...687c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb438c3...2b44f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4678c...3a8498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb46f0c...57d208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb53e69...cf632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb680d4...5858bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb69507...b1549e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb798bb...3ee6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7a1f4...de824f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9df6c...92cfda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9fe05...f5d4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba1dd3...b7e7b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2692...1ae278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2d27...e87b43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254897 | `0xba500b...0176e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbafb0b...113b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbd3e7...7cd05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc0a9b...49eda3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd6477...3e2f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd66c9...1c4b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd94c4...1adc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe0a91...2e22a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbef5df...170491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf7604...bda705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc003fb...c4886c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc011d7...7febbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1aeeb...3f5fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc30b04...4d3060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34791...ce03e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc36a8f...b59cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3be83...2024de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3e73f...df5ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc43d58...acd4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5dddf...e4c062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc68738...7fe63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6bd25...d38194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc70f9b...e3bdc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc73f58...3b0053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc74378...cdf0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc77909...be5190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc77d0c...c7924f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7f495...f1385b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc83e1c...9209cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8692d...78e8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca5929...a425b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcabe73...191151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcadb57...67b7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb010e...597b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb1ea5...5a09ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb2590...2c9d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb571b...e5bff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb845b...f6211c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb995f...e72484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc0795...89381b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc93cb...0e5a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce2685...286ab2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xce611e...d9c340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceac33...6866e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceee5a...80409d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf1b6d...daa1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd051ed...c89639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd08be4...fca179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd093bd...8cfdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0ccb2...88ed5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd111f1...90e72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd18ce3...8bd29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1bd18...340796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1d993...6d2c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d974...9e9828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2f295...783ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3a88d...c1ec36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3db90...f2da18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xd41d57...fa3daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4ce01...6a3be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd57b86...05665a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5cfc0...b5a81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd60316...04e579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd61dd1...5058f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd69a0a...daa0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6afbf...793293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd83df8...2597c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd99f92...1170de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda1e93...1b3253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda30ad...e12a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda994f...93d9f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaef8c...289901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb3593...5e4540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc8b62...af56b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdced7e...60d8fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd100f...bba5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd308e...40866a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddcd4f...112d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde10bb...49d0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde66a9...d2306b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde9c8e...cb49b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdeb934...a6562e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf0577...91d628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf8b61...5185cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe004ef...86fa21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe03034...64f510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe03d86...9b6529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe07fcf...292279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0c61e...62cc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0f291...e0bfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1853a...cbf64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1fc38...f769bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe27433...550aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe284c8...740567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2b286...94a8ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe362dc...1cedf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe394e1...4dc09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4153e...74ee76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe44447...6a4ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe46b8e...f4c705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe477d5...619d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe55052...104acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe55c7d...de617b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6cf7f...56f9c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe70302...2ab444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7b17b...e222ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7b186...5f5e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e501...579f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7e809...2011ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe83e36...e88aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe876c2...20652e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8c210...8d27c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8dcb5...298d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8f124...827813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe98e6d...fd991a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9c487...4acb76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9fddd...60d96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea5595...d0b866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb4f6f...b6ba33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecc477...f2559f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed94de...1d813c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedd105...ca696f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee161d...51b5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee3f09...e3eea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee98aa...673f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeb0f0...eda6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef377c...dd28ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef3f95...a52c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef419a...b66404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefd66f...c5b405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf07b74...32d9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0c279...dedcd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf15747...39086b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf17bd7...832a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf194cc...64b080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf21308...8f39fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf28d38...9d4b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2d18e...c2bdbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4801d...dbeb3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4ab34...7f3e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4c4fd...bcbb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4db11...8dd788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf53330...f93a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf569c3...dc693c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5729f...06ab53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf68897...ebd80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf69389...2e8091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7b187...26e0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7b9ae...275a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7c470...e03f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf81a30...be2330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf820fb...82fd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf85f52...d9d236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9135d...8ba265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf91432...6c47b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf95025...a8344f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa25b6...a2c6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa27f1...fbe627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa50c6...8dc73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa9f54...ba83c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb25a8...5f549d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6bc4...bc9e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc2c83...433f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc5de1...30e677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcccc8...e1d097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd31ad...ab5665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdd69c...26fa93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdfc9a...3a6e72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe6325...fe4216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe7dae...9cde7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe955c...f41e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfeb7d3...40ff69` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SigmaMoney round 2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%202%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [Supremacy-Audit-Report-SigmaMoney-v1.2.pdf](https://github.com/SupremacyTeam/publications/blob/main/Sigma%20Money/Supremacy-Audit-Report-SigmaMoney-v1.2.pdf) | Supremacy | Audit | 2025-07 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SigmaMoney round 3 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%203%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [Supremacy-Audit-Report-SigmaMoney-v1.6.pdf](https://github.com/SupremacyTeam/publications/blob/main/Sigma%20Money/Supremacy-Audit-Report-SigmaMoney-v1.6.pdf) | Supremacy | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [SigmaMoney round 4 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20round%204%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 18 | n/a |
| [Sigma DAO round 1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%201%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [Sigma DAO round 2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%202%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma%20DAO%20round%203%264%265%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [SigmaMoney Round 7 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SigmaMoney%20Round%207%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Sigma_Dao_round_6_%26_Money_round_8_SlowMist_Audit_Report.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 35 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11667] SigmaMoney round 2 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11668] Supremacy-Audit-Report-SigmaMoney-v1.2.pdf — no match: No reason recorded
- [11669] SigmaMoney round 3 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11670] Supremacy-Audit-Report-SigmaMoney-v1.6.pdf — no match: No reason recorded
- [11671] SigmaMoney round 4 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11672] Sigma DAO round 1 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11673] Sigma DAO round 2 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11674] Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11675] SigmaMoney Round 7 - SlowMist Audit Report.pdf — no match: No reason recorded
- [11676] Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SigmaMoney round 2 - SlowMist Audit Report.pdf | BNBPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | BNBUSDBasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | BasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | IListaStakeManager | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | IPancakeV3Pool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | ISigmaClisBNBSYPool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | ISigmaController | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | IV3SwapRouter | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | PancakeLib | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | RevenuePool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaClisBNBPool | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaClisBNBSYBNBRateProvider | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaClisBNBSYSlisBNBRateProvider | unmatched — not counted | — | — | no |
| SigmaMoney round 2 - SlowMist Audit Report.pdf | SigmaController | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.2.pdf | PoolManager | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.2.pdf | SigmaController | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BNBPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BnbUSDBasePool | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | BnbUSDPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ConverterBase | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | GeneralTokenConverter | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | InverseBnbPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ListaStrategyV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | LongPositionEmergencyCloseFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | MoolahFlashLoanCallbackFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | MultiPathConverter | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PegKeeper | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PoolConfiguration | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PoolStorage | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | PositionOperateFlashLoanFacetV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ProtocolFees | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ShortPool | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | ShortPositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 3 - SlowMist Audit Report.pdf | SigmaLongPool | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | ListaStrategy | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | PoolConfiguration | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | PoolManager | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | SigmaController | unmatched — not counted | — | — | no |
| Supremacy-Audit-Report-SigmaMoney-v1.6.pdf | SigmaSPAdapter | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | BNBPriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | FlashLoanCallbackFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | FlashLoanFacetBase | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | FlashLoans | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | IPoolConfiguration | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ISmartWalletChecker | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | InversePriceOracle | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ListaStrategyV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | LongPositionEmergencyCloseFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | MigrateFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | MorphoFlashLoanFacetBase | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PoolConfiguration | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | PositionOperateFlashLoanFacetV2 | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ShortPoolManager | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | ShortPositionOperateFlashLoanFacet | unmatched — not counted | — | — | no |
| SigmaMoney round 4 - SlowMist Audit Report.pdf | SmartWalletWhitelist | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IMinter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | ISigmaVesting | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IVeFunderGauge | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IVeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | IVoter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | Minter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | RewardClaimers | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | Shadow | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaGauge | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | SigmaVesting | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | VeFunderGauge | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | VeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | Voter | unmatched — not counted | — | — | no |
| Sigma DAO round 1 - SlowMist Audit Report.pdf | XShadow | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | IMinter | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | IXShadow | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | Minter | unmatched — not counted | — | — | no |
| Sigma DAO round 2 - SlowMist Audit Report.pdf | XShadow | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | IVoter | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | SigmaAirdrop | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | Voter | unmatched — not counted | — | — | no |
| Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf | x33 | unmatched — not counted | — | — | no |
| SigmaMoney Round 7 - SlowMist Audit Report.pdf | LongPositionOperateFacet | unmatched — not counted | — | — | no |
| SigmaMoney Round 7 - SlowMist Audit Report.pdf | MorphoFlashLoanFacetBase | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | AccessHub | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | GaugeEmission | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IAccessHub | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IERC20Extended | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IFeeDistributor | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IGaugeEmission | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ISigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVeFunderGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVoteModule | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IVoter | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IX33 | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | IXShadow | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | PoolManager | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | RewardClaimers | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | ShortPositionOperateFacet | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaAirdrop | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaFeeDistributor | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaFeeDistributorFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | SigmaGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | StrategyBaseUpgradeable | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | TimelockedTransparentUpgradableProxy | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | Token | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | VeFunderGauge | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | VeFunderGaugeFactory | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | VoteModule | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | Voter | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | XShadow | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | YieldStrategy | unmatched — not counted | — | — | no |
| Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf | x33 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 147 |
| upstream | 3 |
| standard_library | 6 |
| needs_review | 776 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 131 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11667] SigmaMoney round 2 - SlowMist Audit Report.pdf
- [11668] Supremacy-Audit-Report-SigmaMoney-v1.2.pdf
- [11669] SigmaMoney round 3 - SlowMist Audit Report.pdf
- [11670] Supremacy-Audit-Report-SigmaMoney-v1.6.pdf
- [11671] SigmaMoney round 4 - SlowMist Audit Report.pdf
- [11672] Sigma DAO round 1 - SlowMist Audit Report.pdf
- [11673] Sigma DAO round 2 - SlowMist Audit Report.pdf
- [11674] Sigma DAO round 3&4&5 - SlowMist Audit Report.pdf
- [11675] SigmaMoney Round 7 - SlowMist Audit Report.pdf
- [11676] Sigma_Dao_round_6_&_Money_round_8_SlowMist_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
