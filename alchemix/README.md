# Agentic Audit Brief: Alchemix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 12 (1 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, fantom, optimism
- Contract surface: 772 unique implementations (1101 raw deployments)
- Coverage basis: 1/12 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $30,488,433.00
- On-chain TVL (included contracts): $294,431,043.44
- TVL by chain: Ethereum $261,573,121.74 | Optimism $31,653,197.24 | Arbitrum $1,204,724.45

## Project Description

This brief describes the observed EVM deployment and audit surface for Alchemix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across arbitrum, ethereum, fantom, optimism. Structural roles: 15 unclassified, 6 infra, 2 core, 2 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: unclassified (15), infra (6), core (2), supporting (2)
- Contract kinds: contract (25)
- Detected standards: erc1967proxy (6), accesscontrol (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (10)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1d28d426e4e20b9d43130c23252b8ed6f9cb388e`, chain 1)
- UnnamedContract (`0x5951f159ef502f0571a5d7e136a580dcadea42eb`, chain 1)
- UnnamedContract (`0x7e30fc3411afd4c0381a4ec6e6ba09e19b9edb5b`, chain 1)
- UnnamedContract (`0xa7aa5be408b817a516b40daea7a919664f13f193`, chain 1)
- UnnamedContract (`0xe974b9b31dbff4369b94a1bab5e228f35ed44125`, chain 10)
- AlchemistV2 (`0xf547b87cd37607bddabafd9bf1ea4587a0f4acfb`, chain 1)
- AlchemixToken (`0xdbdb4d16eda451d0503b854cf79d55697f90c8df`, chain 1)
- NextAlchemicTokenV2 (`0x649020f591288af5cfe73fd8fffd761ae956007e`, chain 42161)
- TransmuterBuffer (`0x0fba3630ddf56457d3ffc2864f260fbe73167f42`, chain 1)
- TransmuterBuffer (`0x4370675ab54fc710a27e29ea2bb5563468b5948f`, chain 1)
- TransmuterV2 (`0xad2a6c1c6025be8c703930dcd921a2fa25220298`, chain 1)
- TransparentUpgradeableProxy (`0x03323143a5f0d0679026c2a9fb6b0391e4d64811`, chain 1)
- TransparentUpgradeableProxy (`0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c`, chain 1)
- TransparentUpgradeableProxy (`0x49930ad9ebbbc0eb120ccf1a318c3ae5bb24df55`, chain 1)
- TransparentUpgradeableProxy (`0x5c6374a2ac4ebc38dea0fc1f8716e5ea1add94dd`, chain 1)
- TransparentUpgradeableProxy (`0xa840c73a004026710471f727252a9a2800a5197f`, chain 1)
- TransparentUpgradeableProxy (`0xfc30820ba6d045b95d13a5b8df4fb0e6b5bdf5b9`, chain 1)
- WETHGateway (`0xa22a7ec2d82a471b1dacc4b37345cf428e76d67a`, chain 1)
- Whitelist (`0x211c74db951c161c5a379363716ebdca5125ef59`, chain 1)
- Whitelist (`0x35b2c16de6f283ab0949964d90ccf930f378ade6`, chain 1)
- Whitelist (`0x3f950f06064a43d42a8e7c199bb77b8e3a4b2096`, chain 1)
- Whitelist (`0x46f992d00c2dfb6fbbbb64d69ab353c2fc435ace`, chain 1)
- Whitelist (`0x78537a6ceba16f412e123a90472c6e0e9a8f1132`, chain 1)
- Whitelist (`0xa3dfccbad1333dc69997da28c961ff8b2879e653`, chain 1)
- Whitelist (`0xdd8ac2d5a739bb4a591c5b0c7e613b810fe83ff1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/12 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 755 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 123
- Confirmed-live implementations: 17 of 772 unique; 755 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/151
- Verified + Unaudited implementations: 150
- Verified by bytecode match: 0
- Unverified implementations: 621
- Unique implementations: 772
- Raw deployments: 1101
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $6,906,906.57
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 9 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $6,906,906.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 0.7% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WETHGateway | token | project_anchor | own_supporting | 0 | ethereum | unit-378674 | `0xa22a7ec2d82a471b1dacc4b37345cf428e76d67a` | ✅ Audited |

### ⚠️ Verified + Unaudited (150)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FRAXStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853d955acef822db058eb8505911ed77f175b99e` | ⚠️ Unaudited |
| OVMFiatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ⚠️ Unaudited |
| AlToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0fe9ad5f3b0d58160288917aa56653660e9` | ⚠️ Unaudited |
| AlchemixToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378678 | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x29ef9f2fa6f636eafe74e5fba057c7949a37ffa6`; optimism `0x3e29d3a9316dab217754d13b28646b76607c5f04`; optimism `0xcb8fa9a76b8e203d8c3797bf438d8fb81ea3326a` | ⚠️ Unaudited |
| WstETHEthereumStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde44c213f0730e9f38401daf8edf31129de80681` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x124d69daeda338b1b31ffc8e429e39c9a991164e`; optimism `0x1ad06ca54de04dbe9e2817f4c13ecb406dcbeaf0`; optimism `0x4d7959d17b9710be87e3657e69d946914221bb88`; optimism `0x60be3fb22ddf30c17604b86ec005f6173b1170aa`; optimism `0x67c253eb6c2e69f9e1114aeead0db4fa8f417ac3`; optimism `0xa1055762336f92b4b8d2edc032a0ce45ead6280a`; optimism `0xa5edb0ef932f7c2f37b8fc75cb01948f6258a4f8`; optimism `0xaf03f51de7a0e62bf061f6fc3931cf79166b0a29`; optimism `0xfa09479d72e2b3f8b6df63399772237ad6658d76` | ⚠️ Unaudited |
| VPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 20 | ethereum | n/a | 20 deployments: ethereum `0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee`; ethereum `0x252c805e999115158174dfc997bf5c1342aadff2`; ethereum `0x2b6c40ef15db0d78d08a7d1b4e12d57e88a3e324`; ethereum `0x35b225880df01cde935db463d0e70a9e737d516e`; ethereum `0x6f8d5fd58f5f825fdbf4f3301c0bdd361653488c`; ethereum `0x8209f3a03730c035163b4414c1545a3137d5b402`; ethereum `0x83a99daff5f84b278d3150a36385fcdf04a0fecf`; ethereum `0x83c608b3997db00b5c6d93746785857cd22d4495`; ethereum `0x8bcdd6a8168d658dfa19721eab7470e43398db25`; ethereum `0x9b91ab47cefc35dbe4ddcc7983ffa1fb40795663`; ethereum `0xa5bc6eb0a7e6738e2f2ac6c92280b32771ac52ad`; ethereum `0xa8b607aa09b6a2e306f93e74c282fb13f6a80452`; ethereum `0xabff8f065318a8cf0de66bd1e90e976381859ef0`; ethereum `0xb4edcefd59750144882170fcc52ffed40bfd5f7d`; ethereum `0xba680a906d8f624a5f11fba54d3c672f09f26e47`; ethereum `0xc14900dfb1aa54e7674e1ecf9ce02b3b35157ba5`; ethereum `0xe4fe646a43daec8323922ca3e4fe782d70805d93`; ethereum `0xebcf77cce55ed6091f82aee3c5539841e4d75f49`; ethereum `0xef4f4604106de23cdadfeae08fcc34602cb475c1`; ethereum `0xff43c327410f960261057ba1da787ed78b42c257` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x17573150d67d820542efb24210371545a4868b03`; arbitrum `0x37704b70cba0ffd12eb039274ff46992544a1f16`; arbitrum `0xcb8fa9a76b8e203d8c3797bf438d8fb81ea3326a` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2397321b301b80a1c0911d6f9ed4b6033d43cf51` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74017a8cc7c15ffccd726603790d26d7deca` | ⚠️ Unaudited |
| VWBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b` | ⚠️ Unaudited |
| Stake_FXS_WETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa29367a3f057f3191b62bd4055845a33411892b6`; ethereum `0xd875628b942f8970de3cceaf6417005f68540d4f`; ethereum `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02e2151d4f351881017abdf2dd2b51150841d5b3`; ethereum `0x26598e3e511adfadefd70ab2c3475ff741741104`; ethereum `0x48bc302d8295fea1f8c3e7f57d4ddc9981fee410` | ⚠️ Unaudited |
| WstETHL2Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8` | ⚠️ Unaudited |
| StaticATokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0x2680b58945a31602e4b6122c965c2849eb76dd3b`; optimism `0x337b4b933d60f40cb57dd19ae834af103f049810`; optimism `0x4186eb285b1efdf372ac5896a08c346c7e373cc4`; optimism `0x43a502d7e947c8a2ebbaf7627e104ddcc253abc6`; arbitrum `0x248a431116c6f6fcd5fe1097d16d0597e24100f5` | ⚠️ Unaudited |
| TwoPoolAssetManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06378717d86b8cd2dba58c87383da1eda92d3495` | ⚠️ Unaudited |
| ThreePoolAssetManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b` | ⚠️ Unaudited |
| WstethStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x7da70f3327efe7643867c6ae5909d8ab01353189`; optimism `0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4` | ⚠️ Unaudited |
| aeWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| AlchemistAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0x23a3c27bb007887fd8cbfeaf323799093a450e7e`; ethereum `0x693b7594ae0633d9c5574d0da46a040f92f5b281`; optimism `0x12114eb8e17800b3b2e777339b9e0c32638e0be0`; optimism `0x143c2118417f2df7489ad241023b3be915906865`; arbitrum `0x12114eb8e17800b3b2e777339b9e0c32638e0be0`; arbitrum `0x143c2118417f2df7489ad241023b3be915906865` | ⚠️ Unaudited |
| AlchemistCurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7d61e3cde8b58c4be192a7a35e9d626c419302a4`; optimism `0xc8a2bde198d21e9abb0b306b4ad27f0711aef20d`; arbitrum `0xc8a2bde198d21e9abb0b306b4ad27f0711aef20d` | ⚠️ Unaudited |
| AlchemistEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8317bd5f48b6fe608a52b48c856d3367540b73b` | ⚠️ Unaudited |
| AlchemistRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0x6733aa6b2a622e43e8ff61945e8fbe5f1b6b00fd`; ethereum `0xdb852896a23c7e2519b75aea692cacf834d086ab`; optimism `0x3c0546587d27354635a4972390a7b96f962d8bbd`; optimism `0xc774f30484818f06a261a89a1d66367e6bbe3e5a`; arbitrum `0x3c0546587d27354635a4972390a7b96f962d8bbd`; arbitrum `0xc774f30484818f06a261a89a1d66367e6bbe3e5a` | ⚠️ Unaudited |
| AlchemistStrategyClassifier | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xdb7d25b0bfd1585a797f6bf7d7ccba26e77253cc`; optimism `0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70`; arbitrum `0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70` | ⚠️ Unaudited |
| AlchemistTokenVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0x5b1c7180c630d3b2b6782df70f43ae5ea80425ba`; ethereum `0x5fe3963cb35ab635bd3a11e4f9730fc07293f9c1`; optimism `0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857`; optimism `0x347371c17d14ee7943943995e2a0a9df4fd83d50`; arbitrum `0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857`; arbitrum `0x347371c17d14ee7943943995e2a0a9df4fd83d50` | ⚠️ Unaudited |
| AlchemistV2 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378682 (2 proxies) | 2 deployments: ethereum `0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c`; ethereum `0x5c6374a2ac4ebc38dea0fc1f8716e5ea1add94dd` | ⚠️ Unaudited |
| AlchemistV2 | unknown | project_anchor | own_core | 0 | ethereum | unit-378680 | `0xf547b87cd37607bddabafd9bf1ea4587a0f4acfb` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x10294d57a419c8eb78c648372c5baa27fd1484af`; optimism `0xc96cb3a5e76247fdf1c623e85fb535aea566769e`; optimism `0xe04bb5b4de60fa2fba69a93ade13a8b3b569d5b4` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x1bce0aca8b0e4139e4390cf1a7a6eb644000a2f0`; optimism `0x6730545fecd8d5cab50507a6c1e28b181ad75483` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0dadc9e7b14d329d879cd4980e3db3a9224e01d5`; arbitrum `0x84672c77ddcba0003e84f13f2b5f168f62b36d1e` | ⚠️ Unaudited |
| AlchemistV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 16 deployments: ethereum `0x938dba3b746b3cc6d47c703aac3a7485287c0ed7`; ethereum `0xb678bed8286728f712630133ef9fc11dae538c4c`; ethereum `0xd55c73ec1a261d0c40111b88815ee977fb24ca6d`; ethereum `0xd6cd22af7524b3d24716e78b0bd14fd5dd15bd30`; ethereum `0xde399d26ed46b7b509561f1b9b5ad6cc1ebc7261`; ethereum `0xf747e9dc322c0495527449bc7546ee621784c50b`; ethereum `0xf7e137639e168e5681e9657e773487d90e20b438`; arbitrum `0x43647374775b8b792f273a82097d182b34964f06`; arbitrum `0x654e16a0b161b150f5d1c8a5ba6e7a7b7760703a`; arbitrum `0x7554616955e2227c1fcec373e53a809cd37d095c`; arbitrum `0x98cabfdd80d9a59d6cd05fe72e7d445882b1f83b`; arbitrum `0xa40cff63b2092c846d89563bb62e2a4ab3245926`; arbitrum `0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5`; arbitrum `0xb46ee2e4165f629b4abce04b7eb4237f951ac66f`; arbitrum `0xbb2f5d69978160b9220cfca9476926e021264293`; arbitrum `0xdd8888e4a1e790541bfca51c65b6d801c20c7fc1` | ⚠️ Unaudited |
| AlchemistV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xeb83112d925268bede86654c13d423a987587e3e`; ethereum `0xfa995b6abc387376c3e7de5f6d394ab5b6bee26b` | ⚠️ Unaudited |
| AlchemistV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0x763f5d567403add750e13234db896cfe6b423059`; ethereum `0xf700c7e40efca6f7a810e172afcee3592ff4ad33`; optimism `0x073598132f37756a7e665fb52f1757463120bd3c`; optimism `0xeb380d86eed275c9f2ed77745ab1b2ccf364bf7a`; arbitrum `0x073598132f37756a7e665fb52f1757463120bd3c`; arbitrum `0x3ddf4aa5b11e1276df3481a1eabeea8e9c70f6f7`; arbitrum `0xeb380d86eed275c9f2ed77745ab1b2ccf364bf7a` | ⚠️ Unaudited |
| AlchemistV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 3 deployments: optimism `0x278bf3985f552ca9e30e26dd435acfe88216bdc8`; optimism `0x930750a3510e703535e943e826aba3c364ffc1de`; optimism `0xded3a04612ff12b57317abe38e68026fc9d28114` | ⚠️ Unaudited |
| AlchemistV3Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x15da4c7db6404b92894d5214fac92057fb8a263d`; ethereum `0x872a03fabc86b59c883cd9c439e969321b719beb`; optimism `0x763f5d567403add750e13234db896cfe6b423059`; optimism `0xf700c7e40efca6f7a810e172afcee3592ff4ad33`; arbitrum `0x763f5d567403add750e13234db896cfe6b423059`; arbitrum `0xf700c7e40efca6f7a810e172afcee3592ff4ad33` | ⚠️ Unaudited |
| AlchemistV3PositionRenderer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x541fb28d158aa33e6db93cd1f713567407c73463`; ethereum `0x5fb5a48e2559af2592ba07def1cdc327ce30f5ff`; optimism `0xeb83112d925268bede86654c13d423a987587e3e`; optimism `0xfa995b6abc387376c3e7de5f6d394ab5b6bee26b`; arbitrum `0xeb83112d925268bede86654c13d423a987587e3e`; arbitrum `0xfa995b6abc387376c3e7de5f6d394ab5b6bee26b` | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0366093c869fbf4888f96e8f589e0493aae801a9`; arbitrum `0xb58609ea0a12731a3817de063d2b9217cbcea90a`; arbitrum `0xb77750e48c2b1e1657cc5ad7f329133c64a8321f`; arbitrum `0xb85efc42d55381c895971016c9de27dabb036a43`; arbitrum `0xfaafe7143ffc553a5033131549cef6634d165693` | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9`; arbitrum `0xd031bd586caacd11e846c35d1a61dc543d4ee55d` | ⚠️ Unaudited |
| AlchemixHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x7879a9c464af7805712404cf4a8366c475034f91`; ethereum `0x9f3031cb29ab5797f82740c62591ff7148a4cd3d`; optimism `0x990162afaa06f591c03dd36ecbda24a8a80f2d0c`; optimism `0x99e7d40750682ff6b5b8c362daad265b9b21e1a0`; optimism `0xf0faf495905506f156b6cc2d8810cf3073e04870`; arbitrum `0x52e4c31933b466cd8a7cb0aab819abaf7be7fc0e`; arbitrum `0x9b2ef5617430b13741bc95157a3fa3387a00ab11` | ⚠️ Unaudited |
| AlchemixTokenMath | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x80d6ea0e9098a5993546f13e5d04da76f94c5971`; ethereum `0xfb56f5f6d8d0a712778d82127b25b8533426d785`; ethereum `0xff7d5c7da613a91f31915c7bf6f4ab07a2b37ee9` | ⚠️ Unaudited |
| ArbitrumRewardCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x34e390d0366234a21332245eda1c145eefebdb8f`; arbitrum `0x6428f6ec4bbdee53c8ff894a7d6696fd14cb6c9b`; arbitrum `0xa05beadfd3a4b37d6f72a83c660cb1366c86e6cf`; arbitrum `0xe10fff987d68272a53c053e5d7d5f630f15fe3ac`; arbitrum `0xf1d334374eea0faa7548510e0edccb0eb6f6fc95` | ⚠️ Unaudited |
| ATokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x67ec822a2f981ef2db6afce4e8df57ff1439f4d3`; ethereum `0x6b6bd434a822ae51704aed4436dac62a0772166c`; ethereum `0xa067c885d958aec176ec3d8dadc847e0c9384809`; ethereum `0xbea839f978c1c398b0303c00898a5130c9506401`; optimism `0x6076a6b474f336c566e4ba551a5934e3ba5e7193`; optimism `0xba3e8437a06397430036e23ff9153408a3203afd`; arbitrum `0x07b8dd83a7cf6f6934064203032224c4c4d477db`; arbitrum `0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03`; arbitrum `0x3e1ccc66c755fdbc7fbf7d667aa843c062daf304`; arbitrum `0xa8a74f44c3eb508564e99a7186a2b314e5d85a80` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0639076265e9f88542c91dcdeda65127974a5ca5` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x57d45c6a5878a7bddd217088787cccc9e1fa4f9a`; arbitrum `0x88e4830e62cd1bed29dd7ebde46bb9b86dc4f053`; arbitrum `0x9d4c27802238c96270bd3913e5dbbadba92715e1`; arbitrum `0xb9b47fd9ea94f3b568ab5d4a449b0b7b544822ad` | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92`; arbitrum `0x870d36b8ad33919cc57ffe17bb5d3b84f3adee4f` | ⚠️ Unaudited |
| Dai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b175474e89094c44da98b954eedeac495271d0f`; optimism `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921`; arbitrum `0x5979d7b546e38e414f7e9822514be443a4800529` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x1f32b1c2345538c0c6f582fcb022739c4a194ebb` | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x8aacc947c2f4e24d2be4cba4498f004079f35d87`; ethereum `0x968234f13e485e6c7ad3469238cc4e6005dd5d23`; ethereum `0xa8ccbf1c81219c3caa7621a51ac6c1f8a57cc9b3`; ethereum `0xdfdc17f784e16d7634ac270911d98755c68ae220`; arbitrum `0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4`; arbitrum `0x5aa8e010912763d28a2019e3f0a89ed194d60de2`; arbitrum `0xaeea02683f652dd1fb4846be71fb8cf26f3393d4` | ⚠️ Unaudited |
| EthAssetManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe761bf731a06fe8259fee05897b2687d56933110` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| frxETHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafa44efe7901e04e39dad13167d089c559c1138` | ⚠️ Unaudited |
| Gauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x13baec9c12544066a7918efc3d8b626dbbfe1615`; optimism `0x6101236fd0e04427952799323d89b99be0eab52f`; optimism `0xa688080ca069231c6d5713cd009662ea54437a02`; optimism `0xa8e0754dd8ef3700ac8478fdb8d4b8473de3817c`; optimism `0xb715d27cce97e869cff840072ce1eab1d982791e`; optimism `0xc16adbf2d01d6524b79cbb610ce31d5db80eee3c`; optimism `0xe8b219c285e4e4ec28ac80fdc4b9739b18cb8890`; optimism `0xfc0b9a9c2b63e6acaca91a77a80bfa83c615e6c5` | ⚠️ Unaudited |
| Gauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x43fbf34df6da5fc66e15e023d3b690fd0de33cd7`; arbitrum `0x72b6594a0c8d9ee9725ce780f87f9e00615d4b10`; arbitrum `0xc3f26d2fa16129a8d4a5a0f94d25f2cdd9005cdb` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x653e76977c275df945a5c7417297d50ebcadd273`; arbitrum `0xc129bd3fd93ec09237369c70ba5e1c06fc5dacb0` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb1cfd0753ca65c03f0457150c59f107f7115bb86`; arbitrum `0xfcc143dc4dd62ad53c464db08f668904e3b04617` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0xb29617209961db995dd30a4ab94ba0034a4284f9` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x7e108711771dfdb10743f016d46d75a9379ca043` | ⚠️ Unaudited |
| HarvestResolver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x9825f776908ff9815e284351d1fe94fe75f15b49`; ethereum `0xe1be7de145ecd1772aac1c57e7cc1388d266cf22`; optimism `0x91b5f8670413a785fe6012360a3fb33f23015c2e`; optimism `0xe9044a487c758ff8f8c92626bf484f3fb78a1e96`; optimism `0xf6dd52cdf1614cd649077aa283840657617faa07`; arbitrum `0x0370ada82f7a9397ca26ea5c9f13b937513ef754`; arbitrum `0xf91597f5b107eb4e2662739499e5937b291d7a6b` | ⚠️ Unaudited |
| IdleTrancheAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0b20f9fcaf67b2a90bc881a68562569d8638a1c5`; ethereum `0x2158953bc14d297b5ba7937650bc4c3d1c858434`; ethereum `0xa3d66d606739c1776eca722bd5172aa7512b6a5b`; ethereum `0xa3f16f804ed389b17de6cd5bc73a53f7ce9c16d9` | ⚠️ Unaudited |
| JonesUSDCAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x87c4a26c6a00c91acf2344a43074563085f9bbe5`; arbitrum `0xd2385ba9656b58e8a2928d5eb4de2da3649f314b` | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x8e01013243a96601a86eb3153f0d9fa4fbfb6957` | ⚠️ Unaudited |
| L2ERC20TokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x07d4692291b9e30e326fd31706f686f83f331b82`; arbitrum `0xe75886de20df66827e321efdb88726e6baa4b0a7` | ⚠️ Unaudited |
| MerkleBox | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe67516417a934b27cf0c14868f8165b1bc94bf73` | ⚠️ Unaudited |
| MigrationTool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x1dff114dfbbcaedca5f0d46dc8e9615dfc2645bd`; ethereum `0x7a88c7f84597a14605a6cd7007b76cc510d0fa45`; ethereum `0x88970ee3eb5844ba29f684e85f7f33d58b7b5c47`; ethereum `0xe1f27add45652812bad02e26eec588f0ef97e1d3`; optimism `0x2c68d03f5e7333bbd21202044778893919cb8126`; optimism `0x3892a5c92eafb81cec321b4304495038202ca9e4`; optimism `0x7018cbaf278cab1eea3192d0d58ef520f4e5ced0`; optimism `0xbcf001154265e31679ec35d084814988d9611cb9`; optimism `0xc56209cccd32297460383e3e032fae0636fb4302`; optimism `0xf87510f1e63e29bb69d9d35d0365e8cace609a8c`; arbitrum `0x6e94c527e6a1def124ebf5be38c8c876a541bffb`; arbitrum `0x81b1d4318c7950cf8f1583c74afe3c8ffa1705e8`; arbitrum `0xb6d30d097773bf2905af086b46d9bd269f76910a`; arbitrum `0xececc1bbd5a239a8502368a4d98bb104a9f146a9` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6669292fa56123f71949b52d883ae57e225` | ⚠️ Unaudited |
| NextAlchemicToken | token | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x303241e2b3b4aed0bb0f8623e7442368fed8faf3`; arbitrum `0x380cbf190318c0f9d07e6565247b9518227d2302`; arbitrum `0x49000f5e208349d2fa678263418e21365208e498` | ⚠️ Unaudited |
| NextAlchemicToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6e57806138cb011a0c8f95becb9574c3dda04483`; arbitrum `0xaf11680b507b66884ecf049d842a7e3c1e15e386` | ⚠️ Unaudited |
| NextAlchemicTokenV2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-378685 | 2 deployments: arbitrum `0x27b58d226fe8f792730a795764945cf146815aa7`; arbitrum `0x649020f591288af5cfe73fd8fffd761ae956007e` | ⚠️ Unaudited |
| optimismCompress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x138e30d0f35a14d25317d83863eb7e4e0501a33d`; optimism `0x65c732b5bfc753975c2d92a521bcac633fdae130`; optimism `0x9d15e5230506bfb66d2a5b18117aa14bf1918d35`; optimism `0xc58b2bb06cb16fe99a989fe2b495734fa695533a`; optimism `0xd2b1d91dbddd1c026a0c849d08e1ea284866650c` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x510a496b2443ba52a3b269fee5a241a4ed4cca58`; arbitrum `0xfb4fe921f724f3c7b610a826c827f9f6ecef6886`; arbitrum `0xfd599db360cd9713657c95df66650a427d213010` | ⚠️ Unaudited |
| PoolAccountant | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 21 | ethereum | n/a | 21 deployments: ethereum `0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd`; ethereum `0x2337c59180357ce1d771da2b2df56a91e7c442c0`; ethereum `0x4d25e00be9bf9c7f21f6a5dc1f6638ca4d2c5a24`; ethereum `0x4e713d74957c167f2ddbdca46dadd51946c80fe9`; ethereum `0x6f466f8bf346b10d28d13379bba420748daea70f`; ethereum `0x745c1085657035ad04c7f87438c13d525a5bd70d`; ethereum `0x75619e9f479f9415630d21ddc99919da47c0a737`; ethereum `0x7c6226a0a3d6e87bb79a301c74004bd0240e639e`; ethereum `0x7f896dde137fbfc0347854faa02e243ad6f2be93`; ethereum `0x85b6944d2b0a69e781777833b3964a911eec6167`; ethereum `0x88df6adbecdfb7a58cb4c27f59eee1bdf7d113dd`; ethereum `0x8b41b47078dc38be3d1eecf5a3d9b241ebaecda1`; ethereum `0x92d10283e3f1e894b5ea9c69fee98d6848f179ef`; ethereum `0x963a9593c9fb4de39c94452d3de437e8ab1f7074`; ethereum `0xa17f64b7d3222d538ce0bf137199aed373a6088c`; ethereum `0xa34dc8502d6e6c2031834608156a064991825e72`; ethereum `0xa9af8f4202996528d23d913378f92ef932eee400`; ethereum `0xa9e886c5b439143126b49e3c3a4777eb77e33240`; ethereum `0xc0a7eb8b23512ecd0e9f8f51e3fae7cf9530b212`; ethereum `0xe25d8f3f659e2a44602ec91538f9818793fd844f`; ethereum `0xfb7fa759fb93e56e1dcd2f0cd7098369c624eb44` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8` | ⚠️ Unaudited |
| PoolRewards | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x479a8666ad530af3054209db74f3c74ecd295f8d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x20c572cbd7c3e40b580af22582398b6580d124cf`; ethereum `0xe0fc5cb7665041cda26969a2d1ceb5cd5046347d`; optimism `0xd4bd68da9bf9112cf2137d500c37bd9b842eae85`; arbitrum `0x80c715df236aa4fe89938b8976d1d45453e0ff86`; arbitrum `0xa44f69aeac480e23c0abfa9a55d99c9f098beac6` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7915ce4f43e1378f0c3720351a973a023f7fb3e8` | ⚠️ Unaudited |
| RETHAdapterV1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378672 | `0x7a172816c0560964e6ad54ef54afabb035614047` | ⚠️ Unaudited |
| RETHAdapterV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80ca99d65a8855cb20e44a5e9b6c6abf71e3739d` | ⚠️ Unaudited |
| RewardCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xd8320859860f8e116e9bda13cdd60b27bcb6b058`; optimism `0xf34517ef82c9b512783c44013720a12759f896f9` | ⚠️ Unaudited |
| RewardCollectorOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1e0bd5c0e3ab80d66b6225263d6739488a2831bd`; optimism `0x3fa5629b403c4424711e3eb69341833ac1a7d02d`; optimism `0xffd61c9597982241fd6d7c3f8a03414a5b922e9a` | ⚠️ Unaudited |
| RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x2931b84d59f6f570eebdaaae182867c5e5d58075`; optimism `0x2e0e6b5490ecc65aa9aacc40af6e41253681bb47`; arbitrum `0x5ea092309a686a7f1e0a05f8125dc5025bc6b258`; arbitrum `0xabad1adab8a51a00665a3b76da0e32b2d2f1a6db`; arbitrum `0xae8e5edd84800e77f80efff9c95d9c283e21a881` | ⚠️ Unaudited |
| RocketTokenRETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae78736cd615f374d3085123a210448e74fc6393` | ⚠️ Unaudited |
| SDLController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x06bf5490e4e8d678944b7e1b79be2cdb6fbe53db`; ethereum `0x0992d9913c2c8283fff60cd6a5a05b5239373b7a`; ethereum `0x13ee9d8a44dbb64fb1552ac5b0437164550c60e8`; ethereum `0x483a731328d77e78d52ab5d4e8e2894f80a65afc`; ethereum `0xa77b4eba7c78277ae32a3b6d765cc193aa588037` | ⚠️ Unaudited |
| SDLController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6a1883833e86a7110a59be817cae9742bc3050d1`; ethereum `0x851abef4d67e8bb4ee2f90e5de5e880f6235d028` | ⚠️ Unaudited |
| SDTController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x31e606c9cdbd1c1ebc322ef8b91004b8b8b75a46`; ethereum `0x52552ad9c9ec7eb64d53c5aa518b76759f17cc11`; ethereum `0x9543afdd9d92c60b88623c5994059c6fef13db0c`; ethereum `0x9debb18948639604c99fec2afa0e5316184c61be` | ⚠️ Unaudited |
| SDTController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3216d2a52f0094aa860ca090bc5c335de36e6273` | ⚠️ Unaudited |
| SDTController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c`; ethereum `0xbcd7fbc030dbafabd03434b56f661a457613699a` | ⚠️ Unaudited |
| sfrxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3e018457b222d93114458476f3e3416abbe38f` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b86248d3c2b618ccb071adb122109da96da2` | ⚠️ Unaudited |
| StaticAToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x318334a6dd21d16a8442ab0b7204e81aa3fb416e`; ethereum `0x61134511187a9a2df38d10dbe07ba2e8e5563967`; ethereum `0xbc11de1f20e83f0a6889b8c7a7868e722694e315`; ethereum `0xce4a49d7ed99c7c8746b713ee2f0c9aa631688d8`; ethereum `0xf591d878608e2e5c7d4f1e499330f4ab9bbae37a` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TimeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b8610c038a6c4f37bd757135d4c29ae8917` | ⚠️ Unaudited |
| TokeAutoStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4610815e65901e66237ef07493a06cbac783c188`; ethereum `0x467ec89b9e2cd62e66d1b28bd45db1470d4908a5` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x073598132f37756a7e665fb52f1757463120bd3c`; ethereum `0x2584e8b0616b3e750492c9629a3b27679c410cb9`; optimism `0x2584e8b0616b3e750492c9629a3b27679c410cb9`; optimism `0x693b7594ae0633d9c5574d0da46a040f92f5b281`; arbitrum `0x2584e8b0616b3e750492c9629a3b27679c410cb9`; arbitrum `0x693b7594ae0633d9c5574d0da46a040f92f5b281` | ⚠️ Unaudited |
| TransmuterB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee69bd81bd056339368c97c4b2837b4dc4b796e7` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378683 (2 proxies) | 3 deployments: ethereum `0x0fba3630ddf56457d3ffc2864f260fbe73167f42`; ethereum `0x1eed2dbeb9fc23ab483f447f38f289ca15f79bac`; ethereum `0xbc2fb245594a68c927c930fbe2d00680a8c90b9e` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378668 | `0x4370675ab54fc710a27e29ea2bb5563468b5948f` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | optimism | n/a | 6 deployments: optimism `0x143a08f0c2c1820eff9d0e749683396c7bb7a4e7`; optimism `0x36e8d12227f8c8ef38bb3aeabf816681b5440be5`; optimism `0x719fe4734faa5d589f356a8f46e5522e6dbe5e03`; optimism `0x7f50923ee8e2bc3596a63998495baf2948a28f68`; optimism `0x971c2d9ca059a19447bbe59f372aa21eb70e2d6d`; optimism `0xe99a9a717c60f9639b235ede422c27d60fbeb3b9` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x00e33722ba54545667e76a18ce9d544130eeabcc`; arbitrum `0x752ca40117180129410b5e3529aedeb6efa22e2b`; arbitrum `0xecad08ee07f1aa87f3e080997eba6d02d28bb9d2` | ⚠️ Unaudited |
| TransmuterConduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x440e9296007864a571f6555fb6015369150d2835`; ethereum `0x4ac2377ed3ee376ff07d706beabc2fa38ecfb41c`; ethereum `0x8412d4c04f79b8886ce0bfdf38baf7af13011eee`; ethereum `0xefc8a5a82d09d1068d26ad57e2f57c0037c4f20f`; ethereum `0xf65a1e41d0491621596d4b61b85e73e38cf7e424` | ⚠️ Unaudited |
| TransmuterEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f`; ethereum `0x9fd9946e526357b35d95bcb4b388614be4cfd4ac` | ⚠️ Unaudited |
| TransmuterV2 | unknown | project_anchor | own_supporting | 4 | ethereum | unit-378684 (4 proxies) | 4 deployments: ethereum `0x03323143a5f0d0679026c2a9fb6b0391e4d64811`; ethereum `0x49930ad9ebbbc0eb120ccf1a318c3ae5bb24df55`; ethereum `0xa840c73a004026710471f727252a9a2800a5197f`; ethereum `0xfc30820ba6d045b95d13a5b8df4fb0e6b5bdf5b9` | ⚠️ Unaudited |
| TransmuterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378677 | `0xad2a6c1c6025be8c703930dcd921a2fa25220298` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe107fa35d775c77924926c0292a9ec1fc14262b2` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | optimism | n/a | 5 deployments: optimism `0x4e7d2115e4feecd802c96e77b8e03d98104415fa`; optimism `0x6626d32b717739438f2529ad72cb880482926ca9`; optimism `0xa7ea9ef9e2b5e15971040230f5d6b75c68aab723`; optimism `0xb7c4250f83289ff3ea9f21f01aad0b02fb19491a`; optimism `0xfcd619923456e20eae298b35e3606277b391bbb4` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x1b03612cf7881b8bc16def13c94d0097adca4d19`; arbitrum `0x1eb7d78d7f6d73e5de67fa62fd8b55c54aa9c0d4`; arbitrum `0x2a8b5f365fb29c3e1a40a5cd14ad7f89050755ed`; arbitrum `0xd6a5577c2f6200591fe077e45861b24aeeb408e9`; arbitrum `0xe7ec71b894583e9c1b07873fa86a7e81f3940ea8` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x645ce9367435a94c96fb67ebcf78eb09b3bd65cb`; ethereum `0xe04bb5b4de60fa2fba69a93ade13a8b3b569d5b4`; optimism `0x54aed38abe51bb39c8e75ac1d9d9335d6136b6a1`; arbitrum `0x21cfa80d878104890b327038c44d8dfab278ddff`; arbitrum `0x4be3d2fe08a18836cef244aba0f8d7189f673011`; arbitrum `0xfaf83348b325889bfdffee711999a2692665452e`; arbitrum `0xfd092e88600852ff6be6c1b8e16c95ed466af5c6` | ⚠️ Unaudited |
| TransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7037d479180cb9514af4ed6f77b8390b1f3e6007`; arbitrum `0xb0a2db2b8bd8ba1d6748951474c25394528739dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d994b40c63e0e8ea485010aee1d472ea19d2f37`; ethereum `0x1435f228a6601e60db22bc21d7e9239017908653` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x210a3a20bfe11f4200918134aae34d753d4e1766`; ethereum `0x407bdc8f42f616823109fedb21c85cfb4def2764`; ethereum `0x6fb0fe574c04abaed21ebc1fd39fee19c4d1f72c`; ethereum `0x7d0038ca6f121c7bfa8c58af8e34d33104040834`; ethereum `0xe4503ed2ad546ed72d81861dd3a305842a402333` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e`; ethereum `0x51c1a7ab22b6482852d85311ac2076013f9e6142`; ethereum `0x77394f217b491c4e8056923155f48d1188c81eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7c4250f83289ff3ea9f21f01aad0b02fb19491a`; ethereum `0xcad336723c356844dd213121b377813a20561780` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x43cd4c711100ba68589d83d1a7d7c552cd9b24ba`; arbitrum `0xa5b00dbb58e2286f239057dd8e240c6bfc37f771` | ⚠️ Unaudited |
| USDT | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94b008aa00579c1307b0ef2c499ad98a8ce58e58` | ⚠️ Unaudited |
| V1Deprecatooooor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb39286fadb3f6039c8b5d79bafa21615c23b4ec` | ⚠️ Unaudited |
| VaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xdd56b00302e91c4c2b8246156bdeaa1cedc58984`; optimism `0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2`; arbitrum `0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c144ba99af564be7e81261f7bd951b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e58b36e26b08fd1d2aed4538c02171fa872` | ⚠️ Unaudited |
| VesperAdapterV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x36033e1fd88470a5192692e01150c3593847fca5`; ethereum `0x54aed38abe51bb39c8e75ac1d9d9335d6136b6a1`; ethereum `0xbc8003aa713df9c4887700a7a42f26f06c810819`; ethereum `0xfcd619923456e20eae298b35e3606277b391bbb4` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd1c117319b3595fbc39b471ab1fd485629eb05f2` | ⚠️ Unaudited |
| VirtualDollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d` | ⚠️ Unaudited |
| VLINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a27e910aee974d05000e05eab8a4b8ebd93d40c` | ⚠️ Unaudited |
| VSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` | ⚠️ Unaudited |
| VUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677ddbd918637e5f2c79e164d402454de7da8619` | ⚠️ Unaudited |
| VUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c49066c0808ee8c673553b7cbd99bcc9abf113d` | ⚠️ Unaudited |
| VVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4cfe5741b357fa371b506e5db0774abfecf8fc` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3669c421b77340b2979d1a00a792cc2ee0fce737`; ethereum `0x707f9118e33a9b8998bea41dd0d46f38bb963fc8`; ethereum `0x7da96a3891add058ada2e826306d812c638d87a7`; ethereum `0xa258c4606ca8206d8aa700ce2143d7db854d168c`; ethereum `0xa354f35829ae975e850e23e9615b11da1b3dc4de`; ethereum `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0`; ethereum `0xda816459f1ab5631232fe5e97a05bbbb94970c95` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa2f987a546d4cd1c607ee8141276876c26b72bdf` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`; optimism `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WETHGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0x3b36368e1157a91275c41a2d1d6f58ff860d4f9f`; optimism `0xdb3fe4da32c2a79654d98e5a41b22173a0af3933`; arbitrum `0x39299e7153c28faf4420ca4126f0d834874e5453`; arbitrum `0x7c679d851688072e23fe41d1753004eb11e98d8c` | ⚠️ Unaudited |
| Whitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378664 | 7 deployments: ethereum `0x211c74db951c161c5a379363716ebdca5125ef59`; ethereum `0x35b2c16de6f283ab0949964d90ccf930f378ade6`; ethereum `0x3f950f06064a43d42a8e7c199bb77b8e3a4b2096`; ethereum `0x46f992d00c2dfb6fbbbb64d69ab353c2fc435ace`; ethereum `0x78537a6ceba16f412e123a90472c6e0e9a8f1132`; ethereum `0xa3dfccbad1333dc69997da28c961ff8b2879e653`; ethereum `0xdd8ac2d5a739bb4a591c5b0c7e613b810fe83ff1` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: optimism `0x36033e1fd88470a5192692e01150c3593847fca5`; optimism `0x56574efc2ae8f9f208442afc8adccc6f7f87e06f`; optimism `0x89926e225a205a5b8c86f2de0be0abe6262c0edb`; optimism `0xc3365984110db9b84c7e3fc1cffb370c6df6380f`; optimism `0xc5fe32e46fd226364bff7a035e8ca2abe390a68f`; optimism `0xf911d825a7554b7658e0601f030cd0c6b8005918`; optimism `0xfa6a5d33e18cb0d52991536ab15750fb13119e45`; arbitrum `0x2e76a67ee5f134c939c4380c9e2b6bbf93aa668b`; arbitrum `0x5e06d74c7de317bf8809f7032eb6a49c71351b80`; arbitrum `0x6996b41c369d3175f18d16ba14952f8c89665710`; arbitrum `0x85e8515d0daae1522bf7341f35a58b36a627ec85`; arbitrum `0x8ab0179abcec6efebbe5d8dcec6682e6a4344fbb`; arbitrum `0xd691f5b477092c164ca4c75a23c3c9589e197f99`; arbitrum `0xda94b6536e9958d63229dc9be4fa654ad52921db` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 6 deployments: arbitrum `0x077b17dce83d1e7e1847b470b138336dc2efc826`; arbitrum `0x0e52af83ddd0dd8014c5fa7a0f14d971663fabd6`; arbitrum `0x0e9a173de3dd19adad4489640e89fbfe229d0d21`; arbitrum `0x1944eba354f92641778380e0bd2f2dadb213f262`; arbitrum `0x7a6c69be3626bada6e7e64033d1d9bf2163ebac6`; arbitrum `0x9964aa9cec85ec687e90de5e566d61544a3d5e7c` | ⚠️ Unaudited |
| WstETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| WstETHAdapterArbitrum | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x10124e56948759a4b571ad08d25f01e4b5cd00d6`; arbitrum `0x41bf483f062e0bf938531f36d1169894c9d6a7ab`; arbitrum `0x576bc8bce22216c30a6fb270a7d457955fca7e48`; arbitrum `0xa03162cfc317b92da5eaa96c68955fcec4e19c4a`; arbitrum `0xa68fa3521f40b423755787059fb718261d01c4f7`; arbitrum `0xa8c4da98ce8e86638e412da43b72544699a51698` | ⚠️ Unaudited |
| WstETHAdapterOptimism | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f563a8be28acdcc5546543a227afb9373586ed0` | ⚠️ Unaudited |
| WstETHAdapterV1 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378666 | `0x3c2c6fa5398cdd933465f6fd04f3575f7201bcf8` | ⚠️ Unaudited |
| WstETHAdapterV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x58846efadc0819d6f1d45a71d36b48a2ea79fcc5`; ethereum `0x6999b6ee237dad8c28fe32c02dd440ad054bb30c` | ⚠️ Unaudited |
| YearnStakingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x059eaa296b18e0d954632c8242ddb4a271175eed`; optimism `0x0a86adbf58424ee2e304b395af0697e850730ecd`; optimism `0xe62dda84e579e6a37296bcfc74c97349d2c59ce3` | ⚠️ Unaudited |
| YearnVaultAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb039ea6153c827e59b620bdcd974f7bbfe68214a` | ⚠️ Unaudited |
| YearnVaultAdapterEth | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x546e6711032ec744a7708d4b7b283a210a85b3bc` | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fe02be0ec79dcf582cbdb936d7037d2eb17f661` | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirectionEth | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d75657771256c7a8cb4d475fdf5047b70160132` | ⚠️ Unaudited |
| YTokenGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: optimism `0xc02670867efac6d988f40878a5559a8d96002a56`; optimism `0xede36d3f423ef198abe82d2463e0a18bcf2d9397`; arbitrum `0x736fa66a6f4457b29e5a4b1dc78ac1b1d9cfc4df`; arbitrum `0xd655200ce175700eaec0e593a41a201795906668` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (621)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00160baf84b3d2014837cc12e838ea399f8b8478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011881efbdbb250702f9d7ca2a74788b26ca7128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0363a32d18c25a3fd19a0d00b02106c03d8b8182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042565d8c21f82a936031816f390fff3d2760213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf30115d7bac714709910dd286718cfad8808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057a481461a29c4c4b3c53774daa6afaf5f981df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0648e517670d71ba46d7a27ba04677db7c7957cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24600c2a03147d4e1d9b04d193151676f577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0827f18a1fad688c5c720fc27ef0cc00d6dad19a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084d7a56238be3eea8b4494c4ea17c04227440ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c11f97c7365fdcb38171f7c44ff27f22147a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0879f1821e0b41913ba6fdbd691a11675ce89542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093edae2f47da37db7a1cc443d5552d1408d5337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097ee00f42f9d7512929a6434185ae94ac6dafd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a46a9716b4632a57863d52123c5c10fdf9e10f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b51619785fa7ac8f2a8f387c18e599250cc2b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb35d6cee977c7c9c6b8ccac8b547a38ee4a666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7a619132580c650affec611d39c346756d8e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d032449b25aa966b01b1a510f121ae6ec78beb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d296e798ebd455a1db0fb032c916b5fc43704c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d858d6d96a8b40414ec54b3019aaee431cb754f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ba4df2ab32fcc0a6975093e040568b37faf49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2ddfc22afed1ac0476685fb81cc237434d3db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e894387c073c6f62c9bbded21e33d3062847440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f41928a645c7df0c34b998ce9249c1f417d508b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10dea9d254b8d1012021062517cb725826d6d3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11e21cf12af6a2188fc37265b6a02dac27cc80ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7df1fb0e51f9c9ab8f575d9bbadc92fa425b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x133ecd2cdeb031fcb3651fb7f78a52c812882d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13aecc59a88a65f02e053eece29d743a952d6f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b8447c3399bb44375dfc014edea906799b26ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140ecd31020d8d78d9a109f4d48b53e5682656df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16cdfeced40a98818587c007204bee1d0c055659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175a7815393d4f2e71ba37f53afdf96278df18ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17845ea6a9bfd2caf1b9e558948bb4999df2656e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17eff816ef9646481c8bac6a50b3c9a67f4d417b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184fe0694dd81dcfc4b1e94af10f72dfd2ab315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca3d47aab98ee78d11fc9dcc5e7badda1c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x187c51c9803424efe1cbe62cffc0d99b6912c0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a3a83d1a9a667c61df54b109ed88da58022f12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac802654c8ca728d948d4312e6fefc04f73dcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b01514a2b3cdef16fd3c680a818a0ab97da8a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0b9991df27a4f2847478127d51fb29883882f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588641fb28eb8c2a51f1129707fb1e2683f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c282ef2a23cf5c40daf482785b0188ce3a3eaad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbe07f3b3bf3bde44d363cecaecfe9a98ec2dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd0f3bd73d60d56b487073a0cab2e8a9085cf08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378663 | `0x1d28d426e4e20b9d43130c23252b8ed6f9cb388e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d837a45bb5cc1e170c690aefee4121323a889b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b2a6a67f543629c8fccc97229452211a612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5accd956b3ef4c0a5b3c38667b6a0458bbf64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e86044468b92c310800d4b350e0f83387a7097f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea632b997b7c7068ac48ade8040652a8af9fbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f18188cf19cc28172e54dc6f580229b2e255015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe9e028329080b22073713a985768a7c90039c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x223809e09ec28c28219769c3ff05c790c213152c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228cdf26fdc1c648590895a0e81f2b9e76b1b3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230f8f273e46d33361b326335cc52749080f7602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23140f76bcb844bc6256401dc01fb4816794db99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x233ada5dd2941ad71ad40e059878660ffa958319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x239c957d42343b3d91fabc7c16e7f1e30bc32e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23c901667706116b4a7c87b4a2efe7185b849175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24002395b2f8023b5dbce8494e7af29e4ec66df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x240eba32583bb925b2cb3acfee189f559219bf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24e927dac110aab7189a4f864d41680e4f7865fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27723dea17309edb527c2dd85ca5734648a3b2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a135a956f2b14556a193a13fb80640e861f8d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9ae7101e0a59c52916d8db9acda311b1c296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16f2eec7a2e1dc7b4e7fc7aa47bb8c0a3ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b4d259a8f6e765ad881c4c1d04045d629da01b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c361913e2da663e1898162ec01497c46eb87abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c37fb628b35dfdfd515d41b0caae11b542773c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd0b4d107dfef073b37d9145c87343ba26bb10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce898ba66493baf78103ddc0bb92fde33fc718f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dc7cd6ae6cce2e652479e01db84ed5ce6dcb677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd1b4d4548accea497050619965f91f78b3b532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f59b0f98a08e733c66dfb42bd8e366dc2cfeda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ffffba4f562569bec2d4fc1c36f7797ffb173cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c271e2758fa59671106cc523708ddeaa188841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b8556e0fc94c0776ad30a356306470155e938c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d9b05d89ac6b621b42a616696df9d1de8ee863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31fc48bebd46d132c39461211cf5edf7300867d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x323e340705fa8403880c0103c9d12ce8dfecc995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d7261e6924600abb668ff82da86f6532304c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32fd3bad726d607ef1a5c3f2a9024292fa0c2fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x334fa95235ff746ad8f7cd93c9dd4021d14cabd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339b20136282a9de3a6fc448b5ba9534116b3b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3405e88af759992937b84e58f2fe691ef0eea320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354fc66caf2e3cd2c062a94819cffcc8ff10e189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f9e78aa9012ff2df8923074de3fa52075efdcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336ad1f3a145c710247e6a14c9acc7f34d09ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375278d3c65f29c1a90e8550888f1439cfefe465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37b54ff46256b0e9246c9fcfa02616b24b60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3814307b86b54b1d8e7b2ac34662de9125f8f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3860358a3a8eead5e1e47c8407fdaa571972a673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39450c358b499caec553d15d6588cc186dc4de19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395a3481bf6ed9a9827d4df25032dadd3432c3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7644067584151e5861848c4942b9a15ed16653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b5180a3a9a80680e69ff1a29d8fdfb595dbbe6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c2982ca260e870eee70c423818010dfef212659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d56432c41f68eb2cde5e244b0c65c731ff5defa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ddb00cb5c927a71feddec48db1a231901568a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e281c4289b69573f0bd01ab51c18a4f8144046f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e89f1a781e2776bbecd101164b8d98c914b447d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f46812e5b11a1b88b7b757b3caff965e458f380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f702a8f6c9f9f7abdfea67f89d33f18e0368600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400509d00888c46903cf01495bb2eeafd24f0f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40971a53fa57b3d26bf0c98075f81955de78b61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f4e1fdafecc84c13488d6dbc1c623ffff73eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x421efd53fa0d90687db5ef370d5dcd7f89cbd9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422cd669cbdd74e48849b671ead3e0eb27c7495b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4279cc1ace3c89eea54fa49df11ee46e34c01106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ef34f296afe23b654bda084de43ccbec34f841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443d61f3e9f33422b4583632b37047bdb1f0f4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df433d01f32ac0c4adb0a76dcf255634490c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ade9aa409b0c29463ff7fcf07c9d3c939166ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45208671983fbac8d0b8cbdc1f360d91ab3d03dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45aba68af23de6de7dc8963e97e4f6f68de5e94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ccd3131e3dd9438296f5c6eb93cfc52f4293d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463c835f2959c52f99d65b5e712f3806c7e6a46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469c9fb59ebc19e141927c0308d98f2a9c400d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a279f57149d2c5f9549a3ad3371f1bf7402921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46ca850b60e1ffb1a813970a559b05f97e43b6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4740b7ba86f14ef9feccbedb0fb1134f8f940359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x479dfa0612ea457235cdeefcdea4e3ff072778ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487f4fe98c383f71d0059811ee458658a19e9211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9e67e9decfd493efe2b3d3b5291fc802e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49ee75278820f409ecd67063d8d717b38d66bd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a29f469760aea3b751e1da6e9673bda3eb64545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a4a54e2f8bcafdbe426f4c45ec9f9e64f411101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a539836db582ded710b3dd974ae017ddbbd5486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b56b6b2169381d4247d59fe8d0fe52e943eeb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc1a26ec4ab5948b950a64479a4046701370599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc77ce73de82138d7a1c6444a861b0689ff5ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d71a07106f1b632c1286281860a73dbaee5d674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da20a6ebf1e2740aedb432471bedd91a7bbcf29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b33c87cedf832cd82e11d743a011864f733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7300f74f59afaeccdc0d434758df9be238f0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7cf3569529660bf23926060efb25866d67314b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f193be75cdce0a28aae09b9761b3bd46f67a7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50103e7e050e4b0a9ddaef537c82ac7273a89b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5154e7698b235e6003bfa025839d192230e39dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52581ecaaa4dde745baa65a4d1d653053c74f4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x525fd19d7e9b5191c27ec61b0b59c150c1fd9e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13ba8834a1567474b19822aad85c6f90d9f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d885224789adbb56dc93071a878bac7fb80fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5425724e4ce3b469c61876b59be43a210a572997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5699d20732a2efa9a895ef04bb210aa751c4db96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ee98121d65162500ff7705f540426c962e581b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cbfb4f67cb384de981849d773a9da179fec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58258aee794fb5ebd8b932cb4fa222dd4fcfcf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59417c1b2085e086f1eeb1af0f40ee1dfd9c097f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378670 | `0x5951f159ef502f0571a5d7e136a580dcadea42eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59543a595b69897b295f12964d3c7c37b3ad29c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59928b4b25da3633718b6df4ea0655850899c88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e132164ec2e48b0714eb6abdb10225df44da0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a6aad61ca0e3d45457628f82d493101a85f6314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce1098be1734b8910e22e240aa0673ab9083fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d72a9f081990219c97af877e0e79eadaeafca80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5a656981ee80f4abafaa0c7d4f3bd869c4c9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fca68c9ba31dbaa5ab82dd468ae76746efd9adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe5deef0718ba4098b1662f33d33ec7dea45489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025040aa316692fbf80909d0fc9cf7b997a2795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603d9bb3a14d4289f622a35e40d05f0e24e05209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb55e89568b68e125e1c0272a71ff1faab46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612fd30e2d7dd963a1513cbf781eb5dfe8a55fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6140201607cab79fa83a699a735352a98198fa93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61bf33417e7fba8e9d8b024efd437e274056599b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62514f46a2c55aae92a56cd6f90510dbabe18438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x629c473e0e698fd101496e5fbda4bcb58da78dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf364078c98fa08afdb4d3d8d87e780ebd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6349e8dda81c2e997130bc99827284355e82aa83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636a02323121b31e9a4956cac41eff697ef54409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640b8cdb00d0fb2246d01b8dbf83ae5d2d2a629e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a76d3e194bf36c28b0974a5dedde41ca3619b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65084519aed2c3883e435b0e8e279777eaf789e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650a3685ab74bb1a36f40574c6187641d2b5b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651e0916ef10885406eb5ec98f5768f2f578c87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656636a157f29ba5008f398fa83a350f1be1db6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e323284c10dcec5a4810beba7eb3b992476320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67218f66a84809201cfba5c8b46dbd3ab95a42da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672e5873d99e16081d4c5f1c1668cbbc7620c881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6846470150e5273c61f16c5ffb94fff5fed259df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e031e6c68786cc25f0941a2f37e21bbccbb4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693c78ca4c7b061eadf65ab3e6c12448af2b6cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c2b3d52262a049831e8055482631f6bfea54300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb3b9de2b68f97181773119aaa9cee9fa727fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cf8b89103a83b9d739c33e3d91348ec4cbcee2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d7746336def5dd009cee7cef9a0331495e64153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4c7e4c51d51adcf1c3dae8e28d0e75a673f8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7086f2acb5558043ff9ce3df346d8e3fb4f4f452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70900c53202297bd7cd4ed1635486d84e3982484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f1ceae0fe7205d96151f995e65a6c30f028649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x715ae7db6b175d9cdf71e04aa36a2ceac57d88c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72170cdc48c33a6ae6b3e83cd387ca3fb9105da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7228d63ff5fb0e66cee650b113c2187212776c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a7cb4d5dab8e9ba23f30dbe8e72bc854a9945a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72dcf9ba5f5e124b393a659f1629def439ff1b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb959ee286d8abc46f341144afe443cedae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1fd1f3720379f52cb9d8168d76cd1ca4a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7465e30ed5487d62a158625cf38ae0e9a5ea733b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74cc5bc20b0c396df5680ee4aeb6169a6288a8af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c1e2b049cac5571d366bb40adee21c751ffddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x762ff5490e6f4836fed3399207094c46b720380d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c8cef5b18994a85bc2be1991e5b9c716626767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777a7850251b7a301cfa1e7b1d8a9c4a9c49cf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77898fac78b6931107c2ee00f0dab51cb0cb91f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7927fc2b76e719ccbaaf7a15bb157762001816f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a75d934ecd0dffae11592e7e6955c8186273b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7c5b74911075778873b8aad0f2f03bc108d31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b07296561d0ea40dd6ffc5c19a934796a829eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b2db76723b38838a336a4a50f4fdfff904484ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bceae57c71c71a65faa29353fbeb512ba5864d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c148217c7f99504abeb4582334c9189e5f11397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d1e43f34dbab8468bf617bacb00b0b561eee6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd3825ae54e8e8ffd3d0ce95882330d54968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378673 | `0x7e30fc3411afd4c0381a4ec6e6ba09e19b9edb5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e983e4f98b16cee76f8f9a6a1e87b5861de8769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ebef3496fce85e9869d3feb7e4f49ad084300bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0088f5a7b8d29936c1119a6446ea90f69d5c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3c6b1e4ad1e3bf102643fce202202aaaa09116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f50923ee8e2bc3596a63998495baf2948a28f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804cd69439608985439fbb559d1b5109907bc7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804f330f9f55623a50befdf4a18812a532c82ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80f1c4f5cd94d49e98d0a975690796f1e8c0379e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x813e891e2bb6729bef4185663624bd09f4902bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817310ea934efa42c69f5b6dd714ff39b57371a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81903f6f9675f7b500eafe20681bd2d7bab7c71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bb186e32f5a06bf3343b6e7ca800f180f670f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412ebf45bac1b340bbe8f318b928c466c4e39ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842547883b2caad101f897e6789f63d33b06030e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6229c1b8fc41c1d74bcddc7e17788ddb0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x853f81a2e3801ddc4d8074fe9fafd341336a89d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8545d32ac1d423016197866e884aa0e8d953eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c7862e4fb6593bc4ce40c77dff908f1c547a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861db15d8f414e48f3f3a40234de0edc0471a0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878f2059435a19c79c20318ee57657bf4543b6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881259cc403701b4d88e3c2ef3c0abd502ba0257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88b2aba0c9e8891573b03af909ba51a25708ae6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89a5cec88598c0ce4d4e331d0b027499edd3dffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a36f26fd4b94392cc967037ddbd6af5a2f6fbb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad5b311a7d9111bcc3e92811cd23dce9ba62e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3ac0f18eae871b83b9212345e736735e6604d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3c8626cbfaa71d44bd76c1304214f4858e3639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b57bca35e775d3e12162aa4947b8f588f5dd0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b609c2502202cbd828b9dd2e13a9df23214b9d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2d8bffc6363198baae1bab7d747961188ec6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c657a734ed527d9b05b5d9e61d3f09684c48770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfa3c5321f2c8d76fbc5fe9746090f1eea5753d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eacba80bee37ed291b084752375c49cd489590b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8273f271b134f514b8a33f87b4de803e44d723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900909c07c2761d84c5d863ff5905102916df69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d86e120b3b309cebf00c2ca013ab3624736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cb8bdb5ad68f21aff8718733761e5a0e531a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e7efdca79de10f1713c59bc3ae9b076e753490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914cb62c14777068956090adb494ab4279424499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92574ed22c0b3961e240dba1eba02f6f30fd066c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93567318aabd27e21c52f766d2844fc6de9dc738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c7c51a3ff556b46fc697da0be0dc811e334e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d97dee8fa8b97576375c68d856239ff7681086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95702e148363a6fc4bc97ff54bda8a2ae88b4c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95c0b30c6276e67ae95127af458573a63113bdff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96665d63c1b53f8335e3c9287ee255f306c93c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966aa4de332da1fece5a90e025b08a43919d9705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968d6024e32d30a7334ffc5373ccd97a3d199e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ad3a49fdc33efb4ba266877c17ce52eb0e41c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977eadb6fa9b8e1a2a950ccde1a75a7b527a8cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f9a691ed9deb9b4ad2ba7e9a738706222dcf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x980e7693fdbba39ba75a9be85cda6c336ec8e697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9852c6cbc226f328db41ff27dfffb42e408d86dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa0eb29a462baa0275e5f9e56f938f31d0adbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9abaea579d4e9a80f3e78d743d0880dc0a5aecf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aec1836e6ceb31728ef40bf2301ce5fca833715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b11078f5e8345d074498a83c4f9824942f796d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b59f7fc312c7fa1e29ff65abaf0a343ce037f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6c44168f7a29a44949429ca55f411acd8391d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6ca96d2ea9f3011d3e78baf0d12fe27636eaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04871d11b33645ab592f68c41bb2b41f51ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da8653de16c80a333670e4ba35a112574d5a26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a52c1619c5134c223f780237c12fd9001b75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1c425ae40908a071f003ae604d7e421a289c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f29f00d0253d7497f562256d3f42593939eae57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ef2ba621342ca83cab9534ea04fa91d1bc3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13d7886abc466da907e0c9345d5d271b8852647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa163dc188e14c3b3c8f3fba6f4351ea5147ad9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3b031cf383949deaca691f292d0fe9c7f29c772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3cce9ae6571c9075c980afa2749451793b947bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5200b42dad593c284f2a5e85d768e4dd829a09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa609820289b0e976b43583b292f21b883563e20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63f56985f9c7f3bc9ffc5685535649e0c1a55f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6623dd479c95010f05bad523609edf1928d2b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7205492c0a35a1ebbaabe25956391012da0bfaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378676 | `0xa7aa5be408b817a516b40daea7a919664f13f193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea9ef9e2b5e15971040230f5d6b75c68aab723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89566489e932a2d334b9eff7884feb21a07d2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa929510d07bfcb796c181ff3764c5168675b2cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa92f21cf2923cd634922d193fc8eeaf05cbefb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa938b8dc2b55a119b3618287c95427f9998caff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95ccfaf088a3c3a9181915a0af3fb182055bd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaad66110a1ff96d8be8c00c85ad024bbda6f60c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc64889601f01e7b26277ef8756250d6abf8c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabfe397ec97712247fd5e4e43da34f305680a6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6714612e0ceffcba83e6e00c8360494493b27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad680b77a8d0bb66e6a0000028168ab147f440b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad947c580f8d9ed576222e172573d491774a5e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0c899799cf1f1374b4881a9442966cc5f57c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf02be5968d8fe9536e24e4c7e888c59a58bc077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff40fc748bb27ceffed88c0e9fd39027ff1a736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0582ccad2e265924e3e75539a84717449396d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb075ab368e84e8652452eb2cc91965c7e3893a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ea1d2c08e59148b6e77feca95d4f20b966769d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c0d6efd3bab0fc3ca648a12c15d0827e3bcde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c4e5a15544f005166880749c46d35a00916462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2205b87e81c91539ff510bd6e1ddbcc19bfa8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d07e2f94155467cb6fb177318e23e94919b586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4277e256f9c22e22acd8fb1c65e190daa331eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb436d8a2e3e23af57040b2da8e01463c818e0999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb440a60d3afc6b9c213072aecfe8f3f7fddbefff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e7cc74e004f95aee7565a97dbfdea9c1761b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb45443d525149410ee69400c0956a7e89b82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb524622901b3f7b5dea6501e9830700c847c7dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e99961a014af5943a7bd9a645ef7aebbb218e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb70a04ddf77610c4dad1cacc908eff91fa764a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb72b885694d46897a50ab83911849604eafd69be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb76ec44427c1f970ee8ee8c03229823257a641f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7bdd251e62a034b2a606f23f0e9d60aacab52fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7cec2ecac026dbd2b7c6705fd2967f59c6d27bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81179875cb152f50184979a0de999026fe556e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8208c3192d75cf8c8463e5abee802556dc8906d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8315af919729c823b2d996b1a6dde381e7444f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb92d607dc7ddaaa6a3a213cd0a01c9dd4ce569e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc390a652ea16b836a98107478e2aa4e3768dff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd7ae7a3792be08a7c0f482070308760ea64db39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdb0fb4b0e2f2aead3aff40821d46433735d93ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdcb57c9d35e8d41babcbca67416ee6622274caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe33791f85f3ccfd6c5aa6f8fd5540f14d3574ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0497c072d3015fd7d45893157bcdcc1bcfeb6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc493ce1b5908dd95b768c397dd581ef4fcaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fe9a02fd9caa37dc3704297afa0d8501d17749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df2d82361f3cd885bc9e29de3427cea86b37e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3a483bb5f96bc4e6104325aa1a229a8e29166b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3eb88b3ee65b7bc8c0aa6bf399e4bd89a4d0331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ffc76af1b0e60a4b79f7c30ad8cdeb0cabf0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40eceea583e95f9433f831c4e4283334d48112d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc48ea9a2daa4d816e4c9333d6689c70070010174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c81b22bf87fa833b350ee55de6a85007043018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5bdbad3fb77f8cf95f2888fb78d3ccecc8e5a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c0d3e20df4ca855281b4b5bcf3bef8d8068c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5cdf8cbe886fc5c1ef5cd4fdd599c975ec6bb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc619ff91e2f00279f9046dbe10806de1cd4ba99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687e65456ff664b95753e3ee02a5e5d4fdbe886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e5505d7c501d51e9d69669b1c393079fc426d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7e98cf7a5e55a4c5a9f1f6cc23291d4205fd6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc805d4126c3ac9d0ad7bb94c3d5cd72e3cbcd6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc80c48862e4254f37047235298edb6aa35717c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88a0a80fa38a828bc697b92a8cb4ea50a93c4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91bb4b0696e3b48c0c501b4ce8e7244fc363a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a679a1ed5650889340f782ccb3c43ecaf03a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0c34a3f35520b9490c1d58b35a19ab64014d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca9aeeb14ff396f8661f7df3128f88c31d2fdec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa487d113ad1c34ce128c4f3a2a437614c6a692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb75a1655c84589652d0f3a4605e5dda8431f0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc519ffb126de2c7f941851afda78a73f121a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc9be1b4ae3c9d20e8dfe6cc041e196150ac0605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd6bf2b8da112ab77c42fc96abf4218dcb71fd35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde9a4e885b87a893b8817d136fd2f404b54294f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0ae51dea9fcbf44dc076638d2decd028e19659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf1e6926b2167f83ec3300bed04a672abd93e646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01062212c30475ffddfb86bf63932727cb1de7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11e6772a430c45c7b64927069af37fa9ab3be75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd123c42cfebe2fadaa4557dd06bcadb823785967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13c9a29ef6c5adc7b43bbd5854b07bb9b099862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1738eb733a636d1b8665f48bc8a24da889c2562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b80a954e56bfd7bd889af6e2be8674719f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd223f6a87c931baa5896e47e0d018c55b535bd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3111a14e8df0df749cf881ae414037d732d8d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36aa46c07cc83939a33b1bdc88aed37c233f3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5579a994194c142846abafa5919fbad0ae32aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57a13a291991010fd0e9bf1deab6abd5331fc75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59996055b5e0d154f2851a030e207e0df0343b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74034c6109a23b6c7657144cacbbbb82bdcb00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd773ca264b5363f25f7f96319076753849af168b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd819955515976cd952f37bba4aa5a2fdeeee9268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd837f05690bf517ea3f1d6d81cb3af90e6a93838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85bd15f77f56b99f7610e8605a4a8ebcc345413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd87b3b807757b42dbcdd81ef2dbc16e7c025b421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e4bbb06cec6365b1c70e646032a5622085e6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90d7cda2546419f25803919376692a8d4b483c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a5df2877a42460e9055c4134946668dfcf51f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e153f629a55992f5fc699442e50e386e3336b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5e6d9c7103abfa8866cc96bb75a7ab15368b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda92f9beeb3aeee9ac0c7f8a67ccb03f0742cf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb68c6264e9d0f8a6df1fa5a89f205da38698d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1046dbb73e7be8c0b2b72a4987522d425bc93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc55f696ff5f54034eabc99f7995ee50b44d4efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc65f3514725206dd83a8843aae2ac3d99771c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd36620d7b94e001c3bed7ff51320c2df31117b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd8778e4cbf210e7c0ee803a9f8874a87c62b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3c8aa7f53a69c595b7720045000a68cb9cb341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0222df54d27ecd3a9930f249446f10a4c4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ac0fd176aae7f9f44063b53860ba0dc7b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0ec9b5aa7b67135fcc173a96ecc5c4a81cb850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe16723a08ae054a8f20bdc0395389569011e78d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1c3218134e7c69f3443bbd96a5851d193224f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1d66c1cc284d54c34a01bcfbe1287cdeaa16be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25fbb66110a83cc5f3d74dd85a39e070ca3f017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2751fd3fa863be8bf924296edb4386618acb121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30521fe7f3beb6ad556887b50739d6c7ca667e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3b3fe7bca19ca77ad877a5bebab186becfad906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4e3da7d4ed8d936f3224f0ffd7e29dde3f39a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53d45abe10ce20427d20c5a1b6360fa5ba0ce0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe621bb24fe3613caaa59c33f0f59eaa026663a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6cffe0182a39c3683d6eda9a850fcf02a76ff12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6dbd13209338f8b8a4e2d3310da163004835729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82cec55c0ad923195a523a6953a0dad432e7a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93428487e1febd3046850eefbe0f5c8bc657b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94046b46d2b58599a09d91fc5cc00ca3e1dfd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b31c682dce211aebb03db321103975015d395f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6c376d019119230b69f5aa9d59507b9b564791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb85dd2374a44f80342acf8010d585bda32b77a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebedfd259c9fb1f5c0ab9a9f24e79f8d80e29b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5a0f4be5eb54f229e078fefdda0f2ebc512a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8672dd770d59fad9a811591a5edd40e8f6a413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec8c448e025ef3819957b90a29c75ba00d6f0505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec9189c95beb2e7f735e439e858a70b3bb8a6aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc32e3a073afac838c0d1c02ebfebda8fd46641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecc4bed07750eab7ce1ba634326db046877524df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecca5a27b4f8f92a2bffd006f20168a7188c0a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf139cf1a5d902b191818f182b48f0301ca0bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedac7076b8928a2ea3c9421bb859105cce35adfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15e5ffc105ebb3d1368cf84f43b40cab3480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea5ba20b042cce9f1d3f4f796df5a844868916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeed0e5aace8cee7c5fedfcb858bcb2082e1b94ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b0895f986afd7eb7939b65e2883c5e199751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef5d81caf50a54f9185e5b1ef2036193f8f7a53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8737ec1180ddad26438e4675bcfe9773a0e8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9a768880b4996cddb8c24a26f4b00d6e8ed35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1000d3bafdeee84c69ad4dd0168a6ea09866ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba3eef64bbc575c5ddc7454d81afc4800ea689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d4eb7183ba624a4a198376560df0de20d99941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf248aa4aa0b7fedd183ab08135dd64f992972e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf336f4620c20416d9def439ee98bbf8557623b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf350c6b7fbe5f6cb53c7d638dfba9173a5722236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf391a63cddaff93ab52c14497a1ac4121672fa1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4431badbe7bcd2a7b2342451088da7c27963e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bb5824f3e5b6314e1c0a8be60c733b3db53786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf502d127f38da7f2c875be78ede6b6b0434602ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53cc57d1983372c5dc55f0466872265da08e3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a66196306855821159e41f4ddbb71ae5663825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b2514045f6b003a2a3eeb2b1e3de7f8676979a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6aa8d4f13feaf94a5f558c07d75580b3c9ccc9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8051d7d3551f834308b49f4a547c2c403bf4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ea0ee6818c6cf798a1b208139f6b56563f6067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ffaae4fc8c1b8d9680a4498b87f5b9dd4f70bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95fb643c7b26afe64a6daf7e2b84d9eda6559bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9c786e0e3cb4fa330fd6d2a4b110d18a6b69c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9fbc8021bd0f849c393aa0e3d5e304eb5cc064c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3552dc90e41241112eac7b7c984a301ca666f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa7c660683ff22989413256bd57f569562ce1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0df6fc8c06e1d71fad8bf293176b8c1194561a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbcb0f967817c924f83e26e04f0fb28ed4d6276f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd61f9c0796d917466e3ab5f2a40984fc15794b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe51132b5320bd1a599688ca69697557aa763b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe711be66def585c90671b6eb767a3979cdfe007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff97999a82bbee3f2a2fabf0b1f96ce472bb0532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00e33722ba54545667e76a18ce9d544130eeabcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x031ae0da0b6819c6bb9247546ddebcbb279c6bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x059c9868211f0e27e088f2671a581e353ff0b645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d4289008e9e566836effea7664eeb60f2ee6fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e9e07437bbf496e98cdcda7a76fe19294e91ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x108464c5126a4a115aefb880462517166c20d840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x10cf9d194c37b735cdc1b84bb1c3b78b94586a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17573150d67d820542efb24210371545a4868b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17995bf88de3250034c8e3571b7ab6c19b98d163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x19f69180b9db92d411aebb88fd2c932e86ecaec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1cd4e1190c9c6d05bc4b3d7676fb807edfb22078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dc389dd3a824cf48433dbadf719262348589f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1eb7d78d7f6d73e5de67fa62fd8b55c54aa9c0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2329f65e4df66e07786d1fc69f6b305de1ad9a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23b96add54c479c6784dd504670b5376b808f4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23bbf2d779b733d044097e2bcaa9bf242316c58a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x258dfedb1623101c3bf6466f2db53dd11d1d83c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x27423e4a9fd2e5860a1b87395503ca115f231ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a8b5f365fb29c3e1a40a5cd14ad7f89050755ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x303241e2b3b4aed0bb0f8623e7442368fed8faf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x318334a6dd21d16a8442ab0b7204e81aa3fb416e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x343910697c03477e5cc0d386ffa5133d1a827ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35078f3134f375be9cba52736ac5c8efe4480553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x36c5c240fd5cc04d6837af9da56604189163da76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x370acf6013baca2527a0783cc75cc7a43c434e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x393dd19c7da959df0747f77696f88dac77a5f204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3acf557e97e2c1205374ad9f71c5c928411a076a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e2488193ec160c55fbb99976e4c45f6c18c0ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41125d4cbe5fa0c9581cbee3fc8ff23207471602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4183c9c22d1ce5f3be9818e97e779e2897f688f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x477165c1064918e0ce08b370047dbcdfa4fe968e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x485af43f7ed4257777a25cab7ea3c4fa6baa68bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48697fe7e60dd288946f3af97f6ddba00af9ef74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x49000f5e208349d2fa678263418e21365208e498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x49f6fbe7b8832d5c73d8c3f82cdf744a8a207b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b4968a27f0490494ec15def4245942f45790d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4bb3d9bb460553239ccff1f742a3322bc44816f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d2fec7b28402e6ac85a5e7eaf6c525f40ab07b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4d9c4ead535cac13471d5a597fb7510ccea99772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e3d7a7945018ae4e70838fd7c7f705cb403ddc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e84b5dd5c9c64b9d85133469fa00d9ae98148b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fc31343c852691b9ef53937cf6777c5d145cdc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a12c02456c718c52eb3fe273dc8bf100820d94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aff951087303789007e8883f19bb49c91bcdbb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e06d74c7de317bf8809f7032eb6a49c71351b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62113829527476635b43da442f054d997b120067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64bf96e1aa1242092430216a12939109015bd780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x654e16a0b161b150f5d1c8a5ba6e7a7b7760703a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65d288d10aedae45f8fa98776bdfd7a67e7a2157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69313566782e6ff6b5c3e261c8dcb6a2e2aa2488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b0e91eb763b37c1f26ca6686f1db23eb26f3890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6caeefdbc76f8bd2d303bc9fe2e5c08b47414018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e1a5a27d8e6a2aff494fb8f230220b19a6df0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e39b07db3a0c7ce434ce10335bb8bb20b7feb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e57806138cb011a0c8f95becb9574c3dda04483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6fc98a7256c9a761ad3f57f10c37011561bd5564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7066fab261a48693cd55de4d1ad0925b843a5005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70cb1162426c7ae6df56ba8bf1a2264338aa1603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x715dcf6f2e32ad4c288461a38e71f148745733c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x734074fac8e6245e7a3b63a4da4007be0c34868b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7505986ccab96bd2a9c4f089b17824b874dc1177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x752ca40117180129410b5e3529aedeb6efa22e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79a91f60b6cffafc4acd2da4e0623fe7b00471ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d74aaa8ec06de72b4ae827791fc586917197346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f71951283acde80548a45ebe74276ddefaac91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x870d36b8ad33919cc57ffe17bb5d3b84f3adee4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8765df3ee40a979b0242ea1b6016219608befc61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ba1e9a1ab110e52e0d57ccb013f18140916925a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8de95e8a642c30b6837560233bb5a444e1a874bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92834c37df982a13bb0f8c3f6608e26f0546538e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x936cba26a45e949252da84fb332834aff0910b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9687cd7f685df154475a5235d9d8ded36d0d7c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b08d4d6c6a257a5aa2eb0c022b193deedd81ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b3d5d0ebbc8baf4c0ac3194880cc540923b80e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c24a3591bf83680d21c9a382af50d23768365f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d4c27802238c96270bd3913e5dbbadba92715e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa035ede4affe298affc74492957959eac786fa13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa3b697671ab0e52b07710714ca4af7e993aea6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4158f90cd65e6e5916bdca9e3bfe70f511e36e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa44f69aeac480e23c0abfa9a55d99c9f098beac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa64cc2829a850d145e658ea49a1f1165c2e87a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa693ed7934805b8507577fedef1782fc5c7c59fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaba36c093613cb73ad9c493df389fba01667c42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xabad1adab8a51a00665a3b76da0e32b2d2f1a6db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf7ad0527d3b612445fd57b77d42aaf86ac472de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaffd7f3826c890a13e87325e211669a3eeb27d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0269e3016beec7bf08b5b664ad9e2d306316fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0a2db2b8bd8ba1d6748951474c25394528739dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0d682e60a08895146fc07b7042a6424328447a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb248d65b9563f3767ff7b3c16848b66e2ddf64e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2dcd84271ac2c76ea1fb1422acffc730fe59d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb46ee2e4165f629b4abce04b7eb4237f951ac66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb58609ea0a12731a3817de063d2b9217cbcea90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb593ff0ece1277b1afc516aa7997564e204fd2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb85efc42d55381c895971016c9de27dabb036a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9b47fd9ea94f3b568ab5d4a449b0b7b544822ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbacfe9613e9a7b38e1bdf1c5dc380c71c8cb281b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca921d7c22c6d90a44f5468ea9adc9789d67013a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd87ba0b93a060500c6ea6c79653c7b9e31f6cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd24c4c7cada12cb99812f2c3750b80ae7c06e382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4d68911936ea62ae76ccacd324da53a87976ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd6a5577c2f6200591fe077e45861b24aeeb408e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd6ce720520d9d7e27b5cd18eb9690a78ec6dd7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc486aad4101159c418e4bde7d869332b3cdaa7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc4b293a12fb5dc7f353fdb06a74b1032c6eca01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdc5729d768e5da8eea139f1ae8caa776d3dddf1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe395e6bd49967259ce8daab5ff53fcab5ae388a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7ec71b894583e9c1b07873fa86a7e81f3940ea8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-378681 | `0xe974b9b31dbff4369b94a1bab5e228f35ed44125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb1ae6bd23b07078f9cbcef75cbd243d7ac35c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xebe6a217a7b4f2928493468a0dbe8d9af5e4ee9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecad08ee07f1aa87f3e080997eba6d02d28bb9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef188d13904991701945aff74ee5beb901c22c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf63255544b751b5db6904e9255b1049142614b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfaafe7143ffc553a5033131549cef6634d165693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb6c56123e4c4b07a8d1cc9a808b003058235a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 8 deployments: fantom `0x04068da6c83afcfa0e13ba15a6696662335d5b75`; fantom `0x049d68029688eabf473097a2fc38ef61633a3c7a`; fantom `0x148c05caf1bb09b5670f00d511718f733c54bc4c`; fantom `0x5a07d36d1f543960ee7806d35827e995539fe5cf`; fantom `0x637ec617c86d24e421328e6caea1d92114892439`; fantom `0x76b2e3c5a183970aaad2a48cf6ae79e3e16d3a0e`; fantom `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e`; fantom `0xef0210eb96c7eb36af8ed1c20306462764935607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x082b50bec5e85d82b52264da7ad24187a235dbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e17934b9735d479b2388347faef0f4e58b9cc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x108464c5126a4a115aefb880462517166c20d840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17995bf88de3250034c8e3571b7ab6c19b98d163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d2be809ee3a0eeacb02d3d234b3ed479e1c4962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27423e4a9fd2e5860a1b87395503ca115f231ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff2913f21b50ac9c0c15b1e55cdbf2d6daa38c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x718660da0e4333e2f33d9d56a4e002d6263ab333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7918da5e12b026e0ce2f17ca3a3701b52552e43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x853334f15610eb2f3aaa3bb00e973bc36c13bc0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x868f8e796f9d4795e609bc70245c4764c6567e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b36dcd67a80eaa035736f031b753bf6776d7915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930750a3510e703535e943e826aba3c364ffc1de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaffd7f3826c890a13e87325e211669a3eeb27d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd05a086e1f37fe0983f6487e1de8c8c91041a2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd65ebf4abe882a5c305cab19de5b2d5249ef1bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9168e3752f19fb28afeabc816e9aa9877f4da56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc8eb117a9987cf2ed45e9082adc13c03922fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xded3a04612ff12b57317abe38e68026fc9d28114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa5cef53a855c47ff8bae910d9567f7a33b86293` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x07a4d78f8185354e58edccf01cc0f6766abd44df` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x19bede3d7addf500ec6777384dd48a5715836c85` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x35306886c9c579dbcd7ab5feb03330345589bd74` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf4a40b967bde2fd443b825a8ea502717e22fc856` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 810
- Live contracts: 18
- Unknown liveness contracts: 792
- Source-verified contracts: 189
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=36, contamination review=14, exact address book overlap=10, source verified unclassified=128, unverified unclassified=621

Showing first 200 of 810 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | WETHGateway<br>`0xa22a7ec2d82a471b1dacc4b37345cf428e76d67a` | project_anchor | token | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | ProxyAdmin<br>`0x20c572cbd7c3e40b580af22582398b6580d124cf` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | ProxyAdmin<br>`0xe0fc5cb7665041cda26969a2d1ceb5cd5046347d` | non_address_book | governance | unknown | verified | review: missing_fingerprint | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransmuterEth<br>`0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x0e78588283aa9ccbec277b40fb8edfa8cc2155a7` |
| candidate review | TransparentUpgradeableProxy<br>`0x1435f228a6601e60db22bc21d7e9239017908653` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | TransparentUpgradeableProxy<br>`0x1eed2dbeb9fc23ab483f447f38f289ca15f79bac` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x210a3a20bfe11f4200918134aae34d753d4e1766` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x3216d2a52f0094aa860ca090bc5c335de36e6273` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x407bdc8f42f616823109fedb21c85cfb4def2764` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x51c1a7ab22b6482852d85311ac2076013f9e6142` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x6fb0fe574c04abaed21ebc1fd39fee19c4d1f72c` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x77394f217b491c4e8056923155f48d1188c81eec` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x7d0038ca6f121c7bfa8c58af8e34d33104040834` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0x851abef4d67e8bb4ee2f90e5de5e880f6235d028` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0xbc2fb245594a68c927c930fbe2d00680a8c90b9e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| candidate review | TransparentUpgradeableProxy<br>`0xbcd7fbc030dbafabd03434b56f661a457613699a` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | TransparentUpgradeableProxy<br>`0xcad336723c356844dd213121b377813a20561780` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | ProxyAdmin<br>`0xd4bd68da9bf9112cf2137d500c37bd9b842eae85` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | TransparentUpgradeableProxy<br>`0x143a08f0c2c1820eff9d0e749683396c7bb7a4e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | TransparentUpgradeableProxy<br>`0x6730545fecd8d5cab50507a6c1e28b181ad75483` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | TransparentUpgradeableProxy<br>`0x719fe4734faa5d589f356a8f46e5522e6dbe5e03` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | TransparentUpgradeableProxy<br>`0x971c2d9ca059a19447bbe59f372aa21eb70e2d6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| candidate review | ProxyAdmin<br>`0xa44f69aeac480e23c0abfa9a55d99c9f098beac6` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x13c716188c38ce27b9b2b672a59543cf1170eabe` |
| candidate review | TransparentUpgradeableProxy<br>`0x0dadc9e7b14d329d879cd4980e3db3a9224e01d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x27b58d226fe8f792730a795764945cf146815aa7` | project_anchor | token | live | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x2a8b5f365fb29c3e1a40a5cd14ad7f89050755ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x303241e2b3b4aed0bb0f8623e7442368fed8faf3` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x43cd4c711100ba68589d83d1a7d7c552cd9b24ba` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x49000f5e208349d2fa678263418e21365208e498` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x653e76977c275df945a5c7417297d50ebcadd273` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x7037d479180cb9514af4ed6f77b8390b1f3e6007` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0x870d36b8ad33919cc57ffe17bb5d3b84f3adee4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x13c716188c38ce27b9b2b672a59543cf1170eabe` |
| candidate review | TransparentUpgradeableProxy<br>`0xd031bd586caacd11e846c35d1a61dc543d4ee55d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | TransparentUpgradeableProxy<br>`0xd6a5577c2f6200591fe077e45861b24aeeb408e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | WormholeUnwrapperAdapter<br>`0x0e9a173de3dd19adad4489640e89fbfe229d0d21` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | WormholeUnwrapperAdapter<br>`0x1944eba354f92641778380e0bd2f2dadb213f262` | non_address_book | adapter | unknown | verified | review: missing_fingerprint | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| candidate review | WormholeUnwrapperAdapter<br>`0x9964aa9cec85ec687e90de5e566d61544a3d5e7c` | non_address_book | adapter | unknown | verified | review: missing_fingerprint | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| contamination review | AlchemixTokenMath<br>`0x80d6ea0e9098a5993546f13e5d04da76f94c5971` | non_address_book | token | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| contamination review | IdleTrancheAdapter<br>`0x0b20f9fcaf67b2a90bc881a68562569d8638a1c5` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| contamination review | MigrationTool<br>`0x1dff114dfbbcaedca5f0d46dc8e9615dfc2645bd` | non_address_book | operational_periphery | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| contamination review | RETHAdapterV1<br>`0x7a172816c0560964e6ad54ef54afabb035614047` | project_anchor | adapter | live | verified | n/a | `0x2f7b206e9789f758a99f2c5eb939313433a844c5` |
| contamination review | TransmuterConduit<br>`0x440e9296007864a571f6555fb6015369150d2835` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| contamination review | VesperAdapterV1<br>`0x36033e1fd88470a5192692e01150c3593847fca5` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| contamination review | WstETHAdapterV1<br>`0x3c2c6fa5398cdd933465f6fd04f3575f7201bcf8` | project_anchor | adapter | live | verified | n/a | `0x2f7b206e9789f758a99f2c5eb939313433a844c5` |
| contamination review | optimismCompress<br>`0x138e30d0f35a14d25317d83863eb7e4e0501a33d` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| contamination review | RewardCollector<br>`0xd8320859860f8e116e9bda13cdd60b27bcb6b058` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| contamination review | RewardCollectorOptimism<br>`0x1e0bd5c0e3ab80d66b6225263d6739488a2831bd` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| contamination review | WstETHAdapterOptimism<br>`0x1f563a8be28acdcc5546543a227afb9373586ed0` | non_address_book | adapter | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| contamination review | AlchemixConnextGateway<br>`0x0366093c869fbf4888f96e8f589e0493aae801a9` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| contamination review | JonesUSDCAdapter<br>`0x87c4a26c6a00c91acf2344a43074563085f9bbe5` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| contamination review | OssifiableProxy<br>`0x07d4692291b9e30e326fd31706f686f83f331b82` | non_address_book | token | unknown | verified | n/a | `0x1824988af7a12c339784a171a514e20609896321` |
| exact address book overlap | AlchemistV2<br>`0xf547b87cd37607bddabafd9bf1ea4587a0f4acfb` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | TransmuterBuffer<br>`0x4370675ab54fc710a27e29ea2bb5563468b5948f` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | TransmuterV2<br>`0xad2a6c1c6025be8c703930dcd921a2fa25220298` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0x211c74db951c161c5a379363716ebdca5125ef59` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0x35b2c16de6f283ab0949964d90ccf930f378ade6` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0x3f950f06064a43d42a8e7c199bb77b8e3a4b2096` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0x46f992d00c2dfb6fbbbb64d69ab353c2fc435ace` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0x78537a6ceba16f412e123a90472c6e0e9a8f1132` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0xa3dfccbad1333dc69997da28c961ff8b2879e653` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| exact address book overlap | Whitelist<br>`0xdd8ac2d5a739bb4a591c5b0c7e613b810fe83ff1` | project_anchor | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemistV2<br>`0x938dba3b746b3cc6d47c703aac3a7485287c0ed7` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | AlchemistV2<br>`0xb678bed8286728f712630133ef9fc11dae538c4c` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemistV2<br>`0xd55c73ec1a261d0c40111b88815ee977fb24ca6d` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemistV2<br>`0xd6cd22af7524b3d24716e78b0bd14fd5dd15bd30` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemistV2<br>`0xde399d26ed46b7b509561f1b9b5ad6cc1ebc7261` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemistV2<br>`0xf747e9dc322c0495527449bc7546ee621784c50b` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemistV2<br>`0xf7e137639e168e5681e9657e773487d90e20b438` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemixHarvester<br>`0x7879a9c464af7805712404cf4a8366c475034f91` | non_address_book | operational_periphery | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | AlchemixHarvester<br>`0x9f3031cb29ab5797f82740c62591ff7148a4cd3d` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | AlchemixTokenMath<br>`0xfb56f5f6d8d0a712778d82127b25b8533426d785` | non_address_book | token | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | AlchemixTokenMath<br>`0xff7d5c7da613a91f31915c7bf6f4ab07a2b37ee9` | non_address_book | token | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | ATokenGateway<br>`0x67ec822a2f981ef2db6afce4e8df57ff1439f4d3` | non_address_book | token | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | ATokenGateway<br>`0x6b6bd434a822ae51704aed4436dac62a0772166c` | non_address_book | token | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | ATokenGateway<br>`0xa067c885d958aec176ec3d8dadc847e0c9384809` | non_address_book | token | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | ATokenGateway<br>`0xbea839f978c1c398b0303c00898a5130c9506401` | non_address_book | token | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | HarvestResolver<br>`0x9825f776908ff9815e284351d1fe94fe75f15b49` | non_address_book | operational_periphery | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | HarvestResolver<br>`0xe1be7de145ecd1772aac1c57e7cc1388d266cf22` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | IdleTrancheAdapter<br>`0x2158953bc14d297b5ba7937650bc4c3d1c858434` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | IdleTrancheAdapter<br>`0xa3d66d606739c1776eca722bd5172aa7512b6a5b` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | IdleTrancheAdapter<br>`0xa3f16f804ed389b17de6cd5bc73a53f7ce9c16d9` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | MigrationTool<br>`0x7a88c7f84597a14605a6cd7007b76cc510d0fa45` | non_address_book | operational_periphery | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | MigrationTool<br>`0x88970ee3eb5844ba29f684e85f7f33d58b7b5c47` | non_address_book | operational_periphery | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | MigrationTool<br>`0xe1f27add45652812bad02e26eec588f0ef97e1d3` | non_address_book | operational_periphery | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | RETHAdapterV1<br>`0x80ca99d65a8855cb20e44a5e9b6c6abf71e3739d` | non_address_book | adapter | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | SDLController<br>`0x06bf5490e4e8d678944b7e1b79be2cdb6fbe53db` | non_address_book | governance | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | SDLController<br>`0x0992d9913c2c8283fff60cd6a5a05b5239373b7a` | non_address_book | governance | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | SDLController<br>`0x13ee9d8a44dbb64fb1552ac5b0437164550c60e8` | non_address_book | governance | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | SDLController<br>`0x483a731328d77e78d52ab5d4e8e2894f80a65afc` | non_address_book | governance | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | SDLController<br>`0x6a1883833e86a7110a59be817cae9742bc3050d1` | non_address_book | governance | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | SDLController<br>`0xa77b4eba7c78277ae32a3b6d765cc193aa588037` | non_address_book | governance | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | SDTController<br>`0x31e606c9cdbd1c1ebc322ef8b91004b8b8b75a46` | non_address_book | governance | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | SDTController<br>`0x52552ad9c9ec7eb64d53c5aa518b76759f17cc11` | non_address_book | governance | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | SDTController<br>`0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c` | non_address_book | governance | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | SDTController<br>`0x9543afdd9d92c60b88623c5994059c6fef13db0c` | non_address_book | governance | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | SDTController<br>`0x9debb18948639604c99fec2afa0e5316184c61be` | non_address_book | governance | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterBuffer<br>`0x0fba3630ddf56457d3ffc2864f260fbe73167f42` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterConduit<br>`0x4ac2377ed3ee376ff07d706beabc2fa38ecfb41c` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterConduit<br>`0x8412d4c04f79b8886ce0bfdf38baf7af13011eee` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterConduit<br>`0xefc8a5a82d09d1068d26ad57e2f57c0037c4f20f` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterConduit<br>`0xf65a1e41d0491621596d4b61b85e73e38cf7e424` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterV2<br>`0x645ce9367435a94c96fb67ebcf78eb09b3bd65cb` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | TransmuterV2<br>`0xe04bb5b4de60fa2fba69a93ade13a8b3b569d5b4` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | TwoPoolAssetManager<br>`0x06378717d86b8cd2dba58c87383da1eda92d3495` | non_address_book | core_logic | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | V1Deprecatooooor<br>`0xdb39286fadb3f6039c8b5d79bafa21615c23b4ec` | non_address_book | unknown | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | VesperAdapterV1<br>`0x54aed38abe51bb39c8e75ac1d9d9335d6136b6a1` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | VesperAdapterV1<br>`0xbc8003aa713df9c4887700a7a42f26f06c810819` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | VesperAdapterV1<br>`0xfcd619923456e20eae298b35e3606277b391bbb4` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | WETHGateway<br>`0x3b36368e1157a91275c41a2d1d6f58ff860d4f9f` | non_address_book | token | unknown | verified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| source verified unclassified | WstETHAdapterV1<br>`0x58846efadc0819d6f1d45a71d36b48a2ea79fcc5` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | WstETHAdapterV1<br>`0x6999b6ee237dad8c28fe32c02dd440ad054bb30c` | non_address_book | adapter | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | AlchemistV2<br>`0x1bce0aca8b0e4139e4390cf1a7a6eb644000a2f0` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | AlchemixHarvester<br>`0x990162afaa06f591c03dd36ecbda24a8a80f2d0c` | non_address_book | operational_periphery | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | AlchemixHarvester<br>`0x99e7d40750682ff6b5b8c362daad265b9b21e1a0` | non_address_book | operational_periphery | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | AlchemixHarvester<br>`0xf0faf495905506f156b6cc2d8810cf3073e04870` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | ATokenGateway<br>`0x6076a6b474f336c566e4ba551a5934e3ba5e7193` | non_address_book | token | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | ATokenGateway<br>`0xba3e8437a06397430036e23ff9153408a3203afd` | non_address_book | token | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | HarvestResolver<br>`0x91b5f8670413a785fe6012360a3fb33f23015c2e` | non_address_book | operational_periphery | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | HarvestResolver<br>`0xe9044a487c758ff8f8c92626bf484f3fb78a1e96` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | HarvestResolver<br>`0xf6dd52cdf1614cd649077aa283840657617faa07` | non_address_book | operational_periphery | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | MigrationTool<br>`0x2c68d03f5e7333bbd21202044778893919cb8126` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | MigrationTool<br>`0x3892a5c92eafb81cec321b4304495038202ca9e4` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | MigrationTool<br>`0x7018cbaf278cab1eea3192d0d58ef520f4e5ced0` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | MigrationTool<br>`0xbcf001154265e31679ec35d084814988d9611cb9` | non_address_book | operational_periphery | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | MigrationTool<br>`0xc56209cccd32297460383e3e032fae0636fb4302` | non_address_book | operational_periphery | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | MigrationTool<br>`0xf87510f1e63e29bb69d9d35d0365e8cace609a8c` | non_address_book | operational_periphery | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | optimismCompress<br>`0x65c732b5bfc753975c2d92a521bcac633fdae130` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | optimismCompress<br>`0x9d15e5230506bfb66d2a5b18117aa14bf1918d35` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | optimismCompress<br>`0xc58b2bb06cb16fe99a989fe2b495734fa695533a` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | optimismCompress<br>`0xd2b1d91dbddd1c026a0c849d08e1ea284866650c` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | RewardCollector<br>`0xf34517ef82c9b512783c44013720a12759f896f9` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | RewardCollectorOptimism<br>`0x3fa5629b403c4424711e3eb69341833ac1a7d02d` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | RewardCollectorOptimism<br>`0xffd61c9597982241fd6d7c3f8a03414a5b922e9a` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | RewardRouter<br>`0x2931b84d59f6f570eebdaaae182867c5e5d58075` | non_address_book | adapter | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | RewardRouter<br>`0x2e0e6b5490ecc65aa9aacc40af6e41253681bb47` | non_address_book | adapter | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | TransmuterBuffer<br>`0x36e8d12227f8c8ef38bb3aeabf816681b5440be5` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | TransmuterV2<br>`0x54aed38abe51bb39c8e75ac1d9d9335d6136b6a1` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | Whitelist<br>`0xc3365984110db9b84c7e3fc1cffb370c6df6380f` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | Whitelist<br>`0xc5fe32e46fd226364bff7a035e8ca2abe390a68f` | non_address_book | unknown | unknown | verified | n/a | `0x7a6468f8161ef39d7639c67dfa5637ba1b7ba74b` |
| source verified unclassified | YTokenGateway<br>`0xc02670867efac6d988f40878a5559a8d96002a56` | non_address_book | token | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | YTokenGateway<br>`0xede36d3f423ef198abe82d2463e0a18bcf2d9397` | non_address_book | token | unknown | verified | n/a | `0xb31acbb06fcf38bc6a93f198ec3805adbf2daa7c` |
| source verified unclassified | AlchemistV2<br>`0x43647374775b8b792f273a82097d182b34964f06` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV2<br>`0x7554616955e2227c1fcec373e53a809cd37d095c` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV2<br>`0x84672c77ddcba0003e84f13f2b5f168f62b36d1e` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV2<br>`0x98cabfdd80d9a59d6cd05fe72e7d445882b1f83b` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV2<br>`0xa40cff63b2092c846d89563bb62e2a4ab3245926` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV2<br>`0xbb2f5d69978160b9220cfca9476926e021264293` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV2<br>`0xdd8888e4a1e790541bfca51c65b6d801c20c7fc1` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemistV3<br>`0x3ddf4aa5b11e1276df3481a1eabeea8e9c70f6f7` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemixConnextGateway<br>`0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemixConnextGateway<br>`0xb58609ea0a12731a3817de063d2b9217cbcea90a` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemixConnextGateway<br>`0xb77750e48c2b1e1657cc5ad7f329133c64a8321f` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemixConnextGateway<br>`0xb85efc42d55381c895971016c9de27dabb036a43` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemixConnextGateway<br>`0xfaafe7143ffc553a5033131549cef6634d165693` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | AlchemixHarvester<br>`0x52e4c31933b466cd8a7cb0aab819abaf7be7fc0e` | non_address_book | operational_periphery | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | ArbitrumRewardCollector<br>`0x6428f6ec4bbdee53c8ff894a7d6696fd14cb6c9b` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | ArbitrumRewardCollector<br>`0xe10fff987d68272a53c053e5d7d5f630f15fe3ac` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | ArbitrumRewardCollector<br>`0xf1d334374eea0faa7548510e0edccb0eb6f6fc95` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | ATokenGateway<br>`0x07b8dd83a7cf6f6934064203032224c4c4d477db` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | CrossChainCanonicalAlchemicTokenV2<br>`0x37704b70cba0ffd12eb039274ff46992544a1f16` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | CrossChainCanonicalAlchemicTokenV2<br>`0x57d45c6a5878a7bddd217088787cccc9e1fa4f9a` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | CrossChainCanonicalAlchemicTokenV2<br>`0x88e4830e62cd1bed29dd7ebde46bb9b86dc4f053` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | CrossChainCanonicalAlchemicTokenV2<br>`0x9d4c27802238c96270bd3913e5dbbadba92715e1` | non_address_book | token | unknown | verified | n/a | `0x13c716188c38ce27b9b2b672a59543cf1170eabe` |
| source verified unclassified | CrossChainCanonicalAlchemicTokenV2<br>`0xb9b47fd9ea94f3b568ab5d4a449b0b7b544822ad` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | CrossChainCanonicalGALCX<br>`0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92` | non_address_book | unknown | unknown | verified | n/a | `0x13c716188c38ce27b9b2b672a59543cf1170eabe` |
| source verified unclassified | ERC20Bridged<br>`0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` | non_address_book | operational_periphery | unknown | verified | n/a | `0x1824988af7a12c339784a171a514e20609896321` |
| source verified unclassified | GearboxTokenAdapter<br>`0xb1cfd0753ca65c03f0457150c59f107f7115bb86` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | GearboxTokenAdapter<br>`0xc129bd3fd93ec09237369c70ba5e1c06fc5dacb0` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | GearboxTokenAdapter<br>`0xfcc143dc4dd62ad53c464db08f668904e3b04617` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | HarvestResolver<br>`0x0370ada82f7a9397ca26ea5c9f13b937513ef754` | non_address_book | operational_periphery | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | L2ERC20TokenGateway<br>`0xe75886de20df66827e321efdb88726e6baa4b0a7` | non_address_book | token | unknown | verified | n/a | `0x1824988af7a12c339784a171a514e20609896321` |
| source verified unclassified | NextAlchemicToken<br>`0x380cbf190318c0f9d07e6565247b9518227d2302` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | NextAlchemicToken<br>`0x6e57806138cb011a0c8f95becb9574c3dda04483` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | NextAlchemicToken<br>`0xaf11680b507b66884ecf049d842a7e3c1e15e386` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | NextAlchemicTokenV2<br>`0x649020f591288af5cfe73fd8fffd761ae956007e` | retained_scope_excluded_inventory | token | live | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | RewardRouter<br>`0x5ea092309a686a7f1e0a05f8125dc5025bc6b258` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | RewardRouter<br>`0xabad1adab8a51a00665a3b76da0e32b2d2f1a6db` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | RewardRouter<br>`0xae8e5edd84800e77f80efff9c95d9c283e21a881` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | TransmuterBuffer<br>`0x752ca40117180129410b5e3529aedeb6efa22e2b` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | TransmuterV2<br>`0x1b03612cf7881b8bc16def13c94d0097adca4d19` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | TransmuterV2<br>`0x4be3d2fe08a18836cef244aba0f8d7189f673011` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | TransmuterV2<br>`0xb0a2db2b8bd8ba1d6748951474c25394528739dd` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | TransmuterV2<br>`0xfaf83348b325889bfdffee711999a2692665452e` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | TransmuterV2<br>`0xfd092e88600852ff6be6c1b8e16c95ed466af5c6` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | Whitelist<br>`0x6996b41c369d3175f18d16ba14952f8c89665710` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | Whitelist<br>`0xda94b6536e9958d63229dc9be4fa654ad52921db` | non_address_book | unknown | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | WstETHAdapterArbitrum<br>`0x576bc8bce22216c30a6fb270a7d457955fca7e48` | non_address_book | adapter | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | YTokenGateway<br>`0x736fa66a6f4457b29e5a4b1dc78ac1b1d9cfc4df` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| source verified unclassified | YTokenGateway<br>`0xd655200ce175700eaec0e593a41a201795906668` | non_address_book | token | unknown | verified | n/a | `0x886ff7a2d46dcc2276e2fd631957969441130847` |
| unverified unclassified | UnnamedContract<br>`0x00160baf84b3d2014837cc12e838ea399f8b8478` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x011881efbdbb250702f9d7ca2a74788b26ca7128` | non_address_book | unknown | unknown | unverified | n/a | `0xb5abdabe50b5193d4db92a16011792b22ba3ef51` |
| unverified unclassified | UnnamedContract<br>`0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x0363a32d18c25a3fd19a0d00b02106c03d8b8182` | non_address_book | unknown | unknown | unverified | n/a | `0x4600d3b12c39af925c2c07c487d31d17c1e32a35` |
| unverified unclassified | UnnamedContract<br>`0x042565d8c21f82a936031816f390fff3d2760213` | non_address_book | unknown | unknown | unverified | n/a | `0xb5abdabe50b5193d4db92a16011792b22ba3ef51` |
| unverified unclassified | UnnamedContract<br>`0x04baf30115d7bac714709910dd286718cfad8808` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x057a481461a29c4c4b3c53774daa6afaf5f981df` | non_address_book | unknown | unknown | unverified | n/a | `0x526d542ffbae26d510cd610b8050438586fd203c` |
| unverified unclassified | UnnamedContract<br>`0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6` | non_address_book | unknown | unknown | unverified | n/a | `0xb5abdabe50b5193d4db92a16011792b22ba3ef51` |
| unverified unclassified | UnnamedContract<br>`0x0648e517670d71ba46d7a27ba04677db7c7957cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb5abdabe50b5193d4db92a16011792b22ba3ef51` |
| unverified unclassified | UnnamedContract<br>`0x069c24600c2a03147d4e1d9b04d193151676f577` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |
| unverified unclassified | UnnamedContract<br>`0x07a5fbd1829efc4f1e698145fcd69b8235d30a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa448833bece66fd8803ac0c390936c79b5fd6edf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hackmd.io/@geistermeister/SkSZiU9ybe](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [Alchemix_v2.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Alchemix_v2.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [View Report](https://drive.google.com/file/d/18LmIajwn6NOCbxKQJ49MVLyLSKb9gmD1/view) | Immunefi | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [View Report](https://docs.alchemix.fi/assets/files/v3-yearn-e44c37454c3ba188ea81d6d583c399aa.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 43 | high |
| [View Report](https://docs.alchemix.fi/assets/files/v3-nethermind-3195e302f55244d130f49ec41e6d1539.pdf) | Code4rena | Contest | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Strategies report (April 15–17, 2026)](https://docs.alchemix.fi/assets/files/v3-strategies-yaudit-04e42747ec4fdfaad4f32799e6064a9a.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Strategies follow-up report (April 23–24, 2026)](https://docs.alchemix.fi/assets/files/v3-strategies-yaudit-followup-4183b2c1865b0f18d3cd22a6700337e9.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4306] hackmd.io/@geistermeister/SkSZiU9ybe — no match: No reason recorded
- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b — no match: No scope section or contract names found in the provided text.
- [9744] v3-nethermind.pdf — no match: No reason recorded
- [9745] v3-strategies-yaudit-followup.pdf — no match: No reason recorded
- [9746] v3-strategies-yaudit.pdf — no match: No reason recorded
- [9747] v3-yearn.pdf — no match: Extracted 42 contract names from the audit scope section listing all files under src/. Audit date derived from audit timeline: February 16 to March 18, 2026, using end date.
- [26436] Alchemix_v2.pdf — matched: Scope section explicitly lists 6 smart contracts and 7 libraries. Audit date is the 'Updated' date (2022-02-19) as the final version.
- [26438] View Report — no match: Scope section states 'target assets in scope for the Audit Competition were Alchemix’s smart contract assets' but does not list individual contracts. However, top findings reference specific contracts (Transmuter, AlchemistV3) as targets, indicating they are in scope. Audit competition ended 4 Nov 2025.
- [26440] View Report — no match: Extracted 42 contract names from the audit scope section listing all files in src/ directory. Audit date derived from audit timeline: February 16 to March 18, 2026, using end date.
- [26441] View Report — no match: Extracted 23 contract names from the 'Audited Files' section (pages 3-4) which lists all contracts in scope with file paths. The audit date is explicitly stated as 'Febuary 2, 2026' on the cover page and in the summary table.
- [26442] Strategies report (April 15–17, 2026) — no match: All 7 contracts listed in Audit Scope section with file paths.
- [26443] Strategies follow-up report (April 23–24, 2026) — no match: Audit scope explicitly lists 3 contracts: SimMigrateToWstethStrategy.s.sol, MYTTokenSwapper.sol, WstETHEthereumStrategy.sol. Audit date found at end of document: 'Completed 2026-04-24'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hackmd.io/@geistermeister/SkSZiU9ybe | AlchemistV3 | unmatched — not counted | — | — | no |
| hackmd.io/@geistermeister/SkSZiU9ybe | Transmuter | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3ARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3ARBWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AaveV3OPUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistAllocator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistCurator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | AlchemistGate | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerARBWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | EulerWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | FluidARBUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | IAlchemistCurator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | IAllocator | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MYTStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MoonwellUSDCStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MoonwellWETHStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | MorphoYearnOGWETH | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PeapodsETH | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PeapodsUSDC | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | PermissionedProxy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | TokeAutoEth | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | TokeAutoUSDStrategy | unmatched — not counted | — | — | no |
| v3-nethermind.pdf | WstethMainnet | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | MYTTokenSwapper | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | SimMigrateToWstethStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit-followup.pdf | WstETHEthereumStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | AlchemistRouter | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | EtherfiEETHStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | FrxEthEthDualOracleAggregatorAdapter | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | OraclePricedSwapStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | SFraxETHStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | SiUSDStrategy | unmatched — not counted | — | — | no |
| v3-strategies-yaudit.pdf | WStethStrategy | unmatched — not counted | — | — | no |
| v3-yearn.pdf | AbstractFeeVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerUSDCAdapter | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistAllocator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistCurator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistETHVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistGate | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistStrategyClassifier | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistTokenVault | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3 | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3Position | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AlchemistV3PositionRenderer | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | ErrorMessages | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TransmuterErrors | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | NFTMetadataGenerator | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Sets | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | StakingGraph | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokenUtils | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MYTStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PerpetualGauge | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | EulerWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PeapodsETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PeapodsUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokeAutoETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Transmuter | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | PermissionedProxy | unmatched — not counted | — | listed in scope | no |
| v3-yearn.pdf | Whitelist | ambiguous — not counted | Whitelist (alternative) `0x211c74db951c161c5a379363716ebdca5125ef59` — deployed 2022-02-24 06:49:05+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x78537a6ceba16f412e123a90472c6e0e9a8f1132` — deployed 2022-02-24 03:07:10+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x46f992d00c2dfb6fbbbb64d69ab353c2fc435ace` — deployed 2022-02-24 05:24:22+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xa3dfccbad1333dc69997da28c961ff8b2879e653` — deployed 2022-02-24 06:30:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x3f950f06064a43d42a8e7c199bb77b8e3a4b2096` — deployed 2022-03-18 17:05:56+03 — liveness: live (code_present_context)<br>Whitelist (alternative) `0x35b2c16de6f283ab0949964d90ccf930f378ade6` — deployed 2022-02-24 05:23:31+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xdd8ac2d5a739bb4a591c5b0c7e613b810fe83ff1` — deployed 2022-02-24 03:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| v3-yearn.pdf | ZeroXSwapVerifier | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | AlchemistV2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x5c6374a2ac4ebc38dea0fc1f8716e5ea1add94dd` — deployed 2022-02-24 05:00:40+03 — liveness: live (current_address_book_code)<br>AlchemistV2 (alternative) `0xf547b87cd37607bddabafd9bf1ea4587a0f4acfb` — deployed 2022-03-08 07:05:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c` — deployed 2022-02-24 06:37:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | AlchemicToken | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | TransmuterV2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x49930ad9ebbbc0eb120ccf1a318c3ae5bb24df55` — deployed 2022-03-12 17:57:54+03 — liveness: live (current_address_book_code)<br>TransmuterV2 (alternative) `0xad2a6c1c6025be8c703930dcd921a2fa25220298` — deployed 2022-03-14 02:39:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa840c73a004026710471f727252a9a2800a5197f` — deployed 2022-03-12 17:50:46+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc30820ba6d045b95d13a5b8df4fb0e6b5bdf5b9` — deployed 2022-03-12 18:03:29+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x03323143a5f0d0679026c2a9fb6b0391e4d64811` — deployed 2022-03-12 18:29:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | TransmuterBuffer | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xbc2fb245594a68c927c930fbe2d00680a8c90b9e` — deployed 2022-03-12 18:24:53+03 — liveness: live (current_address_book_code)<br>TransmuterBuffer (alternative) `0x4370675ab54fc710a27e29ea2bb5563468b5948f` — deployed 2022-03-12 17:43:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1eed2dbeb9fc23ab483f447f38f289ca15f79bac` — deployed 2022-03-12 17:44:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Alchemix_v2.pdf | WETHGateway | own contract | WETHGateway (selected) `0xa22a7ec2d82a471b1dacc4b37345cf428e76d67a` — deployed 2022-03-18 17:07:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Alchemix_v2.pdf | YearnTokenAdapter | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Limiters | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | ContractWhitelister | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Sets | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| Alchemix_v2.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| View Report | Transmuter | unmatched — not counted | — | Target in top findings: https://github.com/alchemix-finance/v3-poc/blob/immunefi_audit/src/Transmuter.sol | no |
| View Report | AlchemistV3 | unmatched — not counted | — | Target in top findings: https://github.com/alchemix-finance/v3-poc/blob/immunefi_audit/src/AlchemistV3.sol | no |
| View Report | AbstractFeeVault | unmatched — not counted | — | listed in scope | no |
| View Report | EulerUSDCAdapter | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistAllocator | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistCurator | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistETHVault | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistGate | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistStrategyClassifier | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistTokenVault | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3 | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3Position | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistV3PositionRenderer | unmatched — not counted | — | listed in scope | no |
| View Report | ErrorMessages | unmatched — not counted | — | listed in scope | no |
| View Report | Errors | unmatched — not counted | — | listed in scope | no |
| View Report | TransmuterErrors | unmatched — not counted | — | listed in scope | no |
| View Report | FixedPointMath | unmatched — not counted | — | listed in scope | no |
| View Report | NFTMetadataGenerator | unmatched — not counted | — | listed in scope | no |
| View Report | SafeCast | unmatched — not counted | — | listed in scope | no |
| View Report | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| View Report | Sets | unmatched — not counted | — | listed in scope | no |
| View Report | StakingGraph | unmatched — not counted | — | listed in scope | no |
| View Report | TokenUtils | unmatched — not counted | — | listed in scope | no |
| View Report | MYTStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | PerpetualGauge | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | EulerWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope | no |
| View Report | PeapodsETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | PeapodsUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | TokeAutoETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope | no |
| View Report | Transmuter | unmatched — not counted | — | listed in scope | no |
| View Report | PermissionedProxy | unmatched — not counted | — | listed in scope | no |
| View Report | Whitelist | ambiguous — not counted | Whitelist (alternative) `0x211c74db951c161c5a379363716ebdca5125ef59` — deployed 2022-02-24 06:49:05+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x78537a6ceba16f412e123a90472c6e0e9a8f1132` — deployed 2022-02-24 03:07:10+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x46f992d00c2dfb6fbbbb64d69ab353c2fc435ace` — deployed 2022-02-24 05:24:22+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xa3dfccbad1333dc69997da28c961ff8b2879e653` — deployed 2022-02-24 06:30:06+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0x3f950f06064a43d42a8e7c199bb77b8e3a4b2096` — deployed 2022-03-18 17:05:56+03 — liveness: live (code_present_context)<br>Whitelist (alternative) `0x35b2c16de6f283ab0949964d90ccf930f378ade6` — deployed 2022-02-24 05:23:31+03 — liveness: live (current_address_book_code)<br>Whitelist (alternative) `0xdd8ac2d5a739bb4a591c5b0c7e613b810fe83ff1` — deployed 2022-02-24 03:07:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| View Report | ZeroXSwapVerifier | unmatched — not counted | — | listed in scope | no |
| View Report | AlchemistCurator | unmatched — not counted | — | listed in scope table | no |
| View Report | AlchemistAllocator | unmatched — not counted | — | listed in scope table | no |
| View Report | PermissionedProxy | unmatched — not counted | — | listed in scope table | no |
| View Report | IAllocator | unmatched — not counted | — | listed in scope table | no |
| View Report | IAlchemistCurator | unmatched — not counted | — | listed in scope table | no |
| View Report | MYTStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AlchemistGate | unmatched — not counted | — | listed in scope table | no |
| View Report | WstethMainnet | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3OPUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MoonwellUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MoonwellWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | FluidARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerARBWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3ARBWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | AaveV3ARBUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | PeapodsETH | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerUSDCStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | EulerWETHStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | PeapodsUSDC | unmatched — not counted | — | listed in scope table | no |
| View Report | TokeAutoUSDStrategy | unmatched — not counted | — | listed in scope table | no |
| View Report | MorphoYearnOGWETH | unmatched — not counted | — | listed in scope table | no |
| View Report | TokeAutoEth | unmatched — not counted | — | listed in scope table | no |
| Strategies report (April 15–17, 2026) | FrxEthEthDualOracleAggregatorAdapter | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | AlchemistRouter | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | EtherfiEETHStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | OraclePricedSwapStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | SFraxETHStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | SiUSDStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies report (April 15–17, 2026) | WStethStrategy | unmatched — not counted | — | listed in scope | no |
| Strategies follow-up report (April 23–24, 2026) | SimMigrateToWstethStrategy | unmatched — not counted | — | listed in Audit Scope section | no |
| Strategies follow-up report (April 23–24, 2026) | MYTTokenSwapper | unmatched — not counted | — | listed in Audit Scope section | no |
| Strategies follow-up report (April 23–24, 2026) | WstETHEthereumStrategy | unmatched — not counted | — | listed in Audit Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | AlchemixToken | token | $6,906,906.57 | Verified native implementation with $6,906,906.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf547b87cd37607bddabafd9bf1ea4587a0f4acfb` | AlchemistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0fba3630ddf56457d3ffc2864f260fbe73167f42` | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4370675ab54fc710a27e29ea2bb5563468b5948f` | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad2a6c1c6025be8c703930dcd921a2fa25220298` | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x211c74db951c161c5a379363716ebdca5125ef59` | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c2c6fa5398cdd933465f6fd04f3575f7201bcf8` | WstETHAdapterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 26 |
| standard_library | 25 |
| needs_review | 621 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 163 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [4306] hackmd.io/@geistermeister/SkSZiU9ybe
- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b
- [9744] v3-nethermind.pdf
- [9745] v3-strategies-yaudit-followup.pdf
- [9746] v3-strategies-yaudit.pdf
- [9747] v3-yearn.pdf
- [26438] View Report
- [26440] View Report
- [26441] View Report
- [26442] Strategies report (April 15–17, 2026)
- [26443] Strategies follow-up report (April 23–24, 2026)

Fork inheritance lineage and inherited audits are included when available.
