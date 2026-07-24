# Agentic Audit Brief: Benqi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 8 (1 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Benqi (`benqi`)
- Website: [https://benqi.fi](https://benqi.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 382 unique implementations (385 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $237,080,773.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Benqi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across avalanche. Structural roles: 6 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: contract (6)
- Detected standards: erc20 (4), chainlinkaggregator (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 64 contracts are derived from known codebases. 64 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x09352661b82d13699272412543ee15b3b48e9679`, chain 43114)
- UnnamedContract (`0x0a77230d17318075983913bc2145db16c7366156`, chain 43114)
- UnnamedContract (`0x0ebfebd41e1ea83be5e911cdcd2730a0ccee344d`, chain 43114)
- UnnamedContract (`0x177e073bbddf20e654758b0f08b6d7c9195e90c8`, chain 43114)
- UnnamedContract (`0x178b8eda2c4c8a11f6b8657d3a0cd21c99be85ae`, chain 43114)
- UnnamedContract (`0x2779d32d5166baaa2b2b658333ba7e6ec0c65743`, chain 43114)
- UnnamedContract (`0x2854ca10a54800e15a2a25cfa52567166434ff0a`, chain 43114)
- UnnamedContract (`0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be`, chain 43114)
- UnnamedContract (`0x2eeca8c0a0112a869b22a997908aaf4b44082491`, chain 43114)
- UnnamedContract (`0x354106dadacf4afc8eee9eb8db1c5bb76a07dbad`, chain 43114)
- UnnamedContract (`0x35bd6aeda81a7e5fc7a7832490e71f757b0cd9ce`, chain 43114)
- UnnamedContract (`0x36e039e6391a5e7a7267650979fdf613f659be5d`, chain 43114)
- UnnamedContract (`0x4036cb0d6bf6b5f17aa4e05191f86d4b1655b0d9`, chain 43114)
- UnnamedContract (`0x46ec14c96443458035062c4804e15e2433dff403`, chain 43114)
- UnnamedContract (`0x486af39519b4dc9a7fccd318217352830e8ad9b4`, chain 43114)
- UnnamedContract (`0x49ccd9ca821efeab2b98c60dc60f518e765ede9a`, chain 43114)
- UnnamedContract (`0x4e9f683a27a6bdad3fc2764003759277e93696e6`, chain 43114)
- UnnamedContract (`0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300`, chain 43114)
- UnnamedContract (`0x545356e396350d40cdea888ad73534517399bf96`, chain 43114)
- UnnamedContract (`0x5b4712ce553e94d9b22ba3cfa10cb6f32fb828e0`, chain 43114)
- UnnamedContract (`0x5c2d58627fbe746f5ea24ef6d618f09f8e3f0122`, chain 43114)
- UnnamedContract (`0x66a8cb6c4230b044378ac3676d47ed4fe18e3cfb`, chain 43114)
- UnnamedContract (`0x6a5b3ab3274b738eab25205af6e2d4dd77812924`, chain 43114)
- UnnamedContract (`0x6b35eb18bca06bd7d66a428eeb45ac7d200c1e4e`, chain 43114)
- UnnamedContract (`0x76145e99d3f4165a313e8219141ae0d26900b710`, chain 43114)
- UnnamedContract (`0x77533a0b34cd9aa135ebe795dc40666ca295c16d`, chain 43114)
- UnnamedContract (`0x784da19e61cf348a8c54547531795ecfee2affd1`, chain 43114)
- UnnamedContract (`0x7ee65fdc1c534a6b4f9ea2cc3ca9ac8d6c602abd`, chain 43114)
- UnnamedContract (`0x7f92cabc6aff6d24e36a7115d6a3c32fb9b07466`, chain 43114)
- UnnamedContract (`0x835866d37afb8cb8f8334dccdaf66cf01832ff5d`, chain 43114)
- UnnamedContract (`0x86442e3a98558357d46e6182f4b262f76c4fa26f`, chain 43114)
- UnnamedContract (`0x872670ccae8c19557cc9443eff587d7086b8043a`, chain 43114)
- UnnamedContract (`0x89a415b3d20098e6a6c8f7a59001c67bd3129821`, chain 43114)
- UnnamedContract (`0x8de6fd5ae468ba7a21b3d4869b281c9c999e4208`, chain 43114)
- UnnamedContract (`0x976b3d034e162d8bd72d6b9c989d545b839003b0`, chain 43114)
- UnnamedContract (`0x9f21eb10b7bc56a7d7879e67fb7bac415eafb973`, chain 43114)
- UnnamedContract (`0xb6dd1c91f352b7c1483370efb7be1e06549f2f23`, chain 43114)
- UnnamedContract (`0xb715808a78f6041e46d61cb123c9b4a27056ae9c`, chain 43114)
- UnnamedContract (`0xb71a820d80189073f69498010cb67bddae050633`, chain 43114)
- UnnamedContract (`0xb7cfb8ae67e20059021a0d20fc30311a6c67c734`, chain 43114)
- UnnamedContract (`0xbeb5d47a3f720ec0a390d04b4d41ed7d9688bc7f`, chain 43114)
- UnnamedContract (`0xc33fd9cc294371398a6c7880a05f6b039f3a138c`, chain 43114)
- UnnamedContract (`0xc9a487f87a8e2320b251d28475dfab44a42e3c69`, chain 43114)
- UnnamedContract (`0xc9e5999b8e75c3feb117f6f73e664b9f3c8ca65c`, chain 43114)
- UnnamedContract (`0xcf1e5c990943b7af4671eddf336a3ad5277e59bc`, chain 43114)
- UnnamedContract (`0xcffa8b54d01962bfda2c6c06229f576e8a38972c`, chain 43114)
- UnnamedContract (`0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8`, chain 43114)
- UnnamedContract (`0xd7c4006d33da2a0a8525791ed212bbcd7aca763f`, chain 43114)
- UnnamedContract (`0xd8fcda6ec4bdc547c0827b8804e89acd817d56ef`, chain 43114)
- UnnamedContract (`0xd955ad95185ab094415cae19bf923d5f9dc9bd80`, chain 43114)
- UnnamedContract (`0xde12e956aa65e0581e9c470ace2a8194987a8935`, chain 43114)
- UnnamedContract (`0xe194c4c5ac32a3c9ffdb358d9bfd523a0b6d1568`, chain 43114)
- UnnamedContract (`0xebe676ee90fe1112671f19b6b7459bc678b67e8a`, chain 43114)
- UnnamedContract (`0xf096872672f44d6eba71458d74fe67f9a77a23b9`, chain 43114)
- UnnamedContract (`0xf28043598a1824053097d5c4fedd7cd1cf731e76`, chain 43114)
- UnnamedContract (`0xf362fea9659cf036792c9cb02f8ff8198e21b4cb`, chain 43114)
- UnnamedContract (`0xfa5210b2584cc625883fe1431188e4e086052205`, chain 43114)
- UnnamedContract (`0xfc8c7271bdc3816d7ab1fc802216bad387692ce1`, chain 43114)
- EACAggregatorProxy (`0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a`, chain 43114)
- JoePair (`0x2774516897ac629ad3ed9dcac7e375dda78412b9`, chain 43114)
- PangolinPair (`0xe530dc2095ef5653205cf5ea79f8979a7028065c`, chain 43114)
- QiAvax (`0x5c0401e81bc07ca70fad469b451682c0d747ef1c`, chain 43114)
- QiErc20Delegator (`0x0ffac5aae14e28e79c5ccc7a335d8c70ee458a3a`, chain 43114)
- QiErc20Delegator (`0x334ad834cd4481bb02d09615e7c11a00579a7909`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 63/63 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 63 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 319 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 63 of 382 unique; 319 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/39
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 343
- Unique implementations: 382
- Raw deployments: 385
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 2.6% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| QiAvax | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229391 | `0x5c0401e81bc07ca70fad469b451682c0d747ef1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c04457b00b09f30d3bc866e3d14493a8069e7d7` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a58227e7d7a8175e4f5f8a0d32968d153b9ce59` | ⚠️ Unaudited |
| BenqiDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0594dc26f835f72b343cb9838cf97a4667a601bd` | ⚠️ Unaudited |
| BenqiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dad3320425eed4473fda17cca7de320b3680895` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd16750e11f8adea3e26eca9e89269364c1fa228` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac33e98174a897ecf21bd5c6e67696007aa58527` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229368 | `0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a` | ⚠️ Unaudited |
| EdgePushOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07a4f5e8d15c52210691993b97df8d44686305af` | ⚠️ Unaudited |
| GaugeController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x14593cb3ffe270a72862eb08ceb57bc3d4ddc16c` | ⚠️ Unaudited |
| Ignite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e257aad875b7a38d5904088e71260bc3ef63497` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6` | ⚠️ Unaudited |
| JoePair | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229375 | `0x2774516897ac629ad3ed9dcac7e375dda78412b9` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x363637833d110f86e47311e4c54e520982721f3b` | ⚠️ Unaudited |
| Lens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87457bf0451914bf62c6c1bc2dc9eb1a8076eb8e` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10338ee9417260b486a4d1452ee2496338b05348` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0462fd9715d22ee4a8109e58588361a0b4a379fe` | ⚠️ Unaudited |
| PangolinPair | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229423 | `0xe530dc2095ef5653205cf5ea79f8979a7028065c` | ⚠️ Unaudited |
| PauseGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80bdda5305b26102b3f63331419bef2f16ce458c` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58a2929eadfa4e9577f79ab06a4263e28fadd0bb` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2295e1cad2ea081a4a2ed85f59006e6fd42b5a66` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8729438eb15e2c8b576fcc6aecda6a148776c0f5` | ⚠️ Unaudited |
| QiAvaxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2de440f9fc5eec73e28373f6bb69643dc804d5` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229372 | `0x0ffac5aae14e28e79c5ccc7a335d8c70ee458a3a` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | project_anchor | own_supporting | 1 | avalanche | unit-229430 | 2 deployments: avalanche `0x334ad834cd4481bb02d09615e7c11a00579a7909`; avalanche `0x76145e99d3f4165a313e8219141ae0d26900b710` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23de2004592b04d594d23c9a928d0552e29d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9037d683c936d55a4eac4ce2488e9c6f55a4ba1c` | ⚠️ Unaudited |
| RewardLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6eb2c357f4899487c796dfd73acbf07ad50344f2` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1273f29204fc102bd4620485b13cfe27a794ff32` | ⚠️ Unaudited |
| sAVAXExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54b6b49007b684b275d0ebc87c5b201707406de2` | ⚠️ Unaudited |
| StablecoinExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26aa437322e44a231b4d7559bc48bf4e6b102bd7` | ⚠️ Unaudited |
| StakedAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ce7f620eb645a4fbf688a1c1937bc6cb0cbdd29` | ⚠️ Unaudited |
| StakedAvaxPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x270fa51d6e593561dd493937a806f65fcda5d075` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x09c1e991870cbc01009a4b49397a4f2a127d3784`; avalanche `0xbc8763b71ef33be9867d022a1a43b3e2323b2d9c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3784dfedd6900c01a6548ce12c143dfd1a025563`; avalanche `0xcf9a06d058bf71f0e3207eacfc46e1f051db1f06` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaf548a3a74939650d7a5d7550cf785975ed400a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (343)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01f3328478210cca0c4650a68ab06233a4421aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0641072138e242c8e24609ae04bb6de593a658b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x076de3812bdbdae1330064fc01adf7f4eaa123f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08247547281bc215c4c1481bf4f1077eb19b1fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229369 | `0x09352661b82d13699272412543ee15b3b48e9679` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229370 | `0x0a77230d17318075983913bc2145db16c7366156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b38528a66a52dce08444ed18fb09303a3a50502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c40be7d32311b36be365a2a220243b8a651df5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c7fa135b4ee3931e30c527dfb3d194e85237c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ea85e34b26ff769e63c24776baba60782446166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ebc3e27f57c11041082fae1dda4b471e9a4f58e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229371 | `0x0ebfebd41e1ea83be5e911cdcd2730a0ccee344d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0efb5a96ed1b33308a73355c56aa1bc1aa7e4a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10ba0662993e137642d6d4959037cf12b784eb46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f3dd258707a398964a286d9f2ef556c6ad82e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1101a719b823d1d8a9c2890d1deffa66c38f8cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x121c188f76831f504bd29c753074b37a4177cec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12af94c3716bbf339aa26bfd927ddde63b27d50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12fe6a4df310d4ad9887d27d4fce45a6494d4a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x154bab1fc1d87ff641eed0e9bc0f8a50d880d2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15811f91fab76bd240caec783a32f1baae41c513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15f30de066d21e4828d78a497d31c665a6162d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x163131609562e578754af12e998635bfca56712c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229373 | `0x177e073bbddf20e654758b0f08b6d7c9195e90c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229374 | `0x178b8eda2c4c8a11f6b8657d3a0cd21c99be85ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1872758f3635aa3cfa58ca30bc2ec84e5a2c493f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x190d94613a09ad7931fcd17cd6a8f9b6b47ad414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x191ee739d50b1bf397ad83b6dbfcb8e3797257eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x192f2dba961bb0277520c082d6bfa87d5961333e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a1b7d976d971df021829ccae7efa20990e6d09a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b8a25f73c9420dd507406c3a3816a276b62f56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1da810994e5c34899e146eb32eadb65c2ae13dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e71c95fbd8118b2dba0a6d61b1386888b72c01a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ef9592f449761c6eda75c1fcfc45d625f3d5c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f41ef93dece881ad0b98082b2d44d3f6f0c515b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fa4fc8e55939fc511d048e1cecafb4b2d30f9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fef4bdba4d86ac6d863f30af9c7d90db4877429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21e622f72b6927fec426d539740980188fd2b56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2223338267ff42814d53ae1c02979164b0528fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x239d3bc5fa247337287cb03f53b8bc63dbbc332d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2575472517d23ae4b9d4670f84f0c9c4efc3876c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27355df92298c785440a4d16574df736eb0627d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229376 | `0x2779d32d5166baaa2b2b658333ba7e6ec0c65743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28043b1ebd41860b93ec1f1ec19560760b6db556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281b7976ec51ec1dcdcd393ce4937339f6109521` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229377 | `0x2854ca10a54800e15a2a25cfa52567166434ff0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x292d9e9a16a120e9b124407e50723520eb3827a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x299164f16276b97261f77dd91c27c541cd7d6117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29e480d97ff2544047c7b89c9096058c834cd907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229378 | `0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b341cba9c8c8d371b67a98f5e521061307cb747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ca02eda655e9d1fece1954e0994b2f2c608aa83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2dd517b2f9ba49cedb0573131fd97a5ac19ff648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2dfafa36bd95ebf0345539070a855bf0a4ffef0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e35184dd4cd0ed096c6458aae819a9374802d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e581710e811e785b5e11f064aede3eec0bd5c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e7574c025add37fce2eb88bb0ef34289f50af91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e7e21f479167c1206420c956f3e8e392da580f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eba2c3cdf50f5bc20fc23f533b227db6b10a725` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229379 | `0x2eeca8c0a0112a869b22a997908aaf4b44082491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f14682dcc96bd203deaa43f556c3a1e1aea7496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f194315f122d374a27973e259783d5c864a5bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f4c2ff7ecdf8658b5bf20a2ab180c6ec3cff648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30fbf3a4cd78bf802d32190db4addb80c8794f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31863a8b33e21c66fe0066cab657f6a7d91b953d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x318bfa8c1ce223836fde0ad60e8a5e04fd0d8924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31f1ac70f0193f7949dc76921553852fa12b91b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3325e00de11ad1abc8c42d4dbde798f1f8851169` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229380 | `0x354106dadacf4afc8eee9eb8db1c5bb76a07dbad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229381 | `0x35bd6aeda81a7e5fc7a7832490e71f757b0cd9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229382 | `0x36e039e6391a5e7a7267650979fdf613f659be5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x375b72e40c1a16424ead361ec308b1cbcf5cb721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38e73609df69e432266595bde141ee13ecdf6409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x396449894682f83bd3cae988423bf0f50156f928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3aadc82b68784b49a9e01c0af4c9221b16282e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b37950485b450edf90cbb85d0cd27308af4ab9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ca13391e9fb38a75330fb28f8cc2eb3d9ceceed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ebbfc5f7aeb55f294f71846f2c3af4df79421ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f20d00885404c6b1c852911a7339c5320b168a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f7ed0f1950058c860884a87f9156159b29c67b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229383 | `0x4036cb0d6bf6b5f17aa4e05191f86d4b1655b0d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45b181254ab5b5dfac5cf6165418b8eecae351ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45b73930ae07c902275312c6b5bace505d4a5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45d531e6bb4ef640bf4bfc1dde832e1edffea8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45ff4290b546a16788ddf27212f1805bbe34e554` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229384 | `0x46ec14c96443458035062c4804e15e2433dff403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4796e1e2ae921b8408ab52c0fc9dd991d57bfaef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229385 | `0x486af39519b4dc9a7fccd318217352830e8ad9b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4932890105a6c43ac2fd28a67d78c57d766a106a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49aeaddd9661d5291b981e6683f1feae63b040ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229386 | `0x49ccd9ca821efeab2b98c60dc60f518e765ede9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a5ce69a1ada639042b30e1574eb9d6e939388a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bc3bebb7eb60155f8b38771d9926d9a23dad5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cf57dc9028187b9daaf773c8eca941036989238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4dae58e5516d327333b60d2714e5f0b06584bfce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229387 | `0x4e9f683a27a6bdad3fc2764003759277e93696e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f2eaebdd835ebe9108e718c0b6551e868381a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fb301a24d2a4667f168cb0c12fddd623cc635da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fd09df79fb78fe9e67fbc8a828d5c4865285d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51758d811696acb994aa993bd3dd088b6c3320f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229388 | `0x51d7180eda2260cc4f6e4eebb82fef5c3c2b8300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x535f0da2b8587bd3781ae3875b86addc05ba4d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229389 | `0x545356e396350d40cdea888ad73534517399bf96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x556aef0a513fcb064e6a1e5fc7b9cf1c87dc4435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55885023948ba6dcd9c228a5a7b877443e4b43e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55d0a1b961bb75c010970a380f32a94965c3a7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5640b2e8724231e5e7baa53375dc63d7bbea04eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x567e88b78311643ef066c7535b27f371c05f7695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58c5ff7c53ab76ddd93e868d6811d7e426cdab88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58f5eb5a8ddc2f28861f1db51da6b6c57a7f1559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59b37d5ab5f4fb4837bd6723bcdeac2835234d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a927f1f7593c8cf4282ba3c326fbc0c0e41d9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5af11eec59e1bac3f4e2565621b43cfbe748e698` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229390 | `0x5b4712ce553e94d9b22ba3cfa10cb6f32fb828e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229392 | `0x5c2d58627fbe746f5ea24ef6d618f09f8e3f0122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d1f504211c17365ca66353442a74d4435a8b778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d6af648f02358df361a89664a12f68fab058119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5eb2a7af6ef5f8bd23a05701d62bf8bf1b4d14df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5edc2538e11b67cf93ed145b04e5e457d9f9cc0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x615049d0f6441b8bf09876a97a28b7719a951f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x618d9e02e4d5e80fe910fc3838b54a5ea28cbae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6339dfd6433c305661b060659922a70fc4eebac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6373b49043e5eecfaa84503432d2fc44369d4f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63769951e4cfdbdc653dd9bbde63d2ce0746e5f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229393 | `0x66a8cb6c4230b044378ac3676d47ed4fe18e3cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6861317b2901ee29ff10ae851af2234380422aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x688da6e819cbc3c03b822b3789ec4a5d6dee95c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68dd548301f5edd220def2ca7be59d7335666ec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229394 | `0x6a5b3ab3274b738eab25205af6e2d4dd77812924` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229395 | `0x6b35eb18bca06bd7d66a428eeb45ac7d200c1e4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x715fbcbf95c9344d8ae0d9a94c526aa253a56026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71ce7415e4d0300e2280ec401fc660b0cdc098eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73ad25e61d707c900393eca73a6909a59d6a9930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7552b6a72df94c149c5554cf095409a228b21e7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229396 | `0x77533a0b34cd9aa135ebe795dc40666ca295c16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x777c470910a6d883938940b93539d6127c052502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x779fa521cf8c1a3472cdadcc0ba5a6f9f81175d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229397 | `0x784da19e61cf348a8c54547531795ecfee2affd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a1b5172e1c24ae24de27e71979d838de4b44991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ab6f26ae569e19b4a34e267a79358444f8a4132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7af8f6af9a4f9031d52200f74c61708c1fd53aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b0ca9a6d03fe0467a31ca850f5bca51e027b3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b1eed401e8adf4a9d27bd26c6964c9d0e53bfb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7bd97dd6c199532d11cf5f55e13a120db6dd0f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c28e5fe04694c2bc2b8664492e6b82dfc4c2ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ca73c187f502d5294ee8a8cc85ef1626c61b74c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e0726b97aabd182a413a1e933ad1823f045d089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229398 | `0x7ee65fdc1c534a6b4f9ea2cc3ca9ac8d6c602abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f7a07ffde2ab490dad0c0d139d6c730bbe842cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229399 | `0x7f92cabc6aff6d24e36a7115d6a3c32fb9b07466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fa367967ce7903fc5ce25a969cb7db792a8f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fa9442f28948e948e86c0258e361f1208699b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fff1541757aa3b64262c3c6a712d94bbf289b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x800ca870416cdfef77991036b8e1f2e51623996e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81f31f4dd68e147152a80fba41b2e5502916e216` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229400 | `0x835866d37afb8cb8f8334dccdaf66cf01832ff5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83c27aff5aa000e61adafa99ab8c482da97f5ab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229401 | `0x86442e3a98558357d46e6182f4b262f76c4fa26f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229402 | `0x872670ccae8c19557cc9443eff587d7086b8043a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8742db1bc8ca3e9ce4d8ff1ba131c32ad24589a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8791f3cc02d029b26d8056fa7bc26e92030b34d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229403 | `0x89a415b3d20098e6a6c8f7a59001c67bd3129821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a8ad92995ff02b53ba890785c2c8c36db6280fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b050c37b0c8de8f91c1bf648c6c0a4e4ed7c6ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b6c17529b122fe39e7f561749476cb0efc5ae6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c4e9950e9a3545ff6ec01ad5f26ca0dffadc792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c90b3c9b5d27a375ab694d5a456a44b54f1c369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d49944031279d4255994f8025007930938f5df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d5b529acbf96e4045ee019ecc0472ab2cae4a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229404 | `0x8de6fd5ae468ba7a21b3d4869b281c9c999e4208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f937bbaa8508268cc2c3d2a54c8d01d30eed679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9000c1b1b43fc6e3aab9682cd73b031633171827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90f08ec107072ea389998b7fccfa2c4edab3dc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91340d7b491a6a3a679c1906917bc969b558ddee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91429ddc50b38baf3ba9cb5eb0275507ac65cbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92398caf00d65e9a63b5d50d1cbd53223137a400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x926c0857bcb6b109c1260c3b6660efa8e633d73a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x934c2eae6ff26103ee50020b1f452944097f90c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93676a067566ec92a5b16aa741b9d4b45649711e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93f7536a178dd638208cb882a97449491c554ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9450a29ef091b625e976ce66f2a5818e20791999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94d8c2548018c27f1aa078a23c4158206be1cc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x955998975cfdafd0e0dc60f5a92e14fa72384aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95edda00bce60f99fb0be38fe500ebd879ab651a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95fa8ee59ccab849e2ef01aed5b67a4de5a84b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x971ff919f91ffd1faa847e1a773e8a547e3efc82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229405 | `0x976b3d034e162d8bd72d6b9c989d545b839003b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97d146e55140a96e3b653326a76aed445ef29b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99be7a7bed047b73c2bd8c383865354f543e76f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a1372f9b1b71b3a5a72e092ae67e172dbd7daaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bd5aaf454c4265f2bdfa0ded9b3c00ca12dc49f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c05065e211df0b2f10d0649c161f442c3a21e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c81461b6b821407e0a2968f9cec23e3c7063f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cf01269e491375dbe3c725927aa025bac47beeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cf3ef104a973b351b2c032aa6793c3a6f76b448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d5024f957afd987fddb0a7111c8c5352a3f274c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e107262620cfc6e0e2445df6c0ca0a9ad9ba627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e82583414771b593a1d730c94f828d23f922f81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229406 | `0x9f21eb10b7bc56a7d7879e67fb7bac415eafb973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f6aa2ab14bff53e4b79a81ce1554f1dfdbb6608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fdde4939bd068413da2cf2b059915ce55d32478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa01516869d8325fd18a77b307ca38cab1eb8fdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0326d3ad91d7724380c096aa62ae1d5a8d260a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0470b70226609b358e007fdb530980a8dca5f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa0e3023cb309400ab08f598f0f2091d29903bcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa15515d5307e910e2e913fab2b7689d76f3d6fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2e5d3254f7d6e8c051afb7f2aeea0dabf21f750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa309026731db1c214d7821b283c86ba8aa16c970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa42c0567edf06b66d077f19ec4e50ab1ccd99d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa61bf273688ea095b5e4c11f1af5e763f7aeee91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa61f2411351649cc0ce4443517f16b0f522e1554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6c229d3a1d4d31708b16c0ad2f14337ae4e7893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7a2d550df3cbc8fe81bb80851425582c66801d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa80345cfa40cab34b16f2515fd7cdf8243544f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8b69d165dc2dc8a205adbc8f93d3582a5f93454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa94fbcbe967e25cfb132182dd57fbbbede765799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9539b2ea79b35d2efe5b22d9dbae2459fd80838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaad2d03809430eaf2ec17bc6f4d2260e6e409cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac65c4079d3872c43baca8606d4debc3e09ada07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaca6fa1922ce2450fc52d3616029f4bc42ca0114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae48f22903d43f13f66cc650f57bd4654ac222cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaec3e48648c46b9eda4c8832e2f0a6b23289915d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf2c034c764d53005cc6cbc092518112cbd652bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafcc5b1b294bf9181e55fdf33dc8a17b0a80921e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0996586868f1fd92de020508e9b999ee01b5a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb17e06929dc3b39ba3f71882b0f5d16a183bbb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1df65f5507ea91c5cf68131da353506e9c5b994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2b94f103406bd5d04d84a1bebc3e89f05eeddea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb41bb502d214499b1637d7f1c398a00df081714b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb50d5db75a844365995c29b534a31536a4c56513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb59b26d9e5676bf3aaf9f464d8b2aea5faa8637f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6bca3db345dc8fb8d8b68f1fecb8e3fd448ecbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6bf5757fee584a6979322a5ff5bcbafafe83a01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229407 | `0xb6dd1c91f352b7c1483370efb7be1e06549f2f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6f7e0129439829a3679bd06102fdcaa41ebee5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229408 | `0xb715808a78f6041e46d61cb123c9b4a27056ae9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229409 | `0xb71a820d80189073f69498010cb67bddae050633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb73242b15601ee13f447967fdf97600e0460324b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb78121dfdba68a12c0a1b490e7ce01d87772d984` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb786058dcdc97765ed5c4a2d9d68a4421f2ba1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb791c7a42fd0d10f90deaa906a8735f79719fa53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229410 | `0xb7cfb8ae67e20059021a0d20fc30311a6c67c734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8ae2a6d9efe6b0f5b2e65d3e8de3338f504e070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8aeb9160385fa2d1b63b5e88351238593ba0127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8b3dc402f7e5bfb2883d9ab1641cec95d88702d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaa9ae3370ba3804619ea75979c56d1137a904a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb1a32177f235af09603754ea76d524255dbbdaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbba56ef1565354217a3353a466edb82e8f25b08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd3938c97fe5946f44ce105850820c99bb7cf506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdc0e3a98a336f1f5f2c56628e0ae122b6cc6e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe865442c3a0042f6d619027c697ca409513ffb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229411 | `0xbeb5d47a3f720ec0a390d04b4d41ed7d9688bc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc007ac01b363f0fe4cc7fc2d5cdb28b6db82d7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0dc5bcb5cee157ced0b2df6d130f596915c365c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc27201f18fe55128de3aa54e9863b3b792941cf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229412 | `0xc33fd9cc294371398a6c7880a05f6b039f3a138c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc40590b61e6bb2c8241dcb045b77aaf2adfead31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc436f5bc8a8bd9c9e240a2a83d44705ec87a9d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc46a73af3bf02da273f8ba3225176aab5a92cb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4c5a7055e4b8fce44f1ad45493f298b71425625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc668904f9155ff4f36d04eb82d2691f290491f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc76a22d6b7def2c2d0996bf11cd1d881d93f429c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7868fd263a08f26a5683bdbaef12fcf508a2cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc79a363a3f849d8b3f6a1932f748ea9d4fb2f607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8390acd9cefdff27d9115c67c6e23950a2ac1fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229413 | `0xc9a487f87a8e2320b251d28475dfab44a42e3c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9d097d3e87e67bf53f3e2bace448f11491a1b31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229414 | `0xc9e5999b8e75c3feb117f6f73e664b9f3c8ca65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9fb2f508b2ab47826d6ccf2f965b21b24ba58d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb7f6ef54bdc05b704a0acf604a6a16c53d359e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc4633a1a85d553623bac7945bd87cfad6e6a8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd7c5d53e1d884842b8024bafc94455df675d15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce273e39d58d5552da7d109a37adb42466be5d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229415 | `0xcf1e5c990943b7af4671eddf336a3ad5277e59bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf667fb6bd30c520a435391c50cadcde15e5e12f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229416 | `0xcffa8b54d01962bfda2c6c06229f576e8a38972c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcffb7b219a6ee67468b02fe4e34e33fd393c76ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0f02b1a6a123a996fcc0bc49ae0218924b73464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1cc11c5102be7dd8919715e6b04e1af1e43fdc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd21e887bbaa3969c52613f642d8f25f5341f76e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd220f2c184d126f00861afea0477813212fd93fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2d80963dd7e951e6c03497cb1e6f8719d9ccb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd38a19100530b99c3b84cca971dfd96bd557aa91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd555c9012e0a150de7932370d56d6b6d6e4ebccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6460f9bebf639c543e5f66758ba44450cbb20e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229417 | `0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229418 | `0xd7c4006d33da2a0a8525791ed212bbcd7aca763f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8d347d4b1a7c5ee44e9c71a881520246b2579a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8dce114b91b57f8004dbac8882aa9d0d2aca921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8e426c61b0fbbda06e9f603263abea09d717dbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229419 | `0xd8fcda6ec4bdc547c0827b8804e89acd817d56ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229420 | `0xd955ad95185ab094415cae19bf923d5f9dc9bd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda3a56919fa2659d228445fb148c860e746b9926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbdef650ab5a1ab1de770d7d9ee2465495d422da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc4410d3f810b3fdaeb6ba7c7910ca4324b4db31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde0177e57a2b63399d5ce45969bbf4e219fa7c9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229421 | `0xde12e956aa65e0581e9c470ace2a8194987a8935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde354065ce8020a500efba5710ecd5d7d9ca0fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdead28b47df38e69e0f5b714612d1754810e8f00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229422 | `0xe194c4c5ac32a3c9ffdb358d9bfd523a0b6d1568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe464c0cd49a9d9eda2d2b31f1753a98779ef7eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe487a601d042bc90c8e6ad8eec849540798c07c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe58cc7909908af8226505e2be41165238aaf6431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe595809278a4fe893bbaa85cc9d592989bd1a683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59988d947f80b59ff1de7bd413e5e5517906cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe69af3f35d26c0045970cfb614afb50a8ade1119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe78994505e38eb6fcde0591e32f96bedcab7bc61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7a4ece4178bf3087aa163470dbc9b4c5967df6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb4ee988d975a91f02884076717d5eeacb41976f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229424 | `0xebe676ee90fe1112671f19b6b7459bc678b67e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec39841cd5199ddcd09e02e4f242826cdeddfc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee5441fcd27e1d8e507b022e1367088757f9dd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef320d919f4df79c6f4206eb89f78a0b8f21f496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefaa69f461e0aaf0be1798b01371daf14ac55ea8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229425 | `0xf096872672f44d6eba71458d74fe67f9a77a23b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19673a52d8ab1c4c0cb322242873d3f079d9779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1bd291851cb06b0076ab59ec23400866fab1b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229426 | `0xf28043598a1824053097d5c4fedd7cd1cf731e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229427 | `0xf362fea9659cf036792c9cb02f8ff8198e21b4cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3d9b58646c576be2160739417b2216fd074e746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf49235407177cf0abf22ea84372f688cc9f1ddff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4ffc8e539a4fb003878b18864c713eb14ec8b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf58b78581c480caff667c63fedd564ecf01ef86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf69d4eaddac9a1004c3dd595c23d2c0eebd7bbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6d9bbe9dfe37e9fcb51f02018b031c27ed7e077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf6fbc191023f476f66ae6708781dc1ca58a93f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7eca822e50c2be23d0c7bf242cf955a0a16d223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf805e22c81ef330967eec52f7edb0c6b31fd5ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf81b4c4abf7de8b8fc560d66f0eb70598d8bf15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8b283ad4d969ecfd70005714dd5910160565b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8d3388f9085aed65f88813c94934447a9031450` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229428 | `0xfa5210b2584cc625883fe1431188e4e086052205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfaa665f5a0e13beea63b6dff601dd634959690df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb0388daf4004d34d5a3209e1e5dd8c96a2a6d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfbd998938f8f7210eec3d1e12e80a10972f02aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc2360b75b784cc68e9868013ec39ddfdadf0c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-229429 | `0xfc8c7271bdc3816d7ab1fc802216bad387692ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd0bab3735a2bd1f2fff0fb2119b0f9fb7661360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd436ad484d29bd75d0917777a8d7b183255212b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf984af7a4cd6cc5a4fa703240cf0ff4b1b0447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffaa00bb5903fa766f259568683ad35314df157f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 288
- Live contracts: 0
- Unknown liveness contracts: 288
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=288

Showing first 200 of 288 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x01f3328478210cca0c4650a68ab06233a4421aad` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0641072138e242c8e24609ae04bb6de593a658b1` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10f3dd258707a398964a286d9f2ef556c6ad82e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x15f30de066d21e4828d78a497d31c665a6162d2d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x190d94613a09ad7931fcd17cd6a8f9b6b47ad414` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1da810994e5c34899e146eb32eadb65c2ae13dd7` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2575472517d23ae4b9d4670f84f0c9c4efc3876c` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x292d9e9a16a120e9b124407e50723520eb3827a7` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2e35184dd4cd0ed096c6458aae819a9374802d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f14682dcc96bd203deaa43f556c3a1e1aea7496` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x30fbf3a4cd78bf802d32190db4addb80c8794f12` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3325e00de11ad1abc8c42d4dbde798f1f8851169` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38e73609df69e432266595bde141ee13ecdf6409` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x396449894682f83bd3cae988423bf0f50156f928` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ebbfc5f7aeb55f294f71846f2c3af4df79421ca` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f20d00885404c6b1c852911a7339c5320b168a7` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45ff4290b546a16788ddf27212f1805bbe34e554` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4932890105a6c43ac2fd28a67d78c57d766a106a` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4fb301a24d2a4667f168cb0c12fddd623cc635da` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x51758d811696acb994aa993bd3dd088b6c3320f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x59b37d5ab5f4fb4837bd6723bcdeac2835234d9d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x688da6e819cbc3c03b822b3789ec4a5d6dee95c8` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x73ad25e61d707c900393eca73a6909a59d6a9930` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7af8f6af9a4f9031d52200f74c61708c1fd53aa6` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7ca73c187f502d5294ee8a8cc85ef1626c61b74c` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7fa9442f28948e948e86c0258e361f1208699b41` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8c4e9950e9a3545ff6ec01ad5f26ca0dffadc792` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x90f08ec107072ea389998b7fccfa2c4edab3dc88` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x91340d7b491a6a3a679c1906917bc969b558ddee` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x926c0857bcb6b109c1260c3b6660efa8e633d73a` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93f7536a178dd638208cb882a97449491c554ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x97d146e55140a96e3b653326a76aed445ef29b34` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9c05065e211df0b2f10d0649c161f442c3a21e51` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa309026731db1c214d7821b283c86ba8aa16c970` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa42c0567edf06b66d077f19ec4e50ab1ccd99d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa61f2411351649cc0ce4443517f16b0f522e1554` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa80345cfa40cab34b16f2515fd7cdf8243544f6a` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb6bca3db345dc8fb8d8b68f1fecb8e3fd448ecbc` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb6bf5757fee584a6979322a5ff5bcbafafe83a01` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb73242b15601ee13f447967fdf97600e0460324b` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb78121dfdba68a12c0a1b490e7ce01d87772d984` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb786058dcdc97765ed5c4a2d9d68a4421f2ba1a2` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb791c7a42fd0d10f90deaa906a8735f79719fa53` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb8ae2a6d9efe6b0f5b2e65d3e8de3338f504e070` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbaa9ae3370ba3804619ea75979c56d1137a904a5` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbc8763b71ef33be9867d022a1a43b3e2323b2d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc007ac01b363f0fe4cc7fc2d5cdb28b6db82d7a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc40590b61e6bb2c8241dcb045b77aaf2adfead31` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc46a73af3bf02da273f8ba3225176aab5a92cb4d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc76a22d6b7def2c2d0996bf11cd1d881d93f429c` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd220f2c184d126f00861afea0477813212fd93fc` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xda3a56919fa2659d228445fb148c860e746b9926` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xde0177e57a2b63399d5ce45969bbf4e219fa7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe487a601d042bc90c8e6ad8eec849540798c07c7` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe58cc7909908af8226505e2be41165238aaf6431` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe78994505e38eb6fcde0591e32f96bedcab7bc61` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xee5441fcd27e1d8e507b022e1367088757f9dd4d` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf4ffc8e539a4fb003878b18864c713eb14ec8b6e` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf6d9bbe9dfe37e9fcb51f02018b031c27ed7e077` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf81b4c4abf7de8b8fc560d66f0eb70598d8bf15e` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf8d3388f9085aed65f88813c94934447a9031450` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xffaa00bb5903fa766f259568683ad35314df157f` | non_address_book | unknown | unknown | unverified | n/a | `0x0df1a01ade3cd67ccc11d89f2859a0de514cd679` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21e622f72b6927fec426d539740980188fd2b56a` | non_address_book | unknown | unknown | unverified | n/a | `0x319ce476176de7fb8f55d0319d2efcb85e12c7af` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x779fa521cf8c1a3472cdadcc0ba5a6f9f81175d3` | non_address_book | unknown | unknown | unverified | n/a | `0x319ce476176de7fb8f55d0319d2efcb85e12c7af` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd21e887bbaa3969c52613f642d8f25f5341f76e7` | non_address_book | unknown | unknown | unverified | n/a | `0x319ce476176de7fb8f55d0319d2efcb85e12c7af` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c7fa135b4ee3931e30c527dfb3d194e85237c51` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0efb5a96ed1b33308a73355c56aa1bc1aa7e4a8e` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f7ed0f1950058c860884a87f9156159b29c67b7` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93676a067566ec92a5b16aa741b9d4b45649711e` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9bd5aaf454c4265f2bdfa0ded9b3c00ca12dc49f` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbb1a32177f235af09603754ea76d524255dbbdaa` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xce273e39d58d5552da7d109a37adb42466be5d0f` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd8dce114b91b57f8004dbac8882aa9d0d2aca921` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf1bd291851cb06b0076ab59ec23400866fab1b77` | non_address_book | unknown | unknown | unverified | n/a | `0x42939e82df15afc586bb95f7dd69afb6dc24a6f9` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0ea85e34b26ff769e63c24776baba60782446166` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x163131609562e578754af12e998635bfca56712c` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a1b7d976d971df021829ccae7efa20990e6d09a` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1e71c95fbd8118b2dba0a6d61b1386888b72c01a` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ef9592f449761c6eda75c1fcfc45d625f3d5c76` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x239d3bc5fa247337287cb03f53b8bc63dbbc332d` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x281b7976ec51ec1dcdcd393ce4937339f6109521` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2b341cba9c8c8d371b67a98f5e521061307cb747` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2e581710e811e785b5e11f064aede3eec0bd5c70` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f4c2ff7ecdf8658b5bf20a2ab180c6ec3cff648` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x31f1ac70f0193f7949dc76921553852fa12b91b4` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45d531e6bb4ef640bf4bfc1dde832e1edffea8a5` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x49aeaddd9661d5291b981e6683f1feae63b040ec` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4dae58e5516d327333b60d2714e5f0b06584bfce` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4fd09df79fb78fe9e67fbc8a828d5c4865285d9c` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x535f0da2b8587bd3781ae3875b86addc05ba4d11` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5a927f1f7593c8cf4282ba3c326fbc0c0e41d9d5` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x618d9e02e4d5e80fe910fc3838b54a5ea28cbae1` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x71ce7415e4d0300e2280ec401fc660b0cdc098eb` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7bd97dd6c199532d11cf5f55e13a120db6dd0f4f` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7fa367967ce7903fc5ce25a969cb7db792a8f6b9` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x800ca870416cdfef77991036b8e1f2e51623996e` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8a8ad92995ff02b53ba890785c2c8c36db6280fa` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9000c1b1b43fc6e3aab9682cd73b031633171827` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x91429ddc50b38baf3ba9cb5eb0275507ac65cbf4` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x955998975cfdafd0e0dc60f5a92e14fa72384aae` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99be7a7bed047b73c2bd8c383865354f543e76f5` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9cf01269e491375dbe3c725927aa025bac47beeb` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9e82583414771b593a1d730c94f828d23f922f81` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9f6aa2ab14bff53e4b79a81ce1554f1dfdbb6608` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa0e3023cb309400ab08f598f0f2091d29903bcc8` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa6c229d3a1d4d31708b16c0ad2f14337ae4e7893` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa8b69d165dc2dc8a205adbc8f93d3582a5f93454` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xac65c4079d3872c43baca8606d4debc3e09ada07` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xae48f22903d43f13f66cc650f57bd4654ac222cb` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xafcc5b1b294bf9181e55fdf33dc8a17b0a80921e` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb1df65f5507ea91c5cf68131da353506e9c5b994` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb59b26d9e5676bf3aaf9f464d8b2aea5faa8637f` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc0dc5bcb5cee157ced0b2df6d130f596915c365c` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc8390acd9cefdff27d9115c67c6e23950a2ac1fc` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcffb7b219a6ee67468b02fe4e34e33fd393c76ff` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xde354065ce8020a500efba5710ecd5d7d9ca0fcf` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdead28b47df38e69e0f5b714612d1754810e8f00` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe464c0cd49a9d9eda2d2b31f1753a98779ef7eac` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe595809278a4fe893bbaa85cc9d592989bd1a683` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe69af3f35d26c0045970cfb614afb50a8ade1119` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf3d9b58646c576be2160739417b2216fd074e746` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf49235407177cf0abf22ea84372f688cc9f1ddff` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf7eca822e50c2be23d0c7bf242cf955a0a16d223` | non_address_book | unknown | unknown | unverified | n/a | `0x50842854e40914a8e0745310b47fc22b98112b7a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x08247547281bc215c4c1481bf4f1077eb19b1fa2` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1101a719b823d1d8a9c2890d1deffa66c38f8cda` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29e480d97ff2544047c7b89c9096058c834cd907` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4796e1e2ae921b8408ab52c0fc9dd991d57bfaef` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5640b2e8724231e5e7baa53375dc63d7bbea04eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6861317b2901ee29ff10ae851af2234380422aff` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x83c27aff5aa000e61adafa99ab8c482da97f5ab8` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8c90b3c9b5d27a375ab694d5a456a44b54f1c369` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8d5b529acbf96e4045ee019ecc0472ab2cae4a77` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa9539b2ea79b35d2efe5b22d9dbae2459fd80838` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaf2c034c764d53005cc6cbc092518112cbd652bb` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb41bb502d214499b1637d7f1c398a00df081714b` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbd3938c97fe5946f44ce105850820c99bb7cf506` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc436f5bc8a8bd9c9e240a2a83d44705ec87a9d55` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc7868fd263a08f26a5683bdbaef12fcf508a2cf4` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc9fb2f508b2ab47826d6ccf2f965b21b24ba58d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd0f02b1a6a123a996fcc0bc49ae0218924b73464` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd2d80963dd7e951e6c03497cb1e6f8719d9ccb2f` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd38a19100530b99c3b84cca971dfd96bd557aa91` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd555c9012e0a150de7932370d56d6b6d6e4ebccd` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe59988d947f80b59ff1de7bd413e5e5517906cb2` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf805e22c81ef330967eec52f7edb0c6b31fd5ccf` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfb0388daf4004d34d5a3209e1e5dd8c96a2a6d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfdf984af7a4cd6cc5a4fa703240cf0ff4b1b0447` | non_address_book | unknown | unknown | unverified | n/a | `0x5423819b3b5bb38b0e9e9e59f22f9034e2d8819b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0ebc3e27f57c11041082fae1dda4b471e9a4f58e` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d72f3e80ac24a26a164ac86234e693195c7d8b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x95fa8ee59ccab849e2ef01aed5b67a4de5a84b9d` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d72f3e80ac24a26a164ac86234e693195c7d8b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc668904f9155ff4f36d04eb82d2691f290491f88` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d72f3e80ac24a26a164ac86234e693195c7d8b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfd0bab3735a2bd1f2fff0fb2119b0f9fb7661360` | non_address_book | unknown | unknown | unverified | n/a | `0xb5d72f3e80ac24a26a164ac86234e693195c7d8b` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1872758f3635aa3cfa58ca30bc2ec84e5a2c493f` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1f41ef93dece881ad0b98082b2d44d3f6f0c515b` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x27355df92298c785440a4d16574df736eb0627d0` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28043b1ebd41860b93ec1f1ec19560760b6db556` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ca02eda655e9d1fece1954e0994b2f2c608aa83` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2dd517b2f9ba49cedb0573131fd97a5ac19ff648` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x318bfa8c1ce223836fde0ad60e8a5e04fd0d8924` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4a5ce69a1ada639042b30e1574eb9d6e939388a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4cf57dc9028187b9daaf773c8eca941036989238` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4f2eaebdd835ebe9108e718c0b6551e868381a88` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f7a07ffde2ab490dad0c0d139d6c730bbe842cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8b050c37b0c8de8f91c1bf648c6c0a4e4ed7c6ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8f937bbaa8508268cc2c3d2a54c8d01d30eed679` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaec3e48648c46b9eda4c8832e2f0a6b23289915d` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc27201f18fe55128de3aa54e9863b3b792941cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc79a363a3f849d8b3f6a1932f748ea9d4fb2f607` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf8b283ad4d969ecfd70005714dd5910160565b94` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfd436ad484d29bd75d0917777a8d7b183255212b` | non_address_book | unknown | unknown | unverified | n/a | `0xbb29324d49f72c784d52a33e5606cd7ec8dc6100` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0b38528a66a52dce08444ed18fb09303a3a50502` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0c40be7d32311b36be365a2a220243b8a651df5e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10ba0662993e137642d6d4959037cf12b784eb46` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x12fe6a4df310d4ad9887d27d4fce45a6494d4a4a` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x154bab1fc1d87ff641eed0e9bc0f8a50d880d2b6` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b8a25f73c9420dd507406c3a3816a276b62f56a` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2dfafa36bd95ebf0345539070a855bf0a4ffef0b` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2e7e21f479167c1206420c956f3e8e392da580f5` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x375b72e40c1a16424ead361ec308b1cbcf5cb721` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3aadc82b68784b49a9e01c0af4c9221b16282e7e` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3b37950485b450edf90cbb85d0cd27308af4ab9a` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ca13391e9fb38a75330fb28f8cc2eb3d9ceceed` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45b73930ae07c902275312c6b5bace505d4a5883` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4bc3bebb7eb60155f8b38771d9926d9a23dad5b5` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x55d0a1b961bb75c010970a380f32a94965c3a7e9` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x58f5eb5a8ddc2f28861f1db51da6b6c57a7f1559` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5edc2538e11b67cf93ed145b04e5e457d9f9cc0b` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x615049d0f6441b8bf09876a97a28b7719a951f46` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6339dfd6433c305661b060659922a70fc4eebac6` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x63769951e4cfdbdc653dd9bbde63d2ce0746e5f2` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x777c470910a6d883938940b93539d6127c052502` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7b0ca9a6d03fe0467a31ca850f5bca51e027b3af` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7b1eed401e8adf4a9d27bd26c6964c9d0e53bfb7` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x81f31f4dd68e147152a80fba41b2e5502916e216` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8791f3cc02d029b26d8056fa7bc26e92030b34d5` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8b6c17529b122fe39e7f561749476cb0efc5ae6d` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8d49944031279d4255994f8025007930938f5df9` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9450a29ef091b625e976ce66f2a5818e20791999` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x94d8c2548018c27f1aa078a23c4158206be1cc72` | non_address_book | unknown | unknown | unverified | n/a | `0xd4b705299a16e85ba7ef7dfa5c2b318b973bba7c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Fa7kg3ihdbiiAMsXjIn8z%2FBenqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 33 | high |
| [Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Fsjpc2u859ZnLjsedBuel%2FBenqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [benqiApril2022.md-Grip.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FIdRz4pA36eJD1IlGlD4D%2FbenqiApril2022.md-Grip.pdf) | Grip | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [steward-savax.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FUUUYpwdCHOnfcEj8xBQW%2Fsteward-savax.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-12-11-cyfrin-benqi-ignite-v2.0.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FXFK94HB0hmyTTSVyeTpg%2F2024-12-11-cyfrin-benqi-ignite-v2.0.pdf) | Cyfrin | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BENQI Ignite - Mar '23.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Ftlv40KMOxjgE1ua46HAr%2FBENQI%20Ignite%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [BENQI Isolated Markets Audit.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FFX0XuZ24gLs8LUbWzUvS%2FBENQI%20Isolated%20Markets%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Benqi Oracle - Zellic Audit Report.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2F3r3AzX96YnXqaZ2SYZV2%2FBenqi%20Oracle%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19539] Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf — matched: All contracts listed in the 'SCOPE' section of the report were extracted. The audit date is the end date of the engagement (May 23rd, 2021).
- [19540] Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section states all contracts in the Benqi-fi/liquid-staking repository are in scope. Only two contracts are explicitly named in findings: StakedAvax and NodeCoordinator.
- [19541] benqiApril2022.md-Grip.pdf — no match: Scope explicitly states 'the Liquid Staking system, defined in the StakedAvax contract'. Harness contracts are also in scope as they are written for verification.
- [19542] steward-savax.pdf — no match: Scope explicitly lists StakedAvax.sol (formally verified), sAVAXOracleAdapter.sol, and AaveV3SAVAXListingSteward.sol (manually audited). Audit finished on 15th June, reviewing commit 1d00da87.
- [19543] 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf — no match: Scope section lists four contracts: Ignite.sol, IgniteStorage.sol, staking.sol, ValidatorRewarder.sol. Audit date from cover page: December 11, 2024.
- [19544] BENQI Ignite - Mar '23.pdf — no match: Extracted 9 contracts from the scope file listing plus VeQi which was reviewed for specific functions.
- [19545] BENQI Isolated Markets Audit.pdf — no match: The scope section only provides a GitHub repository URL and commit hash, but does not list specific contract names or file paths. No contract names are explicitly mentioned as being in scope.
- [19546] Benqi Oracle - Zellic Audit Report.pdf — no match: Scope section lists two contracts: BenqiDualOracle and BenqiPriceOracle. Audit date is May 13, 2025 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | BaseJumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | CarefulMath | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ComptrollerInterface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Comptroller | own contract | 0x486af3… (selected) `0x486af39519b4dc9a7fccd318217352830e8ad9b4` — deployed 2021-08-18 15:36:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ComptrollerStorage | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | DAIInterestRateModelV3 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | EIP20Interface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | EIP20NonStandardInterface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ErrorReporter | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | ExponentialNoError | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Exponential | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | JumpRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | JumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | LegacyInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | LegacyJumpRateModelV2 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Maximillion | own contract | 0x784da1… (selected) `0x784da19e61cf348a8c54547531795ecfee2affd1` — deployed 2021-08-20 22:34:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiAvax | own contract | QiAvax (selected) `0x5c0401e81bc07ca70fad469b451682c0d747ef1c` — deployed 2021-08-18 16:15:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20Delegate | ambiguous — not counted | JoePair (alternative) `0x2774516897ac629ad3ed9dcac7e375dda78412b9` — deployed 2021-08-19 14:20:51+03 — liveness: live (current_address_book_code)<br>0xd78ded… (alternative) `0xd78ded803b28a5a9c860c2cc7a4d84f611aa4ef8` — deployed 2021-08-18 16:23:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20Delegator | ambiguous — not counted | QiErc20Delegator (alternative) `0x0ffac5aae14e28e79c5ccc7a335d8c70ee458a3a` — deployed 2024-12-12 10:32:41+03 — liveness: live (current_address_book_code)<br>QiErc20Delegator (proxy) (alternative) `0x334ad834cd4481bb02d09615e7c11a00579a7909` — deployed 2021-08-18 16:19:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20Immutable | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiErc20 | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiQiLikeDelegate | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiTokenInterfaces | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | QiToken | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Reservoir | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Unitroller | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | WhitePaperInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | AggregatorV2V3Interface | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | BenqiChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | Benqi | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope | no |
| Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf | BenqiLens | unmatched — not counted | — | listed in scope | no |
| Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | StakedAvax | unmatched — not counted | — | mentioned in findings HAL-01, HAL-03, HAL-06 | no |
| Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | NodeCoordinator | unmatched — not counted | — | mentioned in findings HAL-02, HAL-04, HAL-05, and manual testing section | no |
| benqiApril2022.md-Grip.pdf | StakedAvax | unmatched — not counted | — | scope defined as Liquid Staking system, defined in the StakedAvax contract | no |
| benqiApril2022.md-Grip.pdf | IAvaxReceiver | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | AvaxReceiverA | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | AvaxReceiverB | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | AvaxReceiverC | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| benqiApril2022.md-Grip.pdf | StakedAvaxHarness | unmatched — not counted | — | harness contracts listed in Harness Overview | no |
| steward-savax.pdf | StakedAvax | unmatched — not counted | — | listed in scope | no |
| steward-savax.pdf | sAVAXOracleAdapter | unmatched — not counted | — | listed in scope | no |
| steward-savax.pdf | AaveV3SAVAXListingSteward | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | Ignite | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | IgniteStorage | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | StakingContract | unmatched — not counted | — | listed in scope | no |
| 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf | ValidatorRewarder | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IIgniteVeQiDepositProxy | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IPriceFeed | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IVeQi | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | Ignite | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteStorage | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxy | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxyImplementation | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxyImplementationRegister | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | IgniteVeQiDepositProxyStorage | unmatched — not counted | — | listed in scope | no |
| BENQI Ignite - Mar '23.pdf | VeQi | unmatched — not counted | — | mentioned as reviewed for deposit/withdraw functions | no |
| Benqi Oracle - Zellic Audit Report.pdf | BenqiDualOracle | unmatched — not counted | — | Listed in scope table as 'Programs' and referenced throughout report. | no |
| Benqi Oracle - Zellic Audit Report.pdf | BenqiPriceOracle | unmatched — not counted | — | Listed in scope table as 'Programs' and referenced throughout report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a` | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2774516897ac629ad3ed9dcac7e375dda78412b9` | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe530dc2095ef5653205cf5ea79f8979a7028065c` | PangolinPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0ffac5aae14e28e79c5ccc7a335d8c70ee458a3a` | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x334ad834cd4481bb02d09615e7c11a00579a7909` | QiErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 343 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 58 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [19540] Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [19541] benqiApril2022.md-Grip.pdf
- [19542] steward-savax.pdf
- [19543] 2024-12-11-cyfrin-benqi-ignite-v2.0.pdf
- [19544] BENQI Ignite - Mar '23.pdf
- [19545] BENQI Isolated Markets Audit.pdf
- [19546] Benqi Oracle - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
