# Agentic Audit Brief: Rezerve

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rezerve (`rezerve`)
- Website: [https://rezerve.money](https://rezerve.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, sonic
- Contract surface: 183 unique implementations (542 raw deployments)
- Coverage basis: 1/27 confirmed own live verified implementations (3.7%); conservative 3.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,425,835.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rezerve. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid, sonic. Structural roles: 22 unclassified, 11 supporting, 5 core. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: unclassified (22), supporting (11), core (5)
- Contract kinds: contract (36), unclassified (2)
- Detected standards: ownable (8), pausable (4), erc20 (3), erc20permit (3), accesscontrol (2), erc165 (2)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (11), layerzero (7)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 41 contracts are derived from known codebases. 41 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000030d7a7c4888851f35705b0852cf20ac1ba6`, chain 1)
- UnnamedContract (`0x6969c3ca5142b9eca6141de577c50454326265b1`, chain 1)
- UnnamedContract (`0xb33f4b9c6f0624edeae8881c97381837760d52cb`, chain 1)
- UnnamedContract (`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`, chain 999)
- UnnamedContract (`0xb33f4b9c6f0624edeae8881c97381837760d52cb`, chain 8453)
- UnnamedContract (`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`, chain 8453)
- UnnamedContract (`0xb33f4b9c6f0624edeae8881c97381837760d52cb`, chain 42161)
- UnnamedContract (`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`, chain 42161)
- AppAuthority (`0x43a38a7ba3417d675b7a78bf026a9cf6fa45417d`, chain 1)
- AppAuthority (`0xf06b937708b9a20a62130b79a67f229ea65ef309`, chain 146)
- AppBurner (`0x641cac894b2fa76ffd8446a3f4014e3db0e287cc`, chain 1)
- AppConvertibles (`0xabb6bd7203caf779cfbc7f2714b699c822ef8195`, chain 1)
- AppProxy (`0x86143b33e3b946b50f89a6be7aec898074a5e1e9`, chain 1)
- AppProxy (`0xb1fd2da8914dc200bc4effd71713594caa88a2f8`, chain 1)
- AppProxy (`0xc09eff55a915188a848aa8316be36b5ef1096ee7`, chain 1)
- AppProxy (`0xcd43c9c6ecca33a0c3ef6e509f7559c5c5e46399`, chain 1)
- AppProxy (`0xd80bcabefca1334ec0c2ee110cb9213d72dd3622`, chain 1)
- AppProxy (`0xe148d8919309697d714b9f33b4624969a9a55f81`, chain 1)
- AppProxy (`0xfad35a07f9244abb4e2481f7d7c7bffcad10263c`, chain 1)
- AppProxy (`0x67a298e5b65db2b4616e05c3b455e017275f53cb`, chain 146)
- AppProxy (`0xa25f6ba0136c65e61200ebf0885ea8da022e83fa`, chain 146)
- AppProxy (`0xa5d26eebfadaede921f0a4e82cdd78f0c9e37da0`, chain 146)
- AppProxy (`0xe22e10f8246df1f0845ee3e9f2f0318bd60efc85`, chain 146)
- AppReferrals (`0xdc6455c938893642b92f9d838442786fcf664a8b`, chain 146)
- AppStaking (`0xf5df434c01802d7629ae80985ed2e60b7f8a920a`, chain 1)
- AppStakingMigrator (`0xe7a5777d6685fb126d209a39cc3da77fb2fab1aa`, chain 1)
- AppTreasury (`0xc913dcf0504eb10f5d5316c09c316c32ffbc49ed`, chain 146)
- BridgeL1 (`0x507427db12766d70445c85e683efd30143bf99df`, chain 1)
- BridgeL2 (`0xa48b9220a3673a83f9202e0d73659eb09da2a036`, chain 146)
- LoyaltyList (`0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e`, chain 1)
- lstRZROFTAdapter (`0xd3e536636ac493b9bf1f80de59dacf120bd74652`, chain 1)
- ProxyAdmin (`0x33812b28d85aaaf53e2661694199e512f3e08982`, chain 1)
- RZR (`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`, chain 1)
- RZR (`0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5`, chain 146)
- RZROFTAdapter (`0xe97493f0999f14d0f38293b55a316cf22af0b53c`, chain 1)
- RZROFTAdapter (`0x6419f05d56944dd140954be8ad9907304abb2f3a`, chain 146)
- sRZR (`0x5de77ccabc90b4681e83d0588fb91a54f8f70aaf`, chain 1)
- Staking4626L2 (`0x8b5ecb2352438c148c97a852694c21dd0351dab9`, chain 146)
- StakingDistributionLogic (`0x3e4df75d89c21a76718b1613a2967a3cd9b6e802`, chain 1)
- TotalReservesOracle (`0x90a2ca4d196fdb95a5d4c694ca87ceebc08a9ea7`, chain 1)
- YieldLogic (`0x739f4941b06ab58feb2415f6b9d4615308dc1b2c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 38; live-surface rows included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/27 (3.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 148 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 66
- Confirmed-live implementations: 35 of 183 unique; 148 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/147
- Verified + Unaudited implementations: 146
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 183
- Raw deployments: 542
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 0.7% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AppTreasury | unknown | project_anchor | own_supporting | 1 | sonic | unit-391746 | 2 deployments: sonic `0xc913dcf0504eb10f5d5316c09c316c32ffbc49ed`; sonic `0xe22e10f8246df1f0845ee3e9f2f0318bd60efc85` | ✅ Audited |

### ⚠️ Verified + Unaudited (146)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Adapter4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xb34d5ffe8ba8e476e981ce4e7d241dcd668a871b`; sonic `0x20bee53adb73440c7d4f9c9a015997ff548ed4c2`; sonic `0x7d280422779f7ebbd132614b659e721168a6337f`; sonic `0xe8ee6a87dacdbeeeea3f6159d4a797702d0c07d7`; sonic `0xe90a0ef0e246e284a0c7a51d8ee0429dba22537a`; sonic `0xf576c9cccb0244b4f0b11a99ecb357ce692d1ebc` | ⚠️ Unaudited |
| Adapter4626OracleModified | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec`; sonic `0xae494c2381de5e638ea605f151ecee345e6a73a8`; sonic `0xbab9e6c125569427c6688df56ab6d42a4b8e6be8` | ⚠️ Unaudited |
| AggWithStalenessOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x19e771531621b9132b93dcefcef3d048650827d3`; sonic `0x96f30259fd52d0068900093617e8bdf34befbe62`; sonic `0xd19fe4626d516c365749a3ab437177100deef229` | ⚠️ Unaudited |
| AppAuthority | governance | project_anchor | own_supporting | 0 | ethereum | unit-391716 | `0x43a38a7ba3417d675b7a78bf026a9cf6fa45417d` | ⚠️ Unaudited |
| AppAuthority | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xd4f70cd28a0fa5d4761dfdef4ee8adb56c03d8c0`; ethereum `0xd9af866add1ae78c5541a5592a693742e8bed0a2`; bsc `0x24a3e1141e7ffa85a1db35e2d633f83c0ce0dd36`; sonic `0x07249bd92625641f9e3dba360967c3b18ee28af2`; base `0xbaef85b0236f5af5c8e6e9d45dd9ac136f47a97d`; base `0xec7eb5ae8758a336073cf72fa60290e322b13457` | ⚠️ Unaudited |
| AppAuthority | governance | project_anchor | own_supporting | 0 | sonic | unit-391731 | `0xf06b937708b9a20a62130b79a67f229ea65ef309` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0194a4a5cdf9a7a070eeb10b30a7653d5780c12c`; ethereum `0x6a7f261d7a5955d9a31a97cd003e42ccabde4bff` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1d1861968c9ab8b57e3bed67df4ba8a9dc5ab516`; sonic `0x44b497aa4b742dc48ce0bd26f66da9aeca19bd75` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3a6ab92992b60d63fe624a2eb08a98e102b9a176`; sonic `0x7ad11d53c773026171ef237d166174ea92d713a0` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x401d83457951ef2c195d56e7d4a8f2d72c43bde8`; sonic `0x7fc2a1bd3dd5cf16ec8e0d07a66864ef95605974`; sonic `0x978c79056e655638866c5eba277d988a60be7afe`; sonic `0xabb67712d92d775202ff748b90f7ff9365239ec5`; sonic `0xca36616ffc16eae1f33783a8cd082f46d9f2d993`; sonic `0xfa4d29925afbc70ce85427a00a77066dc63fb902` | ⚠️ Unaudited |
| AppBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x851c4d7bad1e73a352215dbe2662040566c5a2da`; sonic `0xecb3ee2a50f1afd91f744814b1c6ec6e84950b9c` | ⚠️ Unaudited |
| AppBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x192dd78fcd1ec82f61bef9c29e05ce674e9520aa`; ethereum `0xaf721ad48f25ff6de491174d4fed8ae7e7044afc` | ⚠️ Unaudited |
| AppBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b`; ethereum `0x864f47e5a0407307e62e094601c73af378ea2e1a`; ethereum `0x9e84acb1a4c54f0ee44b80dc7d3f59743feb68a8`; sonic `0x635ad38f96aed1242dbb0dbb5e9125f560d87270`; sonic `0xb379b46a59ee581f56bf1e960ca8a8f849d2a9d4` | ⚠️ Unaudited |
| AppBurner | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391740 | 2 deployments: ethereum `0x641cac894b2fa76ffd8446a3f4014e3db0e287cc`; ethereum `0xc09eff55a915188a848aa8316be36b5ef1096ee7` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4b18d238802df30f80b48777dd5c7267ba52f7d3`; ethereum `0xc8e4e9ae990e0c7b0b21cf3b2b08e14eaf2c24f1` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51b1cbcd712c3bcfeb15e353838ccecaeea9284b`; ethereum `0xc3dfb111ef5a73868d475634265bfe90f4738e6f` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5682e70c1337143b9f617f5f64d8cce6b25abe53`; ethereum `0x65e9b4d340674f13034139bc5b537d101a3007c1` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x614699757fb3bfacd8a0d10d3b3205f1089993be`; ethereum `0x980940183de9702189870910ad0b868ccbdefdf0` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x718278d34a56bfde20afaa9d854b40bcd5ecb632`; ethereum `0x951de08ef855cf40708317db7e7505ac71b1fbee` | ⚠️ Unaudited |
| AppConvertibles | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x7a054cb4c8e89e36659640ba645347b607fd5e07`; ethereum `0xebb64c3c4d249d428fd470ba955f1cda56029d65` | ⚠️ Unaudited |
| AppConvertibles | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391742 | 2 deployments: ethereum `0x86143b33e3b946b50f89a6be7aec898074a5e1e9`; ethereum `0xabb6bd7203caf779cfbc7f2714b699c822ef8195` | ⚠️ Unaudited |
| AppOptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x13eea2582b9e3964a260452e08f580ce199bb056`; ethereum `0xf3590da00658e3d1682a92bc4736b5d85690090a` | ⚠️ Unaudited |
| AppOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391739 | 2 deployments: ethereum `0x220774755570147101bdcd995386f8f27654f1fc`; ethereum `0xd80bcabefca1334ec0c2ee110cb9213d72dd3622` | ⚠️ Unaudited |
| AppOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x438f98ef0df5520d1f81105f5ceed54919f69b66`; bsc `0x953e6bcccccf01ae151a627b4c77718ac8cfaa34`; sonic `0x82884801428895c2550ed1ca96997bd60f74b5cc` | ⚠️ Unaudited |
| AppOracle | unknown | project_anchor | own_supporting | 1 | sonic | unit-391744 | 2 deployments: sonic `0x2da785461180ebb25c211e03f10e3ce5099973ea`; sonic `0xa5d26eebfadaede921f0a4e82cdd78f0c9e37da0` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f91bcb53b1a4b992f2df82305be64231bc12090`; ethereum `0xa3751859cae1c3563b05660543632ced3b9f7d7a` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8977f19f143687d0f3c9cb2bbbc9396211bee05d`; ethereum `0xcad2d45b28c2521e706bceb4f480007be126ee13` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xda2056619a32d266b5132ae3ea1499d0d26fa9d6`; ethereum `0xf0d3e89c1007b0861099c0adcebe682c94c3116f` | ⚠️ Unaudited |
| AppProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: bsc `0x68bd2eadfdce9e865e4b8d10956afe8866c8de7b`; bsc `0xbb90dd74594e0cd23749cdb50928ae09d99d8cb7`; bsc `0xcb42725758a123d43c1332a9a525537399c8daae`; sonic `0x191fe4869a908404e82a3fc03ad5b4fa67c215bb`; sonic `0x2d707598b1541a6096adaedefdefdd5f33f1194e`; sonic `0x37dcfa2f774d9037839deaca5a8f0a22e69e4c13`; sonic `0x56ee21c18759c9280891556028a2d116cbbc779a`; sonic `0x5ec084ca20bb4370a5940855387bb165265426c4`; sonic `0xa0934ab5df1502275bb4a83fde00f259a23ca0a0`; sonic `0xf9fadee36b85ae08b7c639d4fb7b0d0ad6c0ae3e` | ⚠️ Unaudited |
| AppReferrals | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391737 | 2 deployments: ethereum `0x008311a411c6b9c4aab1053e7ff7056a0aef9c63`; ethereum `0xb1fd2da8914dc200bc4effd71713594caa88a2f8` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e984d738acc06fa1a2c5d6ee3e0930e669e8720`; ethereum `0xcc4df4feb0a74dad8f90368007ca6d789d188ae4` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x970df89c13b0eef9c1e1fc5a1927e15e7b3e5dd3`; ethereum `0xdc6455c938893642b92f9d838442786fcf664a8b` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x076d210be0faf9df327f286822c93acfe38ef95b`; sonic `0x4286862cd6cefe4c523fb3ff3b43cfd04ed243fb`; sonic `0x53476ae05dc51e640a1228f4629fc85fd58d7616`; sonic `0x62ed7494f658bcb74cc58612b94bbb1887ba1802`; sonic `0xbaef85b0236f5af5c8e6e9d45dd9ac136f47a97d` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3f30deb7d41bf5b603362e6512e2faf8e7c3ad1c`; sonic `0x4eec6d05f5e8021d3d77d5d07e7d4890b34574b2` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x41f4afa7c5a1d4d27aff3c3e14d12ae4c4f0aa95`; sonic `0x6fe169d781b11f987bab5c5756528358991b7872` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x53336331bff391d3eb6487b5f145f2a8f73286f5`; sonic `0xfad35a07f9244abb4e2481f7d7c7bffcad10263c` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x85ea814ef9314b5b73c3907f790f9a8de06540ed`; sonic `0xa4e05a1d9a8e57ce922e1dbd4f29b751375f2127` | ⚠️ Unaudited |
| AppReferrals | unknown | project_anchor | own_supporting | 1 | sonic | unit-391747 | 2 deployments: sonic `0xa25f6ba0136c65e61200ebf0885ea8da022e83fa`; sonic `0xdc6455c938893642b92f9d838442786fcf664a8b` | ⚠️ Unaudited |
| AppReferrals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xa366fca3052491ee056f564954a16dae169294db`; sonic `0xd3e536636ac493b9bf1f80de59dacf120bd74652` | ⚠️ Unaudited |
| AppStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391743 | 2 deployments: ethereum `0xcd43c9c6ecca33a0c3ef6e509f7559c5c5e46399`; ethereum `0xf5df434c01802d7629ae80985ed2e60b7f8a920a` | ⚠️ Unaudited |
| AppStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: ethereum `0x21dd4a4647c09f5662a7e764d167d65812dae56c`; ethereum `0x47c9f37ba07b63d17c609b87196fae77bc373f1d`; ethereum `0x57d105a5188a4df488abae8b9d648df35cf97867`; sonic `0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a`; sonic `0x0d0210ac2da3c8fde507712f785d16ea9cafe5e3`; sonic `0x2927f095003d5961a51394330f344fa6911b78bf`; sonic `0x5813a080792346497366b38d69a6577c7a59b1df`; sonic `0x5da4626179d040606da61cd62aeff7a31f0a7443`; sonic `0xa2233ab77292927947aa3c7fcacdc7a20410aa4a`; sonic `0xb003a60a87775f89f3ad717649530267a07e60f0`; sonic `0xb399384fac034ad61d3d8584d7326ad52cf4f92e`; sonic `0xca07863b815e9f73d5651ab90308980cffab93e8`; sonic `0xccb2e996deb0a5da69c1a2435e2e59a5b34a19b7` | ⚠️ Unaudited |
| AppStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x7b2947621a72af5d4d0f60bd75d98552fa40d064`; sonic `0xd060499ddc9cb7deb07f080baeb1add36aa2c650` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926680fac98c264f11f1d61849354f927a59606a` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-391725 | `0xe7a5777d6685fb126d209a39cc3da77fb2fab1aa` | ⚠️ Unaudited |
| AppTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7` | ⚠️ Unaudited |
| AppTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x00ff05abab62c88d5fa50583b08e35908b70db99`; ethereum `0x41d1cedaaa770ec7e1041a6f6c827a795bc85585`; ethereum `0x57626a0160a933513b49d199df5bff729275cc4c`; sonic `0x374fc873e4f8c8c43aa4bacf2110eee62dac1f0e`; sonic `0x5728b5f4c53604dc2d29641ac2e9c474ccb2936d`; sonic `0x953142e69402854e9925a497bac31ab10b23fa9a`; sonic `0x9ccab5d967cf834932ef9b22aa961392dc42e43f`; sonic `0xaa18877348b54665749f3ab1ad1844b956ffd49d`; sonic `0xdbaffaaa15d908afbbdfd74e154cf1d53fc1af58`; sonic `0xfb114366487570b2daa6a2bcc4019e0e52d58a6d` | ⚠️ Unaudited |
| AppTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb916d9c57685374a9286850e5b0c9b6bed74ee11`; sonic `0xe1d0f1c0afa8701b621fcc4f3cd43c2287e25351` | ⚠️ Unaudited |
| AppUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x0194a4a5cdf9a7a070eeb10b30a7653d5780c12c`; sonic `0x235911449281109880e6a989b63fca96c219753a`; sonic `0x33111921e3aa44570a72caad9762e5bc2b07813f`; sonic `0x582cef2f33cf2341d22c06fb4f3ab3b9195e3fbe`; sonic `0x8cf32e844b68808290949d3c7430c53b02f8fce2`; sonic `0xac98fbfc6a122a8dca466f93f749a8adf6d67a75`; sonic `0xb6c913b0ef644fdcdad407fcef2de8900b1e850d` | ⚠️ Unaudited |
| AppUIHelperRead | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 41 deployments: ethereum `0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3`; ethereum `0x1bb0c2447d5ed9f2eff69ed720fc64b2c3385298`; ethereum `0x1d5c9be907b1de0383e57e38778a5135c508aabd`; ethereum `0x2d707598b1541a6096adaedefdefdd5f33f1194e`; ethereum `0x2eafbc78c6d5e65db7b36249a716b5c45c35ebc2`; ethereum `0x344f23409ac5cbc55ff0b218784fc74b39f14379`; ethereum `0x45bc62b1f84edc10c31b6b6ca59e9ff0de46d1e0`; ethereum `0x49a7ed898edff24240b10f891fb9bcb8dcc4d34c`; ethereum `0x5b92233368f35b9cdf31b56901c38fce2e4dd0eb`; ethereum `0x71f5df4ae8d81c13ef99d32fc50a753711c946a8`; ethereum `0x88cc350f428f44de7665936e26ea68868c338c68`; ethereum `0xab6a743e3a9a39c6b8ce23bf3c32c9d5acfc107c`; ethereum `0xaf6053939e23f3d75ad35c3c6b529b3a3791aae2`; ethereum `0xb64c1ae74a3e51ee6cc0792807744b9eccb17f4a`; ethereum `0xc47d5010064987d17f825557bf85b4eac3da2b4b`; sonic `0x03658cbe90390308b2fe946b6feaa9d2e3150ebf`; sonic `0x157b01510ae8099094608553795db07b479ebd99`; sonic `0x36e1ade990ad99cf4a260f23908d3cdf0687296f`; sonic `0x372e22d4e71b7dce355f7bf30174685603ea7722`; sonic `0x3df95195bad8f48228f490f8591852502d50195d`; sonic `0x4853cd30fc3cc5a0a6426160031f11f4fd337e40`; sonic `0x4d5af9ff74acb67a3948f40d39c417c1d6c9aa5e`; sonic `0x5e67509db796588112b2992ccde55c55ebc70526`; sonic `0x6e984d738acc06fa1a2c5d6ee3e0930e669e8720`; sonic `0x6f94b2581d36348002a2fefabdf1fe8a05a061bb`; sonic `0x739119e444d50b079de993bdb684ee47df384e3b`; sonic `0x77b22066ab639892baece5986395002cc897fdfd`; sonic `0x80ea1f8c2035f29441dca5fb40a43ada0fefe434`; sonic `0x831c2a6448825e1eab6eb318bdf9c8e0d1203899`; sonic `0x8763b7216ca413517d6e3bcc164fc8906938ae71`; sonic `0x9181a1142d983e4f6ea3328c32fc8e975e5ae96a`; sonic `0x9426ca24a0060b7393aa9c65580c4a1b91721003`; sonic `0x9fb8fbff1cdf809cb967764270edcbef1a29e52b`; sonic `0xa2806674dcd29be2bc037cc23bdd6f4577860f44`; sonic `0xb377d3b9df69bc42b0cf1c68bccfa4fd81b4eba9`; sonic `0xb3d84a14afef07a2683af60666ef0e0e4ba9807d`; sonic `0xda2056619a32d266b5132ae3ea1499d0d26fa9d6`; sonic `0xdaa8572d9155c28457cde5c2235aeaf29372aa1b`; sonic `0xe1bcd3af9f7f8d7ed7fcc53469de0b98bd039a0a`; sonic `0xe70de19cee299399017c63172a6b704e92d9b376`; sonic `0xfef330c27c348a4ceb053dff9b1bb9f19d117788` | ⚠️ Unaudited |
| AppUIHelperWrite | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 38 deployments: ethereum `0x057dd3c385dea0a0268345c60ebf2065261d2df3`; ethereum `0x1ebcc99cea90ad9c64829672a64efb0e7992d849`; ethereum `0x34b05b58f29b304f38b48e092a77eafb64b493bc`; ethereum `0x4e3e26b7854c90a69aa4d09723225cdfacfe19bf`; ethereum `0x634f070da61d26bb51d1658df368657fa04ac479`; ethereum `0x66d7cee1fae41ffe755d3b9f2e8394643e1bab03`; ethereum `0x798c50bcd9979e1effbe83f142a224080dc297e1`; ethereum `0x82c874026b47875a70431f14afc65419c12a9ef8`; ethereum `0x833bce7273e980e999bf5ce0ea2ea0bf2b81e827`; ethereum `0x87fe4fa422edffc0e9e1a8bc0b9ece4009e34184`; ethereum `0x99a619ce54749926e2d248e84a818e7bb1c3b42b`; ethereum `0xabb67712d92d775202ff748b90f7ff9365239ec5`; ethereum `0xcad00c4862abcc1f76ffda846f5ccbc2de101849`; ethereum `0xce73b5cbedb469e5cb412f1786bba8fa7db94e69`; ethereum `0xe4c8c2b109b9e3c7ca2de7c898147479872d11d9`; ethereum `0xeaf22783d06c91a32f9856f142eca8aed6698557`; sonic `0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1`; sonic `0x18162cd345548f793ee8b8ca6651559ad1b49078`; sonic `0x26fb3f38486e9a78aab6e9057164dcdc35d8fc1c`; sonic `0x3b9663d16bc6582a87d6a8c3204a50e3b8622f4a`; sonic `0x4eec8b0c51a974eaa01bd7a5ac7765c4176e8da5`; sonic `0x5023a2472244a60904bdc135eb5b2fe9f6e7464f`; sonic `0x56e50cd5d4fc7a74127324daf321dd6818157c18`; sonic `0x5ad70179e88384ef75d63cd032d8df68afe3f7e3`; sonic `0x66eea73b2f1a6a9ea05f8c395a43721fb4c0ba5d`; sonic `0x7f65db983bc52ff3fa126c5f2b121fb234d7799a`; sonic `0x84a0b59457ede0fb5fbb21e15b7a52b6f27d6c5d`; sonic `0x9638eee6d491d1848f4f417fa90c2017ef9d89be`; sonic `0x970df89c13b0eef9c1e1fc5a1927e15e7b3e5dd3`; sonic `0x99a619ce54749926e2d248e84a818e7bb1c3b42b`; sonic `0x99e50a30cd5de21c1c72e79fc486a799fa7925db`; sonic `0xa7dbf3a19e6fd6f27e4045c06df811e01625ef27`; sonic `0xc5fcd90c83a09eba24d321eb2ad961c6fdd4e21c`; sonic `0xe236f3c0a1fc905615bc1f8b421ce0f5b55680ce`; sonic `0xeb6cde8ecdf053587689db8d0bebc34cd8808e25`; sonic `0xebb64c3c4d249d428fd470ba955f1cda56029d65`; sonic `0xed8ab58f036666b8843c811ea990055c49fadc39`; sonic `0xfd4ad1c79fe271167ff1096bd317f034ade2412a` | ⚠️ Unaudited |
| AppVeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2e917f56f369384192e959d6f0157c6dbcc46eb4`; ethereum `0xe26ca4e6390b53e1e9845586a2c7291f1d657bcb` | ⚠️ Unaudited |
| BalancerBorrowAndAdd | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03a33ded69e1c154267f1e6082804e901ded5cdc` | ⚠️ Unaudited |
| BeaconOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3df3004635eebd70644ae2c8e11e604d86f2fdcb`; ethereum `0xaa131b06baa5a1ed2c998c9978b4a3f4039169e4`; ethereum `0xb6cb302710592ffca18f2b09e4fb5fd4dcd0cb2d`; ethereum `0xc06091b8d134cfb06807724c737f719a7b5ee6f5`; sonic `0x953e6bcccccf01ae151a627b4c77718ac8cfaa34`; sonic `0x9e7a07869bbb8408d50316c63c210a689a10772b` | ⚠️ Unaudited |
| BeaconOracleV2CL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46e157ef92cde37c0f8044b65d892cbcdacaf10` | ⚠️ Unaudited |
| BlackholeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x5369135d0f9e661d7647d3b24b906d5fe9d4839c`; sonic `0xa063f97e1878f492c6104188ff99281caf760878`; sonic `0xe79451c3b29ca79d51736d2b5c7a66efe687e65f` | ⚠️ Unaudited |
| BlankProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa597e758b25bd077dbab880c712f49df170b803c`; sonic `0xc80e1eddd78e9c4238b19c4a41225a780b78f9fc` | ⚠️ Unaudited |
| BlankTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b0cc0544f4ac0b4e61356de1599c216341a80d` | ⚠️ Unaudited |
| BoostedBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a41ec2c6477fd7943397790ae5fc3a09876b14a`; ethereum `0x7441236d4832f4abae20c69ffd311848400d0e7c` | ⚠️ Unaudited |
| BootstrapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x397c754691db1d66b668d85ef9adbcb5937d0b0d` | ⚠️ Unaudited |
| BridgeL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x023f2046ed950318879b3ae0d8d8003ba8d47689`; ethereum `0xa0934ab5df1502275bb4a83fde00f259a23ca0a0` | ⚠️ Unaudited |
| BridgeL1 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-391717 | `0x507427db12766d70445c85e683efd30143bf99df` | ⚠️ Unaudited |
| BridgeL1Reader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x53f996129f35c456f2d4993c66382b2cb02fa879`; ethereum `0x5aa0bd971fbf458ec04477a3ac92f191aebe3a38`; ethereum `0x73fe952052dbb01b51e19b73a4e56a0d4d82c1c1`; ethereum `0x9096e14681ec9d4024982668a6b9c47b72862f32`; ethereum `0xaae0f787f9a0b50cd13253d9659cd9b906aac097`; ethereum `0xb0c897f8f8842a719453da4d5a5ed6b2ce79b51b`; ethereum `0xc38115d85392b1b26b8061c78a4d0ac64ff92f56`; ethereum `0xf818d606a968c28a887c924e1c0997b45390be5b` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3eda1dc8769ad14aa54986a979f823742082db86`; sonic `0xa202dbeee430924dc4f4630204a700e6b50edb4f` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x494f9a97d1eeb8a7971d60dcd39ba7fefa395a96`; sonic `0xdb6da6ee4a23fabe1c20f63bb60ad72c61cf8b48` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x87d2c8bc9787041e4a4d0c9fb7596d99b6688082`; sonic `0xc569a3d1465330f9ca4853e9f9a4ff4cc2c41105` | ⚠️ Unaudited |
| BridgeL2 | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-391728 | `0xa48b9220a3673a83f9202e0d73659eb09da2a036` | ⚠️ Unaudited |
| BridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: sonic `0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7`; sonic `0x978dd68672fd97596e6775e2011a5e992936f105`; base `0x21d7841a14f97577463663d8ac54fd725b531f0c`; base `0xb6b8fca7e9461319ce9f6a45849931dcc59b7a5a`; base `0xb6c913b0ef644fdcdad407fcef2de8900b1e850d`; base `0xbbdab89f9261e97154f483bb4c3dee75abb6a14f`; base `0xdc8fb9cce670cea8b56a3a6d422e2f8c5b215943` | ⚠️ Unaudited |
| BridgeL2Reader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x0082191c9cb127f69411ca49286a7c5ced67af7a`; sonic `0x3253010d394b7b464e7aff1a0f68df111ae5c421`; sonic `0x4d174511d7e8191c463c8e3d6ff5027e0c65975c`; sonic `0xb2bbdbe693dc69ee909bc787466176c7f8ecae6a`; sonic `0xb49dd7086f8945648da3df0687dd253910c04328`; sonic `0xdcd067bf5dc1b4b854b4ec858fb8afd23da20506`; base `0x166172d19f1f9e7435ff4093566f95dd3c4e329e`; base `0x52422b27eeaf739abb1390ab7a6a513e64dc7d55`; base `0xe86878b3d25e5a4ba7e3f72e7a1a9c735ec6617b` | ⚠️ Unaudited |
| BridgeUpdateExecutor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2f0a4803811db8bf12d92e3322343d5e6e790b2b`; ethereum `0x406cd1af62eea6bd0294d5a9a578f96462f12057`; ethereum `0xdb8668faecb7997797d713215f40affa683a9418` | ⚠️ Unaudited |
| CappedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b`; sonic `0x2c23ece71d543468980603d0fab656174578be5d`; sonic `0x6cfbedaa40f3e9564553964449e0cf60990fcbd2`; sonic `0x7c52458a269c7716ac434107df469f90592e872b`; sonic `0x88da96f84a293727fe42a3ddf9ebbabcecb8e887`; sonic `0x894d52760ffc1863967f3246a5e44adda2723a73`; sonic `0x906a4ebc008fd24ac92690ec1faef30c45a65897`; sonic `0x98f1af60d0c75a870b38efecc4106d6967bce929`; sonic `0x9e65fda235603b6b9dc2e8cb60f0ec45c638296a`; sonic `0xa13584e2181e0cdf0dd413ef78f3d00585274fd6`; sonic `0xbaeb5800f47462283b2da273a5688246fdc31fe4`; sonic `0xc5050f7827f793f3b35dbb48478b58ef1c4bcc4a`; sonic `0xe0c7eed135092fe5535bfa3be4fecebb59bc2423` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0x55b3e08c4cebdc50dbfa013c0c4760a52bd74328`; ethereum `0x8d5c278be06f7d3fc676ab2cb7278446306c78cd`; sonic `0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4`; sonic `0xdbe8006b72f415d70d1884e569fe618f3f465a48`; sonic `0xf83b913f7c1c396d454922d8af9423894b395a21` | ⚠️ Unaudited |
| DiaAdapterOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9`; sonic `0xd38199e00905062c0953e1da403d1c748af066a1` | ⚠️ Unaudited |
| DiaAdapterOracleCapped | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x114fd46ca2e90ca723f578ffdb76023e27cc77ee`; ethereum `0xce849e6defeb0759aa5d7c9db013a0de6ef7d373` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9`; ethereum `0xe1fd04511671e43617e9c7e9759a7e11c8fb6a51`; ethereum `0xfb180068950d6d7a075051b314a0e0426c83702a` | ⚠️ Unaudited |
| Euler4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x57e67762c06b4ba665c6d93eac4d74bfb3906524`; ethereum `0x72545e019956d05acecdb6c36ca940bcb01a84f4` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad`; ethereum `0xbafc1a885e25c6f594e06f12edaeb46858547724`; ethereum `0xc42d337861878baa4dc820d9e6b6c667c2b57e8a` | ⚠️ Unaudited |
| FixedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x05710c203c00a0a1325436930deb4d1edf1b24ff`; ethereum `0x25d77a9850374d5781ef5b998328cafbade451a8`; ethereum `0x56fe1dc3a15efa761c4584726f0cda7f7c36a1d7`; sonic `0xa26e1e01150abc562323253c109e5b265f7578ca` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37`; ethereum `0x7cefd682139d9c2f6b645eab75f509378e3a83b5`; sonic `0x6811c1411de6c702975d4410fee2ae62119e1749`; sonic `0xc3ff0862dc9bac0c6638e3cf449b30d5e98af153`; sonic `0xdb7cb0e0f0d374a0c3b5a1270a4ce6fce603367b` | ⚠️ Unaudited |
| HoldersAnalysis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x62006cf760bf38c00a0cabf8cef9b1d85fb65345`; ethereum `0x8d0e2796c7308241a3ce118d2221cd5a3e49dc01`; ethereum `0xa43f77ce428057cb9de49891e169d2e1d6193f22`; sonic `0xc24c31ebd2445535ebb4a7e67711d7e3638a2a58` | ⚠️ Unaudited |
| LoyaltyList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391721 | `0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e` | ⚠️ Unaudited |
| LoyaltyList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf4254e1699035571a9d061870c677b75fb443318` | ⚠️ Unaudited |
| lstRZROFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-391724 | `0xd3e536636ac493b9bf1f80de59dacf120bd74652` | ⚠️ Unaudited |
| lstRZRSpotAggregator | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x424229c11707dbebb48d855d0fbaa8432f3f12c0` | ⚠️ Unaudited |
| ManualOracle4626E18 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x149f01cb92a8291fea2d81a3f9eca31c4a375200`; ethereum `0xa34d67567db0b2961fea30bc9ee9308825cb606c` | ⚠️ Unaudited |
| ManualOracleE18 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 17 deployments: ethereum `0x61e3af572a90943022e158a39d3d4b4eb03748ca`; ethereum `0x7ca0244dfc7c4cd024e66e805c9fcaae45588357`; ethereum `0xa54088ffd9f543a33d1383ac96390db35f00c6f5`; ethereum `0xfedfeaf9223e3b9343489aa1b9d0b414e417418b`; sonic `0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6`; sonic `0x24a3e1141e7ffa85a1db35e2d633f83c0ce0dd36`; sonic `0x501e10bfd3ef0f5d68c7cd520028001c5b7fe84e`; sonic `0x55c06ba2782ab623b0c9ff5164fbff50a0d65cbf`; sonic `0x5c2c88a9eb75e2b853b706c63446e3227597923f`; sonic `0x6fbd094e01c3ce638bec3b402ddc0c49bcde00c6`; sonic `0x77b98aeca6e3937873a9c4ff02c3e020cdf698ba`; sonic `0x7bb3e8a5767f3d5776da3c4270f649910a975f89`; sonic `0x818d2df6070a785894f9859ea9c4b20324122020`; sonic `0x8a6493b6d39c8515ca0ecdabc67e9b736ded0ac7`; sonic `0xa08c57f9a504d7de0a234d07228c5f5247438724`; sonic `0xb15a7ec9184b6945906afe016e00403d2a4fb46c`; sonic `0xd693dc5e77101ead6b3cd13fc931e5fd85bee79e` | ⚠️ Unaudited |
| MoveTreasuryPosition | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3568b8a04611328ff525705a18e4f5ae2677937e` | ⚠️ Unaudited |
| OracleV2CL | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75` | ⚠️ Unaudited |
| PermissionedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x00eec211868718f67b1d414fb8607afb7e3dea69`; ethereum `0x34abce2dd540b7ad93aa68beb3754f47273c7314`; ethereum `0x3ab51ef452a9dafa7a11505f47c0d9455e6686ce`; ethereum `0x45e5f6c194f7ab9b47dcf83f7521a6bcb726fb20`; ethereum `0x63e52e207eb293a39d16448e3b08512f60337d10`; ethereum `0x70c52a805cc47b17959990c56e45ba97c967ea14`; ethereum `0x9a7ba73c6466d22272698882c2d1a2b843b2998c`; ethereum `0xa599be93507e7e3509b14db1fd2e69e504649f16`; ethereum `0xc3a45e6a0478de0aba0c58572b825bb50d45e1c6`; ethereum `0xda51cc269b840a1a02acbd263751d9e2283df0d0` | ⚠️ Unaudited |
| PermissionedERC20Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0df76fe19b0f9e1603df6f7381e57014dc74494f`; ethereum `0x26d6edd1d9b5255208ad88ef3aca47e9abf0f3c3` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-391714 | `0x33812b28d85aaaf53e2661694199e512f3e08982` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | sonic | unit-391730 | `0xd9af866add1ae78c5541a5592a693742e8bed0a2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: bsc `0x9e7a07869bbb8408d50316c63c210a689a10772b`; base `0x07249bd92625641f9e3dba360967c3b18ee28af2` | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x3a6ab92992b60d63fe624a2eb08a98e102b9a176`; ethereum `0x51e1e58a28b4b493ebe00b3c26c8fce55542504b`; ethereum `0x7d2ed26f30aa2a920ac0657ec735c05b9220fef4`; ethereum `0xe2fbda05bdd706750676bebfc95821a0e4bf33d0`; sonic `0x379b70ef4af6cbb548b210730082841eeee30805`; sonic `0x5547ed11d6b782eaf720a91344cc8d0cd444caab` | ⚠️ Unaudited |
| RebaseController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x01c8afb4dd61821f8ce88b3739493ffde6948095`; ethereum `0x18162cd345548f793ee8b8ca6651559ad1b49078`; ethereum `0x2aee5c406b3c4e06e30105f25a44d180b6db66e6`; ethereum `0x92a65e26f7801755c71984b3ff0f9bad1c78b563`; sonic `0x1be068f726107cb66ab611cf18ab68bbf1147440`; sonic `0x2f567cef93e73e625892d563444c9cea0ea9ac54`; sonic `0xcad00c4862abcc1f76ffda846f5ccbc2de101849` | ⚠️ Unaudited |
| RebaseController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391738 | 2 deployments: ethereum `0x096bb245a46ec8ceaa7e0fdd6c0faad754b53276`; ethereum `0xfad35a07f9244abb4e2481f7d7c7bffcad10263c` | ⚠️ Unaudited |
| RebaseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bb2bacb1da0dc557c8bcbd72e8cb8fd9e475031`; ethereum `0x4c7e55437699cf832a9d2449c7737dbd6700eb13` | ⚠️ Unaudited |
| RebaseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1ebcc99cea90ad9c64829672a64efb0e7992d849`; sonic `0x344f23409ac5cbc55ff0b218784fc74b39f14379` | ⚠️ Unaudited |
| RZR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391723 | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | ⚠️ Unaudited |
| RZR | unknown | project_anchor | own_supporting | 0 | sonic | unit-391729 | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | ⚠️ Unaudited |
| RZROFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-391726 | `0xe97493f0999f14d0f38293b55a316cf22af0b53c` | ⚠️ Unaudited |
| RZROFTAdapter | adapter | project_anchor | own_supporting | 0 | sonic | unit-391727 | `0x6419f05d56944dd140954be8ad9907304abb2f3a` | ⚠️ Unaudited |
| RZRSpotAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x61720115a507d7903e5b5cdf9d4644a6b90847bb` | ⚠️ Unaudited |
| RZRTWAPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x81707a5ce2139df7f7d768b4d581fd82bd800609`; sonic `0xb8cdaf01385ab75464cc5b0e9441ae823dc75c99` | ⚠️ Unaudited |
| ShadowAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3`; sonic `0x641cac894b2fa76ffd8446a3f4014e3db0e287cc` | ⚠️ Unaudited |
| ShadowLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b1fc5bf99e8700f5fbb33d535e76c475e47ea21` | ⚠️ Unaudited |
| ShadowLPOracleSecondary | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x41f145701a711d87ddc07e210dff6d751dcc8284`; sonic `0xa1ef32e1c9c67d0509c6918a89d41096a1bf908d` | ⚠️ Unaudited |
| ShadowSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e47adc1fb8d00e25ad4ae5b7a8d383ad216e90e` | ⚠️ Unaudited |
| SpectraLPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: ethereum `0x8a3f01002570337846ea7f2d867638e3d60f9333`; sonic `0x4825c54beeb5f4d6110126fa48025316723ebcaf`; sonic `0x69357b8880cc7b9aa89feb477216cbcd868ffb37` | ⚠️ Unaudited |
| sRZR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391718 | `0x5de77ccabc90b4681e83d0588fb91a54f8f70aaf` | ⚠️ Unaudited |
| sRZR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x33812b28d85aaaf53e2661694199e512f3e08982`; sonic `0x470ce7efcd7a259cec1b0391a99d812ae9f96710` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x219ac40f6d3d20c58e804ea4c4dff21701dbe5cc`; ethereum `0x41143414e2ed35edd96d99adf2a992d5fd01af8c`; ethereum `0xa57756569152df3c31e1a9197e2fc890c695d45e` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: ethereum `0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc`; ethereum `0x5aac502fbdc87622585640bd0b5f4fe2b5dfe3cc`; ethereum `0x6521fa2602d0722c6a02b009732ec0001a029f05`; ethereum `0xd6940e909c79bb9c0c74ac3b7091119e891cfaf5`; sonic `0x008311a411c6b9c4aab1053e7ff7056a0aef9c63`; sonic `0x5a9d599e6678ca62216f94190fbd126d542e1359`; sonic `0x73bc7877fccff37bbdd2c47a4924b66c607cf0e6`; sonic `0xc38115d85392b1b26b8061c78a4d0ac64ff92f56`; sonic `0xc8889cb22d374ee61da185d60e9eeef8f1f982e2`; sonic `0xe9cfb9c91077d8c44c1395971e1b0129890e0bf1`; sonic `0xed129a05430caa8b05e7ec48e6273a14ea7ef9ec`; sonic `0xee386d20f48cf77796aaec6feda4585572bee2f0` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x06f9617e604019af5e28c9e2e75f0886bbdc03ae`; sonic `0x7d94f364a5ff81ece1981ba644dca00d234508d2` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x429280474fbd8d8cad7be0a7287b2f78ce36f18f`; sonic `0x9b419919b5033759e02167f74d526d2f62e3b678` | ⚠️ Unaudited |
| Staking4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb1fd2da8914dc200bc4effd71713594caa88a2f8`; sonic `0xb64c1ae74a3e51ee6cc0792807744b9eccb17f4a` | ⚠️ Unaudited |
| Staking4626L2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-391745 | 2 deployments: sonic `0x67a298e5b65db2b4616e05c3b455e017275f53cb`; sonic `0x8b5ecb2352438c148c97a852694c21dd0351dab9` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2868912e1c8b0eab65a0f0e358ad64bd8bcfa214`; base `0x8cf32e844b68808290949d3c7430c53b02f8fce2` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: bsc `0x96f30259fd52d0068900093617e8bdf34befbe62`; sonic `0x5ed69d02b9675613e411b48dc9140bd31992f7ba`; sonic `0xa8a29393c9b998d2224781be86ce0b857c0defda`; base `0x5744d65e53c6c914065817f04b87a03ee02c197b` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x582cef2f33cf2341d22c06fb4f3ab3b9195e3fbe`; base `0xdc5147e4c2e4922c0ec3403db6848e81f8ecf22d` | ⚠️ Unaudited |
| Staking4626L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6a72c8f2431f2f272275bb7113b7e3dd2dd8977b`; base `0xa424006de3e3870bdc9d75302e9c4b9ca4aab3c6` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391715 | `0x3e4df75d89c21a76718b1613a2967a3cd9b6e802` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x7c8b59f84d040e14676a7aad90fb1c8b8d944552`; sonic `0x8ae8373006cd91ee0468e537214053d8588d2cb5` | ⚠️ Unaudited |
| TokenList | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xb68b2bed621dce656ddcc607769fb6aac3f67b5c`; bsc `0x3b3c534d22deed568813afa1b75996b8241126e0`; sonic `0x09639de0f3b1da19ed12d5dfc9b172dc932fe363`; sonic `0x1e3e7b6d9d999e1b1e957e70ed659f47d25ed9c7`; sonic `0xe8cb54f2523aba0fbd2bbd11f979be75bdfd9917`; base `0x06f9617e604019af5e28c9e2e75f0886bbdc03ae` | ⚠️ Unaudited |
| TotalReservesOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33111921e3aa44570a72caad9762e5bc2b07813f`; ethereum `0x3c6e86fe86d383eac40d7b817b60c3d022117b74` | ⚠️ Unaudited |
| TotalReservesOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f65db983bc52ff3fa126c5f2b121fb234d7799a`; ethereum `0xfeab180e36bf0bb30c02548ddfc8347d249f9159` | ⚠️ Unaudited |
| TotalReservesOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391741 | 2 deployments: ethereum `0x90a2ca4d196fdb95a5d4c694ca87ceebc08a9ea7`; ethereum `0xe148d8919309697d714b9f33b4624969a9a55f81` | ⚠️ Unaudited |
| TotalSupplyOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1`; ethereum `0x5deb69f40542d95688ef05b0abacbcf12aec79c0` | ⚠️ Unaudited |
| TotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x13da25d73479c9cbb3ba0e3c9b15555365b88de9`; ethereum `0xff6e1d30691fb7b3a4cf8a40b8584112dac19951` | ⚠️ Unaudited |
| TotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x39f7b782726ad7d7b7ae0337ec699eb72a011f72`; ethereum `0xa36dc6f6974f5c20fcb5b61f88f8cc44465a8748` | ⚠️ Unaudited |
| TotalSupplyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87a0375b807f74941c5b6daffcbddd698709757f`; ethereum `0xeb6cde8ecdf053587689db8d0bebc34cd8808e25` | ⚠️ Unaudited |
| TwapOracleV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbaeb5800f47462283b2da273a5688246fdc31fe4`; ethereum `0xe90a0ef0e246e284a0c7a51d8ee0429dba22537a` | ⚠️ Unaudited |
| UnbackedAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44421a71a55b684c11b85880b61377df6598f423` | ⚠️ Unaudited |
| UniV2LPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: ethereum `0x5d4dcae73261c02ae1bffc24056bc809608f5137`; sonic `0x1ec695a8571140dfb35b28769b60ca7d8ea84951`; sonic `0x1fc91c7b63e84696e62edf04787a9ce64ffea5bc`; sonic `0x273ac3d92ee85c8c7319befeb9c79a5a4cc8f4e0`; sonic `0x4cbe17b6304460a76bc227831ad62d89fbfb499e`; sonic `0x5e7c3efb5ba307ec9f7e2a75b0470101c5e9ecd9`; sonic `0x8478a89fefeb978ed2c6bb074b593ba2c34ebf6f`; sonic `0x91cac1a184dc3ba3a342fe8c9b390ef2ee73b8ce`; sonic `0xb059938764f5cbdb7eadc7c4a80fc2900c3953b0`; sonic `0xb0b59bf818d349eeb2c6efb853d441a66ce37f00`; sonic `0xb17878140f6de300fd57e2637d797dde5918e03d`; sonic `0xcb42725758a123d43c1332a9a525537399c8daae`; sonic `0xef6eb7704050f44cbccf43cda6df39b1d84d85aa` | ⚠️ Unaudited |
| UniV4LPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x097a20fc1f4e604371ec85eaca10adaf77246c59`; ethereum `0x1e884f830afba3e8a11e43a471a11bc2a4021571`; ethereum `0xb0c7b4330af8d66a4529239658d739018d0314d9` | ⚠️ Unaudited |
| UniV4LPPosOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f` | ⚠️ Unaudited |
| UniV4LPSpotOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e91f8334833587c542e40d6f9a4c6590bb289d6`; ethereum `0x9802886903dba085fe6d7f62d866536ab2d287bf` | ⚠️ Unaudited |
| USD69Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0b0268b062ed73837144f680631a34a3dd930bb5`; ethereum `0x393cf514174b75cc4ec4b9a6c4ff33075f18ff29`; ethereum `0x896f0da8a1c40c76aea24b23a48db602b025a224`; ethereum `0xfde214dd8c86c64d0b0564a377f3368bec955a56` | ⚠️ Unaudited |
| USD69Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x1a29d2190debc5939502d3ecce08ce23b1851828`; ethereum `0x7922eea2c83d89dc57e670cdbf81dbf137c7766d`; ethereum `0xec9d65f4554a718ebe756ffa1fa73063c93c30a5`; ethereum `0xfdc0994b40bb1066d73ecd6fd27bfd21a6679c38` | ⚠️ Unaudited |
| USD69Treasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8`; ethereum `0xf83b913f7c1c396d454922d8af9423894b395a21` | ⚠️ Unaudited |
| USD69Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1367272ca7382f9ffff4b1b0ac470d3e75759ef5`; ethereum `0x88d5968fba462fb009e4b8ed78c488eee0a84fea` | ⚠️ Unaudited |
| USDBond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3839a0dd920463eb5d8231efe4d8c5edc44145ec`; ethereum `0x448d17d718304a8d1a0cda581961b83ae0555fe5` | ⚠️ Unaudited |
| USDTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7085039fdba2c3c30af5dcc41465da027e85530` | ⚠️ Unaudited |
| UserRoleChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x1ae9d2a791bbc41cd3e756d009dd95b6f6226bd4`; ethereum `0x1b5b6730b34d067176e89037852a0daf75e87af8`; ethereum `0xa4ca1692cf1c93b8a4054eb6f874154bb2be2d77`; ethereum `0xdb47274592645a209ac1bc21c8b9d2e3140372e3`; ethereum `0xfe64ec37394b7625aed1f0b24cfd165aef233d92`; sonic `0x11d3ada3bc874500c1e4e15e79c4b924edde3b21` | ⚠️ Unaudited |
| YieldLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391720 | `0x739f4941b06ab58feb2415f6b9d4615308dc1b2c` | ⚠️ Unaudited |
| YieldLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x53bdc57b2da05cd6047428b1e0fa573aa22662cd`; sonic `0xc47d5010064987d17f825557bf85b4eac3da2b4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391713 | `0x0000030d7a7c4888851f35705b0852cf20ac1ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249219266a026323fbefdc6b0b494230666ac924` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391719 | `0x6969c3ca5142b9eca6141de577c50454326265b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13584e2181e0cdf0dd413ef78f3d00585274fd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391722 | `0xb33f4b9c6f0624edeae8881c97381837760d52cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf96a878c78510f3ac81f69cb98c203c09d5aea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe94637dc4a2815693df9e8f9a06a4e92be1f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8922afb956397bd30322b1e4d648f1d92bb874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397c754691db1d66b668d85ef9adbcb5937d0b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b1fc5bf99e8700f5fbb33d535e76c475e47ea21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95186ff046c2eb1dd0c79bd04d77acb0ef2f8383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd055895cdf0b8ed7a5c9e53532988c03053f5513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe10abdfa3522bd0c369d92b0bd4e8298edfe885a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd3faa8c264e41058e771f1a4746a2e79337b404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00cf23c0af5f8f652394d211f4f20b1146156a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1426ad004ad6ce86f89e06bcabe5a00c1b898db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14df434e43cec4981b48f67aa62dc149669f94cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17b58ab2585e6d46bc5ff27202c89d4faa1b5392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2ae19f6c617065d95f3541f80566fea11d29ad3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34648a55fd54206bdedb6b811f6ea14243c733ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5754067c71fbccb6287bf49b2dcd446b085f52a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x60b4e24339e24f1324c219450a677997d479916b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67a2b9ace404051346212ee9ec3752bd0d8c96fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7198f22775a7530b51ef5b90789fac5a3aa81426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8c7f6be8252049771ae8d159542d49b6e0fa6b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0946a96f285be8249202fbad5c53423749d5a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb3e63498d81a9b3806de6da5d8f7ca4ec6361c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce78cad42c701d5369b7376a558302b433e57412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd57e1cbc727b4473b29458acf1e6a176c68462f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6a15f4acfffd52ee6aba08ab6c453da33283229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391736 | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391734 | `0xb33f4b9c6f0624edeae8881c97381837760d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391735 | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe377bf8d0479ef337cc4c6bf6b3cb4459cbb23c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391732 | `0xb33f4b9c6f0624edeae8881c97381837760d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391733 | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-06-21-halborn.pdf](https://github.com/rezervemoney/code/blob/main/audits/2025-06-21-halborn.pdf) | Halborn | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2808] 2025-06-21-halborn.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-06-21-halborn.pdf | AppTreasury | own proxy deployment | AppProxy (proxy) (selected) `0xe22e10f8246df1f0845ee3e9f2f0318bd60efc85` — deployed 2025-06-12 13:40:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x43a38a7ba3417d675b7a78bf026a9cf6fa45417d` | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xf06b937708b9a20a62130b79a67f229ea65ef309` | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x641cac894b2fa76ffd8446a3f4014e3db0e287cc` | AppBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x86143b33e3b946b50f89a6be7aec898074a5e1e9` | AppConvertibles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x220774755570147101bdcd995386f8f27654f1fc` | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2da785461180ebb25c211e03f10e3ce5099973ea` | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x008311a411c6b9c4aab1053e7ff7056a0aef9c63` | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa25f6ba0136c65e61200ebf0885ea8da022e83fa` | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd43c9c6ecca33a0c3ef6e509f7559c5c5e46399` | AppStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7a5777d6685fb126d209a39cc3da77fb2fab1aa` | AppStakingMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x507427db12766d70445c85e683efd30143bf99df` | BridgeL1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa48b9220a3673a83f9202e0d73659eb09da2a036` | BridgeL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e` | LoyaltyList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3e536636ac493b9bf1f80de59dacf120bd74652` | lstRZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x096bb245a46ec8ceaa7e0fdd6c0faad754b53276` | RebaseController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5` | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe97493f0999f14d0f38293b55a316cf22af0b53c` | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6419f05d56944dd140954be8ad9907304abb2f3a` | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5de77ccabc90b4681e83d0588fb91a54f8f70aaf` | sRZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x67a298e5b65db2b4616e05c3b455e017275f53cb` | Staking4626L2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e4df75d89c21a76718b1613a2967a3cd9b6e802` | StakingDistributionLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x90a2ca4d196fdb95a5d4c694ca87ceebc08a9ea7` | TotalReservesOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x739f4941b06ab58feb2415f6b9d4615308dc1b2c` | YieldLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 142 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
