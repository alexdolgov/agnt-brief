# Agentic Audit Brief: YieldNest

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 10 audit(s)
- Eligible audit results: 14 (10 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: YieldNest (`yieldnest`)
- Website: [https://yieldnest.finance/](https://yieldnest.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, ink, optimism
- Contract surface: 82 unique implementations (309 raw deployments)
- Coverage basis: 6/11 confirmed own live verified implementations (54.5%); conservative 54.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,891,692.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldNest. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, base, berachain, bsc, ethereum, ink, optimism. Structural roles: 7 core, 4 supporting, 2 unclassified. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (4), unclassified (2)
- Contract kinds: contract (7), abstract (6)
- Detected standards: erc1967proxy (10)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (10)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x68589adc7687a23ff2b06fb032b997f09b44ed5d`, chain 1)
- UnnamedContract (`0x7159cc276d7d17ab4b3beb19959e1f39368a45ba`, chain 1)
- UnnamedContract (`0x8c33a1d6d062db7b51f79702355771d44359cd7d`, chain 1)
- UnnamedContract (`0xe439fe4563f7666fcd7405bec24ae7b0d226536e`, chain 1)
- TransparentUpgradeableProxy (`0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8`, chain 1)
- TransparentUpgradeableProxy (`0x09db87a538bd693e9d08544577d5ccfaa6373a48`, chain 1)
- TransparentUpgradeableProxy (`0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b`, chain 1)
- TransparentUpgradeableProxy (`0x35ec69a77b79c255e5d47d5a3bdbefefe342630c`, chain 1)
- TransparentUpgradeableProxy (`0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b`, chain 1)
- TransparentUpgradeableProxy (`0x40d5ff3e218f54f4982661a0464a298cf6652351`, chain 1)
- TransparentUpgradeableProxy (`0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb`, chain 1)
- TransparentUpgradeableProxy (`0xdb8e54f39aff243b25a41e4747957ed517af0511`, chain 10)
- TransparentUpgradeableProxy (`0xe231db5f348d709239ef1741ea30961b3b635a61`, chain 10)
- TransparentUpgradeableProxy (`0x304b5845b9114182ecb4495be4c91a273b74b509`, chain 56)
- TransparentUpgradeableProxy (`0x32c830f5c34122c6afb8ae87aba541b7900a2c5f`, chain 56)
- TransparentUpgradeableProxy (`0x78839ce14a8213779128ee4da6d75e1326606a56`, chain 56)
- UnnamedContract (`0x0ce01de4e7c4dc6531f251ee6a64a4d449bc1576`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/11 (54.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 16 of 82 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/69
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 82
- Raw deployments: 309
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 36.4% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 5.8% | 2024-08 |
| Zokyo | Tier 2 | 4 | 5.8% | 2025-04 |
| Composable Security | Tier 2 | 2 | 2.9% | 2025-01 |
| unknown | Tier 2 | 2 | 2.9% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KernelStrategy | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397617 | 2 deployments: bsc `0x78839ce14a8213779128ee4da6d75e1326606a56`; bsc `0xa4087054f4858cb108091b2ca0e52b779430782b` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-397608 | `0x40d5ff3e218f54f4982661a0464a298cf6652351` | ✅ Audited |
| RewardsReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397609 | `0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b` | ✅ Audited |
| Vault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397618 | `0x32c830f5c34122c6afb8ae87aba541b7900a2c5f` | ✅ Audited |
| ynEigen | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397611 | `0x35ec69a77b79c255e5d47d5a3bdbefefe342630c` | ✅ Audited |
| ynETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-397610 | `0x09db87a538bd693e9d08544577d5ccfaa6373a48` | ✅ Audited |

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031ae4a8a09b1779dbf69828356945fdf59d6879` | ⚠️ Unaudited |
| BfBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba91a950dce944c7351dd0cce091364fc519bd1b` | ⚠️ Unaudited |
| BNBRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x15f193a0dd94452de4578ff71018632950536448`; bsc `0x302eadac1ea03af3a00e35491084a82b4666bc8e`; bsc `0x3ad7095ff02f227059aca17d61192982dad9be5b`; bsc `0x4165b25373a26baac5b0a9fb4c20aff638f0d169`; bsc `0x647c74b0dfcc3cd6dd949891864a002ac1d506e8`; bsc `0x90d8a4306fa98d99b7729f54cf8cc2593670f49e`; bsc `0xa4dcb6779f7977534dd37fb3dd0090ef507df173`; bsc `0xbbc407c66b8d1c1b250466ae209e8026dd943c04`; bsc `0xbc724faf1f1058f2ef01e55ff7c6d7abde78509f`; bsc `0xc5d755ec6b7734879e1c8c934b11903d5c986f7f`; bsc `0xd258677a16a02a9ba8357b64d2cbfb31dae7a159`; bsc `0xd4943ac1eab978f08ed757d4cf15c1f2facb0e29` | ⚠️ Unaudited |
| BscContracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 27 deployments: bsc `0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3`; bsc `0x12f4d0fcc89658d80136cd9dfb3f4ff805dfedef`; bsc `0x15575e99426849ec2590c8f123cb147dd110a648`; bsc `0x19e171545da0b586e3ff62ae8130c49ceced1ab8`; bsc `0x1ee8bb524fabe20f9c3cf50bf075a524fd4d2271`; bsc `0x311952cdf3bec25abffa03b5c3fb1d330fba1724`; bsc `0x385812256854153092b6fd625f70d02598544f89`; bsc `0x511886694c5d408e91be012198f4c8ab9ca95999`; bsc `0x51b9c1d1b489e74436800ab04e222d79524f06a0`; bsc `0x56df021e1d22ba8d6ebfff0631f1248ec3c1c069`; bsc `0x579aefecc576554f372a60c9ee11a8622835c2b9`; bsc `0x6515f88f15bfccefbfe1f12d3a42875ea6e482c0`; bsc `0x65d7af72ddc47e16c3bcf86206e499b7cba828b9`; bsc `0x68757247175eaeb72c42de834fe7be70eb93d294`; bsc `0x6efc755305517e5d471bc7c2e3722478e352afaf`; bsc `0x79f72ee8b77cb06468d7b98d636bbe61ce384620`; bsc `0x7fd19ed1c30fa45106e029c4b8adcde378ad0eb5`; bsc `0x85e2b490083d81d71b4e6fb91b29768cdec25dbb`; bsc `0x94db8f0d5bbccebf6d8288d06eb53bb80ca125bd`; bsc `0x97e1dd9874b22172ed1f924215ea342e579bcaa2`; bsc `0xaeb1da7a4426cf1974444245f39abe8712be3408`; bsc `0xb47dca438c964da7b23e9e8fde4967bd550309a8`; bsc `0xcc631b44497910d1462d4604f27bb9b4d58f3f03`; bsc `0xce5de59f4ddfd88bc32a7319ae981d7a1a5e4484`; bsc `0xd15e6486bd3e39d6fc2012f371798b7aa5ccfdd3`; bsc `0xdb93558950985b632f22487a99ac1851521c5dfb`; bsc `0xf75bbe56a9b2bfe97a39275859fa1c5ebcf2e8d2` | ⚠️ Unaudited |
| BTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 12 deployments: bsc `0x1bbcf4de1ef3ff0ee717d856fa8e603480a06402`; bsc `0x285c456c2dd129bc65259974644fbc48e2e2cca1`; bsc `0x2f5779242ae28c35deb1ebe08e9b2a8dcb45fad1`; bsc `0x680b0dcfecc4b53e5108b583e993c0b0dc27bd73`; bsc `0x6e910845eaac721aacf9c400f366334e3df1ef42`; bsc `0x7573ee497d884239715fa1e7b816536002e16f5c`; bsc `0x75d4d5c7633a0fd0acb2a2dc07f3eaa068c1a798`; bsc `0x8d44fcc458a7dd060b8c0c5062ec7b2898b72e40`; bsc `0x8ef7a066bf2cf76bad826c1de8d314badf057b52`; bsc `0xa4fe81aa730fd0fafa4475855e8456242b857dc0`; bsc `0xc31432c8a99adc58b20aad609fab9bdf8b25992f`; bsc `0xd47b9c9fb1788f6353a543150006d0b7ed0b17bf` | ⚠️ Unaudited |
| ClisBnbStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1cbfbc3cb909fb0bf0e511afae6cdba6ba5e2252`; bsc `0xa9ff5af7f218cc27d2819139300fb275ccced71e` | ⚠️ Unaudited |
| ClisBnbStrategyRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe77f4398a06bc83863f45b6b7101bc46c29f4eaf` | ⚠️ Unaudited |
| CoBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x245272749fa0d3c39577263ffcb6e9f89c7eb5f7` | ⚠️ Unaudited |
| ERC4626WrapperStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd1573de52fff44dd92d275e20fdab0296ccff141` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x8e20eaf121154b69b7b880fa6c617c0175c4de2e`; ethereum `0xa08f39d30dc865cc11a49b6e5cbd27630d6141c3`; ethereum `0xdf51b7843817f76220c0970ef58ba726630028ef`; ethereum `0xfcad670592a3b24869c0b51a6c6fded4f95d6975` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x721688652dea9cabec70bd99411eaeab9485d436` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x03276919f8b6ee37ba8ee4ee68a1c5f48b667834`; bsc `0x445af1addf3630393e306e79534202d8c53cd980` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2a21a955191f83b7255a21e752cd5a5356c05829`; bsc `0xf98f911dc294ee41e4a0bcb1b819491b248c7762` | ⚠️ Unaudited |
| KernelClisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x532774c8ed528edbebbaccda9257bfe167c76f71`; bsc `0xbdeb0b134ec6a414ba2a32fb66fc55ebc7dc4235`; bsc `0xdf4e25c1039adaddab4c6c73e56bf17a1f60e835`; bsc `0xf5999fc1a195678072c97bf9f08ab73f45f364fc` | ⚠️ Unaudited |
| KernelClisVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x20fc8db0bee4cf37871db208182f03a10bcd9e7b`; bsc `0x3afcd60eb9a5f88bdf26f0b9de9f2f2cc50a043d`; bsc `0xccf06a1ff2170d87d65862ee4b4b9d3579d7eff3`; bsc `0xddb4ebd8918245a4424583345d052d8bee0fa8f1` | ⚠️ Unaudited |
| KernelClisVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc0eefcc27b22c3e4304b3df95649d871f681fe77`; bsc `0xe8bea95bfd32b0327744c997af475116a2d8d6ee` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x073929c230f2898f227f765c135204fa9b05b6ae`; bsc `0x1776dea5799fc7ad10b6039f6e1927fefd731e85`; bsc `0x3158405b9ad5ba067af116db1846e99f8069db9a`; bsc `0x3936add3617f6f67eb03fd08e5890f36e7228dcc`; bsc `0x40eaa840aeadd377a53124162c29f874b3f1dc22`; bsc `0x58e11a4aba3809d9011811306e0a281ba313add9`; bsc `0x5de8c7a537e951f4d09ab3366d635f271c29762c`; bsc `0x6254faa72a40d8c1f4051fed8b33689f8d6e30bd`; bsc `0x92e009afea7f598d1b9dfab698a1b05be9d47f97`; bsc `0xa5a7a21cde97c6efc65f4b700ad442f799dc186d`; bsc `0xaa33d2bf5f955f503fa0929f037d10a3dbf6465c`; bsc `0xb6582ffc267487418d74c7a9c93b9b8d21f6822f`; bsc `0xef2f5b44db8377add06c3fbebee2a5efecb9b9bd`; bsc `0xff25019dd30572dab7b5dc74e991a0bbd0787735` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0e64643d8073b82ac6d6a9e7d1d6b6689a05acb3`; bsc `0x1b015705214bdcaaf43e8edeca13023143224ab7` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x132376b153d3cff94615fe25712db12caaadf547`; bsc `0x835349a99eec9b34434a33464be85f9b22c98a76` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1d92795cfdeb1340a5a5a9493de752b39287287d`; bsc `0x517fa790e9bb058910b53e7603900364bcbcc802` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x43a22463517b57ce4fd52dc6b33f7d58b8a16119`; bsc `0x6ec6b7f106674d6d82b7b24446c7ebaf349d59a1` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x504a89a3ed6a51d17d4f936e58476c779ee7315b`; bsc `0x5a04d49d53572ad0a1dcc29d16802f5518b81cf8` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a786b8047aec8cc6b05f31351377404286a26e1`; bsc `0x7e020a4dd66390c2a0a7c3d36500eb20a865b4cd` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x99155a7fc5d76114dbb71d7ebcf412ee2fc0ee81`; bsc `0xebdb3377438d60213dbf6a52ed7102e0cede4b5c` | ⚠️ Unaudited |
| KernelStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa0f29c1ef5c43fd213a6cd788f72c9abbc27e04d`; bsc `0xc64f2bf22e1e0b579f8676bbe5fb970b0637581d` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: bsc `0x05f6266941536b00127e18fd376bf7b6899ecfbd`; bsc `0x0c12a3649e76e47769e05724b0aa7f921ac6f0e5`; bsc `0x0e5bc7255bc05559d5098e97186dd41139fb9229`; bsc `0x1f18d004e29bc1e70171ca4d344cae262e6fe250`; bsc `0x2275fefbc408b09bafabafa768e1c5c4911762b5`; bsc `0x29fd269919783af24ea475876d8f90e501d7d151`; bsc `0x40391cd1d4fe9ae6d15857c06a95095d321835f0`; bsc `0x5b59f9115407a02f2c4e7b48390a18d3a87b006f`; bsc `0x6cce89f8a9e99683d8858c7d8f226dbfd355ee98`; bsc `0xa70da4b1ad3523b86d94b5ff8dd25d691201edf4`; bsc `0xb45c74666f651dd80ec09a2e71295649e8cba5e3`; bsc `0xcd14b7df01260453a689a4c6419ef63d6ba945e7`; bsc `0xd25b69692b66d135fcd9f5a2f311d2cd8408b622`; bsc `0xda6bc005f6be6e3f38a06dd9ae27aa8bd534b93e`; bsc `0xec906354bcba15809d62f7d4e5c13237c1c73d95` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0e4ffaaf990b1398e5ae9407602473a793deaed8`; bsc `0x39c6ac01e65e0b4c80b2aadcbd66060bb75eec5a` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x209fa3da991189fa7d2054c69004a5d2d1d60e28`; bsc `0x7cb1e7a9829826255d04f11c2d8ec28327124d11` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x26b69ee6fca1e0cd60ea13d198aeef18581c5af3`; bsc `0x849a317f5ce83913b3f2fc516aa291158200877f` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x545a2c7cdc386057978375583e662b01c0974e88`; bsc `0x77c60106fb73e578b8ae4b549339e702d63432b7` | ⚠️ Unaudited |
| KernelVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x728f22ec99bc2f949243369e9ddc95ad1b743839`; bsc `0x7c984e3cd94d15b5a64afd40ff4a24855328e183` | ⚠️ Unaudited |
| L1Contracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e71498a5acfb68900c0154baed9a36a2c45b6f2`; ethereum `0x4396bf324ec7beabd5df42c13b0ad42bdadc2f82` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | project_anchor | own_supporting | 1 | optimism | unit-397615 | `0xdb8e54f39aff243b25a41e4747957ed517af0511` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | project_anchor | own_supporting | 1 | optimism | unit-397614 | `0xe231db5f348d709239ef1741ea30961b3b635a61` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdb8e54f39aff243b25a41e4747957ed517af0511` | ⚠️ Unaudited |
| L2YnERC20Upgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xdb8e54f39aff243b25a41e4747957ed517af0511` | ⚠️ Unaudited |
| MainnetActors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: ethereum `0x2ddcee5fb47aaee034aa452db60eb62fcb9429e2`; ethereum `0xccfdbfa97a9521640fa8de0d0ef9d63d707cb385`; bsc `0x0329538ed2a6b442a65c3fc3d32fea5a06339eca`; bsc `0x29a1e506a832e54b9a07b3e9d1bf7e5343fa3153`; bsc `0x333ca786695ebbbf36bd8236235c48cb5ea0af4f`; bsc `0x4baf252f8479e5370160f41ae9e38b5cee76dce4`; bsc `0x5ba7c775ec31a9faa433d3a7a29eede3bfa21d02`; bsc `0x5db73f50c601ca7891adae4cd8f6d38a148df880`; bsc `0x989c5e2509c501deb6195b9f525d9092514041b4`; bsc `0x9a997238ab90653a5c9a1765d72c58cd2ea01788`; bsc `0xa4a1ef7673b1c8b12ba628d737379ed5c31899ca`; bsc `0xcc1140e175452d4c63db6a045c0ef54408e84add`; bsc `0xcfa76b00f52b6beae2c6ced1a101518dd32466b4`; bsc `0xdbed1f95773d73083ecbfc499b321f1e18ffd93a`; bsc `0xedea312b2278db218436a083a473d313ef584ca0` | ⚠️ Unaudited |
| MainnetKernelActors | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x04ec3e7dfbb528ce61fe6aff8bb1ce883b28e0c1`; bsc `0x1c54f2227ccd306df4e0b29f25d1a5c712a725ad`; bsc `0x21f4a7f5de06a6c0ded09f04b13fc7f1943dac66`; bsc `0x330164c26a6d503fa2134dcc66b22f0cb3c6a801`; bsc `0x3e2d6d7935fac6adddb073a9f673ef438b9df4eb`; bsc `0x5bda4d38dc33335f2b8c28daf3194f4a0771588d`; bsc `0x7206ded9905f2097a23b16dafbdc6058a1fc6620`; bsc `0x93fd6dea70fd4e5c1dac5a1a5412edfef0273d5f`; bsc `0x9a44dd83ff5d3f875f4c49b6d4053d93c44aa146`; bsc `0xa4e3c8a743949c821a632bef4ca725e9ba765e13`; bsc `0xaff40d696081ca31cc715452f15e21fa1ba7d0b5`; bsc `0xb3c384ff0a016b0f20b4d987bf09feb82716b27c`; bsc `0xd9963dbb08659ab2dfedc4ccffc6f5328d52406c`; bsc `0xe3d8c393ede9100a2a461f3034c2494437e43e69` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38585e32b66961c02abacbb4db76825a00df5e8b`; ethereum `0x84fe8e862233930dc15cc549e56a1c72609b574f` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x615635789e849ab468f721ea4d470eaff4e5c534`; ethereum `0x632e206356e07d1918ad94e0f3a1dc67991e0ac5` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2f8facc60511016fbd9a37f8533ad852447d2985`; bsc `0x4c90845d124bf72e1349f0ad27c33c46034cce49` | ⚠️ Unaudited |
| MaxVaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xfebd267025f79b4b5bb353b6f717fa9889f6b67b`; bsc `0xff49107352b1889d9c26286e39f7abcf0e317bc0` | ⚠️ Unaudited |
| ParaswapValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc742e24a36e6105de681c244cbbf2cd4cf11712b`; ethereum `0xf223759538fa990409b27a5239619d0ad240f419` | ⚠️ Unaudited |
| Provider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x084c2159ec1612a82b16711cc45a003ea162ec85`; ethereum `0xb03299164a9870171dd9d20d18cfde5c96b6fca3`; bsc `0x0b26d06be5183273cb634eb38f3a2bf646e3ee35`; bsc `0x2338380ab6d5eec6964403e7241bf1ad0e9a1499`; bsc `0x75cdf94cb930bd6d65617546b9901c36c41b8c36`; bsc `0xcff9d39e1c8e675868a3105b619a987caa147d59`; bsc `0xd84cc5663d696187349a8f5e94cb78b22fa6a739`; bsc `0xe3522ce38e51a90e6e2e94a228af20ce0093d15c`; bsc `0xe5e9f6e3d99e8dda9b93653bc716be936871d0f4` | ⚠️ Unaudited |
| ProxyUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x066b290542487dd826a6e05c2439c98432225776`; bsc `0xe5ae49c8c055ff73932dc7f4de45357a08f6a744` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b4b43f00cf80aabda8f72d61b129f1e7f86fcaf` | ⚠️ Unaudited |
| SingleVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-397616 | `0x304b5845b9114182ecb4495be4c91a273b74b509` | ⚠️ Unaudited |
| StakingNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x56d43f8c6c3891d081ad93b27419c37394857117`; ethereum `0x79388c8cc46069c0e3f285f053692d7397e65e1e` | ⚠️ Unaudited |
| StakingNodesManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e0b49b4a4384d812bc6f55fa6412547524d41ab`; ethereum `0xf1eb27d5800f16be1b48d7f35c731554e055a7ce` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 31 deployments: ethereum `0x16748a830614b66e688f3d3b2395e1c5efa319b3`; ethereum `0x739711358ee02d0d6d6ee51d6a07dc862ddb132d`; bsc `0x054dda05505694ca92f3af0f51f93eb5f53262c1`; bsc `0x1db000978d8d96600696e4a74c19834fad4fc974`; bsc `0x2f3fedd2f6ec681d9cc2ecc688d8c7286eca1f40`; bsc `0x422e63cb98f7880d29fa83ddece2ff3079acc5ce`; bsc `0x437794e1142bb2b6c2e3a90fc778c297ea8bf9aa`; bsc `0x49f08d7aea43e8eec3787b4b7385045446cf965f`; bsc `0x4cffbff96b08067c6638cd8ffce1e932eada0e70`; bsc `0x4ec7addfb6d34a87a4ef20ef19860cddc2ee94e4`; bsc `0x527c69169385fcfbd932b86a38896a49cc5abcb2`; bsc `0x53b40d44e223c2dcf73d64a03c59b02e335981c1`; bsc `0x540af49ac82539802ca410a008e594d7d043d5c8`; bsc `0x58ec65111b012b9a1c7083c2cd508ba046774aa2`; bsc `0x5e5f6ad23939247744b40d792692ef808701f292`; bsc `0x62201c1b07e9977da509991eac0d9bf51f2ed81b`; bsc `0x81f34d0db58a7934549d9b2b1e76542ed9801b1f`; bsc `0x870fe52a0537e48bb12752f5642e45d2b45a7edb`; bsc `0xa1ece84f57fe043248867a99c12a822188477cdd`; bsc `0xa6c9fc02af746185b4332ec8390782516f20870b`; bsc `0xb97f60e1c7299710d6caf33861f3d51625f6f973`; bsc `0xbea8b88391da9b3e8bbd007fe6ce2b9c8794320e`; bsc `0xcade25f829c632e6ea7b0625531b3afce74cf9f9`; bsc `0xced6a6bdd229d0ee08b4207832c099b70390de5b`; bsc `0xcf48d27e8e0982772d6a64b354765f9aead91234`; bsc `0xd7c83dc5b7accc62dcc958bd1919a13ddb7ed06c`; bsc `0xdbab6c6f73da825d2589581926c94dae95e03d49`; bsc `0xdbf332a263c158bff154fbe551f15f22b7225040`; bsc `0xe698e3c74917c2bf80e63366673179293e4ab856`; bsc `0xe7f2cee912b811546c570790d65eca0025b90f1a`; bsc `0xf8d7646be3a78638879138723e590634c15e5958` | ⚠️ Unaudited |
| TokenStakingNode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x28fd4c04620d95c4bec9397e2d303937779c41fd`; ethereum `0x74ff5c9f93080d20d505ffa3cc291f5bfad43655` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29ac770abfa12b0ab726c5e6eb38124061747b6b`; ethereum `0x6fbd79bbf9da002c33f94d0a372f9756756adb2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42fb68291c17c4e2ebdb811dff9f741465b8baab`; ethereum `0xd07049d9ee5bcc208a28394c2e6f0712aef3dadd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 37 deployments: bsc `0x0a4f2471aba6809e34aa9f6476d0835a7406701d`; bsc `0x1b74755efe8ef750f89f31add901be3b2561eab4`; bsc `0x30d5a43187b75bb0b4f9f1928e229ddefb4318f0`; bsc `0x310e54124a5c05143404d364c86e444e559c2b5f`; bsc `0x31280aa7cb6100c89881f008f52030499da05663`; bsc `0x3cd882ec6b3dc07f55379a3a379b607df41c9e44`; bsc `0x3f574ff13a9540c3e7844704e962b1b186c31e58`; bsc `0x459265a1d42602b204a8baf48b84fc5c8372ba6e`; bsc `0x4e62725cacbc20688295b113af9a409f6bf8c1a7`; bsc `0x552ab7b446bdd2d92550b93eddfea0cbea615578`; bsc `0x5e6a35b939b36a4652f54adee723abff8997474e`; bsc `0x61097dda6c9660be4b42d7e943d662ac4269ed47`; bsc `0x633b17d269791f3de4ff3b034b3e15ae8c8f24e0`; bsc `0x63b4460e1dc472b28dee1311fad63349923fee43`; bsc `0x67aec68d153341d3b5736eee9a7c32f6f9905246`; bsc `0x6a60e6bc4bb152009406492972bd7b5697699836`; bsc `0x76ee68ed086237b920134ce25dace2e55583b4a7`; bsc `0x7c81ee14ed141e4bfac757fd096593d37a162e6d`; bsc `0x7e0cfb38905758bffe69713cc7081e92f4882fbc`; bsc `0x87854611b1b4727241db57ff994e2dbf0e9a9c9a`; bsc `0x91597ec09604226929f7a0151f9b8f069b8a16bb`; bsc `0x9bb84daa478a3daf6ca72b8d61765972943fbe75`; bsc `0xae0b0e18a6885ba4283a49eb5afc591a23cf30e1`; bsc `0xae8cf14fcfb08d1d27d586d367a1a25b85d1a726`; bsc `0xb1cfb0784e59c9f097723f7d5bcd2a7a29c89059`; bsc `0xb240f4a9c6c2371ecefd1f14d36590ed2ce7e0b9`; bsc `0xb35c641029241b31127afbdef0fb2431cfe6ca41`; bsc `0xba073868fc8324e9fbdb8209c6f7320603016fd9`; bsc `0xc602682b9ebc9719181b7a2b2479291cba26f801`; bsc `0xc82bfd20ff71b2cf913a6e7959431027938d9748`; bsc `0xd38855226d83588fc6154d789556cff1ba1585f1`; bsc `0xd3e7e46c62b0fea4cd73920c65971b67ea01de56`; bsc `0xd58d73ea4d52b4ac27f4aa95d05b49d39b571bc1`; bsc `0xd776210bbe588991ef2deaafb1f294cfff4f25e2`; bsc `0xe840d597520e4fcd5552b63301e3d90d1e961529`; bsc `0xf989ab35d9d4211541446e24a4f4257f62217d02`; bsc `0xfa9f90d3323fd64005a02ac439eb275b819ad2de` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-397613 | `0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-397612 (2 proxies) | 2 deployments: ethereum `0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b`; ethereum `0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x3be73e7cedeef9745e82d7c6a4c174a4829c4e73`; bsc `0x1095f85e7f31f0d3d94612738f13152763064cf5`; bsc `0x741ab338d170bd50a9d583d985f66bf694d02bdf`; bsc `0xce11f544b4291504f0c8cb66c0f6c0409c0f4978`; bsc `0xf661a9accf34ad673fd998c14b360f7c65f02d0f` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x41f92836f8d7a5866991686aa60e1f7c28216ed4`; bsc `0xffc26246004872111526b36e443da326273fe84c` | ⚠️ Unaudited |
| VaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5f0efd70e5bb1862bb6e106bdc084a6b6476f235`; bsc `0xb85924736978226c10635c0752ea20ffae8c0614`; bsc `0xd19c84487847b699ae9eb48de864fc3b9f85231b` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x487d9a14941e34723bde973cabae3894bed7930d`; ethereum `0x4b2552e5b1cc75d5f499dd76b0317aaf0ad5620f`; ethereum `0xd1cc0f09bcc5695810c44f4d34bdcf28ed3a3fa7` | ⚠️ Unaudited |
| XReferralAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x654f54cd49e39edb126c0a53d0dec6d441614c5e`; bsc `0x8b890f5498e5ef979ef872f43466dfbab68cc60d` | ⚠️ Unaudited |
| XReferralAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xca5416b9b70093bf96600a001e502c33ad4d119d`; bsc `0xe4bbb9b779011969f561c68cd860f8138c85ff1e` | ⚠️ Unaudited |
| ynViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb088fe2ec4de9711390da7ca5a4bfd664b08519d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x30433f40303a4f520b0df00be5a9970d000fd9b4) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xdb8e54f39aff243b25a41e4747957ed517af0511` | ❓ Unverified |
| Proxy (impl: 0x51e47f6739a9a6fce4817aa7bce388e78de50574) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xdb8e54f39aff243b25a41e4747957ed517af0511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed0eb84915e04dff8f051e8056591eb0c327557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397603 | `0x68589adc7687a23ff2b06fb032b997f09b44ed5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397604 | `0x7159cc276d7d17ab4b3beb19959e1f39368a45ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397605 | `0x8c33a1d6d062db7b51f79702355771d44359cd7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc26328f7067b3ae48ef6a22b126fe048008243c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397606 | `0xe439fe4563f7666fcd7405bec24ae7b0d226536e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21cbb242363692bae0070738c7083427d4f6d46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fda223440a0b10ba4fc85ba4382ea600e734871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ed2946e6a052a83a6aa12ad78c8f9b757bc06a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x839325e951df70b651331061ac2c227593a9b7b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-397607 | `0x0ce01de4e7c4dc6531f251ee6a64a4d449bc1576` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | matched | 4 | 3 | 0 | 16 | n/a |
| [2024-05-07-zokyo-yieldnest_protocol_audit.pdf](https://github.com/yieldnest/yieldnest-eigenlayer-lrt/blob/main/audits/2024-05-07-zokyo-yieldnest_protocol_audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | n/a | matched | 3 | 2 | 0 | 5 | n/a |
| [chainsecurity_yieldnest_protocol_audit.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | matched | 4 | 3 | 0 | 15 | n/a |
| [chainsecurity_yieldnest_protocol_audit_aug_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/chainsecurity_yieldnest_protocol_audit_aug_2024.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | n/a | matched | 5 | 4 | 0 | 25 | n/a |
| [composable_security_yieldnest_jan_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/composable_security_yieldnest_jan_2025.pdf) | Composable Security | Audit | 2025-01 | aging | Direct | n/a | matched | 2 | 2 | 0 | 10 | n/a |
| [yieldnest_clisbnb_strategy_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_clisbnb_strategy_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [yieldnest_default_asset_index_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_default_asset_index_audit_report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [yieldnest_max_vault_withdrawer_audit_report.pdf](https://github.com/yieldnest/Publications/blob/main/audits/yieldnest_max_vault_withdrawer_audit_report.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zokyo_audit_yieldnest_Jan8th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_Jan8th_2025.pdf) | Zokyo | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 1 | 0 | 5 | n/a |
| [zokyo_audit_yieldnest_dec12th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_dec12th_2024.pdf) | Zokyo | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [zokyo_audit_yieldnest_feb4th_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_feb4th_2025.pdf) | Zokyo | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [zokyo_yneigen_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneigen_audit_yieldnest_april_2025.pdf) | Zokyo | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [zokyo_yneth_audit_yieldnest_april_2025.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_yneth_audit_yieldnest_april_2025.pdf) | Zokyo | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [zokyo_audit_yieldnest_May7th_2024.pdf](https://github.com/yieldnest/Publications/blob/main/audits/zokyo_audit_yieldnest_May7th_2024.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [6053] 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6054] 2024-05-07-zokyo-yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6067] chainsecurity_yieldnest_protocol_audit.pdf — matched: No reason recorded
- [6068] chainsecurity_yieldnest_protocol_audit_aug_2024.pdf — matched: No reason recorded
- [6069] composable_security_yieldnest_jan_2025.pdf — matched: No reason recorded
- [6070] yieldnest_clisbnb_strategy_audit_report.pdf — no match: Scope section lists 5 files with paths; contract names extracted from filenames.
- [6071] yieldnest_default_asset_index_audit_report.pdf — no match: No explicit scope section or file listing; contracts inferred from findings and codebase overview. No audit date found.
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf — no match: Scope section lists 7 files/contracts. Date inferred from 'Feb 2025' at top of report.
- [6073] zokyo_audit_yieldnest_Jan8th_2025.pdf — matched: No reason recorded
- [6075] zokyo_audit_yieldnest_dec12th_2024.pdf — matched: Scope section explicitly lists 5 contracts with file paths.
- [6076] zokyo_audit_yieldnest_feb4th_2025.pdf — matched: Scope explicitly lists 6 contracts from Yieldnest repository.
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf — no match: Scope explicitly listed four contracts from the yieldnest-protocol repository.
- [6078] zokyo_yneth_audit_yieldnest_april_2025.pdf — matched: Audit report clearly lists two contracts in scope: StakingNode.sol and StakingNodesManager.sol. Date found in header: 'April 28th 2025'.
- [28439] zokyo_audit_yieldnest_May7th_2024.pdf — matched: Scope explicitly lists ynETH.sol, RewardDistributor.sol, RewardsReceiver.sol, StakingNode.sol, StakingNodesManager.sol, YieldNestOracle.sol, LSDStakingNode.sol. ynLSD is mentioned as a contract name. Audit date from cover page: May 7th 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ILSDStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IynETH | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | IynLSD | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff3e218f54f4982661a0464a298cf6652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynBase | unmatched — not counted | — | — | no |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87a538bd693e9d08544577d5ccfaa6373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04-10-chainsecurity_yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | RewardDistributor | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87a538bd693e9d08544577d5ccfaa6373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-05-07-zokyo-yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IynETH | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | IynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff3e218f54f4982661a0464a298cf6652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | StakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | ynBase | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87a538bd693e9d08544577d5ccfaa6373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit.pdf | ynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | AssetRegistry | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | Constants | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | DepositRootGenerator | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | EigenStrategyManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IEigenLayerBeaconOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ILSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IRewardsDistributor | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IRewardsReceiver | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IynETH | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | IynLSD | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | LSDRateProvider | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | LSDStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | PlaceholderContract | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | RewardsDistributor | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40d5ff3e218f54f4982661a0464a298cf6652351` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | StakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | TokenStakingNode | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | TokenStakingNodesManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | WithdrawalQueueManager | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | YieldNestOracle | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynBase | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87a538bd693e9d08544577d5ccfaa6373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynETHRedemptionAssetsVault | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynEigen | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x35ec69a77b79c255e5d47d5a3bdbefefe342630c` — deployed 2024-08-17 01:32:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynEigenDepositAdapter | unmatched — not counted | — | — | no |
| chainsecurity_yieldnest_protocol_audit_aug_2024.pdf | ynLSD | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BNBRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BTCRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BaseKernelRateProvider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | BaseVault | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | FeeMath | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Guard | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | KernelClisStrategy | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | KernelStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x78839ce14a8213779128ee4da6d75e1326606a56` — deployed 2024-12-19 04:18:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| composable_security_yieldnest_jan_2025.pdf | MigratedKernelStrategy | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Provider | unmatched — not counted | — | — | no |
| composable_security_yieldnest_jan_2025.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x32c830f5c34122c6afb8ae87aba541b7900a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-27 was 5d from audit; next candidate 56d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| composable_security_yieldnest_jan_2025.pdf | ynETHxVault | unmatched — not counted | — | — | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ClisBnbStrategy | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ClisBnbStrategyRateProvider | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | ISlisBnbProvider | unmatched — not counted | — | listed in scope | no |
| yieldnest_clisbnb_strategy_audit_report.pdf | Interaction | unmatched — not counted | — | listed in scope | no |
| yieldnest_default_asset_index_audit_report.pdf | Vault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x32c830f5c34122c6afb8ae87aba541b7900a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yieldnest_default_asset_index_audit_report.pdf | VaultLib | unmatched — not counted | — | mentioned in findings | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | VaultLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | AsyncWithdrawalLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | OriginWithdrawalLib | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | Provider | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | Withdrawer | unmatched — not counted | — | listed in scope | no |
| yieldnest_max_vault_withdrawer_audit_report.pdf | BaseWithdrawer | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | BTCRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | BaseKernelRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelClisStrategy | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelRateProvider | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | KernelStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x78839ce14a8213779128ee4da6d75e1326606a56` — deployed 2024-12-19 04:18:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_Jan8th_2025.pdf | MigratedKernelStrategy | unmatched — not counted | — | — | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Guard | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Provider | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_dec12th_2024.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8` — deployed 2025-06-10 15:57:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b` — deployed 2025-06-13 17:13:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x32c830f5c34122c6afb8ae87aba541b7900a2c5f` — deployed 2024-12-27 08:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb` — deployed 2024-11-06 11:52:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-12-27 was 15d from audit; next candidate 36d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_dec12th_2024.pdf | ynETHxVault | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | StakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_feb4th_2025.pdf | EigenStrategyManager | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | TokenStakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | TokenStakingNodesManager | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_feb4th_2025.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | EigenStrategyManager | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | TokenStakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | TokenStakingNodesManager | unmatched — not counted | — | listed in scope | no |
| zokyo_yneigen_audit_yieldnest_april_2025.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| zokyo_yneth_audit_yieldnest_april_2025.pdf | StakingNode | unmatched — not counted | — | listed in scope: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): StakingNode.sol StakingNodesManager.sol' | no |
| zokyo_yneth_audit_yieldnest_april_2025.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | ynETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x09db87a538bd693e9d08544577d5ccfaa6373a48` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | RewardDistributor | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | RewardsReceiver | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b` — deployed 2024-05-10 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | StakingNode | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | StakingNodesManager | own contract | 0x8c33a1… (selected) `0x8c33a1d6d062db7b51f79702355771d44359cd7d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zokyo_audit_yieldnest_May7th_2024.pdf | ynLSD | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | YieldNestOracle | unmatched — not counted | — | listed in scope | no |
| zokyo_audit_yieldnest_May7th_2024.pdf | LSDStakingNode | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xdb8e54f39aff243b25a41e4747957ed517af0511` | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe231db5f348d709239ef1741ea30961b3b635a61` | L2YnERC20Upgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x304b5845b9114182ecb4495be4c91a273b74b509` | SingleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3db228fe836d99ccb25ec4dfdc80ed6d2cddcb4b` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (18 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 108 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: temporal_name=2, unique_name=23

Zero-match audit list:

- [6070] yieldnest_clisbnb_strategy_audit_report.pdf
- [6071] yieldnest_default_asset_index_audit_report.pdf
- [6072] yieldnest_max_vault_withdrawer_audit_report.pdf
- [6077] zokyo_yneigen_audit_yieldnest_april_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
