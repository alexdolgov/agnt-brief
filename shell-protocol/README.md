# Agentic Audit Brief: Shell Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 9 (3 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Shell Protocol (`shell-protocol`)
- Website: [https://www.shellprotocol.io/](https://www.shellprotocol.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, arbitrum-sepolia, ethereum
- Contract surface: 106 unique implementations (106 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $109,816.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Shell Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, arbitrum-sepolia, ethereum. Structural roles: 6 core, 2 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: ownable (3), erc20 (2), erc1155 (1), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0cb736ea2ad425221c368407caafdd323b7bdc83`, chain 42161)
- UnnamedContract (`0x2eab95a938d1fabb1b62132bdb0c5a2405a57887`, chain 42161)
- UnnamedContract (`0x3402d87df0817b2a96b210b8873d33dd979c8d19`, chain 42161)
- UnnamedContract (`0x3917c74fdec42071e29461c849bceb81cbc3059c`, chain 42161)
- UnnamedContract (`0x4f9d367636d5d2056f848803c11872fdbc2afc47`, chain 42161)
- UnnamedContract (`0x6896177ee52659f22a87b180e8fcb2c850a7427e`, chain 42161)
- UnnamedContract (`0x81f6f6664e8ece1e81bc9097084373c1dddb8daa`, chain 42161)
- UnnamedContract (`0x96c7dc9d473e621a1e3968cb862803eaede21888`, chain 42161)
- UnnamedContract (`0xa16f40437213020a167c230e4667ff8f13640f75`, chain 42161)
- UnnamedContract (`0xa2db39e781a5eee0eaa625dace6f097c17dff7ea`, chain 42161)
- UnnamedContract (`0xc32a9fc5665affce85cf043472f718029577f7e0`, chain 42161)
- UnnamedContract (`0xe043eb17cc12c3fd4f5eac765d0f1b965975f470`, chain 42161)
- FractionalizerFactory (`0x4093ee6cc764e11ce95451f47ddee9d6cc89eed4`, chain 42161)
- LiquidityPoolProxy (`0x0699645f2fd448398272ae07f82eee8d0388de1c`, chain 42161)
- Ocean (`0x96b4f4e401ccd70ec850c1cf8b405ad58fd5fb7a`, chain 42161)
- Shell (`0x8dcaec45365e5ada5676073a07b418c2f538145a`, chain 1)
- StandardArbERC20 (`0xe47ba52f326806559c1dec7ddd997f6957d0317d`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (5 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 78 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 17 of 106 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/18
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 106
- Raw deployments: 106
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 40.0% (Code4rena, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 11.1% | 2022-09 |
| Code4rena | Tier 1 | 1 | 5.6% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidityPoolProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254715 | `0x0699645f2fd448398272ae07f82eee8d0388de1c` | ✅ Audited |
| Ocean | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254725 | `0x96b4f4e401ccd70ec850c1cf8b405ad58fd5fb7a` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BalancerAdapter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254730 | `0xa8cb454449143912159e066760c1cf3b92415b4a` | ⚠️ Unaudited |
| ComposableStablePool | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254727 | `0x9791d590788598535278552eecd4b211bfc790cb` | ⚠️ Unaudited |
| CrabDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf17664006851a27d5bd93d497f30853ac558792` | ⚠️ Unaudited |
| Curve2PoolAdapter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254714 | `0x02b4ab3b517371d0bd71d325dbe7dfc0320742e4` | ⚠️ Unaudited |
| CustomShellVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf70395c5e2ff522ca56aa210c46138dc3bf18c79` | ⚠️ Unaudited |
| FractionalizerFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254720 | `0x4093ee6cc764e11ce95451f47ddee9d6cc89eed4` | ⚠️ Unaudited |
| Multicall2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0xc5cfada84e902ad92dd40194f0883ad49639b023` | ⚠️ Unaudited |
| Multicall2Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b5cfe992adac0c9d48e05854b2d91c73a003858` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d073a51a9b074940622e42c5f3c4d08c2c6ce77` | ⚠️ Unaudited |
| SeedPoem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a440f7b5414dfa7f5ea94a01a21b8fc36f23276` | ⚠️ Unaudited |
| Shell | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254713 | `0x8dcaec45365e5ada5676073a07b418c2f538145a` | ⚠️ Unaudited |
| ShellDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4818c257384704b153c60b0ec7bae0c23b3c011d` | ⚠️ Unaudited |
| ShellVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53b86e1c9cbfdc8f784082c1b4a5cf845d62f887` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-254740 | `0xe47ba52f326806559c1dec7ddd997f6957d0317d` | ⚠️ Unaudited |
| VestingFractionalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaff1f19340eb5456a55c76938f74bb1d23f11817` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0100fbf414071977b19fc38e6fc7c32fe444f5c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96083906aad9dc0860e5b05a919f190213701fae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254716 | `0x0cb736ea2ad425221c368407caafdd323b7bdc83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d1a1084560901a24d6a03a11112882c54cb900b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254717 | `0x2eab95a938d1fabb1b62132bdb0c5a2405a57887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254718 | `0x3402d87df0817b2a96b210b8873d33dd979c8d19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254719 | `0x3917c74fdec42071e29461c849bceb81cbc3059c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254721 | `0x4f9d367636d5d2056f848803c11872fdbc2afc47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254722 | `0x6896177ee52659f22a87b180e8fcb2c850a7427e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-254723 | `0x7f90122bf0700f9e7e1f688fe926940e8839f353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8178f0844f08543a0bd4956d892ef462bd7e71c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254724 | `0x81f6f6664e8ece1e81bc9097084373c1dddb8daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e5ae75cd39c95f9074eb62be179b779e5f93949` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254726 | `0x96c7dc9d473e621a1e3968cb862803eaede21888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254728 | `0xa16f40437213020a167c230e4667ff8f13640f75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254729 | `0xa2db39e781a5eee0eaa625dace6f097c17dff7ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9fd6c758b86bcb2642a5f9306f58a870ac4aabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab25dfe15c18b7653ace505a8b28616d37ce7390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf2495345d2f0384312686a553d230373618d93f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf9dbf74051605eb362cc5516de78ac5660a6b66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254731 | `0xc32a9fc5665affce85cf043472f718029577f7e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-254732 | `0xc32eb36f886f638fffd836df44c124074cfe3584` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-254733 | `0xe043eb17cc12c3fd4f5eac765d0f1b965975f470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x006868413d48492ed7f41ebb7a1ba87395227180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x01b8548a998d095eb179419144cb7631564dac98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x01ddf83003cedf71b438142a84ca4bc64d14fee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x09b4c3b66655315183a17b8fef6c9222be11ec4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x0c554ae9ed93396f0eaff6f92c39c341658e5350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x12214587b8785a150340ab4ab2af66a674f60f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x12baad68f1e6d1ee98cbe0726dcdf93764b870a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x16fa6eca5f6b38f43e36117b01be9f533aba417e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x19adcd3228a74a19d2ad2a3e7362eb0a7855e0a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254734 | `0x1c78820be30c6013f5eac98b3ddfbb3431e1ad29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x2349b82927d69658b5a54e37005cc7d307740f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x262d7a5bee15e9e9fea0c0439da4dac9056e178e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x266c6e1fd79eb7b346fbf7d64453827a0ed994b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x30e99d9710868e6ac6bc6d61c8dfefbce851ba7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x3a46e78e4e6d44c148b8e11b78608517c37bfd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x3b386bb0d1aeb96da71bf0430485bcb93b393ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x42e0103a02f144ac17c6ac227e02a93eace7ac54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x48e4f540b23b6597d0bce7263013e334613f7395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4cffaf9081d3fc2538157b8c8cb2ffa9058944a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4e064dc73f1a14833b75c41172457cd09f67c4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4e9258d161fa454c7b6314527b00e21318b7fc40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4fed46bcdf9232150568722d1804a50ed723e4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5a5b14594f1bf93656a2b705ecdb873373a4efe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5c817e097cf04f1633e6eac74c53e533c5f6e02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5e22633a8ec20ebca0e7e4be9ac709b5781ff884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5f0bbaab0334858c1c376571952afdee500f80d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x6575f9bb2df501224026a7f7a5fbe8e36653a295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x6d0987138ef6f12c0ff9a133cb621db9a7127640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x70c4d2a36c3176b493dfac0269d312935b16e564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x71d6b0abcf6b237a0a5f8787388774ac3d3532ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x7b77a6b87b0e2807911b1bcd3989c47ffff1a0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x7c337d52a2425f277b371fe79ca2ced02744836a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x7c73dce4548692fb117092abe8294477c7f11124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8186eddb0332192783315ddeb82578e2a5636dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8598918999415f50b33598edb5bac78518f2e341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8788989f1cb0a0113096a8c24861558cc3c9b803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x885927fc635a131d474b3c66ad942486fc68384f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8b90b4a15817f5ce6e08bbd2004cb069b70658a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8cbca2fe692ffe6682a26b7072f090715907fba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x9509d268f00614950ab2f9ca197f1c3e4c26e684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x9ab122c870ef91c4409ffb1796d5a7cf09414ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xa11d059cbaab1cfd00a44673441adc99e25a25e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xa17a5b222c235185b4eceabe8e117b4d95bd965c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xa2b376c51241c84861f4e02611a9e35bb43ecc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xa3352a9f4dbeb7e960ac906733552dfb2849c5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xa700ba201a81e1340dc1e981a3108ace6a60fbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xa88c37486e85c3275ae0998cd6690cd2a0e29bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xac30b736da0bd16712ba3b8e4a9c3073a04dd38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xb2d0b8305ba1a9fb51959f993f216bc14e123763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xb4d7b66e6f0622cd95b764f608382ec39114d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xbae89e09d9ca7ee6160c5952c7e44e1234b2e44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xbd03f480fac492c76b7c52edcc3a66882475af45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xc572b25656942154b0fea11d0a794a084cad7461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xcdbc664ff12a5bdf0e4cbac3f175b6176cc214ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xcddbdb1e842098df386b4e381eb127e421f8efbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254735 | `0xcf17664006851a27d5bd93d497f30853ac558792` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254736 | `0xe290a897504313b46a1198bd9b25b58e503842f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xe3b7e22a747e840e4ac190778f9cb872da6ffa8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254737 | `0xe5eb94ceadeb1a87656b7fb57cf22d01c1b3229d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254738 | `0xe6401f6f9e6391eee7ad5a2527ef730070f743fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xe6bd8d33f81781fe44d879c69655c936c3aa6012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xe71486be16df382d10205af98ee1b8f000e3886f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-254739 | `0xeae5b59499a461887fbf2bf47887e4e4cb91d703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xf02e1e866fd136408d6964dd1bcecc77877b4c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xf21d2bebac74f6e8aa6e1d51c9a2a68d92b5c856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xfa279c1ca3e2304b1d0cf441cfbce4e2f03cc4f2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 66
- Live contracts: 0
- Unknown liveness contracts: 66
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=66

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x96083906aad9dc0860e5b05a919f190213701fae` | non_address_book | unknown | unknown | unverified | n/a | `0xf88b0247e611ee5af8cf98f5303769cba8e7177c` |
| unverified unclassified | UnnamedContract<br>`0x2d1a1084560901a24d6a03a11112882c54cb900b` | non_address_book | unknown | unknown | unverified | n/a | `0x8153309efc8c86fd3fa897509a3c9d07fa8e8d0a` |
| unverified unclassified | UnnamedContract<br>`0xa9fd6c758b86bcb2642a5f9306f58a870ac4aabb` | non_address_book | unknown | unknown | unverified | n/a | `0x8153309efc8c86fd3fa897509a3c9d07fa8e8d0a` |
| unverified unclassified | UnnamedContract<br>`0xab25dfe15c18b7653ace505a8b28616d37ce7390` | non_address_book | unknown | unknown | unverified | n/a | `0x8153309efc8c86fd3fa897509a3c9d07fa8e8d0a` |
| unverified unclassified | UnnamedContract<br>`0xbf2495345d2f0384312686a553d230373618d93f` | non_address_book | unknown | unknown | unverified | n/a | `0x8153309efc8c86fd3fa897509a3c9d07fa8e8d0a` |
| unverified unclassified | UnnamedContract<br>`0xbf9dbf74051605eb362cc5516de78ac5660a6b66` | non_address_book | unknown | unknown | unverified | n/a | `0x8153309efc8c86fd3fa897509a3c9d07fa8e8d0a` |
| unverified unclassified | UnnamedContract<br>`0x006868413d48492ed7f41ebb7a1ba87395227180` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x01b8548a998d095eb179419144cb7631564dac98` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x01ddf83003cedf71b438142a84ca4bc64d14fee5` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x09b4c3b66655315183a17b8fef6c9222be11ec4a` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x0c554ae9ed93396f0eaff6f92c39c341658e5350` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x12214587b8785a150340ab4ab2af66a674f60f80` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x12baad68f1e6d1ee98cbe0726dcdf93764b870a1` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x16fa6eca5f6b38f43e36117b01be9f533aba417e` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x19adcd3228a74a19d2ad2a3e7362eb0a7855e0a9` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x2349b82927d69658b5a54e37005cc7d307740f04` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x262d7a5bee15e9e9fea0c0439da4dac9056e178e` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x266c6e1fd79eb7b346fbf7d64453827a0ed994b4` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x30e99d9710868e6ac6bc6d61c8dfefbce851ba7b` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x3a46e78e4e6d44c148b8e11b78608517c37bfd6e` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x3b386bb0d1aeb96da71bf0430485bcb93b393ecf` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x42e0103a02f144ac17c6ac227e02a93eace7ac54` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x48e4f540b23b6597d0bce7263013e334613f7395` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x4cffaf9081d3fc2538157b8c8cb2ffa9058944a0` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x4e064dc73f1a14833b75c41172457cd09f67c4ae` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x4e9258d161fa454c7b6314527b00e21318b7fc40` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x4fed46bcdf9232150568722d1804a50ed723e4d7` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x5a5b14594f1bf93656a2b705ecdb873373a4efe9` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x5c817e097cf04f1633e6eac74c53e533c5f6e02f` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x5e22633a8ec20ebca0e7e4be9ac709b5781ff884` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x5f0bbaab0334858c1c376571952afdee500f80d2` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x6575f9bb2df501224026a7f7a5fbe8e36653a295` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x6d0987138ef6f12c0ff9a133cb621db9a7127640` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x70c4d2a36c3176b493dfac0269d312935b16e564` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x71d6b0abcf6b237a0a5f8787388774ac3d3532ad` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x7b77a6b87b0e2807911b1bcd3989c47ffff1a0e4` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x7c337d52a2425f277b371fe79ca2ced02744836a` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x7c73dce4548692fb117092abe8294477c7f11124` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x8186eddb0332192783315ddeb82578e2a5636dff` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0x8598918999415f50b33598edb5bac78518f2e341` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x8788989f1cb0a0113096a8c24861558cc3c9b803` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x885927fc635a131d474b3c66ad942486fc68384f` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x8b90b4a15817f5ce6e08bbd2004cb069b70658a9` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x8cbca2fe692ffe6682a26b7072f090715907fba5` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x9509d268f00614950ab2f9ca197f1c3e4c26e684` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0x9ab122c870ef91c4409ffb1796d5a7cf09414ede` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xa11d059cbaab1cfd00a44673441adc99e25a25e0` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xa17a5b222c235185b4eceabe8e117b4d95bd965c` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xa2b376c51241c84861f4e02611a9e35bb43ecc72` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xa3352a9f4dbeb7e960ac906733552dfb2849c5e5` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xa700ba201a81e1340dc1e981a3108ace6a60fbf4` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0xa88c37486e85c3275ae0998cd6690cd2a0e29bd7` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0xac30b736da0bd16712ba3b8e4a9c3073a04dd38e` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xb2d0b8305ba1a9fb51959f993f216bc14e123763` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xb4d7b66e6f0622cd95b764f608382ec39114d446` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xbae89e09d9ca7ee6160c5952c7e44e1234b2e44c` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xbd03f480fac492c76b7c52edcc3a66882475af45` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xc572b25656942154b0fea11d0a794a084cad7461` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xcdbc664ff12a5bdf0e4cbac3f175b6176cc214ce` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xcddbdb1e842098df386b4e381eb127e421f8efbc` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xe3b7e22a747e840e4ac190778f9cb872da6ffa8f` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xe6bd8d33f81781fe44d879c69655c936c3aa6012` | non_address_book | unknown | unknown | unverified | n/a | `0x87913460d23f0a3509cffa018c4584750c736e65` |
| unverified unclassified | UnnamedContract<br>`0xe71486be16df382d10205af98ee1b8f000e3886f` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xf02e1e866fd136408d6964dd1bcecc77877b4c43` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xf21d2bebac74f6e8aa6e1d51c9a2a68d92b5c856` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |
| unverified unclassified | UnnamedContract<br>`0xfa279c1ca3e2304b1d0cf441cfbce4e2f03cc4f2` | non_address_book | unknown | unknown | unverified | n/a | `0x67de6393b57e21b48cba9eb0ebbcdcf3eca22775` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ShellProtocolv2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/ShellProtocolv2.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 6 | high |
| [code4rena.com/reports/2023-08-shell](https://code4rena.com/reports/2023-08-shell) | Code4rena | Contest | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [code4rena.com/reports/2023-11-shellprotocol](https://code4rena.com/reports/2023-11-shellprotocol) | Code4rena | Contest | 2024-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [diligence.security/audits/2020/06/shell-protocol](https://diligence.security/audits/2020/06/shell-protocol) | Consensys Diligence | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [bot-report.md](https://github.com/code-423n4/2023-08-shell/blob/main/bot-report.md) | unknown | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [PDF](https://diligence.security/audits/2020/06/shell-protocol/shell-protocol-audit-2020-06.pdf) | Consensys Diligence | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [can be found here](https://diligence.security/audits/2020/06/shell-protocol/static/initial_mythx_report.pdf) | MythX | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [can be found here](https://diligence.security/audits/2020/06/shell-protocol/static/followup_mythx_report.pdf) | MythX | Audit | 2020-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Automated Findings report](https://gist.github.com/code423n4/640b27a9b9c209b575ed78aa106bd584) | Code4rena | Contest | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21442] ShellProtocolv2.pdf — matched: Extracted 8 contracts from Project Coverage section and findings. Audit date from cover page.
- [21443] code4rena.com/reports/2023-08-shell — no match: The report scope explicitly states 1 smart contract: EvolvingProteus. The audit date is from the report header.
- [21444] code4rena.com/reports/2023-11-shellprotocol — matched: Scope section explicitly lists 4 smart contracts: Ocean, OceanAdapter, Curve2PoolAdapter, CurveTricryptoAdapter. Audit date found on cover page.
- [21445] diligence.security/audits/2020/06/shell-protocol — no match: Extracted 27 contract names from the 'Files in Scope' appendix. Audit date inferred from review period: June 22 to July 7, 2020.
- [24451] bot-report.md — no match: The report does not contain a dedicated scope section or table. All findings reference only src/proteus/EvolvingProteus.sol, which appears to be the sole contract audited. No audit date was found in the provided text.
- [24453] PDF — no match: Extracted 27 contract names from the Appendix listing files in scope. Audit date derived from the end date of the review period (June 22 to July 7, 2020).
- [24454] can be found here — no match: Audit report lists three main source files analyzed: Loihi.sol, LoihiRoot.sol, ShellsExternal.sol. The report date is the creation date of the report: Thu Jul 02 2020.
- [24455] can be found here — no match: Extracted contract names from main source files listed in each analysis section. Also included LoihiRoot and DSMath as they are imported and analyzed.
- [24457] Automated Findings report — matched: Extracted contract names from file paths in findings. Audit date inferred from gist creation date (December 1, 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ShellProtocolv2.pdf | Ocean | own contract | Ocean (selected) `0x96b4f4e401ccd70ec850c1cf8b405ad58fd5fb7a` — deployed 2024-01-09 10:52:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ShellProtocolv2.pdf | OceanERC1155 | unmatched — not counted | — | listed in Project Coverage section | no |
| ShellProtocolv2.pdf | Interactions | unmatched — not counted | — | listed in Project Coverage section | no |
| ShellProtocolv2.pdf | BalanceDelta | unmatched — not counted | — | listed in Project Coverage section | no |
| ShellProtocolv2.pdf | Proteus | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| ShellProtocolv2.pdf | ProteusLogic | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| ShellProtocolv2.pdf | LiquidityPoolProxy | own contract | LiquidityPoolProxy (selected) `0x0699645f2fd448398272ae07f82eee8d0388de1c` — deployed 2023-04-28 02:36:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ShellProtocolv2.pdf | LiquidityPool | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| code4rena.com/reports/2023-08-shell | EvolvingProteus | unmatched — not counted | — | listed in scope as the only smart contract | no |
| code4rena.com/reports/2023-11-shellprotocol | Ocean | own contract | Ocean (selected) `0x96b4f4e401ccd70ec850c1cf8b405ad58fd5fb7a` — deployed 2024-01-09 10:52:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-11-shellprotocol | OceanAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2023-11-shellprotocol | Curve2PoolAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2023-11-shellprotocol | CurveTricryptoAdapter | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/06/shell-protocol | Assimilators | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | Controller | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | Loihi | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | LoihiRoot | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | Shells | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | ShellsExternal | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | AssimilatorMath | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | ILendingPool | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetASusdToASusdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetSUsdToASUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetAUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetCDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetChaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetCUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetCDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetChaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | mainnetDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | MainnetASusdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | MainnetSUsdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localCUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localAUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| diligence.security/audits/2020/06/shell-protocol | localUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| bot-report.md | EvolvingProteus | unmatched — not counted | — | All findings reference this file; it is the only contract in scope. | no |
| PDF | Assimilators | unmatched — not counted | — | listed in scope appendix | no |
| PDF | Controller | unmatched — not counted | — | listed in scope appendix | no |
| PDF | Loihi | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LoihiRoot | unmatched — not counted | — | listed in scope appendix | no |
| PDF | Shells | unmatched — not counted | — | listed in scope appendix | no |
| PDF | ShellsExternal | unmatched — not counted | — | listed in scope appendix | no |
| PDF | AssimilatorMath | unmatched — not counted | — | listed in scope appendix | no |
| PDF | ILendingPool | unmatched — not counted | — | listed in scope appendix | no |
| PDF | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetASusdToASusdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetSUsdToASUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetAUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetUsdtToAUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetCDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetChaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetDaiToCDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetCUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetUsdcToCUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetCDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetChaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetDaiToDaiAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetASusdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | MainnetSUsdToSUsdAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalCUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalUsdcToUsdcAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalAUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| PDF | LocalUsdtToUsdtAssimilator | unmatched — not counted | — | listed in scope appendix | no |
| can be found here | Loihi | unmatched — not counted | — | Main source file for analysis 092dda5e | no |
| can be found here | LoihiRoot | unmatched — not counted | — | Main source file for analysis 3015c108 | no |
| can be found here | ShellsExternal | unmatched — not counted | — | Main source file for analysis 9869b2a2 | no |
| can be found here | Loihi | unmatched — not counted | — | main source file in analysis 6df956e5 | no |
| can be found here | LoihiDelegators | unmatched — not counted | — | main source file in analysis e3933c9e | no |
| can be found here | LoihiERC20 | unmatched — not counted | — | main source file in analysis 6147bc39 | no |
| can be found here | LoihiExchange | unmatched — not counted | — | main source file in analysis a26303f1 | no |
| can be found here | LoihiLiquidity | unmatched — not counted | — | main source file in analysis 94aef017 | no |
| can be found here | LoihiViews | unmatched — not counted | — | main source file in analysis 7f8a2fa5 | no |
| can be found here | LoihiRoot | unmatched — not counted | — | imported and referenced in multiple analyses | no |
| can be found here | DSMath | unmatched — not counted | — | referenced in findings for multiple analyses | no |
| Automated Findings report | Ocean | own contract | Ocean (selected) `0x96b4f4e401ccd70ec850c1cf8b405ad58fd5fb7a` — deployed 2024-01-09 10:52:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Automated Findings report | OceanAdapter | unmatched — not counted | — | listed in scope | no |
| Automated Findings report | Curve2PoolAdapter | unmatched — not counted | — | listed in scope | no |
| Automated Findings report | CurveTricryptoAdapter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x4093ee6cc764e11ce95451f47ddee9d6cc89eed4` | FractionalizerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8dcaec45365e5ada5676073a07b418c2f538145a` | Shell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe47ba52f326806559c1dec7ddd997f6957d0317d` | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 79 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1
- Match method counts: unique_name=4

Zero-match audit list:

- [21443] code4rena.com/reports/2023-08-shell
- [21445] diligence.security/audits/2020/06/shell-protocol
- [24451] bot-report.md
- [24453] PDF
- [24454] can be found here
- [24455] can be found here

Fork inheritance lineage and inherited audits are included when available.
