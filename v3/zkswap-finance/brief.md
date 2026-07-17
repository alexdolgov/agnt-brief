# Agentic Audit Brief: zkSwap Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 13 audit(s)
- Eligible audit results: 22 (13 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: zkSwap Finance (`zkswap-finance`)
- Website: [https://zkswap.finance](https://zkswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic, zksync-era
- Contract surface: 114 unique implementations (136 raw deployments)
- Coverage basis: 10/17 confirmed own live verified implementations (58.8%); conservative 58.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $843,085.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkSwap Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across sonic, zksync-era. Structural roles: 9 core, 8 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (9), supporting (8), unclassified (1)
- Contract kinds: contract (18)
- Detected standards: ownable (3), erc165 (2), pausable (2), erc20 (1), erc721 (1), multicall (1)
- Frameworks: openzeppelin (10), uniswap-v3 (4), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 67 contracts are derived from known codebases. 67 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1e9ebcb695c0cae7e16f36f4d7f15f6935fc6e88`, chain 146)
- UnnamedContract (`0x3ec4879991d51338d2a2d037f4dad439570cf971`, chain 146)
- UnnamedContract (`0x056f1960b5cf53676ad9c0a7113363a812dc0c8e`, chain 324)
- UnnamedContract (`0x0d64c4eb0547c1f51b78fb1a53583dc9042238c0`, chain 324)
- UnnamedContract (`0x1191bfc116fede5dd0b6e83fac7b0031d07a0df6`, chain 324)
- UnnamedContract (`0x12c944515f766baa62fd334efda6bdbd799adf4f`, chain 324)
- UnnamedContract (`0x1420963c2367eb21ff06511910946794d898c08c`, chain 324)
- UnnamedContract (`0x15309aaf4fedf346e5204331027b4ef7b75b1dd7`, chain 324)
- UnnamedContract (`0x1a5fb6977bcd9e5e16a7faba15134a1a6ca4a0c9`, chain 324)
- UnnamedContract (`0x31c330f2febda65693ec8801b77a93c6d1f479e4`, chain 324)
- UnnamedContract (`0x386befa6a54f9685ae85871aa47056891d63c54c`, chain 324)
- UnnamedContract (`0x3a76e377ed58c8731f9df3a36155942438744ce3`, chain 324)
- UnnamedContract (`0x3b3393ed6b51a8c130598558526c7bbb26da415b`, chain 324)
- UnnamedContract (`0x40ad8e452b87381adb6c088fb80173b80752ed65`, chain 324)
- UnnamedContract (`0x4305cf9f4ad5427d6614e7207803e2426497917a`, chain 324)
- UnnamedContract (`0x484a72b4879ac8b04652b51bf1d1c110077990a4`, chain 324)
- UnnamedContract (`0x4ca2ac3513739cebf053b66a1d59c88d925f1987`, chain 324)
- UnnamedContract (`0x525990769c271b1a0ab0b5158d7062be54e4983d`, chain 324)
- UnnamedContract (`0x57d28af38d126befebfde996b7cdc34d58ad4cfb`, chain 324)
- UnnamedContract (`0x58d8dd00b25f6557698d37784029f736c63f3c11`, chain 324)
- UnnamedContract (`0x5ca90e8c00db9402c84801a83f1fd24ddda72c20`, chain 324)
- UnnamedContract (`0x61278adbbe823dd30675248e78f34e90c648ea9b`, chain 324)
- UnnamedContract (`0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc`, chain 324)
- UnnamedContract (`0x6521385ce3bf30de58e402e5aed567b436736a75`, chain 324)
- UnnamedContract (`0x65300d6776939774815c0c2f1195b13254586a0f`, chain 324)
- UnnamedContract (`0x65ea05bc443a87518dd76d6c492e31299563987b`, chain 324)
- UnnamedContract (`0x74394479510834e1f1bf2ad91b30383505745228`, chain 324)
- UnnamedContract (`0x79354d5bf9dcda1d06fa555c240f3f1573f1eaf4`, chain 324)
- UnnamedContract (`0x7ab61748af61e0588296b6edf5c80ef5d0b6bbc7`, chain 324)
- UnnamedContract (`0x80190359df6adcc017b38372bf4c20884b0d8c75`, chain 324)
- UnnamedContract (`0x82e07a1e88f76e5934e1772cfd2a6abce1d6bf11`, chain 324)
- UnnamedContract (`0x876cfcf817d031703b83c13fe0e7838e8c5aabca`, chain 324)
- UnnamedContract (`0x8770ad37cb19ac99ed86a49f2982592c323c17be`, chain 324)
- UnnamedContract (`0x88add6a7e3c221e02f978b388a092c9fd8cd7850`, chain 324)
- UnnamedContract (`0x97f03b2f6246da8ff336f37ad3b047f7c3f74e59`, chain 324)
- UnnamedContract (`0x9f20a1ce3b66ebef612cbfa854c8f2dbf664ea28`, chain 324)
- UnnamedContract (`0x9f9d043fb77a194b4216784eb5985c471b979d67`, chain 324)
- UnnamedContract (`0xa478bf3f621d47e6753f463711630c282d2803ab`, chain 324)
- UnnamedContract (`0xa9e411d26df48d6871e966da84af878425a8e100`, chain 324)
- UnnamedContract (`0xaab6e2b06961927eb1665f0b2566170c71be50d3`, chain 324)
- UnnamedContract (`0xabca8cfdfa2a4285a4704bf960fb45e49821762f`, chain 324)
- UnnamedContract (`0xae3af55a2c589421f6693b6afca11d9a5ca34783`, chain 324)
- UnnamedContract (`0xb76f089a491f3e2d09ace7537bc422a11af66b0b`, chain 324)
- UnnamedContract (`0xc824f2cce71350cc5ece6c699c72baba75103907`, chain 324)
- UnnamedContract (`0xc93397f26886dab0d752c86612c78dbd2c1d5a59`, chain 324)
- UnnamedContract (`0xc9e2c117163ac4f85ac244bd4042a56d86756900`, chain 324)
- UnnamedContract (`0xcd6121185a98370be32d71f60a910de0d733946f`, chain 324)
- UnnamedContract (`0xce043a95f415d7873585e92904ea11955ba38fe5`, chain 324)
- UnnamedContract (`0xcf7c16b82d0366ed8421a6bc71a56b97d7e5ff35`, chain 324)
- UnnamedContract (`0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52`, chain 324)
- UnnamedContract (`0xf1802d9a70bdc6f6effd65d44b33226ee0e6a821`, chain 324)
- UnnamedContract (`0xf560df1cafb0da08ecb1f9e244c68640b701e53e`, chain 324)
- UnnamedContract (`0xff16eaec9047eaefd32b3a308057ff21ccf5cf22`, chain 324)
- UnnamedContract (`0xffd6f258a53a4295dbf5be90e6a7f58aef2d38f7`, chain 324)
- UnnamedContract (`0xffdef45585b57e294487c72f01043d5dee3f069f`, chain 324)
- AggregatorSmart (`0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3`, chain 146)
- AggregatorSmart (`0xc9c49728a43bbf0f804ef56becd081137fc85849`, chain 146)
- GnosisSafeProxy (`0x4780ea7fc1fc4c51732ab31d797d4e24757c2262`, chain 146)
- NonfungiblePositionManager (`0x2e11640ee1368f2cd90c36607760a274a30094f5`, chain 146)
- NonfungiblePositionManager (`0xe8a9c651c29469f0de2ce0506002828a7e683860`, chain 324)
- TransparentUpgradeableProxy (`0xf5fb98fce5ee81b4e2c5ac1829b12259f32ae0d5`, chain 146)
- UniversalRouter (`0x957dbef5673822b3db074f6cee6dcd0fa68f18ec`, chain 146)
- ZFGovernanceStaking (`0xcb3d626005e3e209fe7fbf661a9cbe4874c35087`, chain 146)
- ZFRewardDistributor (`0x78caac771dbf608553b8eb8d63c71821cbdbc5d5`, chain 146)
- ZFRouter (`0xcd219ae923b5f20cb36ad316a129d8f9015d1822`, chain 146)
- ZFRouter (`0x18381c0f738146fb694de18d1106bde2be040fa4`, chain 324)
- ZFSwap2EarnRewarder (`0xf5df07accb7f319016e81d10a0acf3882af47113`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 72/72 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/17 (58.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 72 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 72 of 114 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/40
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 74
- Unique implementations: 114
- Raw deployments: 136
- Audits discovered: 22 (22 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 21 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidproof | Tier 2 | 6 | 15.0% | 2024-03 |
| MythX | Tier 2 | 4 | 10.0% | 2023-12 |
| unknown | Tier 2 | 3 | 7.5% | 2024-01 |
| CertiK | Tier 2 | 2 | 5.0% | 2023-12 |
| Bailsec | Tier 2 | 1 | 2.5% | 2024-04 |
| VitalBlock | Tier 2 | 1 | 2.5% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 1 | sonic | unit-263965 | 2 deployments: sonic `0x49685fbdb0ebd013d1c157dfb0c7cdafc3835af5`; sonic `0xf5fb98fce5ee81b4e2c5ac1829b12259f32ae0d5` | ✅ Audited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-263898 | `0x3a59bfe426f81726c31280aaeae1125f50ca1caa` | ✅ Audited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-263902 | `0x7834387b0f48c0a2bf9c8fab696e2ab2587ca5ac` | ✅ Audited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-263904 | `0x957dbef5673822b3db074f6cee6dcd0fa68f18ec` | ✅ Audited |
| ZFFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-263908 | `0xce98a0e578b639aa90ee96ed5ba8e5a4022de529` | ✅ Audited |
| ZFGovernanceStaking | unknown | project_anchor | own_supporting | 0 | sonic | unit-263906 | `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` | ✅ Audited |
| ZFRouter | adapter | project_anchor | own_supporting | 0 | zksync-era | unit-263916 | `0x18381c0f738146fb694de18d1106bde2be040fa4` | ✅ Audited |
| ZFSwap2EarnRewarder | unknown | project_anchor | own_supporting | 0 | sonic | unit-263909 | `0xf5df07accb7f319016e81d10a0acf3882af47113` | ✅ Audited |
| ZFV3Factory | unknown | project_anchor | own_supporting | 0 | sonic | unit-263901 | `0x6d977fcc945261b80d128a5a91cbf9a9148032a4` | ✅ Audited |
| ZFV3PoolDeployer | unknown | project_anchor | own_supporting | 0 | sonic | unit-263895 | `0x0ff16867bcac3c5fdc2dc73558e3f8e2ed89eea2` | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorSmart | unknown | project_anchor | own_supporting | 0 | sonic | unit-263894 | `0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3` | ⚠️ Unaudited |
| AggregatorSmart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x55dfa51618abab2fb0032bb48c4f995cd7679d2a`; sonic `0xbd1c107f501734218bcdb18762756978a859ca60` | ⚠️ Unaudited |
| AggregatorSmart | unknown | project_anchor | own_supporting | 0 | sonic | unit-263905 | `0xc9c49728a43bbf0f804ef56becd081137fc85849` | ⚠️ Unaudited |
| AggregatorSmartV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65` | ⚠️ Unaudited |
| BulkSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf02a22ea072d8a7fc573935aea7152345d5533e` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-263900 | `0x4780ea7fc1fc4c51732ab31d797d4e24757c2262` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x825e625af71404a40f5c1ef9a03095574dff1e13` | ⚠️ Unaudited |
| LongOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xbdd352f339e27e07089039ba80029f9135f6146f`; sonic `0xfe57143bf436f0e3b4c0bf224d478316a81ecd49` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8708a634a06ae3bb44c26cb97dcce8556fe02962` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3be99db246c81df2bd8dc0d708e03f64e1a84917` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf7ff4717d5e1468c82aa69dba8dacb18ed5b585` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | sonic | unit-263897 | `0x2e11640ee1368f2cd90c36607760a274a30094f5` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | zksync-era | unit-263959 | `0xe8a9c651c29469f0de2ce0506002828a7e683860` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf82343c8b777badb0921ee4c4f7581c968687b6b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x486d7c009b78310528aca11574ec816d2fdef71b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x646a2679d293c338b31483fddb2eff3c3745b377` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c5310fe4e4534c53574889028cf0b07d770db17` | ⚠️ Unaudited |
| ZFGovernanceStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x0cc7d6da666529841bad1f9d4199f9773aa171d5`; sonic `0x4761516344e8e101c6c5f9448974ca847b1a9d3f`; sonic `0x54de113ad67718ba86ca8466b200fbf9200e106d`; sonic `0xb255ec73db8ce5511df5d7ab76c4a84cf7e1e876` | ⚠️ Unaudited |
| ZFOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x3ebf331e045128d05ec374e90dd6448d4400997f`; sonic `0x513ac02371110353758783e395fc056380ffddd2`; sonic `0x6066069ba7fb45fbce18342e68fbcb2b4e108e1c`; sonic `0x61e09bad074261004d906decfeaa47f1762e84ec`; sonic `0x7a2f54267702136498c5d8713992ee14450f42d7`; sonic `0xaeff85a3a5ac7d0ed840c3393d5c916cabc78838`; sonic `0xb6269059eef1b6b7d478752ed037bd0dd8197cbf`; sonic `0xd25b7aeef85483a6bd04d9a6a6dfb89effac3891`; sonic `0xf8850ee55f2ee1f5eb9a39478e73466339ccf360` | ⚠️ Unaudited |
| ZFRewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x66349deb1eb7d855894bfde287ac68d0eb2344fe`; sonic `0x807fa075158c49b2bed4e180aaa42e13fe3e795f`; sonic `0xb2d779585143b1daa6b0abd386909fac1bb74de5`; sonic `0xda85e083f4d8156ecdbc1c295892357022d23e8d`; sonic `0xfcc8d30c138f3859eba263696d8726c0725d3164` | ⚠️ Unaudited |
| ZFRewardDistributor | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-263903 | `0x78caac771dbf608553b8eb8d63c71821cbdbc5d5` | ⚠️ Unaudited |
| ZFRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-263907 | `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` | ⚠️ Unaudited |
| ZFRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5cf2b71b8b368c84c4c4903af453e790d392285` | ⚠️ Unaudited |
| ZFStableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x447fd2fab1985bb80b477cf186f216fc72b90c50` | ⚠️ Unaudited |
| ZFStableSwapLPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5271d6f66d4d881421fc2b1c48d4f99a9ba1d04c` | ⚠️ Unaudited |
| ZFStableSwapThreePoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc19a303f856847e60aeddfc5b773017110b06e37` | ⚠️ Unaudited |
| ZFStableSwapThreePoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x734711633ef2c9a2386be0ea1c010b06fb3b94aa` | ⚠️ Unaudited |
| ZFStableSwapTwoPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf43fc445204174ea98cf45b21504463d32c28189` | ⚠️ Unaudited |
| ZFStableSwapTwoPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9829e43951319848e0a78540ff1de77ac20a7f6c` | ⚠️ Unaudited |
| ZFSwap2EarnRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362`; sonic `0x43589b9ff1a9a93e5d571409b77e46c549b15843`; sonic `0x4784a5443c440f7431b3079d97becb0bdc3a96b7`; sonic `0x750591d7919fcb0fdee30f139799a63f8693155b`; sonic `0xc98628cc4cc8bf606e247bacb8cfcf33151e453c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (74)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ad6bced212aef5935ade659c24f09300c35168a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-263896 | `0x1e9ebcb695c0cae7e16f36f4d7f15f6935fc6e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x273fff79df4ef632ac5837f52af03b7f1aeb88cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-263899 | `0x3ec4879991d51338d2a2d037f4dad439570cf971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45728a3d03ff67cc0c8546f4290affb7c94f877a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ebdc33a0da4e30bfb96a98be20a23be30a45644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8328ea1851057a291dc3281dfb6780d650ef1434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xced35925a87990e3b06a63ff4dae82e159ceda27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xead5492f35c0d89668b89bb85b5ca3ea45c83bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x010012918cb9618ae4ba2abc0113216d1639e069` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263910 | `0x056f1960b5cf53676ad9c0a7113363a812dc0c8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263911 | `0x0d64c4eb0547c1f51b78fb1a53583dc9042238c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263912 | `0x1191bfc116fede5dd0b6e83fac7b0031d07a0df6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263913 | `0x12c944515f766baa62fd334efda6bdbd799adf4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x13bd7a61b46950ff0e9b41571dc4c503ee854042` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263914 | `0x1420963c2367eb21ff06511910946794d898c08c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263915 | `0x15309aaf4fedf346e5204331027b4ef7b75b1dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263917 | `0x1a5fb6977bcd9e5e16a7faba15134a1a6ca4a0c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263918 | `0x31c330f2febda65693ec8801b77a93c6d1f479e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263919 | `0x386befa6a54f9685ae85871aa47056891d63c54c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263920 | `0x3a76e377ed58c8731f9df3a36155942438744ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263921 | `0x3b3393ed6b51a8c130598558526c7bbb26da415b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263922 | `0x40ad8e452b87381adb6c088fb80173b80752ed65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263923 | `0x4305cf9f4ad5427d6614e7207803e2426497917a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x4700347e98c9c8a0c63a865575dff34088c473d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x4780ea7fc1fc4c51732ab31d797d4e24757c2262` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263924 | `0x484a72b4879ac8b04652b51bf1d1c110077990a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263925 | `0x4ca2ac3513739cebf053b66a1d59c88d925f1987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263926 | `0x525990769c271b1a0ab0b5158d7062be54e4983d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x571407034da9373d24ffbd2e41d9bf2879c5ddab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263927 | `0x57d28af38d126befebfde996b7cdc34d58ad4cfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263928 | `0x58d8dd00b25f6557698d37784029f736c63f3c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x5ae21af1d601e559700f15f19f464ade021f6eb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263929 | `0x5ca90e8c00db9402c84801a83f1fd24ddda72c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263930 | `0x61278adbbe823dd30675248e78f34e90c648ea9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263931 | `0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263932 | `0x6521385ce3bf30de58e402e5aed567b436736a75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263933 | `0x65300d6776939774815c0c2f1195b13254586a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263934 | `0x65ea05bc443a87518dd76d6c492e31299563987b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x6f4fc76b34901275903a0e7eb27b32bec5e4c215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263935 | `0x74394479510834e1f1bf2ad91b30383505745228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263936 | `0x79354d5bf9dcda1d06fa555c240f3f1573f1eaf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263937 | `0x7ab61748af61e0588296b6edf5c80ef5d0b6bbc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263938 | `0x80190359df6adcc017b38372bf4c20884b0d8c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x825e625af71404a40f5c1ef9a03095574dff1e13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263939 | `0x82e07a1e88f76e5934e1772cfd2a6abce1d6bf11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263940 | `0x876cfcf817d031703b83c13fe0e7838e8c5aabca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263941 | `0x8770ad37cb19ac99ed86a49f2982592c323c17be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263942 | `0x88add6a7e3c221e02f978b388a092c9fd8cd7850` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263943 | `0x97f03b2f6246da8ff336f37ad3b047f7c3f74e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263944 | `0x9f20a1ce3b66ebef612cbfa854c8f2dbf664ea28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263945 | `0x9f9d043fb77a194b4216784eb5985c471b979d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263946 | `0xa478bf3f621d47e6753f463711630c282d2803ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263947 | `0xa9e411d26df48d6871e966da84af878425a8e100` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263948 | `0xaab6e2b06961927eb1665f0b2566170c71be50d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263949 | `0xabca8cfdfa2a4285a4704bf960fb45e49821762f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263950 | `0xae3af55a2c589421f6693b6afca11d9a5ca34783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xb392e1c972b23e8ee5890a89e23d5f9bf4097f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xb71dca272468180bc38f3c034283a9bba7f961e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263951 | `0xb76f089a491f3e2d09ace7537bc422a11af66b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xc008dc6e8ff71217f75cdc95cc1ab9c7959c0269` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263952 | `0xc824f2cce71350cc5ece6c699c72baba75103907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263953 | `0xc93397f26886dab0d752c86612c78dbd2c1d5a59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263954 | `0xc9e2c117163ac4f85ac244bd4042a56d86756900` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263955 | `0xcd6121185a98370be32d71f60a910de0d733946f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263956 | `0xce043a95f415d7873585e92904ea11955ba38fe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263957 | `0xcf7c16b82d0366ed8421a6bc71a56b97d7e5ff35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263958 | `0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263960 | `0xf1802d9a70bdc6f6effd65d44b33226ee0e6a821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263961 | `0xf560df1cafb0da08ecb1f9e244c68640b701e53e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xfe6b0136fb9b5993dc840371cc8bee83a46a41b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263962 | `0xff16eaec9047eaefd32b3a308057ff21ccf5cf22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263963 | `0xffd6f258a53a4295dbf5be90e6a7f58aef2d38f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263964 | `0xffdef45585b57e294487c72f01043d5dee3f069f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/zkswap-finance](https://skynet.certik.com/projects/zkswap-finance) | CertiK | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [ZKSWAP FINANCE AUDIT REPORT.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/main/ZKSWAP%20FINANCE%20AUDIT%20REPORT.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | matched | 2 | 0 | 0 | 5 | n/a |
| [0_[Certik]_zkSwap_Finance_Audit_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/0_%5BCertik%5D_zkSwap_Finance_Audit_Report.pdf) | CertiK | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 0 | 0 | 4 | n/a |
| [Bailsec - zkSwap Final Report Github (+Resolution).pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20zkSwap%20Final%20Report%20Github%20(%2BResolution).pdf) | Bailsec | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [SmartContract_Audit_Solidproof_ZkSwapFinance.pdf](https://github.com/solidproof/projects/blob/main/2024/Zkswap%20Finance/SmartContract_Audit_Solidproof_ZkSwapFinance.pdf) | Solidproof | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Farm.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/Farm.pdf) | unknown | Audit | 2024-01 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [GovernanceStaking.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/GovernanceStaking.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/audit.pdf) | unknown | Audit | 2024-01 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [**SolidProof TrustNet:** [****](https://app.solidproof.io/projects/zkswap-finance)](https://app.solidproof.io/projects/zkswap-finance) | SolidProof | Audit | n/a | unknown | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/1_%5BVitalBlock%5D_Zkswap_Finance_Audit_Report.pdf) | VitalBlock | Audit | 2023-06 | stale | Direct | address | matched | 2 | 0 | 0 | 0 | high |
| [2_MythX_DEX_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/2_MythX_DEX_Full_Report.pdf) | MythX | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |
| [3_MythX_TGE_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/3_MythX_TGE_Full_Report.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [4_MythX_Token_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/4_MythX_Token_Full_Report.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [5_MythX_Farm_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/5_MythX_Farm_Full_Report.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [6_MythX_Galxe_Campaign_Pool_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/6_MythX_Galxe_Campaign_Pool_Full_Report.pdf) | MythX | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [7_MythX_yZFToken_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/7_MythX_yZFToken_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [8_MythX_ZFGovernanceStaking_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/8_MythX_ZFGovernanceStaking_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [10_MythX_ZFPaymaster_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/10_MythX_ZFPaymaster_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Original_MythX_ZFFarm.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/Original_MythX_ZFFarm.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Original_MythX_ZFGovernanceStaking.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/Original_MythX_ZFGovernanceStaking.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Original_MythX_ZFRouter.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/Original_MythX_ZFRouter.pdf) | MythX | Audit | 2023-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3152] skynet.certik.com/projects/zkswap-finance — matched: No reason recorded
- [3156] ZKSWAP FINANCE AUDIT REPORT.pdf — matched: No reason recorded
- [3157] 0_[Certik]_zkSwap_Finance_Audit_Report.pdf — matched: No reason recorded
- [3158] Bailsec - zkSwap Final Report Github (+Resolution).pdf — matched: No reason recorded
- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf — no match: All contracts listed in File Overview section are in scope. Audit date is 18 March 2024 from cover page and version log.
- [14821] Farm.pdf — matched: Only ZFFarm contract is in scope; other files are dependencies (OpenZeppelin) or not audited contracts.
- [14822] GovernanceStaking.pdf — matched: No reason recorded
- [14823] audit.pdf — no match: Only ZFToken.sol is the custom contract in scope; OpenZeppelin imports are dependencies.
- [30492] **SolidProof TrustNet:** [****](https://app.solidproof.io/projects/zkswap-finance) — matched: No reason recorded
- [30495] 1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf — matched: Scope explicitly lists ZFFactory.Sol and ZFRouter.Sol as the only files in scope. Audit date is June 30th, 2023 from the final report date.
- [30496] 2_MythX_DEX_Full_Report.pdf — matched: Extracted from MythX report summary table and analysis details.
- [30497] 3_MythX_TGE_Full_Report.pdf — no match: Two contracts explicitly listed in scope: ZFLaunchpadNative.sol and ZFLaunchpad.sol. Audit date from report header.
- [30498] 4_MythX_Token_Full_Report.pdf — no match: Single contract ZFToken.sol audited by MythX on Aug 19, 2023.
- [30499] 5_MythX_Farm_Full_Report.pdf — no match: Only one contract (ZFFarm.sol) is in scope; audit date from header 'Sat Aug 19 th 2023'.
- [30500] 6_MythX_Galxe_Campaign_Pool_Full_Report.pdf — no match: Only one contract file ZFGalxePool.sol is in scope.
- [30501] 7_MythX_yZFToken_Full_Report.pdf — no match: Only one contract yZFToken.sol is in scope.
- [30502] 8_MythX_ZFGovernanceStaking_Full_Report.pdf — matched: Only one contract in scope: ZFGovernanceStaking.sol. Date from report creation timestamp.
- [30503] 9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf — matched: Only one contract in scope: ZFSwap2EarnRewarder.sol
- [30504] 10_MythX_ZFPaymaster_Full_Report.pdf — no match: Only one contract in scope: ZFPaymaster.sol
- [30505] Original_MythX_ZFFarm.pdf — no match: The report explicitly lists the main source file as /farm/zffarm.sol, which corresponds to contract name zffarm. The audit date is taken from the report creation timestamp.
- [30506] Original_MythX_ZFGovernanceStaking.pdf — matched: Single contract Zfgovernancestaking identified from main source file. Date from report creation timestamp.
- [30507] Original_MythX_ZFRouter.pdf — matched: Only one contract file mentioned in the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/zkswap-finance | MetadataHelper | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/zkswap-finance | ZFFactory | own contract | ZFFactory (selected) `0xce98a0e578b639aa90ee96ed5ba8e5a4022de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/zkswap-finance | ZFRouter | own contract | ZFRouter (alternative) `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c0f738146fb694de18d1106bde2be040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 192d from audit; next candidate 495d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFFactory | own contract | ZFFactory (selected) `0xce98a0e578b639aa90ee96ed5ba8e5a4022de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFPair | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFRouter | own contract | ZFRouter (alternative) `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c0f738146fb694de18d1106bde2be040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 9d from audit; next candidate 678d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFRouterInternal | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZKSWAPFINANCE | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZkSwapFactory | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZkSwapRouter | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | MetadataHelper | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFFactory | own contract | ZFFactory (selected) `0xce98a0e578b639aa90ee96ed5ba8e5a4022de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFLibrary | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFPair | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFRouter | own contract | ZFRouter (alternative) `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c0f738146fb694de18d1106bde2be040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 192d from audit; next candidate 495d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFRouterInternal | unmatched — not counted | — | — | no |
| Bailsec - zkSwap Final Report Github (+Resolution).pdf | ZFGovernanceStaking | own contract | ZFGovernanceStaking (selected) `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapTwoPoolDeployer | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapTwoPoolInfo | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapTwoPool | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapThreePoolInfo | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapThreePoolDeployer | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapThreePool | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapRouter | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapLPFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapLP | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | TransferHelper | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapRouter | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapLPFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapLP | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapInfo | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapDeployer | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwap | unmatched — not counted | — | listed in File Overview | no |
| Farm.pdf | ZFFarm | own contract | 0x9f9d04… (selected) `0x9f9d043fb77a194b4216784eb5985c471b979d67` — deployed 2023-08-24 07:07:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GovernanceStaking.pdf | IZFToken | unmatched — not counted | — | — | no |
| GovernanceStaking.pdf | ZFGovernanceStaking | own contract | ZFGovernanceStaking (selected) `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GovernanceStaking.pdf | ZFToken | unmatched — not counted | — | — | no |
| audit.pdf | ZFToken | unmatched — not counted | — | listed in scope source files | no |
| 1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf | ZFFactory | own contract | 0x3a76e3… (selected) `0x3a76e377ed58c8731f9df3a36155942438744ce3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf | ZFRouter | own contract | ZFRouter (selected) `0x18381c0f738146fb694de18d1106bde2be040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2_MythX_DEX_Full_Report.pdf | ZFFactory | own contract | ZFFactory (selected) `0xce98a0e578b639aa90ee96ed5ba8e5a4022de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2_MythX_DEX_Full_Report.pdf | ZFRouter | own contract | ZFRouter (alternative) `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c0f738146fb694de18d1106bde2be040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 27d from audit; next candidate 660d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3_MythX_TGE_Full_Report.pdf | ZFLaunchpadNative | unmatched — not counted | — | listed in scope table and analysis | no |
| 3_MythX_TGE_Full_Report.pdf | ZFLaunchpad | unmatched — not counted | — | listed in scope table and analysis | no |
| 4_MythX_Token_Full_Report.pdf | ZFToken | unmatched — not counted | — | listed in scope as main source file | no |
| 5_MythX_Farm_Full_Report.pdf | ZFFarm | unmatched — not counted | — | Main source file and contract name referenced throughout report | no |
| 6_MythX_Galxe_Campaign_Pool_Full_Report.pdf | ZFGalxePool | unmatched — not counted | — | listed in scope as main source file | no |
| 7_MythX_yZFToken_Full_Report.pdf | yZFToken | unmatched — not counted | — | listed as main source file and in scope | no |
| 8_MythX_ZFGovernanceStaking_Full_Report.pdf | ZFGovernanceStaking | own contract | ZFGovernanceStaking (selected) `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf | ZFSwap2EarnRewarder | own contract | ZFSwap2EarnRewarder (selected) `0xf5df07accb7f319016e81d10a0acf3882af47113` — deployed 2025-07-26 07:23:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 10_MythX_ZFPaymaster_Full_Report.pdf | ZFPaymaster | unmatched — not counted | — | listed in scope table and findings | no |
| Original_MythX_ZFFarm.pdf | zffarm | unmatched — not counted | — | Main source file listed in report summary and analysis details | no |
| Original_MythX_ZFGovernanceStaking.pdf | Zfgovernancestaking | own contract | ZFGovernanceStaking (selected) `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Original_MythX_ZFRouter.pdf | Zfrouter | own contract | ZFRouter (alternative) `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c0f738146fb694de18d1106bde2be040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 27d from audit; next candidate 660d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3` | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc9c49728a43bbf0f804ef56becd081137fc85849` | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2e11640ee1368f2cd90c36607760a274a30094f5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| zksync-era | `0xe8a9c651c29469f0de2ce0506002828a7e683860` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x78caac771dbf608553b8eb8d63c71821cbdbc5d5` | ZFRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` | ZFRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16
- Match method counts: address=3, temporal_name=5, unique_name=15

Zero-match audit list:

- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf
- [14823] audit.pdf
- [30497] 3_MythX_TGE_Full_Report.pdf
- [30498] 4_MythX_Token_Full_Report.pdf
- [30499] 5_MythX_Farm_Full_Report.pdf
- [30500] 6_MythX_Galxe_Campaign_Pool_Full_Report.pdf
- [30501] 7_MythX_yZFToken_Full_Report.pdf
- [30504] 10_MythX_ZFPaymaster_Full_Report.pdf
- [30505] Original_MythX_ZFFarm.pdf

Fork inheritance lineage and inherited audits are included when available.
