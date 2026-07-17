# Agentic Audit Brief: Rari Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rari Capital (`rari-capital`)
- Website: [https://www.rari.capital/](https://www.rari.capital/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 296 unique implementations (532 raw deployments)
- Coverage basis: 0/21 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,276,138.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rari Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across ethereum. Structural roles: 21 unclassified, 5 supporting, 4 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: unclassified (21), supporting (5), core (4)
- Contract kinds: contract (30)
- Detected standards: erc1967proxy (7), ownable (2)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x016bf078abcacb987f0589a6d3beadd4316922b0`, chain 1)
- UnnamedContract (`0x704bff255201c9da5487fa251bbc686a69d8ec77`, chain 1)
- UnnamedContract (`0x7c332fea58056d1ef6ab2b2016ce4900773dc399`, chain 1)
- UnnamedContract (`0xa27be12024b06a7d1ba5cf0d9182d65a7b021f5d`, chain 1)
- AdminUpgradeabilityProxy (`0x00815e0e9d118769542ce24be95f8e21c60e5561`, chain 1)
- AdminUpgradeabilityProxy (`0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648`, chain 1)
- AdminUpgradeabilityProxy (`0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7`, chain 1)
- AdminUpgradeabilityProxy (`0x3baa6b7af0d72006d3ea770ca29100eb848559ae`, chain 1)
- AdminUpgradeabilityProxy (`0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6`, chain 1)
- AdminUpgradeabilityProxy (`0x66f4856f1bbd1eb09e1c8d9d646f5a3a193da569`, chain 1)
- AdminUpgradeabilityProxy (`0x96ce4c781edf07f4e3d210c919ca4f9a7ad82a7f`, chain 1)
- AdminUpgradeabilityProxy (`0x9c0caeb986c003417d21a7daaf30221d61fc1043`, chain 1)
- AdminUpgradeabilityProxy (`0xa54b473028f4ba881f1ed6b670af4103e8f9b98a`, chain 1)
- AdminUpgradeabilityProxy (`0xafd2aade64e6ea690173f6de59fc09f5c9190d74`, chain 1)
- AdminUpgradeabilityProxy (`0xb465baf04c087ce3ed1c266f96ca43f4847d9635`, chain 1)
- AdminUpgradeabilityProxy (`0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a`, chain 1)
- AdminUpgradeabilityProxy (`0xcda4770d65b4211364cb870ad6be19e7ef1d65f4`, chain 1)
- AdminUpgradeabilityProxy (`0xd291e7a03283640fdc51b121ac401383a46cc623`, chain 1)
- AdminUpgradeabilityProxy (`0xd6e194af3d9674b62d1b30ec676030c23961275e`, chain 1)
- AdminUpgradeabilityProxy (`0xfe98a52bcacc86432e7aa76376751dcfab202244`, chain 1)
- RariFundProxy (`0x35ddefa2a30474e64314aaa7370abe14c042c6e8`, chain 1)
- RariGovernanceToken (`0xb528e8bb2dcb99cfdea4c28bf44925ef58ab1520`, chain 1)
- RariGovernanceTokenUniswapDistributor (`0x7a2bbae82bd08196d64ff01c53788d942cf5f7b2`, chain 1)
- RariGovernanceTokenVesting (`0x5888e7e6d0fbfc8c1d214cab8441658e9266840c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/21 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 273 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 154
- Confirmed-live implementations: 23 of 296 unique; 273 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/136
- Verified + Unaudited implementations: 136
- Verified by bytecode match: 0
- Unverified implementations: 160
- Unique implementations: 296
- Raw deployments: 532
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (136)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf617346a0fb6320e9e578e0c9b2a4588283d9d39` | ⚠️ Unaudited |
| AavePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1821c1d8c74a3d8799170c35f2abb83ac3259c98` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391301 | 2 deployments: ethereum `0x0833cfcb11a5ba89fbaf73a407831c98ad2d7648`; ethereum `0x704bff255201c9da5487fa251bbc686a69d8ec77` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8da38681826f4abbe089643d2b3fe4c6e4730493` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391303 | 2 deployments: ethereum `0x96ce4c781edf07f4e3d210c919ca4f9a7ad82a7f`; ethereum `0xa27be12024b06a7d1ba5cf0d9182d65a7b021f5d` | ⚠️ Unaudited |
| BadgerPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c86943e594640c4598086a2359a0e70b80ef8d` | ⚠️ Unaudited |
| BadgerSettLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc743c9d1801ad9169be176761e8bb95c1298d817` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d`; ethereum `0x6efa260a268e4afacf7fb91a6bf5f5b37379bf61` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968030d6f08f1b7515ba7b8ba1ff10557a69d7db` | ⚠️ Unaudited |
| BoostDirector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8892d7a5e018cddb631f4733b5c1654e9de10aaf` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x8dacbe2b439e66f7940e7ca160685b5180476958`; ethereum `0x931420077fc8fb1f7218a1dd23043990bafd7df8`; ethereum `0xa283fcb3c2b8dc908f93f17627e9f90fc8559d5d`; ethereum `0xb1ad72924cd5438f74c6bfc8a6e5c6032d99851b`; ethereum `0xce128488b560632056d9811dd24a59688dd33dc4`; ethereum `0xf5ad2bf1b1a74c1c36503825cf1a07ac4a352107` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xadeedd3e5768f7882572ad91065f93ba88343c99` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd124b55f70d374f58455c8aedf308e52cf2a6207` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c` | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf38522f63f40f9dd81abafd2b8efc2ec958a3016` | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78befca7de27d07dc6e71da295cc2946681a6c7b` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 89 | ethereum | n/a | 90 deployments: ethereum `0x00ce8e3746240b0ca44046b550c8e54e848ae5b8`; ethereum `0x02725547d23020ece27eb0956e646652e33f7e03`; ethereum `0x0302f55dc69f5c4327c8a6c3805c9e16fc1c3464`; ethereum `0x03b6bff9a13adcbff10facc473c6ab2036a2412b`; ethereum `0x04281f6715dea6a8ebbce143d86ea506ff326531`; ethereum `0x04543d78d114ecd6dffaee028ec2dee9bc65901b`; ethereum `0x0879dbee0614cc3516c464522e9b2e10eb2d415a`; ethereum `0x09bd9e30170ecf2736fae2f4d236470edf072c15`; ethereum `0x0d827217988e860ae6bdf8ed3dbc6cf79bc8448b`; ethereum `0x0d90341220fb052a3c5e79d8fb1c6f26f9c9fdc9`; ethereum `0x10e0953c583f9fdfcad13bdb9a81d0744e3933d4`; ethereum `0x1531c1a63a169ac75a2daae399080745fa51de44`; ethereum `0x17b1a2e012cc4c31f83b90ff11d3942857664efc`; ethereum `0x185ab80a77d362447415a5b347d7cd86ecacc87c`; ethereum `0x195f83eb5fbcace2290d53ad1c12d909b9328f92`; ethereum `0x19d13b4c0574b8666e9579da3c387d5287af410c`; ethereum `0x1db6b79248627d769e7bca9ec5655341260ab714`; ethereum `0x1f9045e2bf5d7f64898f5492df8980e92cb344c7`; ethereum `0x1fc28eb7799cb85bd6ce8f5a17021cf8c2aa464b`; ethereum `0x202586b4777083d51a21a13a34197200140c933e`; ethereum `0x20d6762ffc948116627d4437c0f0df7d20198158`; ethereum `0x2130528060141222f0614ff80a756a3b2a24fe59`; ethereum `0x22d207c47555dfb5d0e407ac3be4fac53b6da145`; ethereum `0x2914e8c1c2c54e5335dc9554551438c59373e807`; ethereum `0x2d853a7f658839affe936fad61f583131543aa90`; ethereum `0x2f251e9074e3a3575d0105586d53a92254528fc5`; ethereum `0x3126884e24fbf5a9a3acee004a604eec5625b21f`; ethereum `0x352169127e1da21ad54788b7c17d990dd1b9c940`; ethereum `0x35a1ac7c2f9d66978813f7a2a1b54172a4ab6d50`; ethereum `0x3e5c122ffa75a9fe16ec0c69f7e9149203ea1a5d`; ethereum `0x41d3abd664cb3faf956ec116b2d7d0aa745b6503`; ethereum `0x484d065931c19b8dc2d915b2cf23bb142c2c7637`; ethereum `0x4a9e325bf0c46e15b12f3cf69bc0b16b19ede2f6`; ethereum `0x4ac34649c3acbe2e06c71080cfa6c2f054f5aac3`; ethereum `0x4c87009e1714e1caf517a08a6363cb031197c77c`; ethereum `0x4e686e72448e52c63e0b34462655a753aa9c2122`; ethereum `0x4f1481fd8620d4707e75c4e1e66bc26afb450bb1`; ethereum `0x52798323de1ea735cb67ac0c73e4a32d7321cce4`; ethereum `0x59bd6774c22486d9f4fab2d448dce4f892a9ae25`; ethereum `0x6313c160b329db59086df28ed2bf172a82f0d9d1`; ethereum `0x63475ab76e578ec27ae2494d29e1df288817d931`; ethereum `0x65acb48ae57476fc67157d0d89b99609ffbec4e6`; ethereum `0x67130c1c1400f425179c134b2c6da1c1eaf2cd91`; ethereum `0x67db14e73c2dce786b5bbbfa4d010deab4bbfcf9`; ethereum `0x6856f0e1bd23c9a1b92f87581dd2f28e7c84ebcd`; ethereum `0x69aed4932b3ab019609dc567809fa6953a7e0858`; ethereum `0x6d53b483ad27907109a853fbd8abe58a59f7ad41`; ethereum `0x6eda4b59bac787933a4a21b65672539cef6ec97b`; ethereum `0x6f95d4d251053483f41c8718c30f4f3c404a8cf2`; ethereum `0x78c15e2aba46157ebc3aa87f730cda8cb11acd16`; ethereum `0x85b294139e77e7de519a9ba9553d274d79e4812e`; ethereum `0x8691927a91a032c23b895130074669f52cf6b1e7`; ethereum `0x86afd7112e28dcb7530c8da1d1784cef7e6b6ff5`; ethereum `0x8a200fab97ac048ce273e4cba4ed1e645e7482b6`; ethereum `0x8ad7472631695420626c17ee0f8cecfea480caff`; ethereum `0x8e0b2eb3ebcd55168099806cb865085f461c8cd8`; ethereum `0x8e4e0257a4759559b4b1ac087fe8d80c63f20d19`; ethereum `0x8eacb5e957ce54e3b304309b5905610897d2cfdf`; ethereum `0x8f0861e0e8ca979109ce462fd4a23131d56ede00`; ethereum `0x94c49563a3950424a2a7790c3ef5458a2a359c7e`; ethereum `0x9b9b93aa9a8b3368f94b1fe87ce56034c9cba693`; ethereum `0xa37d6da61318d81f682fae94e6890e945209433c`; ethereum `0xa6be84bf1191ec147f3002f7a645b3f6e1605b0a`; ethereum `0xad1716680024f6f9aea57ad28b8c4ecd2f5670cc`; ethereum `0xb61946a7ea4ea0b2cc605b26afef66594e77a6df`; ethereum `0xb9f8738404331a5f3c95e731736266498dff4b00`; ethereum `0xc03bbabe3f695ad5e912cbe5ad286dc8c4159e9a`; ethereum `0xc12b58d31b97dbd7f092db5cc69ad321a0ad747e`; ethereum `0xca56af76b656212d768842246bf4893b56c02abc`; ethereum `0xca9219aef43d66e80a5167b0c3b434568b3371c9`; ethereum `0xcf90552ec3db6143c83385fdd7bc96ef40f7ee44`; ethereum `0xd09bf42afbe853e8e4da8ca3512b09e96f369595`; ethereum `0xd66922274243d41b0a5c84ab46567530e7a97d09`; ethereum `0xd8f3793a26f9e7f8b0337b4ceeb0ff38bd72a87b`; ethereum `0xd9c1109bed723ea8b78d0ac1757586955666bb00`; ethereum `0xdb55b77f5e8a1a41931684cf9e4881d24e6b6cc9`; ethereum `0xe2451ae4579aedaa933148481732498533db185e`; ethereum `0xe33928b720799127a052b65498b322a206351441`; ethereum `0xe42de3abd1079cf3881aabd340e70efcad258e61`; ethereum `0xe640e9bec342b86266b2bd79f3847e7958cb30c4`; ethereum `0xe742e155f86977f11bb664e83f66f1f3ac3d4ff6`; ethereum `0xeb37ce0db663a742df93e23ea7ba78016e82be39`; ethereum `0xeebc9d3a8d93fb0516398a223aeffc0872e32cfd`; ethereum `0xf06f65a6b7d2c401fcb8b3273d036d21fe2a5963`; ethereum `0xf0fe94d76fd77c1d9915616261e7e19865cedc2c`; ethereum `0xf13c91571fb553b149f072b71b7decaf75997ba9`; ethereum `0xf317379b10d370fec6b8103ef2da5007d1890def`; ethereum `0xf574e28fb4a2d73b0ec36f4ab62699fc76c0a638`; ethereum `0xf9f0effe60f56e6846505501903ad047b8011c3e`; ethereum `0xfb6b44bcb9ba70b50e9c85d2d3158feb520bcb2f` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3dd0ae288c13a730f6c422e2262a9d3da79ed1` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 8 deployments: ethereum `0x3490db87cfbf6527e4b75443a86bb82a14370ec3`; ethereum `0x3611bd37169630e92a16a799328426e75a256652`; ethereum `0x3ab1e40fa48209a71fe6ce1e2f24a5a6c0c2a7f8`; ethereum `0x4b789c1a3124e9c7945e24d20a5034a85ffb7535`; ethereum `0x6160aa1093d939e9e98e84e3f364d8cd1a27eb8c`; ethereum `0x67e70eeb9dd170f7b4a9ef620720c9069d5e706c`; ethereum `0x880e2b76f0c4423c1bb2e748516f0498a4989ee1`; ethereum `0x8c2ab59d5a0cff6b1d00ef7dd70d85db88483671` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 33 deployments: ethereum `0x037107c38a734f6e50f1db5f964056689e3e2cde`; ethereum `0x07a81e62459429d2ef82c3fe4e8c38968e73fd57`; ethereum `0x0a04064a7d04cd476981bd41c2170ef332c20656`; ethereum `0x137bbe0a224bc27b84f6ab451a093e8c965d946d`; ethereum `0x1b332b948c98c53592dac01e894f7a3faa78582e`; ethereum `0x1f947ed7ccf11d3b39fc39926c95d9d928b90e98`; ethereum `0x260ca18601af540e8b837182d9fff760020d989e`; ethereum `0x28f97920135f75a9c14ad2431c1441f5e1a1a60d`; ethereum `0x37356b6714ecb112043c535fd005c05a6e1b72e0`; ethereum `0x396cea383c15f6bb1277d749b8449366923fafe3`; ethereum `0x3f279c82cbf8bc6ecccfe9a990330dc3e6536f44`; ethereum `0x3f36317881990b58387fcbc44c0ce7a5428640d5`; ethereum `0x4288e4170c649240d184941fd25340beb3449f08`; ethereum `0x4cd2ed5f84a8bcb0ca3876735bfb605f6b597783`; ethereum `0x4fe68055ad4bf60d50ed90210b89961a0acda164`; ethereum `0x5323566a41a6b29195b50b74151b497c7b651bdf`; ethereum `0x5459ea745d0355862815f37c0a967326421c1133`; ethereum `0x6a6a5b23b91211aa10dc2970626804591e46f613`; ethereum `0x6f28b8237c3c2233235f8991069dba45abdb6ced`; ethereum `0x7403a25a5b4a725b3163ab9a410435d17cb5e1ee`; ethereum `0x7ab45c5019f89932cfb97574e074e450144372a4`; ethereum `0x82eecf1f719eed527efab332fe84b91b91b91c60`; ethereum `0x86fc4fee7134f017336751fca3ea587fb63f8449`; ethereum `0x8a6eb01220bcb9d4d23df6b4aa37b5ede7b57640`; ethereum `0x949186a2eaae0b70e75b1319cb7d017d63261dda`; ethereum `0x98da94790b3179c347ff0ddebfe3ef06bd3f7997`; ethereum `0xacfae44f13365d3badc57d93c5cd86af31b8c372`; ethereum `0xbbacea44d305ece29915e9b9cc3531ee77049674`; ethereum `0xc10d8be5c570856bec7d936d4e1e1f51308ff6d4`; ethereum `0xc5b5e4a8df5cf3d940cfdb6a273a6e4ffcfd999f`; ethereum `0xdeeee406476b4eca72d0750fe11f8342a3c91e8a`; ethereum `0xeff71d5565f4969f5aecf5d010a332b9c98a93af`; ethereum `0xff859f9a808a78833f9661310101c853a1dfe6c6` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 10 deployments: ethereum `0x258592543a2d018e5bdd3bd74d422f952d4b3c1b`; ethereum `0x29f0a2fa530bb3cae31877592873b69671cbfaff`; ethereum `0x53ca7a9d09fd07b132963c2efd14dbd5ed0f0cae`; ethereum `0x54b12f3df34aa30a88935b617c0a1013b97000dc`; ethereum `0x95fd9ac18d72c84d47442181828202b9ec8419c6`; ethereum `0x97fe54066fbb0550fe133aac0970618485133552`; ethereum `0xca1ee2f5f11d99901fbb30f8fa082e0592a9542b`; ethereum `0xd557c7f29201e296c7b689ef42dc48c9862afb87`; ethereum `0xf6551c22276b9bf62fad09f6bd6cad0264b89789`; ethereum `0xfa1057d02a0c1a4885851e3f4fd496ee7d38f56e` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60884c8faad1b30b1c76100da92b76ed3af849ba` | ⚠️ Unaudited |
| CEtherDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x92cc95dc3842a7b8b5b6dcb4dc6f5adba9d86fa1`; ethereum `0xd77e28a1b9a9cfe1fc2eee70e391c05d25853cbf` | ⚠️ Unaudited |
| CEtherDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bec59fc9d0dba42e85ca514abe8b9c0faf9876` | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x76f24e7155ff4472cb26e32c1213e515fc4b99d3`; ethereum `0xe102421a85d9c0e71c0ef1870dac658eb43e1493` | ⚠️ Unaudited |
| ChainlinkPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0602af43ca042550ca9da3c33ba3ac375d20df4` | ⚠️ Unaudited |
| ChainlinkPriceOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x058c345d3240001088b6280e008f9e78b3b2112d` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43` | ⚠️ Unaudited |
| CompoundIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd55684f4369040c12262949ff78299f2bc9db735` | ⚠️ Unaudited |
| CompoundPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x8a78a9d35c9c61f9e0ff526c5d88ec28354543fe`; ethereum `0x934c2b32b71d9d21c6423a4092be517f5a3e7d81`; ethereum `0x94b2200d28932679def4a7d08596a229553a994e`; ethereum `0xddcbad54d536d9c5829492353b2967bfae4010d7`; ethereum `0xe16db319d9da7ce40b666dd2e365a4b8b3c18217` | ⚠️ Unaudited |
| CToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x02beff6668a0c8b7b16c978de8807527d9342ad4`; ethereum `0x46f196f21f420e3ea159b706d249046e80f05f7e`; ethereum `0x896dfbccea70aa77bd6391a0c198dd8ca73594a1` | ⚠️ Unaudited |
| CurveLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43c534203339bbf15f62b8dde91e7d14195e7a60` | ⚠️ Unaudited |
| CurveTriCryptoLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2d16916d520d585ee49f08db1436b961b48fe60` | ⚠️ Unaudited |
| DelayedProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386` | ⚠️ Unaudited |
| DydxPoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba` | ⚠️ Unaudited |
| Ejector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71061e3f432fc5bee3a6763cd35f50d3c77a0434` | ⚠️ Unaudited |
| FeederLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2837c77527c37d61d9763f53005211dacb4125de` | ⚠️ Unaudited |
| FeederManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ae544e8cc76d2867987ee4f5456c02c50abd8b` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48c59199da51b7e30ea200a74ea07974e62c4ba7`; ethereum `0xbb128bc208c45b3dd277e001f88e1c6648060c64` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x62aa1d6c2c591443ee32066773eb7b7be09e063c`; ethereum `0x9ab5868f745d8fc6d45ce86dfe057f5b738c90e2` | ⚠️ Unaudited |
| FeederPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa88328ed84c31c98d81237c354cc852a5022b9ea`; ethereum `0xb61a6f928b3f069a68469ddb670f20eeeb4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4fb30c5a3ac8e85bc32785518633303c4590752d`; ethereum `0xfe842e95f8911dcc21c943a1daa4bd641a1381c6` | ⚠️ Unaudited |
| FeederWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35` | ⚠️ Unaudited |
| FixedEurPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817158553f4391b0d53d242fc332f2ef82463e2a` | ⚠️ Unaudited |
| FixedTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fe48562b816d03ce9e2bbd5ab28674a8807cc5` | ⚠️ Unaudited |
| ForgeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ca9123afc43dc9dde52a57a51afc44324138ded`; ethereum `0xbb90d06371030ffa150e463621c22950b212eaa1` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ce132ebe395d35b8cf6df6ce5f817107707583` | ⚠️ Unaudited |
| FuseFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa731585ab05fc9f83555cf9bff8f58ee94e18f85` | ⚠️ Unaudited |
| FusePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5959dbc5432c173cbea41ab79d5673d5aa375311` | ⚠️ Unaudited |
| FusePoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x835482fe0532f169024d5e9410199369aad5c77e`; ethereum `0xd662efb05e8cafe35d1558b8b5323c73e2919abd` | ⚠️ Unaudited |
| FusePoolDirectory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc81c8fbb73b5825ba6cc7c4de1fe92004cc80c6` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9bfa18f2c0954f1ff48b5ee9d8efed5975e650` | ⚠️ Unaudited |
| GelatoGUniPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3633b38c747cea231adb74b511dc2ed3992b43` | ⚠️ Unaudited |
| GOhmPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057ecda7f61c73c3adcc36899d2626c7b79c3249` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f60585a80cec402fffa1d85f152b522e7358b39`; ethereum `0x9ecc58d2d68da2c20e8630b000af55cb8324c759` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663e01a820d650833bb1140a2a645b2bc1e422e6` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91d9c2b5cf81d55a5f2ecc0fc84e62f9cd2cefd6`; ethereum `0xfd6aca12f464acda7901fcd650dd1bc272da039f` | ⚠️ Unaudited |
| HarvestPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6141d9353bb1fb8131d07d358c112b372aa92514`; ethereum `0x8d364609cd2716172016838ff9fbc7fbcac91792` | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf` | ⚠️ Unaudited |
| InitializableClones | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ce5566dc3170898c5aee4ae4dd314654b47415` | ⚠️ Unaudited |
| InterestValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e`; ethereum `0xf1049aed858c4ead6df1de4dbe63ef607cff3262` | ⚠️ Unaudited |
| InvariantValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705`; ethereum `0xd36050b5f28126b5292b59128ed25e489a0f2f3f` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x075538650a9c69ac8019507a7dd1bd879b12c1d7`; ethereum `0x4ef29407a8dbca2f37b7107eab54d6f2a3f2ad60`; ethereum `0x5fdcb640b181e19ef7f77491d8d26e5ff6b7a4df`; ethereum `0x640dce7c7c6349e254b20eccfa2bb902b354c317`; ethereum `0x8f47be5692180079931e2f983db6996647aba0a5`; ethereum `0xb579d2761470bba14018959d6dffcc681c09c04b`; ethereum `0xbab47e4b692195bf064923178a90ef999a15f819`; ethereum `0xc35db333ef7ce4f246de9de11cc1929d6aa11672`; ethereum `0xc8acad405ff67eaee2aca374764883cecbd490ad`; ethereum `0xcdc0a449e011249482824effcfa05c883d36cfc7`; ethereum `0xe1d35fae219e4d74fe11cb4246990784a4fe6680`; ethereum `0xede47399e2aa8f076d40dc52896331cba8bd40f7` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01`; ethereum `0x8bd8ec1e69e19b23db4e9cb31472f143d0e093cc`; ethereum `0xb7c77da6e0a8b4f63384fce953327af59c0d5b9d` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe595d67181d701a5356e010d9a58eb9a341f1dbd` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e91f826fa8aa4fa4d3f595898af3a64dd188848` | ⚠️ Unaudited |
| Masset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f`; ethereum `0xb83a5a51df21321b365c918832e7e8f5de686f7e`; ethereum `0xe0d0d052d5b1082e52c6b8422acd23415c3df1c4`; ethereum `0xe4c5b1765bf420016027177289908c5a3ea7668e` | ⚠️ Unaudited |
| MassetBtcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x945facb997494cc2570096c74b5f66a3507330a1` | ⚠️ Unaudited |
| MassetRedemptionValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944` | ⚠️ Unaudited |
| MassetValidationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c5e03065bc52cce84f3ac94df14bbac27eac89b`; ethereum `0xabcc93c3be238884cc3309c19afd128fafc16911` | ⚠️ Unaudited |
| MasterPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1887118e49e0f4a78bd71b792a49de03504a764d`; ethereum `0x4f2373c4b61b9feca018c25f55ac179c2be36515`; ethereum `0xb3c8ee7309be658c186f986388c2377da436d8fb` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5` | ⚠️ Unaudited |
| MetaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda681d409319b1f4122b1402c8b5cd4baedf9001` | ⚠️ Unaudited |
| MStableHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe15aad5d6b7433e5988415274529311f6bf6e8a3` | ⚠️ Unaudited |
| MStablePoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afe310485208476d5aa480905db4f7e90d5fa0e` | ⚠️ Unaudited |
| MStableVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e`; ethereum `0x7c4cf0442dbf77f56a4ba8ad2347f136dfa5c78e` | ⚠️ Unaudited |
| MusdV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b2838cd28cc353afbe59385db3f366d8945aee` | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2f2a5c287993345a840db3b0845fbc70f5935a5` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafce80b19a8ce13dec0739a1aab7a028d6845eb3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x038e3fb79bbe37c804f6d5ee6b5323537c886298`; ethereum `0x1c9aa54a013962c2444ecae06902f31d532c6ad3`; ethereum `0x3cd782379ce010fcda43983b490a99f43aace0c0`; ethereum `0x482136f386f8ec0032e730ee28ee9277b965e3b1`; ethereum `0x485dd130c2052770d4aa27df91049ee70b613f61`; ethereum `0xa6ae69af4aa21cc8813667d7089e44ba44b4605b`; ethereum `0xab2543d24da4b1e599d10745434d640b8d5fcc6e`; ethereum `0xec55723f3d3242038f33b85796a82f25a8b67cae` | ⚠️ Unaudited |
| RariFundController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x369855b051d1b2dbee88a792dcfc08614ff4e262`; ethereum `0x3f4931a8e9d4cdf8f56e7e8a8cfe3bede0e43657`; ethereum `0x6afe6c37bf75f80d512b9d89c19ec0b346b09a8d`; ethereum `0xd9f223a36c2e398b0886f945a7e556b41ef91a3c` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391311 | 2 deployments: ethereum `0x66f4856f1bbd1eb09e1c8d9d646f5a3a193da569`; ethereum `0xdac4585b741e5b6625cec460d2a255fb3fbe0d47` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391292 | `0x9245efb59f6491ed1652c2dd8a4880cbfadc3ffa` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391294 | `0xa422890cbbe5eaa8f1c88590fbab7f319d7e24b6` | ⚠️ Unaudited |
| RariFundController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391305 | 2 deployments: ethereum `0xafd2aade64e6ea690173f6de59fc09f5c9190d74`; ethereum `0xb42bc0a99a176a16de9af1a490cae0c6832b43b8` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391298 | `0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391304 | `0xb465baf04c087ce3ed1c266f96ca43f4847d9635` | ⚠️ Unaudited |
| RariFundManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-391300 | `0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a` | ⚠️ Unaudited |
| RariFundManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391312 | `0xd6e194af3d9674b62d1b30ec676030c23961275e` | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391310 | 2 deployments: ethereum `0x00815e0e9d118769542ce24be95f8e21c60e5561`; ethereum `0xd7d2d97c61afb3045039584dc654b926694083c5` | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391308 | 2 deployments: ethereum `0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee`; ethereum `0xfe98a52bcacc86432e7aa76376751dcfab202244` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391290 | `0x35ddefa2a30474e64314aaa7370abe14c042c6e8` | ⚠️ Unaudited |
| RariFundProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a785fa6fcd2e0845a24847beb7bddd26f996d4d` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391293 | `0xa3cc9e4b9784c80a05b3af215c32ff223c3ebe5c` | ⚠️ Unaudited |
| RariFundProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391296 | `0xe4dee94233dd4d7c2504744ee6d34f3875b3b439` | ⚠️ Unaudited |
| RariFundToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391297 | 2 deployments: ethereum `0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d`; ethereum `0x3baa6b7af0d72006d3ea770ca29100eb848559ae` | ⚠️ Unaudited |
| RariFundToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391307 | 2 deployments: ethereum `0xb849daff8045fc295af2f6b4e27874914b5911c6`; ethereum `0xcda4770d65b4211364cb870ad6be19e7ef1d65f4` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x54745fe0a4309f48d57550aeb6385dc8303596d9`; ethereum `0xcd8adb84fdc82dd8e2fb1b1fe14752173a9bb94d`; ethereum `0xf00d7dd883ca85cc39f89d077e563fbcafaf3117`; ethereum `0xf727c8cc07c7b78079409002d851dc542dc8e2c1` | ⚠️ Unaudited |
| RariGovernanceToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391306 | 2 deployments: ethereum `0xb528e8bb2dcb99cfdea4c28bf44925ef58ab1520`; ethereum `0xd291e7a03283640fdc51b121ac401383a46cc623` | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-391309 | `0x9c0caeb986c003417d21a7daaf30221d61fc1043` | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-391302 | 2 deployments: ethereum `0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7`; ethereum `0x7a2bbae82bd08196d64ff01c53788d942cf5f7b2` | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2197ecc5b1ea917adcf02dcc4343b0e9b8a8c99c`; ethereum `0x4650a83520be4f1e4cee726fdd169d37cea80525`; ethereum `0xbbd1b9f985c7b811a1ff778598f3b946fefd4571` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391299 | 2 deployments: ethereum `0x5888e7e6d0fbfc8c1d214cab8441658e9266840c`; ethereum `0xa54b473028f4ba881f1ed6b670af4103e8f9b98a` | ⚠️ Unaudited |
| RariGovernanceTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6526faa601072f3c4b1f030c04f562f608d6d027` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7fd9da386f01f83cef3ebc01e13c040428c47ada`; ethereum `0xc0ce1ee9931711c94ef623807a6288d0245a2708` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x014b220912f6a9fce68e82fa6c2e603a7a78f436`; ethereum `0xdee8708c7ac420607dfcb572d69bab603a566d79` | ⚠️ Unaudited |
| RevenueRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa7824292efdee1177a1c1bed0649cfdd6114fed5`; ethereum `0xffe2cdce7babb1422d5976c2fc27448f226b6bec` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50` | ⚠️ Unaudited |
| RgtTempPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43d7372e49ad2b04c7ab04bddd7f724480aaed` | ⚠️ Unaudited |
| SaveWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9`; ethereum `0xd7c346c228bddd8a6a4c1a69e6cc82292909dcad` | ⚠️ Unaudited |
| SavingsContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39`; ethereum `0x3563cb49a1c3fa725f1888486754758d120b2bf8`; ethereum `0xcf3f73290803fc04425bee135a4caeb2bab2c2a1` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24` | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x30647a72dc82d7fbb1123ea74716ab8a317eac19` | ⚠️ Unaudited |
| SavingsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6f05662109b296afb0f02bf490300c6b95e07d3f`; ethereum `0x7046b0bfc4c5eeb90559c0805dd9c1a6f4815370`; ethereum `0x7594ae023979e30a44a2ebff64b7c82de3e46136`; ethereum `0x84e563334b706b5d823b0e0a62a724dd932ee6d1`; ethereum `0x9781c4e9b9cc6ac18405891df20ad3566fb6b301`; ethereum `0xcefcbb45be41331337d49a131faf424d1e50234f` | ⚠️ Unaudited |
| SimpleAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda13e3afed9c112bd906c732684a49dd65b178fd` | ⚠️ Unaudited |
| StakedFodlPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cf2299680c063ccaf18f62a60c500a625e08e2` | ⚠️ Unaudited |
| StakedSpellPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb544f62045b96a60b398abb5a5c23bf04cb4ed9c` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4`; ethereum `0x6de3a957b0344e6adeeab4648b02108f35651fb5`; ethereum `0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f`; ethereum `0xe6e6e25efda5f69687aa9914f8d750c523a1d261` | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70`; ethereum `0x881c72d1e6317f10a1cdcbe05040e7564e790c80`; ethereum `0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027`; ethereum `0xf7575d4d4db78f6ba43c734616c51e9fd4baa7fb` | ⚠️ Unaudited |
| StrategyMStableVaultFpMbtcHbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x54d06a0e1ce55a7a60ee175abceac7e363f603f3` | ⚠️ Unaudited |
| StrategyMStableVaultImbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd409c506742b7f76f164909025ab29a47e06d30a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2859e4f36784d2ea72379ea036699aa477bba8ee`; ethereum `0x3a4498d6555b28631062edcae2f406efe0e2d1c8`; ethereum `0x8ace03fc45139fddba944c6a4082b604041d19fc` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6c806eddad78a5505fce27b18c6f859fc9739bec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6bcc070637a6eb4a13df47b906e4017530fd125d`; ethereum `0x6dc585ad66a10214ef0502492b0cc02f0e836eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc76190e04012f26a364228cfc41690429c44165d`; ethereum `0xec929dfe6c95a8fbcb8ad5a91e14975a79ad7117` | ⚠️ Unaudited |
| UniswapLpTokenPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f42c004bd9b0e5acc65c33da133fbfbe86c7c0` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x480bae4d1389889c7e0600399234e1d39d4fe79f`; ethereum `0x552163f2a63f82bb47b686ffc665ddb3ceaca0ea`; ethereum `0x9ee412a83a52f033d23a0b7e2e030382b3e53208`; ethereum `0xc9ad18928b1d9f61105d43ecc33c670838d1c853`; ethereum `0xd4219c15b9cfc40090181ab934a08bed14017372`; ethereum `0xf411cd7c9bc70d37f194828ce71be00d9aec9edf` | ⚠️ Unaudited |
| UniswapTwapPriceOracleV2Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1860b3714f0163838cf9ee3adc287507824ebdb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a797c7c70c1bf22fdee1c09062aba709cacf04` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29490a6f5b4a999601378547fe681d04d877d29b`; ethereum `0xb7678d6350f9d07e027224962a905c4013b0f906` | ⚠️ Unaudited |
| UniswapV3TwapPriceOracleV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eed20f31e7d434648ff51114446b3cffd1ff9f1` | ⚠️ Unaudited |
| WSTEthPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11de4c003c80dc36a810254b433d727ac71c517` | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (160)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x5e829d997294f7f1d40a45c0f6431af13a381e63) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1bbf310c8707bc2248c0b46a2cd073c81f2cd76c`; ethereum `0x5e829d997294f7f1d40a45c0f6431af13a381e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015e435df0bfb249990be78ce050bf8b3b88f757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391288 | `0x016bf078abcacb987f0589a6d3beadd4316922b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0573cceb1003225034cf287e2fdb225a0e576d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084ec13783c5fa8492a038189932299db549a6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eee5214953f8f54e04c3279ce47548700affad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122ee0a13751f30909ddcd34a9e866d67175d02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14ee0270c80bed60bdc117d4f218dee0a4909f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1510c117c12918f67bc4802747b139d99346d4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159dc835ee77e955f6b5a8ebe0f3cab572fef013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1e7b69348b22b304428a07a7ffa1c6347f8ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5655cbda3a2823568b87ecf5af12c509a54ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac1ec4030d3ebaeae7be8d5786a8a7bca071a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c77d2413e4848c2c73f8e15edd95216f63a9baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216c301a7c45167c605c87f650fb589ba268e1d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f9cebb75ebbaa7b7eddc70d33ffb993896ecb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290e0f31e96e13f9c0db14fd328a3c2a94557245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b88f7f53649efae653e53a204b4618ede06dd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba5f816fb2c219ae1c621c69a263899c1914da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c0cd506669259157474897484b10f2097b0fe63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2da13a91e06ce9619399684fc5429d25dfadc651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f116c0e2788920a913d2164a7851586520553d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3218996f84d2596601834f197e29a669d820efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3288a2d5f11fcbefbf77754e073cad2c10325de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f738c401f864c26fee2fd0f6ad66f6c294982a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472f7e0179fe15cd7450c9c5269c876fac64b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3659a0a9128ee84f143bdc83c4f3932cd8f552e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f74bad13019612b33e359a9b263e904a95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c909fb7c6ad03d968898a2105da767ac736c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397f22662eaf94bf0b05b1205bcde61a3d13d1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a8a76b8c18ad093a0832ca1574422740d08eae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3adc1ff6db7a10a7a6d82cf0b65b701b36b6bf1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1c9f632def81f02b64f1e45db05c046c5c6888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0ae9e61fe649e09ddbdcbc8f9d995694ba80d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f44ca47db5d8240ee5f3b8df4eedf45547a5e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f579f097f2ce8696ae8c417582cfafde9ec9966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402026b4525df39f1072a9de672b23b7c11c9ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4186c5aed424876f7ebe52f9148552a45e17f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c7f2d48bde2397dff43dada367d2bd3527452f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e004d19dddd185ac19c0daf1225540a81c0d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a4af90cfc103a71e893a0302dd25940a8baf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4af56ef284388b5b3d344f7caed1ff3eb0599874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4afb2b3dc111d091ca6c46c024d1d2f17bf477e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d10ca761814f56be0b99b45ea1857f494959ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9e0684ad569bc1a70905b02c367f1e80173735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9b31514e15b504686a1ebc0d7e8fb40934c7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50293eb96e90616fad66cef227eda2b344f592c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539c54bd78b89079f57560ea95080da7a76d81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5447c825ee330015418c1a0d840c4a1b5a7176cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545d7ceb4f1af03cad930c6a6f7634f3406755dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55448f02e3bd7b19a0585876d301043a91426b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a729b2fd6b137502d2d70329dcfd40e4af29a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c3e7119ec200c09b2b3a9f8ce3bd77b6b47012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594bca95159757b270c2ac6bcb3105620c7b1aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aab54196368878d603db79d54c4233c54bb1d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5add5c070902e4b535f76bafac486cc689095d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aeeb31cf3dd740fb6cfa7e8c2af6daf2c3f7cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f2df200636e203863819cbeaa02017cfabec4d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a315ceb791cdf6c7f17b14ba03aaadbd96c054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6127e381756796fb978bc872556bf790f14cde98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619de905be35aa5bb05f2bd5ab0b8d425065557d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626a6f2279306637f6fe3dd2ca7a06c86d723890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626d6979f3607d13051594d8b27a0a64e413bc11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b79a03dd859b99022166af0a66334b1e646fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66159b1250f7ec2e335176643c25a0a3deae7b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679680ae60c008eae23e18e143aea4a0d75b2f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68ac6adeefdfbbd603bad9db0bb64a90dd2d51c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab2497db9f36ebd69d2f9f13329a27fe070af09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd8e1df9f366e6494c2601e515813e0f9219a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e34593dec1c0bd1326e83b36a293e691e12c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71041665f8d82b35f8fa15daa7c2e9010c1bb790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72609cd3ae6110aadda977af5886680c6ac47ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ad938d1c649c4ea1f69d53497f4cbd35c9ba4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72fd4c801f5845ab672a12bce1b05bdba1fd851a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7328a02a9d9ce05fc9c8e548d27df0d981f5a3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77157556cd422e369c35f914fd8ddcd35e59ea9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x775234178eb3424ac177546bd2093abdbc4cf0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc6da9cb9139f4bf04c1562de7cb5ffe18af007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391291 | `0x7c332fea58056d1ef6ab2b2016ce4900773dc399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c99ae5a1e01a8942575c906a3abbcf7f2fa3f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ecaf96c79c2b263afe4f486ec9a74f8e563e0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80829b8a344741e28ae70374be02ec9d4b51cd89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83728b5ba733b849bc35b4aa8544cfbfb814b814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85aaa627b152659202d901f25022a44d7a742c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a405a42792ea23045e54cdeddb270a0fe23e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884159900e528c2337810986191e5914f0cbfdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e4a3cb522e6b916051cf166d8c00996370a721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c1e81145e49b27a595388459d0221fc7ca69d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8db1884def49b001c0b9b2fd5ba8e8b71f69b958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9e1aef096763124ce9682fabcf67f428232e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f3eaad739f99f5408e249660aa6dafe4760be20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948e587a4c175e3b4208f8084e6b8c5c0c4dae66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b6879573ae5c09cbe200c96b407ef9ac74fcc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e6e953c9a9250c8e889d888158f27752e0afe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9827b882671747d096ce5b2d80a6e1ab126b5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f7cbbaac87624b77ddf6bc229a7f48b38219ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a1c51c2d8ea2275e538fc69acf031c376c114c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e35ce1edaa2cbe4c2c61627ccada05646bf52d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fa9ffa397be8e33930571dcd9f5f92b629b0fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13a429f7f629012bb20f4f8418aa64d860b24cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18c88f04e46caa1541c90e8eb1a25f9f45b8c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3285883df1a64775ca05e2517cdca2d420aaa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f8dd6bd8f56e18eece37c7b56d2075156ea928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae130fb40a137bb84f0b71e3b8651594874019cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae7c2169f3b5179ba56e471623bc47bee06e4aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb04be6165cf1879310e48f8900ad8c647b9b5c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb202cad3965997f2f5e67b349b2c5df036b9792e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5e8e42639e20285c9e58a317c28d9a4d7cb7000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5eeaeb4e7e0a9fed003ed402016342a09fc2784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb669d0319fb9de553e5c206e6fbebd58512b668b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb77a6a11a5998a6c7b9337f97fd82f0d90f873b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf29f83d9a0ec1d9ec7281381e04750b817fea4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf8abdd5b8c4561d3380a8af20f7dea0a68d854f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc09e9858bb85e0345be6ba4b9b74b667c492b39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d4c40fd7777f4b15abbe530b54b44d16a204e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc115814fb76891164a011954ab58b67996a808fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc201b8c8dd22c779025e16f1825c90e1e6dd6a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7a8424040321e43f413396ba4c8d319524af3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca844845a3578296b3fcfe50fc3a1064a2922fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe7a81292b089a1ce3ba5343531eeb7aa567157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc29fe6a0e090d464abb616e1ae4ceea415c140e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a758149896530a114c7f5e4c4daf093fc184a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57ba8d8aa1fadc329b6529640cdcde84ef22e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a8cac634e59c00a3d4163f839d068458e39869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7590e93a2e04110ad50ec70eade7490f7b8228a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd806782b31ec52fcb7f2a009d7d045bb732431fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9456c29f7ba8538a316836c42b64ec6e53d8ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a29423a952629d814b4531212086825e184544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9eefdb09d75ca848433079ea72ef609a1c1ea21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddb0d86fdbf33210ba6efc97757ffcdbf26b5530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf28109e765d3d8e88c9bcd2263f0e03dafd001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde6796aa414173b63f626be1f13e419d8e35fc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeacc4f27379deff3d40974f72c60b664ea78f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe178524348a6d09de427cf076a0c3f587592a29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23b821d5400a9a729036350bded215bd74d0042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe264631bbaa8c1ad73d1354a829615a4d9bf6f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5bb43b4274a25049f43298c6d38f299bac47d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7db5c6b22654e0fd9da4e90f7afbdcfc579b9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb988f5492c86584f8d8f1b8662188d5a9bfe357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc0752232697f17ebfaa1f26ab8543ecec35ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebea141052d759b75c4c9eeaad28f07f329d0163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec75777be4585d20bd5ecea354f7da62f97440b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2cd60c0000a990a5ffaf0e7ddc70a37d7c623f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1a4e2ca6fbedd135f1173be8d8b4c197a13cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3035775e3c3d5710a2c374f883215d45165ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb1061514c0fed04ef3dbe72b0dd9889b65d3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0239157ba67fb793ac6833056de15ce5c7388b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0f3a1494ae00b5350535b7777abb2f499fc13d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3a36bb3b627a5c8c36ba0714fe035a401e86b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c10a283baf9fccf354ac544b81fd72487dbf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c9148cfcaf42f2d94b3ceed751b8815b719f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8731eb567c4c7693cf497849247668c91c9ed36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc9ec4adbf75a537e4d233720f06f0df01fb7f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7 — no match: The provided text is a URL and title, not the full audit report content. No contract names or scope section could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x66f4856f1bbd1eb09e1c8d9d646f5a3a193da569` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9245efb59f6491ed1652c2dd8a4880cbfadc3ffa` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa422890cbbe5eaa8f1c88590fbab7f319d7e24b6` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xafd2aade64e6ea690173f6de59fc09f5c9190d74` | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb465baf04c087ce3ed1c266f96ca43f4847d9635` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a` | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd6e194af3d9674b62d1b30ec676030c23961275e` | RariFundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00815e0e9d118769542ce24be95f8e21c60e5561` | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee` | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35ddefa2a30474e64314aaa7370abe14c042c6e8` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa3cc9e4b9784c80a05b3af215c32ff223c3ebe5c` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4dee94233dd4d7c2504744ee6d34f3875b3b439` | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d` | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb849daff8045fc295af2f6b4e27874914b5911c6` | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb528e8bb2dcb99cfdea4c28bf44925ef58ab1520` | RariGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c0caeb986c003417d21a7daaf30221d61fc1043` | RariGovernanceTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7` | RariGovernanceTokenUniswapDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5888e7e6d0fbfc8c1d214cab8441658e9266840c` | RariGovernanceTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 115 |
| upstream | 15 |
| standard_library | 5 |
| needs_review | 161 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7

Fork inheritance lineage and inherited audits are included when available.
