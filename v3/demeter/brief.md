# Agentic Audit Brief: Demeter

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Demeter (`demeter`)
- Website: [https://dfgroup.gitbook.io/demeter-en](https://dfgroup.gitbook.io/demeter-en)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, heco
- Contract surface: 74 unique implementations (108 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $285,338.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Demeter. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, heco. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DMT (`0x3eb05a201817f87c198930b86f40c6829340b4b7`, chain 56)
- DUSD (`0x22fda23aed456f2de139c6240f0776ef031c8b6b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 2 of 74 unique; 72 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 63
- Unique implementations: 74
- Raw deployments: 108
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ff795a6f4d97e7887c79bea79aba5cc76444adf` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb708fc5732dec1afc8d8556423a2edccbd6` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a77848f1c2d67e05e54d78d174a0c850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7083609fce4d1d8dc0c979aab8c869ea2c873402` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 5 deployments: bsc `0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153`; bsc `0x101d82428437127bf1608f699cd651e6abf9766e`; bsc `0x88f1a5ae2a3bf98aeaf342d26b30a79438c9142e`; bsc `0x9ac983826058b8a9c7aa1c9171441191232e8404`; bsc `0xbf5140a22578168fd562dccf235e5d43a02ce9b1` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f70642d88cf1c4a3a7abb072b53b929b653eda5` | ⚠️ Unaudited |
| DemeterLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4909b138e67530b2059fb08c6bbabe4a9637d1c4`; bsc `0xa233393b9687e779d45465393ad8b3dcbe636179` | ⚠️ Unaudited |
| DMT | unknown | project_anchor | own_supporting | 0 | bsc | unit-383716 | `0x3eb05a201817f87c198930b86f40c6829340b4b7` | ⚠️ Unaudited |
| DUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-383715 | `0x22fda23aed456f2de139c6240f0776ef031c8b6b` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x476908a087deb6d06596ad8ac349357f7f195ec2`; bsc `0x57a7bcdfab1631aca9d6e0f39959477182cfae12`; bsc `0x75432893dfba7103a9f68cfe8fe3eac4764ee60c`; bsc `0xd1f971928b53c2032328e9f28bb714da192eb324`; bsc `0xe88e60cf5ff9cbcc9a6f52e96a9eaa48e58452fc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x77991006d41349c15319517dbfd19034d2919c34) | proxy | non_address_book | non_address_book_inventory (excluded) | 4 | bsc | n/a | 5 deployments: bsc `0x5c4e2b1e6e03ccf5f3c3356c008a69c7f93bd10b`; bsc `0x606bb7e9b80ba73d1303f1c3625cf7f09249d680`; bsc `0x77991006d41349c15319517dbfd19034d2919c34`; bsc `0x89bb17af665ec0607268c697bb294117992027cf`; bsc `0xb275b6ae294159278547297dbe7617f66a7bc6e2` | ❓ Unverified |
| Proxy (impl: 0xc3f12c6f4db9da9f3505e6c89e2337819137e64f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3632e78219227b172f0aaf56f92fb08d87c94379`; bsc `0xc3f12c6f4db9da9f3505e6c89e2337819137e64f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00df2b7f0f8f47186cae4efebbce329271dc566d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0237a987c60cda9bcec34ceb1f9144ad57b2a801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04ac790d71b7e9a4becddbad1244c344f3466b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a2382ce22ed1673d098b1537f98d5fe0723941e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c4df0eb13c17d351b94bdc714590d47f53410f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127ff5e7211d085654cae1a643a80f656a5361fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15fd1e0b7d19483ec989c4bc03a96e4fe6670625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1709184186ce4752181937eeb4c9905d4a8be13a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x181ea06ebd22a20c28a0b96394c1d12cbf6baa46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19a636bb3c6d0b2888b92656770723c30b02fbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce0aa42a0db78180a4e9c6f10dd20baa389cb35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x217d2c538628762981e18c32a0b789f94d2368df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x234c717e0c6e54596cb4490f209a8c1c88350e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250a0b3e70501e6b86712537c8a840a6358671f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3036735377fa5a5d5850ed76ad493b7485d8883e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x336dd5b84ca82f0d0ceb790d257f0e66dd3c5478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x363a98259ce98b67f09169af487c38a5fb776ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4016f80782eece3ab02fb01d263b249f3e45fcb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x408cdf5dc63bbb64f5f61bb7d6fdca021b3e9efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40f2cab6d6ed9761a964f0c0b785c51e7fe32dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48fa6776e0c8ceccca0e8729eaf109206ba058f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a345187bfae9a14da764c2222c4b7e816c18216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b6b5851da3d5317cef8cba81513d60ba5787924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e0a7bd3eba7627085cdff5a176dc34527dbb4b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eef796b3fa549949d0397c5f323964930ee20ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5040c0d67ee728a13b99bd176ae31849897981d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x511069c79dff79dfc0d0c69c4b4a40c4cade68f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x542c2b67569a05397f778c9ebd9f04d97ac2c1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54abc81bee20f127595a5bc5307960e98b247984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5891bc02dd7e587780760ec0836abe078caa279d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c2ef2d91ac8656afe56293f5b16685bc05b39e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6113fdb9177dfefb7a09c47f06fdb59b63b9143a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x612618b92318b676410f46f92cde94b0c5b2418f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x61a2b1c773e2cd8a98f7f9e56414f650f229edfd`; bsc `0x95de27398961730c1ad7fecb36f29676e1382816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687bbf37666847d8ae725b48adf567f0e56fa02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69084ffd9da658e4df913937f49c8405d88c9ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b5cfcbba60da20e8cbb748e1605ed6af36df823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9fcbd7ad9dfb241f4fa2cc08faabb42d764606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8341e8929d245fdfe82ec14eb591b0e6535b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x796d5f0a76687bece5f931cd54467d27e82787d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79adcd4053c865f6b7f2e020ea7eac59f9a9ab1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8520156fe7c360afcb9ea8789cf1f4aa5576c1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x896741d01907bedf44d4b099ac592e2bbf7991ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c28560779749d1303310421f1c90ae3f665a226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8de34e1cb96f643a695d4c64e9e83546855c5d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9291c00648b76c2da8d46025d9555822797109f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98053f8d8e8443c9a128cdc5b743ebfede2a0869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f55af3c5a367bccaed75f2fcfa26e1ba0032c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f5c80dc840f9cc60670a20c1e5d0fbd3e13b015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac108d48e1bdc95e8cc8660cf377fa60d4177f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf7fe525aa521df78f35aae358b6cda3298cc1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0568dbd78d3920903e71fc3f3034c0a4a7d1ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc17f0cabd532d3d539158d39ad14ff5addb09126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4f32bf5efcf44454ecf32c55ff5b8044e78c49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd687ddbd01f84de42da10099a2b0e66eb1971fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0546fcfe43f0fddc08e313568aa2f9cba49268c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe47bec7ab211f02b7056bb3f6b8187893ecc76d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb09805f5d31abf136247ded4df414df212721fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | 20 deployments: heco `0x0298c2b32eae4da002a15f36fdf7615bea3da047`; heco `0x103fc41d79c4ada572b158b39de4d5b30d45ddf6`; heco `0x22c54ce8321a4015740ee1109d9cbc25815c46e6`; heco `0x25d2e80cb6b86881fd7e07dd263fb79f4abe033c`; heco `0x31f7c57aa9ecc0da99105f2d7ad2c30c9df1c1dc`; heco `0x59a626a783a9c071fdcefc95b3664a34d0592e24`; heco `0x62ac818ecaf5a351d48cb7f95a07e2da7e97abca`; heco `0x63fb23f78923320de2816562401a2658321ffb11`; heco `0x64ff637fb478863b7468bc97d30a5bf3a428a1fd`; heco `0x66a79d23e58475d2738179ca52cd0b41d73f0bea`; heco `0x8d8fd8139ceaf0034a021e6eb039bb6f70c83d9c`; heco `0x9e004545c59d359f6b7bfb06a26390b087717b42`; heco `0xa2c49cee16a5e5bdefde931107dc1fae9f7773e3`; heco `0xae3a768f9ab104c69a7cd6041fe16ffa235d1810`; heco `0xc790ff20b8479e1fedf73f78dc07c40db79d8474`; heco `0xda77b5663a0bafa56080ae5d0a1f462848465b14`; heco `0xe2ce3bde9f94c41e839287af95fee7c07807cf71`; heco `0xe867f648957fa769e43e30b99faa008c1a39808f`; heco `0xef3cebd77e0c52cb6f60875d9306397b5caca375`; heco `0xf677108cb45e702df16b42f7b37a1305239fc75a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | heco | unit-383713 | `0x57a7bcdfab1631aca9d6e0f39959477182cfae12` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | heco | unit-383714 | `0x9f5c80dc840f9cc60670a20c1e5d0fbd3e13b015` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 22
- Live contracts: 0
- Unknown liveness contracts: 22
- Source-verified contracts: 4
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=4, unverified unclassified=18

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | BEP20UpgradeableProxy<br>`0x101d82428437127bf1608f699cd651e6abf9766e` | non_address_book | unknown | unknown | verified | n/a | `0x81b7fda41e09e99275e8eb1bd26a810f98ff3cce` |
| source verified unclassified | BEP20UpgradeableProxy<br>`0x88f1a5ae2a3bf98aeaf342d26b30a79438c9142e` | non_address_book | unknown | unknown | verified | n/a | `0x81b7fda41e09e99275e8eb1bd26a810f98ff3cce` |
| source verified unclassified | BEP20UpgradeableProxy<br>`0x9ac983826058b8a9c7aa1c9171441191232e8404` | non_address_book | unknown | unknown | verified | n/a | `0x81b7fda41e09e99275e8eb1bd26a810f98ff3cce` |
| source verified unclassified | BEP20UpgradeableProxy<br>`0xbf5140a22578168fd562dccf235e5d43a02ce9b1` | non_address_book | unknown | unknown | verified | n/a | `0x81b7fda41e09e99275e8eb1bd26a810f98ff3cce` |
| unverified unclassified | 0xc3f12c6f4db9da9f3505e6c89e2337819137e64f<br>`0x3632e78219227b172f0aaf56f92fb08d87c94379` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x00df2b7f0f8f47186cae4efebbce329271dc566d` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x0237a987c60cda9bcec34ceb1f9144ad57b2a801` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x04ac790d71b7e9a4becddbad1244c344f3466b82` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x0a2382ce22ed1673d098b1537f98d5fe0723941e` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x0c4df0eb13c17d351b94bdc714590d47f53410f1` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x127ff5e7211d085654cae1a643a80f656a5361fb` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x15fd1e0b7d19483ec989c4bc03a96e4fe6670625` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x1709184186ce4752181937eeb4c9905d4a8be13a` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x181ea06ebd22a20c28a0b96394c1d12cbf6baa46` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x19a636bb3c6d0b2888b92656770723c30b02fbea` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x1ce0aa42a0db78180a4e9c6f10dd20baa389cb35` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x217d2c538628762981e18c32a0b789f94d2368df` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x234c717e0c6e54596cb4490f209a8c1c88350e79` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x250a0b3e70501e6b86712537c8a840a6358671f8` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x3036735377fa5a5d5850ed76ad493b7485d8883e` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0x363a98259ce98b67f09169af487c38a5fb776ab8` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |
| unverified unclassified | UnnamedContract<br>`0xc3f12c6f4db9da9f3505e6c89e2337819137e64f` | non_address_book | unknown | unknown | unverified | n/a | `0x8ea632340115482c8e46ec81e94c00459801a0e4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Demeter-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Demeter-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13014] PeckShield-Audit-Report-Demeter-v1.0.pdf — no match: No explicit scope section; contracts extracted from findings targets and mentions.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Demeter-v1.0.pdf | StakingEIP20 | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | StakingDAO | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | VBep20Delegate0 | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | MdexSwapProxy | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | VAIController | unmatched — not counted | — | Target in findings PVE-004 and PVE-009 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | MasterMultiSig | unmatched — not counted | — | Target in finding PVE-005 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | Manager | unmatched — not counted | — | Mentioned in finding PVE-006 as Manager contract | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | VToken | unmatched — not counted | — | Target in finding PVE-008 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | Reservoir | unmatched — not counted | — | Mentioned in finding PVE-007 | no |
| PeckShield-Audit-Report-Demeter-v1.0.pdf | Comptroller | unmatched — not counted | — | Mentioned in finding PVE-004 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x3eb05a201817f87c198930b86f40c6829340b4b7` | DMT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x22fda23aed456f2de139c6240f0776ef031c8b6b` | DUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [13014] PeckShield-Audit-Report-Demeter-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
