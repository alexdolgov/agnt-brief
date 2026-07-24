# Agentic Audit Brief: Proxy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Proxy (`proxy`)
- Website: [https://btcpx.btcproxy.io/](https://btcpx.btcproxy.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, polygon
- Contract surface: 287 unique implementations (379 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $15,271,894.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Proxy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum, polygon. Structural roles: 4 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (3), ownable (2), accesscontrol (1), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ProxyTokenV2 (`0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (1 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 283 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 1 of 287 unique; 286 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 266
- Unique implementations: 287
- Raw deployments: 379
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BTCpx | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-391212 | `0x9c32185b81766a051e08de671207b34466dd1021` | ⚠️ Unaudited |
| BTCpx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x7b28b56b4f5fbac7c7c357ffaef089d4a334c439`; polygon `0xbe54b378697019c3591c7fe3c4f3792ba609921c`; polygon `0xc64b8217512d0dea57ff5eb7b6ca76ef23920ed7`; polygon `0xe89a6a0d0df06575df1911dc210dac199b1e15e7` | ⚠️ Unaudited |
| BTCpx | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x9c32185b81766a051e08de671207b34466dd1021` | ⚠️ Unaudited |
| BTCpx_Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x22acaee85ddb83a3a33b7f0928a0e2c3bfdb6a4f`; polygon `0x553cbde04a9dbfb1544d504ed38c96d2fde86a4d`; polygon `0xa4d383836ac3d112b75128e5fb9ba90df785436e` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x10eaafd8cfd04133bd75f34b47477ddb56ffbfd9`; polygon `0x30f09a818c9207c446d432d717e712a85ee922a4`; polygon `0x45a82f7dd8100d85a32fb7a86bd2bd5d3da2c49f`; polygon `0x538d61d4a0676034d8dd4f14f37a8c147915dfb1`; polygon `0x635c745fb4839b85b3cb71b1dce652e9c320f449`; polygon `0x8fd82fd4f032bf5293647420922813a39bad0d7e`; polygon `0x972ce56963f893c1b27371dd254a802ed117ef90`; polygon `0x9bbd98a59e5ff367e94e800b2516d159499e296a` | ⚠️ Unaudited |
| fPRXY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x256116a8ea8bad13897462117d88082c464b68e1` | ⚠️ Unaudited |
| fPRXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 18 deployments: polygon `0x278008ef6511f54133b6c389364d64272fdde21b`; polygon `0x2989aa46fbafd4bc21686d043e5cf8571e777668`; polygon `0x2c2e02d64a1e42234a91e0836c435f4f0b53e5db`; polygon `0x31ed1e9b7eed90917153bb3f0ab5ab465a930ae6`; polygon `0x3c76f83324e6432bf0eba7b3fb863be7428458b7`; polygon `0x5997bc6f64861412ab4bfcf7d49deefc86e3611a`; polygon `0x5aa04a9ea0d680a2c618759f637e6ee6514e8f91`; polygon `0x60c56698a7621af0c8c43f6c4ede009a8832f44f`; polygon `0x63d6f52b318e967dcd745d7aead220182350f45c`; polygon `0x6423d9d1bcfccfa66fb722520eb54b0553b30849`; polygon `0x6f0908a505aa741ef3f8be7708cb80a378ad9095`; polygon `0x7de6dc4935a286c627441ef5c32ab6e7d45036f9`; polygon `0xa3a86ebdc9090b86011cf9f0fbdd65e6aeaef97d`; polygon `0xa7b415cca4bc7d66421dce576e4905463e5f1d6d`; polygon `0xb535fe4872ecb6f20cfd4af1a363d86c9915c0b4`; polygon `0xb9343255104818edbd48e213de0d79e072209d74`; polygon `0xd8972707ae796376301f40c243360d16bf6b1e0a`; polygon `0xd9e13524995c3fedf3834fc786e40a9085ce4822` | ⚠️ Unaudited |
| fPRXY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x305ce2b82af3d883d23dc4177560fae21d05afcc`; polygon `0xc6da9e798d6ae98393c7d5ca6c1424dee8129a56` | ⚠️ Unaudited |
| iBTCpxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: polygon `0x007b18aeb79c3566ad4d8a6185b553d8c30b9374`; polygon `0x1b2c64d505a915af6f3f3e28d3b81598dddb41e1`; polygon `0x4d11af6ce3a75f21c4f80b0dbd0b37526b0219ba`; polygon `0x61d17a17e8a6cfa80733b29f298647fad1399f90`; polygon `0xa8d07755d62c46dc672236528f3d6178c8135f69`; polygon `0xafc832b5a4acb729d1b5a4fd2cd0f76ef910bf14`; polygon `0xb7e1b162663474464a42f3a99065142c87bff71f`; polygon `0xb9891945c2266753f2d010d4246b5b22424f14fd`; polygon `0xbaa94cb97bee4c4160a9d497c7ad397f57af63d3` | ⚠️ Unaudited |
| iBTCpxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 5 deployments: polygon `0x027a78c90b479ccb21232299fad4d06e6bc8dc29`; polygon `0x0efa4997528a6bf4a29395391d5d573ec0f73e7d`; polygon `0x124e09195cc5f12417704f87ac5d141f828195ce`; polygon `0x7839a5f3a05092e1c526443d2cf1c2247f040604`; polygon `0xc49eb893dc1fcd30a3eea42cfe2e995f9bfc8fce` | ⚠️ Unaudited |
| iBTCpxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xac6791db204856a9f10df1f69e4e1fb64fe7a094`; polygon `0xce5565c8d30699839f9135be2569064554354b51` | ⚠️ Unaudited |
| ProxyCoin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391209 | `0x22acaee85ddb83a3a33b7f0928a0e2c3bfdb6a4f` | ⚠️ Unaudited |
| ProxyPolygon | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-391210 | `0x1441729568ab2a9871677edfeb13fbfcc7157a26` | ⚠️ Unaudited |
| ProxyTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x720a54ff4cdb209cc3c13991b11d7ac74e432677` | ⚠️ Unaudited |
| ProxyTokenV2 | token | project_anchor | own_supporting | 0 | polygon | unit-391211 | `0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591` | ⚠️ Unaudited |
| PRXYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x015cee3ab6d03267b1b2c05d2ac9e2250af5268d`; polygon `0x37601e5639112245e0943f6c8f4eb1ff2c354eca`; polygon `0x47c93e4ae2eb2996ae3d45b1b3e40542b6d8e199`; polygon `0x731112ae0eebd0210f9ec0d5d75207e5a0d837ef`; polygon `0x7a65d9c2503fbb7871a9eaca185716b8e70342e3`; polygon `0x87d2c3f7b889bbda2461f0db72c4e15c0b7fe063`; polygon `0xdff11b292d624177a1b1f3b15a84862ff250b9cd`; polygon `0xfa098cb31d410ca1abfaf04b0ade104a52a9f067` | ⚠️ Unaudited |
| PRXYTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 21 deployments: polygon `0x0a1c0672f8a2b9b281c0b24752891e4e6d8a2cb0`; polygon `0x0f221547f00c9baf802bae4f479facd1c485e86a`; polygon `0x1c08a551945da801dff1c6ea1910763394cafc30`; polygon `0x1ea123b3cd70b569c2d0bfa81bcce45fb1ea1af2`; polygon `0x1f34332cce00a661668d0c3f02a9d05a0cc09945`; polygon `0x2da6b737fedd61ddd706953292f6248a452755af`; polygon `0x3157f71266e788e791a2de3673263bb8088d3cf4`; polygon `0x39b3803ed6b4fc53a6e02c7eba41e564afdfd202`; polygon `0x45f1c555aee42416b2bb0f159a5797c4aef9d85d`; polygon `0x6e48d5e055469dd4bb24c9c74e93a282a50a88ba`; polygon `0x7f0b5efebc28f9965c2e16d1eab01ac5aa2061ca`; polygon `0x950e66b23282439cf0a484c6d3309383c91685a7`; polygon `0xa1d3f5e6c15df0f68ffb07268e84a7b7fe751550`; polygon `0xa6b2787bd94963b49c8be7083f7dfbf4c84cec52`; polygon `0xb9fd567b27199cdf3baf4c194279392d837b81de`; polygon `0xd88b73568a43f544be7f023325b7fc806d67a4d1`; polygon `0xdbbb159a4401703063c1ea3d92ac0d21edf03c53`; polygon `0xedc51a555faf0c19b695778a81dd9991616380a8`; polygon `0xf6ef1c9ff7ace078c956db128d17e3d7dc703baf`; polygon `0xf77ce41391f1fae947d973f11caeea296ae73e55`; polygon `0xffc37301a09196f073d94c46b3cac7f97eb2b974` | ⚠️ Unaudited |
| sPRXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 19 deployments: polygon `0x07fd1729fd2229dea20a621735301035c33a7149`; polygon `0x0dd24c97113912fe58f9bd6a331e6431a786f7ea`; polygon `0x150fb21d5984f17c6289feec7bb0fa481ab4c98d`; polygon `0x31f7b3bf6a02349facfb8f367734877a34c0d74a`; polygon `0x426ac20aa0ce165cccfb905fb917758731ffc20d`; polygon `0x4b32ec0f9aefd5aea33d32e6584f450d3b7e717e`; polygon `0x521ab8ba91a7263781aa342ff65b8201b27fcde9`; polygon `0x5ffe3520ad23adc2fd6b9eaca5267ed5630dcf2a`; polygon `0x66a21c7b34287e334e9543a9470fea132a2bd0ac`; polygon `0x762b7d3e693ae240c845be4cfa52fb2da16ab4ba`; polygon `0x88d3eedc3d8902e53480726f1b798d7889ec9cfb`; polygon `0xb7f2f87142478ac4df98fa24adc44f7809595beb`; polygon `0xb8e65ef587188e708df81f0b4b32069bc767e0c1`; polygon `0xca79b572f782fed125dd72d75e603418952fd9fd`; polygon `0xdd39614829f527aa9caba57cccded97f16124d3e`; polygon `0xdedc7acca4ccfaf6701da49e99bb5ef9b4932706`; polygon `0xf56b7288b89bf6329f93058a9d002e46e1e23f2f`; polygon `0xf656ef1c4972c574585e64cbe184ae9976432137`; polygon `0xfb18d2e3860bb1e505910d54dc0e2d37e9ad04fa` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x5009d57a54cd6854137bac0d54a5eba9c3c27524`; polygon `0x5e961dd2a3114843017ca6744d7d80d03f12ac7b`; polygon `0xc4d6ca2f2f564b066ca5a73240798b3be2622f62`; polygon `0xd32872576bb277f3a9f1feda5b6711759f5cbe57` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x07ca30df73ff0a8c1300fc35c6e20cfe5f8bcb3a`; polygon `0x611ccb52c6407d38e35aa5a5bf1ab861afb08862` | ⚠️ Unaudited |
| xBTCpx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c50e75281915bfdca55e5ea855bc30fa158f8e1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (266)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aa3fc28add857e38191860f549ecfe47df0670c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e21c152c5882e70d0a7bd9de92d2ab93d298155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cdbdb5a9d21762f6df982bd6d86ad41b4695aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43aee883ab7a48b942472b9e68af3005147371ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x720a54ff4cdb209cc3c13991b11d7ac74e432677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa489f0dbd54e8eb21577bd3f8e0678817bc978df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9045f6b5eef5536363a1c5da0b77b8d42fbad9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca6a8782efb4f0cc49950808371db11a0f49cd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00506867d15f4753e8f127c2b0dd456a2f8f63fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x017ee25d3c31947b93e1320b2314876567f01d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01b4d234f76c8163cc36d2427682dbeaf8beedeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01ea5545f52106b1f05c91782b59245cecfe9ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01f3c85aff891840b86003cf87b5a936ad90676c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0218e70d80bb932d08c9dec0f689f65ec34e65de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x023f25fbd4af03b45f4081892360ba70d21ae1c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0373642d203c5d7bf8b2b9473dd585b5ebc4c3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03d758a25bbccb299de00fce00be0ae35f095ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03f33a0357e82c467918252c7527b77a8879f977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04b66183ba6bf705d2c2784b94170a5cb68cbb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04cf1cc6de1fb392db0f96676320d54113cd0938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x057a248f4f559d8f7c370f913da7de84fc2f058c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x064a4e36b3868c623506449c09bcef03c43556e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06af569c980b4239d4281bc89e763a8aaa68ee04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06b955a8c673c16d8586adbf5ec444a3d8c0d7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06bb9834df1f33cdc1c8f81024448b4082c45402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07b8242609ca643eb64db631d06e4000cedacad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x087f5db2459ea21803d7932997cae90b77aafa4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0951b39ec106b8aed7726138e440aa65b8f29c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aaddf77ecd01c4037f5ddf70844093fd081b72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bcc4c369c368a2ef1bcd285ee6571ac6aba6a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e40286c9e88fa597c726e1e1783cf0f85d567ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e5443d535b5c3ea346b3a512a19ed47b8117145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f63d299e067e3ed9a35e03532443cf6533ae0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fc029602b9cfbbdbce623b0a7a5d54dbb265509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1095fd80540398703ac867a61fe6d1e87cfc7a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10ec26c47d57697ca9b4d51ce61c0ad21b33120f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x122945c5ea59888b21e7d8e29e0d04934e9a7e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1296c0871da04c6a894d39f0eabf017fc299d40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14b4b4d1f8be7d57d586be44e7656a5165221d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14cdc2e2640ea4ba7795e95ad6819236abd69719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16b3dfb95b73d48e706045b23285b3b790408457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x176b2ac5dd18a5ab736358f0bfa5bcb05aad488c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18a410a4955b921063c3d1307e9b993dd2ea5d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d385567e2b2b6f45d0964ddeb3a760cd8e8db2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e71bca841f38ff280d38e192f9f60ab2fd666ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20cb01b40d69299082c950701a53f8326ba1f9ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20ef241600c0dccb518d55f95f8b295abdfe2d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20f6edfb85a661c022307ed36ff4a786190065f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20fe5f87d0e107a1c4d625f11fdf9e1d528493d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23bb38c6eee8aafef01146ac8350d675642a1b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24b3861b9525ca56aa29b4252bbe155023e98572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2854cff28c2fdae322c13cfc94fbfe4c27e4538c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a4a1e7dc16afeda22a03ad385d5167adf0ea804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c524626da96835780930e5db3aec280ab5077cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e21d909a065d3008fcaa1fad43f4de8af5def66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eff60547e5254fb76ac40d726c78ea5e9d2ad3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3038a7fa81db6360f096b62dc8e2c98165eaabe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x314bdc2c1af2ffb0e9e6fa6546d4e9b74efc9135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3150474a0815081557b8f961769f79f68718e07d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3189af88ba27fbcb9125356838aa73839bfa04c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x320270d3ce73b08846102789ed3f1d3395b46146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3298fea29b309f4a6408902941aad7f1d058debb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3312fa7069ac49cf6c1a6d743ae686288604e25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33315c7109e36decf0daf8271e90aa078f1a4b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x339ae3b72b7e206f17bbca458bbb080582f0a481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33ed7fa12c5ca27ce8f78eb1de70a53abb3ce580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37c7f5b27dc19ad2e7eff07c69f19fc4dec17c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37df3ad3e07afffa9247e06ebdae8fa01e1dc7ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38502b5a0824f03c1310182f242aee1c9582a5d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3904a15aa5bbea2cb8196fe9ef8fbbf5dcb268aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x392811d446f9bd2a3b32a294d9b7d343a2ee812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x396471ae6ee2bab63213e75502024f2597a9bbd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39dfb14f738ca113de937a9326f61b9d9fb9490e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ac201ae0638d5117c9cc558a604cf1f0124d41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bc55f7fd0a18974a9a041e9a4e3b6909a72a33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cdbdb5a9d21762f6df982bd6d86ad41b4695aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ce7a5683ec655239f065401cbea842d8631d078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cfee5f1a936dc30bac9bf65265f8fb53b7ba70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40b8a986200e6f3232da5689078b14eb606c2c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x415d3d82a24319c92cf41e39ad96fbe0ded1496e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43aee883ab7a48b942472b9e68af3005147371ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4472d94744322f17f358d6b5f39104d6f01a45fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x462f8fb6c2b640a7e7cb65bbd7ecf9fb77a92bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46e78614a81091aae246e97aa5c6e0bbdabbba20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4896dda3f8026b66e10d4323d5c623ad9fa08b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a27657d9d240953a10c4c01759cdbb4e14bb3bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a3db134f05e6eccc28ca5216ada6c02f7d61a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ad8529e4a96c03c99677a97f279084a4c11c38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b8c1afe6adc627758f7a9395231af8a12ba03af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bc64c10969bd1f4d158da63b608f878a63b1ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cfbb3dca7e3102af05e91c243da6fda63f4bc4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d38c764acc263efb4c9fb22da09d9b7a98fd237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dfe4ec0db36498cffc443dc4e1686fb177eb8a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f2c1ecb2b3422e32912c07c6a55f0a714569cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ff0665d171277e9fcf76f5ebdc3f7cace45783e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5040e5eb10a4e4490dbd80c6acb6d542aed8c7bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5251d51025d483dc856003f53e5d58e1a89d9a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x528ab45b731787bc225c57177be460524a9c3cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52f84aae5363f97af7524671922e1d021a3807b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5500c044fabff09031b74626a2535bf88d238b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55d8f3be04901ae40fa7cc4b4f18dd3e2e56baa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56a11bcb25fd2db112015fd63e55423054d84338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5801e0a1aeccea614c70d3b2c67d6a63c670ab6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x581de926b6c684caff66c0cc9b572476e877c8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59a3f634f4b5c5a0d129231ca3a24722359cb8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a6a29def70c1988c8426d7a6e6b002c33a68067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5aad94b2a679858b5bad001910435ab6a14bf77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ae1bb21500362adf8d84141c3c829b69c86f51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61b923085534beed8594a3cf80c02b97b1f097b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63acc87899ee7576ef0f6d1cb04eb7429b506ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6467a9810c0ee1d75c9c82235eff34b26744b3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67445eeb678223531cb1c1f3b328cafef2a93ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6aa3c83d51c4edbedd59497798651a2a6b88b449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6aae3b3e646a89bdc2c49284ef08546960662e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d66330867d887576688e8def6e9cb81026ab778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e4ac0eaffadaf79b38f7bd9b3a47ee046b6d54e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f71863963b29ec1baec01c2e00696024dfd9594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fa420f04d44f03e364622bcb6f97f8cb38e7fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x704792ce55d991dd905c813a5fab0a243d8f244b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x711c5e09821028edd6ebc5cee54bf64e5a0bcb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x714f2df50df2bed17d78d263fad3a9d426525725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71aaf61fde36d5882222ce266a29a7ff0acc9f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72c9ac0861a48498c276f53d2cea74e1a0ede5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73588f2b9e415987164a08c975711b676c665f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7526eaf3809bafa89cbc38acb0863a716291c51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7626aa154c68d9f95bb9fc47910d590e009a8bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76cd90796220f556963ae93ad02aed2c0588b489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77391c36921d101a92eeb1dab3cd2be8e99b18bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7746f91e4ea219fc282b71f3c95215662f66db95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78332880b355ee3b85ccc019f574a44423cc901d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79a1f2d58a6d73d1b92b328effffe4d03a2cbfed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79ebc92341e6099d9be6c59881de76de3a104964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b2e540972b1609e264ef0b1ba590f08193ffdca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b348bba0bd25f0cd82dcab7dfd4033c29b155cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7cf623747bd5debd276fbb221261edb213de39b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e4eb18bdabaeac025bf1564fb6e8861b2ddf12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80a7011b3e893d1367b1268bc66916c778911f74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81a32952fc452d2c12d6d8ed192dbd1920f86032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83c960ce12a745949a971d8136dc9ac261af795e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85ed6b0e9d0980d2efb5a964dfbd50933d320ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8708e2026dfe773424dbf84b0cdcf8ca3e3ae229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x878984772e011bcc53aff0c33214f3471a8ace01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x878e2271897f8de83bb23ba190185d3063be0140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87e92cb21c9f8f7c4d591fe88c907c257efbe226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87f8e58c26958ac578f244511e8dacd9af001890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x886c550cf2a275a24695469f2be3394dfff8b124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8870c7d7ab609cbe4592ce72ebcf15c234fedf03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c68b77d4ab792c608aea2fe1dc934ae4f2d4f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c8c001e91158bc1850002aee95bcb78a521355a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d2fbdeb4ce76f5b360dea112c6499a5a5e1073c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e390a0bb74506a8faf83fde4f78adf2bf4910ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f7ab1259f44fdeb9109d14b08ed5da47e712cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90252b14b37f7c71a3f09131d4572450614144c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x908b657d1f7fe441ef2634a88db95921eb3a6bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9202b259abd5ad587f57f1c418af3d5a50eb848f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x923f49edcd8d21ff1e8cc8e55dc170910c4cf1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93622fefbb51d404e7f0bebe553b2a061fd420f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93fa4c3ffcba23569f0102c7635ea9443c74ae6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9492ebd60e47d8c86714cd1b6aacaf16598779a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94c49f73eb9cfb8badd80980c16b3a7419bd146e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97f09c6716c694cadc9e6bebcf19e197221d45cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9827f8db7976b717500e275b965ffd123cee5953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x983a5ad012966ea3d66bd65d10983d1bbb52b29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98e986de9f9980c1e3034b23615c8d9be07b9165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ae918dde2a1f5ec0b7d6a8c3bd2194015b9cede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9aea048c09405cc113b7fce975755aee444b6e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9afb5344aa419f1d232f07fe02e5e983578a941b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c75434c015a267956b3f6cbd2e87708c77a8f5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e432d6b8e6599ae3b2fcb6fb1bc36689794f7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f1f336c557734e3e5685fe9d7b3e4f3f549d18b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f963a20d440d5984ff06acd79feeb27a040fb7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fa09b76f38efac557e3ff89ea6d991bce3c6374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2a4058a5cb7841b81aa71189590cd1aefd8f09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa46a8db4b9ab4254227422ab8b982ec34a0d62d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4a7b53220cce9f076687c293e7d74d64584859f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5291449089de9cc600c04614f0556025572b328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7a07fc810e0068afe58341bb2dbdf433d99d509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa805bc8b725b031ef760b4148278c9adfc68728b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaafda1cba17f243211437fdfa9a1eb24cd144282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xabe4cd70a5e2fbfeb8e7b70537887b797a67ff5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad79c4abab3d347e1054d484f449631d263c5075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaff78dff62e545e24170c4accbf04a54cfd60200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2ae3562a90af6817ead216fae2401625104bae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2f3ce22017425c67cd77dacefdd8700fa798e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4af2e87eff3404fc9fd5a3647f2f686f0406673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4ca9c11d0c45fa0100d683e57273c86026b0481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5208bb93102be6bb8e079d4709360a2529272aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb58e62927006e0080b04cd2b500b7d1d03f2f4a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7e08bd341a9f8990e0a5fb126ef5fce964874ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8e0b1ce7a660199b57a579a8797ee411b1e9127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe2ab693e8477889fa5015c16b2b5b9973e3231e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc01878e478de0940fded94e0ea942a3113128d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc06df569617f566cc48c9fb5cd2ec6477178592e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1c3f70b1eff273eee259bd7047922eb4cbfb12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3732017040e407639a24781b50516b0f1954246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3869332a957074581066adb8a53c5b48e696b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3dddc71fc6481f88f092af58e7d20f3e2dd7772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc478b4b3adbc741ac6503952efec743a1478d6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc543265fbdeedc902673c7f0a31a2d7075f722ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc546fe521d603e8f59e31ef156627fb2bcdd56ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8c3ddb7e3361dbc143b862fbc16b78476713f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8e539943188d8995993210755875c4808679934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc97e03b64453d311228eacc2eeee47615827d1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9af4059bf78ef281b43e75449d02d7f19ff9a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9d5dc8fdb7793d02c358b668516bc7b281f7544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb8979219c447fa08ec982e6882697a56dc1f7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc38f05d177336d0ece5b7174863fe716f5f6288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdaf348c06364c6bf956001152f2c7f85c865661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce0af3a91110dad8c922b303e5c30acd82dab8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcea29f62a27760d36ff9f814b33cf889621684b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0061ec987d640356fce14aa9bef12edc9b52d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd124eab293abc110c4d9b49abc53e21fbdf6cba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2a731b3ab9fb9568d53e8f66a8cf81e49a1e02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2b75d579b57e13f2e9767ce937ff3cf59b679b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd38c5faafbbbb4e729a5bef0eaf39f9c13954aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4fea7988e335dc24d1ac84622526d3d3c523919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda64974ce7848e15f114e31b2fd5bbe5ed539a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb2f323a3001781834399a8b7ba6eb26a423dec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb76ab2bd930696a5f2ced4d00b5180a8fb9dd2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbaa915a702d3b85bfc046e9de22a8cd1eee510f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbece562d667be3a1a04b02f7e2fa9d15da4a9ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcaabe7e6dbdf03a450784fe63433ed7a945a9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddb68ad520b92a1decdc6557175b483382d61667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddcc2ecce71ff63d9f35f700f354704bad583d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe14c02e1b624197ac7b44b9138db961f66d0b8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe19d1506e92e6f0601353d10d8f1868199f84740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe26a82d91ea43239cdc61fa7ad414a3009838863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe357db3e1eec5638bcce12136f58f179ca9fd285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3fb2e35867b9b497d2239bdd5c056e1a2e00c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe43b4971fd4b19ff03334cd726f63b798d5fa6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6c7b4d189b6b339f3f412c2b4551f9c24770c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe738cfcda751032be576ac34ec21b795231e31f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7474902f905ea867f22ddd3d88fc747fdefd1a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8db3c3432bb244b40ec31b64bd4eaeba3ddf488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8f6b4a31cbd503243c0f5ad54940b0e6d3f9131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe91a7db052b84f2c7d1a6b5970a4057946e78445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9c0d0191e755f44e7862b39391fa910557569b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee6177421296c00acec0de2e2e67f4aedf804293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee65133cdd3294b107ef24e2ff7f18a33fd086aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee7f60e82116d0119ae9dee36db18d6bb2f544d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeee36f64cc1f40d3d9d52fcc096e399186ecfaca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef185a3f75a157d75fc8b1782c2548caaef6cdfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef6930ea305e57294fb79c8e5b749c093e860d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0769fc80f6c3c1432c7e2607b3bd8faa56a23ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf093d1c7843662abdf5150f3ec22cc42c98b0dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf198da48de04e57c0bd4c733441aabb4cfc3dfab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1c67c9ce8d210135a2bb89b28e605e7e2abd6bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1dff5b06f7675eba40659bea8e4285ec23000fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf209ab369b2190136e2cc879eedeabb784023b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2623ced261825d9522c2c38c3c2a53091428bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3bf557c80345e18a001da40aba1bbeed7d7d8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4ebb9fc9d5c93cc9a5b35394dcdf06364d6fcec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf54662908923a6d2a7f7e8adb11a92d59f937592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6cf66a46d85cb5036fbfc8d2b638141d692a6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf736d51682b17946860e2926d7b79e901ae4fb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7673dd6768705888e59417f8fd88fbce8783933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf86751cdfca01c119e6670b8ccb7a4a4255a29e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8869154362ad777536723437d5d327ba4c7829b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa947b46a253a0922d8ab0051a4f2cc59ea6a015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfaae735f61f2fdf6988af99a2894f4fd6035a3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc09a56c20ecb2b9953631e093dd11bb030f1106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc18ce2d6194d285108f5a2831e1f50915826bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc7971ba08d6347ec4ebf50b8c61b622314d6676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd4add9af4ac0fb56f5ab679bcee6fef82370307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfdda1a39bc19bbcb06c674e0a51482617127dde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe447fa76586d68ba43af96e83c7a3b54bc9831f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 374
- Live contracts: 0
- Unknown liveness contracts: 374
- Source-verified contracts: 107
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=5, contamination review=7, source verified unclassified=95, unverified unclassified=267

Showing first 200 of 374 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | BTCpx_Proxy<br>`0x9c32185b81766a051e08de671207b34466dd1021` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1aa3fc28add857e38191860f549ecfe47df0670c` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e21c152c5882e70d0a7bd9de92d2ab93d298155` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cdbdb5a9d21762f6df982bd6d86ad41b4695aa4` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43aee883ab7a48b942472b9e68af3005147371ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x720a54ff4cdb209cc3c13991b11d7ac74e432677` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa489f0dbd54e8eb21577bd3f8e0678817bc978df` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9045f6b5eef5536363a1c5da0b77b8d42fbad9b` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca6a8782efb4f0cc49950808371db11a0f49cd8b` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | candidate review | BTCpx<br>`0x7b28b56b4f5fbac7c7c357ffaef089d4a334c439` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | candidate review | BTCpx<br>`0xbe54b378697019c3591c7fe3c4f3792ba609921c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | candidate review | BTCpx<br>`0xc64b8217512d0dea57ff5eb7b6ca76ef23920ed7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | candidate review | BTCpx<br>`0xe89a6a0d0df06575df1911dc210dac199b1e15e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | candidate review | BTCpx_Proxy<br>`0x9c32185b81766a051e08de671207b34466dd1021` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | contamination review | BTCpx_Proxy<br>`0x22acaee85ddb83a3a33b7f0928a0e2c3bfdb6a4f` | non_address_book | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | source verified unclassified | BTCpx_Proxy<br>`0x553cbde04a9dbfb1544d504ed38c96d2fde86a4d` | non_address_book | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | source verified unclassified | BTCpx_Proxy<br>`0xa4d383836ac3d112b75128e5fb9ba90df785436e` | non_address_book | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | source verified unclassified | fPRXY<br>`0x3c76f83324e6432bf0eba7b3fb863be7428458b7` | non_address_book | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | source verified unclassified | fPRXY<br>`0x63d6f52b318e967dcd745d7aead220182350f45c` | non_address_book | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | source verified unclassified | ProxyTokenV2<br>`0x720a54ff4cdb209cc3c13991b11d7ac74e432677` | non_address_book | unknown | unknown | verified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x064a4e36b3868c623506449c09bcef03c43556e1` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0f63d299e067e3ed9a35e03532443cf6533ae0ea` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1e71bca841f38ff280d38e192f9f60ab2fd666ad` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x314bdc2c1af2ffb0e9e6fa6546d4e9b74efc9135` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x320270d3ce73b08846102789ed3f1d3395b46146` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x33315c7109e36decf0daf8271e90aa078f1a4b20` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x33ed7fa12c5ca27ce8f78eb1de70a53abb3ce580` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3cdbdb5a9d21762f6df982bd6d86ad41b4695aa4` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x43aee883ab7a48b942472b9e68af3005147371ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4b8c1afe6adc627758f7a9395231af8a12ba03af` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6f71863963b29ec1baec01c2e00696024dfd9594` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x886c550cf2a275a24695469f2be3394dfff8b124` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9aea048c09405cc113b7fce975755aee444b6e2a` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb8e0b1ce7a660199b57a579a8797ee411b1e9127` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc8c3ddb7e3361dbc143b862fbc16b78476713f21` | non_address_book | unknown | unknown | unverified | n/a | `0x3bc77caeb49e452c1fb89926778fbe6ce2909679` |
| polygon | contamination review | Distributor<br>`0x10eaafd8cfd04133bd75f34b47477ddb56ffbfd9` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | contamination review | PRXYStaking<br>`0x015cee3ab6d03267b1b2c05d2ac9e2250af5268d` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | contamination review | PRXYTreasury<br>`0x0a1c0672f8a2b9b281c0b24752891e4e6d8a2cb0` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | contamination review | StakingHelper<br>`0x5009d57a54cd6854137bac0d54a5eba9c3c27524` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | contamination review | StakingWarmup<br>`0x07ca30df73ff0a8c1300fc35c6e20cfe5f8bcb3a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x30f09a818c9207c446d432d717e712a85ee922a4` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x45a82f7dd8100d85a32fb7a86bd2bd5d3da2c49f` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x538d61d4a0676034d8dd4f14f37a8c147915dfb1` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x635c745fb4839b85b3cb71b1dce652e9c320f449` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x8fd82fd4f032bf5293647420922813a39bad0d7e` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x972ce56963f893c1b27371dd254a802ed117ef90` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | Distributor<br>`0x9bbd98a59e5ff367e94e800b2516d159499e296a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x278008ef6511f54133b6c389364d64272fdde21b` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x2989aa46fbafd4bc21686d043e5cf8571e777668` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x2c2e02d64a1e42234a91e0836c435f4f0b53e5db` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x305ce2b82af3d883d23dc4177560fae21d05afcc` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x31ed1e9b7eed90917153bb3f0ab5ab465a930ae6` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x5997bc6f64861412ab4bfcf7d49deefc86e3611a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x5aa04a9ea0d680a2c618759f637e6ee6514e8f91` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x60c56698a7621af0c8c43f6c4ede009a8832f44f` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x6423d9d1bcfccfa66fb722520eb54b0553b30849` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x6f0908a505aa741ef3f8be7708cb80a378ad9095` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0x7de6dc4935a286c627441ef5c32ab6e7d45036f9` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0xa3a86ebdc9090b86011cf9f0fbdd65e6aeaef97d` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0xa7b415cca4bc7d66421dce576e4905463e5f1d6d` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0xb535fe4872ecb6f20cfd4af1a363d86c9915c0b4` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0xb9343255104818edbd48e213de0d79e072209d74` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0xd8972707ae796376301f40c243360d16bf6b1e0a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | fPRXY<br>`0xd9e13524995c3fedf3834fc786e40a9085ce4822` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0x007b18aeb79c3566ad4d8a6185b553d8c30b9374` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0x1b2c64d505a915af6f3f3e28d3b81598dddb41e1` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0x4d11af6ce3a75f21c4f80b0dbd0b37526b0219ba` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0x61d17a17e8a6cfa80733b29f298647fad1399f90` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0x7839a5f3a05092e1c526443d2cf1c2247f040604` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0xa8d07755d62c46dc672236528f3d6178c8135f69` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0xafc832b5a4acb729d1b5a4fd2cd0f76ef910bf14` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0xb7e1b162663474464a42f3a99065142c87bff71f` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0xb9891945c2266753f2d010d4246b5b22424f14fd` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0xbaa94cb97bee4c4160a9d497c7ad397f57af63d3` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | iBTCpxToken<br>`0xce5565c8d30699839f9135be2569064554354b51` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0x37601e5639112245e0943f6c8f4eb1ff2c354eca` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0x47c93e4ae2eb2996ae3d45b1b3e40542b6d8e199` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0x731112ae0eebd0210f9ec0d5d75207e5a0d837ef` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0x7a65d9c2503fbb7871a9eaca185716b8e70342e3` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0x87d2c3f7b889bbda2461f0db72c4e15c0b7fe063` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0xdff11b292d624177a1b1f3b15a84862ff250b9cd` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYStaking<br>`0xfa098cb31d410ca1abfaf04b0ade104a52a9f067` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x0f221547f00c9baf802bae4f479facd1c485e86a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x1c08a551945da801dff1c6ea1910763394cafc30` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x1ea123b3cd70b569c2d0bfa81bcce45fb1ea1af2` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x1f34332cce00a661668d0c3f02a9d05a0cc09945` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x2da6b737fedd61ddd706953292f6248a452755af` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x3157f71266e788e791a2de3673263bb8088d3cf4` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x39b3803ed6b4fc53a6e02c7eba41e564afdfd202` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x45f1c555aee42416b2bb0f159a5797c4aef9d85d` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x6e48d5e055469dd4bb24c9c74e93a282a50a88ba` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x7f0b5efebc28f9965c2e16d1eab01ac5aa2061ca` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0x950e66b23282439cf0a484c6d3309383c91685a7` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xa1d3f5e6c15df0f68ffb07268e84a7b7fe751550` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xa6b2787bd94963b49c8be7083f7dfbf4c84cec52` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xb9fd567b27199cdf3baf4c194279392d837b81de` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xd88b73568a43f544be7f023325b7fc806d67a4d1` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xdbbb159a4401703063c1ea3d92ac0d21edf03c53` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xedc51a555faf0c19b695778a81dd9991616380a8` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xf6ef1c9ff7ace078c956db128d17e3d7dc703baf` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xf77ce41391f1fae947d973f11caeea296ae73e55` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | PRXYTreasury<br>`0xffc37301a09196f073d94c46b3cac7f97eb2b974` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x07fd1729fd2229dea20a621735301035c33a7149` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x0dd24c97113912fe58f9bd6a331e6431a786f7ea` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x150fb21d5984f17c6289feec7bb0fa481ab4c98d` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x31f7b3bf6a02349facfb8f367734877a34c0d74a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x4b32ec0f9aefd5aea33d32e6584f450d3b7e717e` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x521ab8ba91a7263781aa342ff65b8201b27fcde9` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x5ffe3520ad23adc2fd6b9eaca5267ed5630dcf2a` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x66a21c7b34287e334e9543a9470fea132a2bd0ac` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x762b7d3e693ae240c845be4cfa52fb2da16ab4ba` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0x88d3eedc3d8902e53480726f1b798d7889ec9cfb` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xb7f2f87142478ac4df98fa24adc44f7809595beb` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xb8e65ef587188e708df81f0b4b32069bc767e0c1` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xca79b572f782fed125dd72d75e603418952fd9fd` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xdd39614829f527aa9caba57cccded97f16124d3e` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xdedc7acca4ccfaf6701da49e99bb5ef9b4932706` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xf56b7288b89bf6329f93058a9d002e46e1e23f2f` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xf656ef1c4972c574585e64cbe184ae9976432137` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | sPRXY<br>`0xfb18d2e3860bb1e505910d54dc0e2d37e9ad04fa` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | StakingHelper<br>`0x5e961dd2a3114843017ca6744d7d80d03f12ac7b` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | StakingHelper<br>`0xc4d6ca2f2f564b066ca5a73240798b3be2622f62` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | StakingHelper<br>`0xd32872576bb277f3a9f1feda5b6711759f5cbe57` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | StakingWarmup<br>`0x611ccb52c6407d38e35aa5a5bf1ab861afb08862` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x027a78c90b479ccb21232299fad4d06e6bc8dc29` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x0efa4997528a6bf4a29395391d5d573ec0f73e7d` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xac6791db204856a9f10df1f69e4e1fb64fe7a094` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xc49eb893dc1fcd30a3eea42cfe2e995f9bfc8fce` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xc6da9e798d6ae98393c7d5ca6c1424dee8129a56` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | source verified unclassified | xBTCpx<br>`0x9c50e75281915bfdca55e5ea855bc30fa158f8e1` | non_address_book | unknown | unknown | verified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | iBTCpxToken<br>`0x124e09195cc5f12417704f87ac5d141f828195ce` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x00506867d15f4753e8f127c2b0dd456a2f8f63fb` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x017ee25d3c31947b93e1320b2314876567f01d08` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x01b4d234f76c8163cc36d2427682dbeaf8beedeb` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x01ea5545f52106b1f05c91782b59245cecfe9ff8` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x01f3c85aff891840b86003cf87b5a936ad90676c` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0218e70d80bb932d08c9dec0f689f65ec34e65de` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x023f25fbd4af03b45f4081892360ba70d21ae1c0` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0373642d203c5d7bf8b2b9473dd585b5ebc4c3c4` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x03d758a25bbccb299de00fce00be0ae35f095ed3` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x03f33a0357e82c467918252c7527b77a8879f977` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x04b66183ba6bf705d2c2784b94170a5cb68cbb43` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x04cf1cc6de1fb392db0f96676320d54113cd0938` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x057a248f4f559d8f7c370f913da7de84fc2f058c` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x06af569c980b4239d4281bc89e763a8aaa68ee04` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x06b955a8c673c16d8586adbf5ec444a3d8c0d7f5` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x06bb9834df1f33cdc1c8f81024448b4082c45402` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x07b8242609ca643eb64db631d06e4000cedacad2` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x087f5db2459ea21803d7932997cae90b77aafa4f` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0951b39ec106b8aed7726138e440aa65b8f29c08` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0aaddf77ecd01c4037f5ddf70844093fd081b72d` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0bcc4c369c368a2ef1bcd285ee6571ac6aba6a62` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e40286c9e88fa597c726e1e1783cf0f85d567ee` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0e5443d535b5c3ea346b3a512a19ed47b8117145` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0fc029602b9cfbbdbce623b0a7a5d54dbb265509` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1095fd80540398703ac867a61fe6d1e87cfc7a7b` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10ec26c47d57697ca9b4d51ce61c0ad21b33120f` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x122945c5ea59888b21e7d8e29e0d04934e9a7e54` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1296c0871da04c6a894d39f0eabf017fc299d40d` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x14b4b4d1f8be7d57d586be44e7656a5165221d71` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x14cdc2e2640ea4ba7795e95ad6819236abd69719` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x16b3dfb95b73d48e706045b23285b3b790408457` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x176b2ac5dd18a5ab736358f0bfa5bcb05aad488c` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x18a410a4955b921063c3d1307e9b993dd2ea5d6b` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1d385567e2b2b6f45d0964ddeb3a760cd8e8db2e` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20cb01b40d69299082c950701a53f8326ba1f9ca` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20ef241600c0dccb518d55f95f8b295abdfe2d74` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20f6edfb85a661c022307ed36ff4a786190065f4` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20fe5f87d0e107a1c4d625f11fdf9e1d528493d8` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x23bb38c6eee8aafef01146ac8350d675642a1b49` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x24b3861b9525ca56aa29b4252bbe155023e98572` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2854cff28c2fdae322c13cfc94fbfe4c27e4538c` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2a4a1e7dc16afeda22a03ad385d5167adf0ea804` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2c524626da96835780930e5db3aec280ab5077cd` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2e21d909a065d3008fcaa1fad43f4de8af5def66` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2eff60547e5254fb76ac40d726c78ea5e9d2ad3f` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3038a7fa81db6360f096b62dc8e2c98165eaabe7` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3150474a0815081557b8f961769f79f68718e07d` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3189af88ba27fbcb9125356838aa73839bfa04c0` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3298fea29b309f4a6408902941aad7f1d058debb` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3312fa7069ac49cf6c1a6d743ae686288604e25a` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x339ae3b72b7e206f17bbca458bbb080582f0a481` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x37c7f5b27dc19ad2e7eff07c69f19fc4dec17c14` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x37df3ad3e07afffa9247e06ebdae8fa01e1dc7ad` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x38502b5a0824f03c1310182f242aee1c9582a5d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3904a15aa5bbea2cb8196fe9ef8fbbf5dcb268aa` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x392811d446f9bd2a3b32a294d9b7d343a2ee812b` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x396471ae6ee2bab63213e75502024f2597a9bbd1` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39dfb14f738ca113de937a9326f61b9d9fb9490e` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3ac201ae0638d5117c9cc558a604cf1f0124d41d` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3bc55f7fd0a18974a9a041e9a4e3b6909a72a33d` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3ce7a5683ec655239f065401cbea842d8631d078` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3cfee5f1a936dc30bac9bf65265f8fb53b7ba70b` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x40b8a986200e6f3232da5689078b14eb606c2c6e` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x415d3d82a24319c92cf41e39ad96fbe0ded1496e` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4472d94744322f17f358d6b5f39104d6f01a45fd` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x462f8fb6c2b640a7e7cb65bbd7ecf9fb77a92bc0` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x46e78614a81091aae246e97aa5c6e0bbdabbba20` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4896dda3f8026b66e10d4323d5c623ad9fa08b91` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4a27657d9d240953a10c4c01759cdbb4e14bb3bc` | non_address_book | unknown | unknown | unverified | n/a | `0xfefb836de3eb6b03d8b6c7fce535cdb8da54902a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/BTC%20Proxy%20Smart%20Contracts%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1894] BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf — no match: Audit report covers BTCpx and Relay contracts. Date range March 29 to April 4, 2021; end date used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf | BTCpx | unmatched — not counted | — | Scope of Audit section: 'analyze and document BTC Proxy smart contract codebase' and findings reference 'Contract Name - BTCpx' | no |
| BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf | Relay | unmatched — not counted | — | Scope of Audit section: 'analyze and document BTC Proxy smart contract codebase' and findings reference 'Contract Name - Relay.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591` | ProxyTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 266 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [1894] BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
