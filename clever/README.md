# Agentic Audit Brief: CLever

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: CLever (`clever`)
- Website: [https://clever.aladdin.club/](https://clever.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: ethereum
- Contract surface: 417 unique implementations (438 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,507,907.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CLever. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: unclassified (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a`, chain 1)
- UnnamedContract (`0x3abf0be21e5020007b6e2e201e292a7119bc2b0d`, chain 1)
- UnnamedContract (`0x8a5ef9095795e9740afc91c5bd23b0e48d6bb7ae`, chain 1)
- UnnamedContract (`0xb9cd9979718e7e4c341d8d99da3f1290c908fbdd`, chain 1)
- Vyper_contract (`0x6c280db098db673d30d5b34ec04b6387185d3620`, chain 1)
- Vyper_contract (`0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 410 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 6 of 417 unique; 411 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 394
- Unique implementations: 417
- Raw deployments: 438
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AladdinConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8` | ⚠️ Unaudited |
| AladdinCRVV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884`; ethereum `0x9a68dea7dcddfc5c4c6b3cb8ab278bf2cd87d3d3` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1` | ⚠️ Unaudited |
| CLeverCVXLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e58f45e69732f3c602075f010ab35902ce62771`; ethereum `0x96c68d861ada016ed98c30c810879f9df7c64154` | ⚠️ Unaudited |
| CLeverToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c20ac688410be8f391be1fb00afc5c212972f86`; ethereum `0xf05e58fcea29ab4da01a495140b349f8410ba904` | ⚠️ Unaudited |
| CompounderGateway | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883fd355debf417f82aa9a3e2936971487f7df1f` | ⚠️ Unaudited |
| Furnace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xce4dcc5028588377e279255c0335effe2d7ab72a`; ethereum `0xe64b336b5df8318fa485a1a96af5f8a553555285` | ⚠️ Unaudited |
| FxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7d85a9ae9ea89069a71289c167cd3502a773e113`; ethereum `0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907b3aedbd863e551c37f21dd3f36b28a6784` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f`; ethereum `0xfc08757c505ea28709df66e54870fb6de09f0c5e` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x679de4a3836d916fc86c6d9944c98a694f68adb4`; ethereum `0xe7b9c7c9ca85340b8c06fb805f7775e3015108db` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695eb50a92ad2aebb89c6dd1f3c7546a28411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ⚠️ Unaudited |
| RebalancePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x23831e29db590bbbacf267ee2cf377cd3e54a718`; ethereum `0xa677d95b91530d56791fba72c01a862f1b01a49e` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf59d144357dcc8a852ad601f27bf6310b657a7f` | ⚠️ Unaudited |
| SdCrvCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43e54c2e7b3e294de3a155785f52ab49d87b9922` | ⚠️ Unaudited |
| stETHTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e5caa5c889bdf053c9a76395f62267e653afbb0`; ethereum `0x969fcabb703052155c4cc3b24458e77b2d56b29a` | ⚠️ Unaudited |
| VeFeeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc7906fc6047679dad53c0c3b40e135486421e9` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x592e353c5b97356e99eaf6a72b971ba1c9695593`; ethereum `0x8341889905bdef85b87cb7644a93f7a482f28742`; ethereum `0x84c82d43f1cc64730849f3e389fe3f6d776f7a4e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de`; ethereum `0x4aa2afd5616beec2321a9efd7349400d4f18566a`; ethereum `0x72953a5c32413614d24c29c84a66ae4b59581bbf`; ethereum `0x94be07d45d57c7973a535c1c517bd79e602e051e`; ethereum `0x9b02548de409d7aaee228bfa3ff2bca70e7a2fe8`; ethereum `0xa5d9358c60fc9bd2b508eda17c78c67a43a4458c`; ethereum `0xb3ad645db386d7f6d753b2b9c3f4b853da6890b8`; ethereum `0xb5e7f9cb9d3897808658f1991ad32912959b42e2`; ethereum `0xc5022291ca8281745d173bb855dcd34dda67f2f0`; ethereum `0xe4c09928d834cd58d233cd77b5af3545484b4968`; ethereum `0xf9078fb962a7d13f55d40d49c8aa6472abd1a5a6` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232001 | `0x6c280db098db673d30d5b34ec04b6387185d3620` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232003 | `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f` | ⚠️ Unaudited |
| WeightedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69671c808c8f1c1490a4c9e0145884dfb5631378` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (394)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002cdac50b3eefe6adb6168833fb49c040a1a7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0055e248ee7feab91969b77ab32f184b72be82fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0084c2e1b1823564e597ff4848a88d61ac63d703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00bac667a4ccf9089ab1db978238c555c4349545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0146f3ab76c93d437be7769b001a58efee0e66a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0417ce2934899d7130229cda39db456ff2332685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054fac7aa44f85a59fd41c33006336ec8b03e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05abfad11c275f91cc79f6ec507cb273e9f59de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d9d83df553c013e767872af8da75d84e1368f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085780639cc2cacd35e474e71f4d000e2405d8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a602616593b79591cfc88a130c8825a0fcbd94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09ce8f58e7340601bb9179000fb49c31843c5283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab9dc99a33cd02a776a9117f211803fb69fd7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b46aeb66f97b1586ca6588fda50a6f277a56753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b700c60de435d522081cc5eb12b63875fe7e65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bbfd53ec934e5d4d3d55dd860642add395de979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd730bdc145fb116d2b2328c0baca40d801d222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3e9a29e856cf00d670368a7ab0512cb0c29fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e67460226a71df07115c1f169418dd159e5521b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231999 | `0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x112873b395b98287f3a4db266a58e2d01779ad96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145f304d74f3295fa38b82e7bb8704b0e187fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1146cb9f7d8633c5f2ed62ff74ab81cb488780dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1236193c71128f9e7b6bb56f506676add8589009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12af4529129303d7fbd2563e242c4a2890525912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b295d12a4d4df2f3f5b2b8e151bbe000564fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12be1e1e1f4632f68a78e0ea0247d7e3c2dbc8aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1359fce197cf743016cd1a620939a1a80df259a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f1cbae37f765614655967afc51b544b8143749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15100606433dc500451e8289984acfceead03149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x163283d59fe2a579f2920a7f8ea19f7799b32fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b334f2644cc00b85db1a1eff0c2c395e00c28d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e2e8ca0b35aa750771e000d1e926417b97f29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184b6aed8d975385e0ad02e026d649208a3c58a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1925e197fffa52060f0d2515cd3781e26c63f08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951fb29ee3ed3026ed7ce2beee3194d90fbb2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a144095ad1cb488fe6378dbfc62368a7453d114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a17ccf198e03858227c27205f15a4b388235db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba2de0e2f7fd59535bc5b29d742fd23b050df18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca7b82c4265835c7841cf29407217d820a7dadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d100dc012c54606f0046c9420f72b8c63803a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d20671a21112e85b03b00f94fd760de0bef37ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f844447ecf5b1523bfbadad3d9dea975982ea93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2091353d10096349faa685c4dc3d383837f54533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2122a2bee97545595550b85379ac7676fd21a5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21275a57cf7592a1bb41e75497c070efc8b66b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215d87bd3c7482e2348338815e059de07daf798a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218b689a4f4afba497123b4831f58d6379d99801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21fb1221317ac539ee355fc113054e54b1cd0231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221ffb180ad01213ff882ab7de9c75e23f9efa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x222786833b5fd5ee21532d8b576391babefdaad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2290eefea24a6e43b26c27187742bd1fedc10bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2319289e56830b50a282c25af4f0045c724b3f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24177d4ad619ae2582872d25985dcef4d1de7ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250893ca4ba5d05626c785e8da758026928fcd24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253d0c045ee4fb6f2707fe7d1fcd0ef036e032a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25707b9e6690b52c60ae6744d711cf9c1dfc1876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267b7a1d56d624293ba1819f30b5bf0f12a524e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267c6a96db7422faa60aa7198ffeeec4169cd65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2755eebf220bfd31b83fd9244b6d061bca225311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288810cdbdfed9ea3be3ca4e421ab795fd0669f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ed637c5e3371c2678c2d346df04fb634ed832d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297dd69725911fe5f08b8f8c5edddb724d7d11df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee4b752fe14b0bc1f279dca98415f2fa6f3a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba1cab8c43226b98652fbed1eb6eff117d9c1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb0c32101456f5960d4e994bac183fe0dc6c82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be95a7c0ad24e2d2876793172d046db05d26f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c613d2c163247cd43fd05d6efc487c327d1b248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8b895773b093055919e16d537e3a2295d5ef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5a5af7ee900d34bcfb70c47023bf1d6be35cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b8b9588592bc92617d5b4bcceed06f76f66b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316f7c1c54f6f5455b9ae92218596bad431a4309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31b630b21065664ddd2dba0ed3a60d8ff59501f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bfaf256875a93b5d02cdef80b17ef780663d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31f02918630ce0976ad4a70e1d9c4439fc06476a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32356fe312eba9b7d6a157ad28d1ca91b571cda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33636d49fbefbe798e15e7f356e8dbef543cc708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374b9466d571edd695cf5e198f7c89b33c0ce01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x345a345dad48c3504113539ce83c0cb765627b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x353e11ab2da88bfc57fd42c2871301c1f123d4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361f88157073b8522def857761484ca7b1d5c8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ecdec1b5e301321166cefd5856a44bfa13a1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3716352d57c2e48eedb56ee0712ef29e0c2f3069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37303d55fd8570c070bedd9a0e64421f318bb01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x376909c828fa57d271e6b208036d24943503fbad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384b11daa4a6d2b86cc542cb68c473f554b82d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387568e1ea4ff4d003b8147739db69d87325e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38965311507d4e54973f81475a149c09376e241e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389b4a98e01290811687f4fff92281b1ef84c5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a3060074fc936803ec9c40caba0b1c583c183c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232000 | `0x3abf0be21e5020007b6e2e201e292a7119bc2b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd15fee3fe7bcc68eac516892b9d21fd30e0196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cdbf28214e4d703c5c599abb5a765bef9bf8815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe091c9028154cc5cb721258e9360803b130f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d35dc5948c948f131ddd9e3a341b99e45174a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e9cdbc08b09579bbc8b5b901d88c27ee60e6498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec677ba393f2257ed0e1d37aa8442eb7f0953fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe86703e99e09ece2e3bc6c3672a0c0432893b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43fcfe9f128b5e4271c7e25c47efe91ba8896220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447d902da96a22727d0b53f215d0c387fe1ae114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4480debb165466a0dbb1196879c43c7f0cc297db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x456517ee29af17e59ea1c70852d3fb15804bd122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e51067e695bd79d6275ecab6e9e527a72abde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a2ab45d27428901e826db4a52dae00594b68022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a75ce4cf4c74ae6bcd7212324f88c7ecd7bba3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ae3be52c411cc08434d28645fd391497c69c815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bbd78629b2794d73a3def4c502c422de674831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be29f398dbf33c13a6c8463a4a45ba97577add1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca79f4fe25bcd329445cdbe7e065427aca98380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6a1dc233f264dd07b63e206fc451d986ba9908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eefea49e4d876599765d5375cf7314cd14c9d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8330946669d71014efdce30ef19a256643fba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f96fe476e7dcd0404894454927b9885eb8b57c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50562fe7e870420f5aae480b7f94eb4ace2fcd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b4dc15b34e31671c9ca40f9eb05d7ebd6b13f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e286478519924a400554bae7a3fa139f9b1576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549716f858aeff9cb845d4c78c67a7599b0df240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558e7dd3a72aaa8d54002cabc4565ad9db58a6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a51450b1d025b4f6fa259b2008851553343cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564a464c9c357de593fa48efd784048a9e366523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56afb443de36340c32f1a461605171992480059d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56b85438f1e16a91eac5fe2daab2c3dd57690175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576b4779727f5998577bb4e25bf726abe742b9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5801bb8f568979c722176df36b1a74654a9c52b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58465fff9f31f0d46822d3a4cea0395f017e161a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b01ab834ee75b2a685da500bcd0d7380fb8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a097b014c547718e79030a077a91ae37679eff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a161b94c737326ca115ec46f4eaf4eec5037dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac1a882e6cedc58511b7e42b02bab42e2c02956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1d12365bec01b8b672ee45912d1bbc86305dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0aacf75116d1645db2b3d1ca4b303ef0ca3752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2c6215555b36889ef235c6d5ccde22e9964e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3ca2a5736fb093328e4ca19a9a1966025f3905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fec7879738cb209af6d9880e4566a24200accae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f32964c39cca4353144a6db2f8efdb3216b35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b038a7298fbdcf0945068637ec59b8a5e9c6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63fe55b3fe3f74b42840788cfbe6229869590f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6440e21a3634c319c69cef8d17601dbc4e97c3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65c9a641afceb9c0e6034e558a319488fa0fa3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d513e448966d8c6ff046fc93c3de396fce5cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d72aa8da931f047169112fcf34f52dbaae7d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c359c78f75581ab2da5c353d2577c41cecb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678b5ecfe9fb6f9d900262f7b196d87168a1ef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6793de5e5a329be514b51184db13639dc7ccf8dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a94c63689cda730e99491d29e56acd247e5430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680f26dbc8fa2b463607ebb49a68a69c33476665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6844aaab4131041b563e6217eb0ba218123f5e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68863fb8855b04509a835082478d6e3d0be4e61a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69518d1d70ad537c41401303bdf96032338e40de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69556a04b10d16dc62f0b8ea739d03947863cd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695c6f5ed9ceb6709e00c08e1326710f3169b922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697ddb8e742047561c8e4bb69d2ddb1b8bb42b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af422087abf42819f764ff8de95269036b9a8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc45630ef423f75c3b7280cf819661b2dc3051a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3197e00a96bc3f390d2443e989c48f4c88bbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c338c0bfb67970231109d4b33047a6e6bc685e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c981a842b7238185a5c2dd27c8f939f98a99d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d9e81c5b7c4b37d0fe9e8cda776e057f4040868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc7a100d09ddbf344fc4dd0398f79500d0c2716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e854737e091ca0d2ad9da36f93302b9aa995a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb03222179f83126735d7e9fde94571d716d399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecfa38fee8a5277b91efda204c235814f0122e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fcfe767c479ef1f2d8c7a4b27e2abadd355910f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714b853b3ba73e439c652cfe79660f329e6ebb42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-232002 | `0x71fb0cc62139766383c0f09f1e31375023592841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7267277682ffc281b00b0ec56d8de22e8ae88e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a6239f1651a4556f4c40fe97575885a195f535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a7b27308f2c8b3769fb88734f561c23a4afb66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e9234a6e03c382a01bb942b1af05b639371309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7612bcabd3d66c71ff740472e063be6a74f126d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76fad0f85c4b34347f2c1cb02d2ef1b3d8128fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7743e50f534a7f9f1791dde7dcd89f7783eefc39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x781ba968d5cc0b40eb592d5c8a9a3a4000063885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ef19714c8b3c71997970c156f59605a99c3ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c5f5b0753ace25ecdbda4c2bc86ab074b6c2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a505e920d5d7e4b402d9ee345fb7e8cdc265262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aed2bb6facaf6f843a7b758053573a4ea9e1f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbfe4090675689bf78cdb6a1eb4705418bb1462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5350bac0eb97f86a366ee4f9619a560480f05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ced6167b5a08111dc8d0d2f9f7e482c4da62506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d4674b837429c44914961cb9f21dd6defd0eee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6a12dce12bc1c57bdf5829f7b40b113acde303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e94c07c6c3b2c931e9517529f56553770a7c0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb0ed173480299e1310d55e04ece401c2b06626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81243a88dd9fb963c643bd3f2194c2ca9ccfc428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a777c4ab65229d1bf64dae4c831bdf628ccc7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e9ed9b654460212f04c2bde0467cde4628782a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x823baf74524b707d649a2a78e66df106f5a131ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834e87262a00b0ac38ed49cb1110838866be4a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x835191186745e63f9e325e741b273ff925174d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837592b44ee5447074b80cb21bf37a8c5e4c08f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83bdc459ac3887b2a61aa47dca3acac26a333d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84952a42984779e22d1e2b78c9b7541d1fb2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851aaea3a2757d457e1ce88c3808c1690213e432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85b84d588c7a67ebab2aa0352b8475dc9310b805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c91ef614b17b198887e519974f4fb5540a56c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e987a89fd7345457d97b9e82906f346d61df39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d5e4caaf4358a4337c10859c7107c7aef4f8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f9e901487b635d1403eaabcb97fc1935fc62ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232004 | `0x8a5ef9095795e9740afc91c5bd23b0e48d6bb7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b10fdf42f5ecada5210c14f5c209c1eb1266f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc02c0d9592976635e98e6446ef4976567e7a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9186fa822624bad50a5cb2545048cb26b4e65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3815ef103b8d8528778969cd53baa2e94be25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910d63e04ca41b9e349c8caba12e7ecae5e11a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9216272158f563488ffc36afb877aca2f265c560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9317139acbdbd53686c4531216a95ccc8514cdcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93670efe073e0d75be16445779a8399e6b418004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939c38921c961decb3cc16f601c32d07c41cd25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94172e0b1714792c54f0b077b64e37c8050e89d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94d2670b829ee371c6aaa78dcdd1bd6e967cefbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9516c367952430371a733e5ebb587e01ee082f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9579c311b54b4bb3460a5461cc6108ee162933c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958df8f124509d45a1c39bc4aedbe486ff2ffb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96293b5424c707c53a51175489e9b24b6b8dce46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9710ca7f3edd4893f399c89ea184d92cc7172e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98ea26a76fd78a22691c9ff64f26893a13cd9b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9963e06c9d3fe874b944c5bf63729bd4ae6f07b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x997b6f43c1c1e8630d03b8e3c11b60e98a1bea90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a18c4ea2c4d1aeaff925cb74e41222a2aa14562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad382b028e03977d446635ba6b8492040f829b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af12dabd518a6da606caac455b2d0efb3ef97f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf5ffabbf97de0a47843a7ba0a9ddb40f2e2ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7003bc16f2a1aa47451c858fee6480b755363e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cfefd90d4c8428d4cbac9baaa6d52c6ba7897f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d093e5b929cceeae9497fc27c22481e0b8a53f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d11ab23d33ad026c466ce3c124928fdb69ba20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8945755ff12a989c4d5e78c9f6f3a4257db90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eafdd0d204061fb98cc305bdacf84fa243b0a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efd39499dd56106b106a2206e79fb6117baf2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0d5e33617a1db6f1cbd5580834422684f09269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f224aa807c6fc3086ed3c552ba54bd3a8aace33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f23562ec47249761222ef7ac02b327a8c45ba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f92ee981e2377ab3a657c86e6ba6511d93b9fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc95077c2271dabb19203e82d469ce2e96aaffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fcb2c47dab11e38fec4b8c886f63741bfed4c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04d761adad1029e4f2f60ac973a76c5307efcea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cc8162c523998856d59065faa254f87d20a5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa295829c082c4d21fe37dbc8c96bfa0ef6dbaa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2faffe31153e5e60f2352e3ed28ff973309c156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8e0b7aa53a9b9abd795ddb290e93feafe6e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3c0f7360b922136cc8b89063be1e8daf70427bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3f4fb87e19b60622bea119c4469c0df2c7c4739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5145ff1e321b717d5f137961fe2dc8ec5af31e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5250c540914e012e22e623275e290c4dc993d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa553c27fff4d09c69e367c20eb95cc7fd0b0f3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70dddb8ddd06b1c26061d998e041748b18ecf85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84360896ce9152d1780c546305bb54125f962d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa87f04c9743fd1933f82bddec9692e9d97673769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9414ee8b2b2563e70174972faa2e8b5197feb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95ce9eefd6965296722890bb5fb977363fc2066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab709e26fa6b0a30c119d8c55b887ded24952473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc6a4e345801cb5f57629e79cd5eb2e9e514e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc8cbba768da396626fad97d0e61104ac1e7068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7cf005622ca6a540632a14152fc2a9379413b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac94b8ea0e3a080f0fa6ae89cc873d956f72aa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb3604aadf26e6c0bb8c720420380629a328d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacdc0ab51178d0ae8f70c1ead7d3cf5421fdd66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad95d0c8782f8c9076e8f081f7a5e1a4ac4499a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad9a0e7c08bc9f747df97a3e7e7f620632cb6155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae34ee329ee91ddbfbe50443df9dedb076477f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0903ab70a7467ee5756074b31ac88aebb8fb777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0c25521fb7dc1eead2f99132c852ac9c715e8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb178197e88d58da21be22a408e850d1e6dc09a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1dd23468a69dfddb7211298e609c0db1522b2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2297b60e886a4b9a4d7b385a25c7982712e03ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb259515748c75a7216a4849e67ceb166b0daa98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25a554033c59e33e48c5dc05a7192fb1bbddfc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26ca48fe4ee94a4fe8815f7e54e99124f997540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e43ececa7c110c74cf13ba35105b0633b74e91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3886b8c94c8635b786b1ca88942337669bb1e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3c90e64eb6f456a5f5c17aa99b6aeca6f4a6390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fe4e73658b42619a4c739aac4e66ad87351b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5152d159fce50a7576eba7fab61c2b98f0ed692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb592e01dd77084b36430ffcb9c9d2f76fde32631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb753366082466c4b5984312f0c4bb97554be067e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb788998187a8536f38b69ae657323ac8b70551bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87a8332dfb1c76bb22477dcfeddeb69865ca9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90d347e10a085b591955cbd0603ac7866fcadc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb925f8caa6be0bfcd1a7383168d1c932d185a748` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232005 | `0xb9cd9979718e7e4c341d8d99da3f1290c908fbdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba947cba270d30967369bf1f73884be2533d7bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb549046497364a1e26f94f7e93685dc29fad8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba4114f182e0b33ffbeb538a680639516b647ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbfc4df7b7793fb7817533545101ab6071f1520a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc113e63c3e5bcc9b829053c31a6c3868d7cd674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf57a777c20f66f3e4a7435269da4e73073e001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd09e936de95a7d90b84e3c6ff7d2139511d5aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb4289491ebfe8452cfac8830a6285e42a4742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc054f64143cb04b765773d5b66992f611c497352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0e93ac461c377f96486445cb16169fd09c9ccc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2312caf0de62ec9b4adc785c79851cb989c9abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bdbf323304eabd9260b42e4d0d429ca3481d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2def1e39ff35367f2f2a312a793477c576fd4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4160f6d4149e0921e9aced406acf5f3ad7f2882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc50ea03795b1c6e618fbbc304b55e5f7c31d7adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dee5913e010895f3702bc43a40d661b13a40bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b194925d55d5de9555ad1db74c149329f71def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0563ab14a87ee64d6b097b0dfc46e9b56820ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1d3f8f770fd50b8cf76551ec54012c26036c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad2b9c980322f460db51cc8e45539f677c73f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccb97f23666c75aee0aabddb180c2df68b03154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5a14c662f00c614aa467b82c654548540f2fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce744c8b9069776f3367e5ad3585c9e5a7bdd448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf904d377604bcccb328e51204ca30203f635259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfeeff214b256063110d3236ea12db49d2df2359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11396267546b8ed258152f7e4f0cc1ca32abd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd116513eea4efe3908212afbaefc76cb29245681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36845bd3ce4ea0d60aefa6a902ebfd23cf44df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41d29fc53fe5ce9f0fb2328e54d35a2a03a324b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5e047e4ddc2c5b0e5ca66beb4dd0853afc4fa0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b8162e2fb9f3eff09bb8598ca0c8958e33a23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd71b8b76015f296e53d41e8288a8a13eaffff2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd766f2b87de4b08c2239580366e49710180aba02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ae026d0abf2379ba0fc79a7bf190268dfa81c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda1d80bad62586a7c319fd2a41d98a930705fc9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba9a415bae1983a945ba078150cae8b690c9229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb9a696419b54851307ffc62c8c4e50ddacfbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8f6860f5a3eecd8b7a902df75cb7548387c224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7fbdbae50c7931a11765faed9fe1a002605b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfac83173a96b06c5d6176638124d028269cfcd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfc3683a0179a02bfb5373243d105ff25e4f40c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b11bb0b6d1b321eeb7e0298a3f9eb92171693b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1fc1e9514f149ae9d69089c45934a78f9e57389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4031e271809d20074e4bef1caeefec5f710e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe534e5e86382d64133ecd6b7f717c69bec8b40ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60eb8098b34ed775ac44b1dde864e098c6d7f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe650a519a88bc980750cea783e26d32fd35c3b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b953bb4c4b8eed78b40b81e457ee4bda461d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe79024eea9dd26cb97e6364d42a1cb1b3603d1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f847c62025ed672cfc57c244d16f76f8eac66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93f5dd55ec9bdabbba5ea88e4b4f3c253ee45ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb575988196fda18aa4fe70a7ffa0f3bfc5a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7874754362386ca438e70447a60a626bcaad3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6b8a3f3605b083f7044c0f31f2cac0caf1d469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed113b925ac3f972161be012cdfee33470040e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed803540037b0ae069c93420f89cd653b6e3df1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed92dde3214c24ae04f5f96927e3be8f8dbc3289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9ed685f553b0827a58a918e64ec02e6fd55799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeded972215008a0d033d3d641511d40d382317e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeecd843ed9f3d07757565e5cb91111718270a44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01ccea9704ca0aca3d2982dbb6b40bad7075c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0a3eced42dbd8353569639c0eaa833857aa0a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c702a1cf8438db6c00c654e7081f3ad1d3f6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e141c804ba39b4a031fdf46e8c08dba7a0df60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf291ec9c2f87a41386fd94ec4bcdc3270ed04482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29b80b512f7055f164a33aa13105dfac3b01b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32b39a518e099f93aaaba7eb6892d53255cc3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32ffd90133c7ec15e1519b9f7de8143310961ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d24bb506038f6639b34b5175e0fcf2d610a098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf422446f7730e50b9cab4618343425d9927b35ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4bd6d66bafea1e0500536d52236f64c3e8a2a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf58c499417e36714e99803cb135f507a95ae7169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf594bdfafe4197144c6459fca611d7b868d36bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a3c54cfd96837c5efce8a4b260de7b117f2681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6198e5e9179afb6a75a5c4dc29e0235bc8af0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf62f458d2f6dd2ad074e715655064d7632e136d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf729422d68c2cf00574fb5712972454cf402a9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf74ca519fe35ec6a862a4debd8e317bed3c47c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1dc2b0775c5699e195bb5f64bafba3c36a9ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4761512aaf899b010438a10c60d01ebdc0efca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa525154c6371e9d46570b44c7328e6cc3e7cc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc3862c33b54e0bba61d966ff51973c20be4fc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd91aee8dbf0d8f62dd8638a3f78e596b9718bcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfefafb9446d84a9e58a3a2f2dddd7219e8c94fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe563c168c01e05da4f3d81938af158466ad793` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 396
- Live contracts: 0
- Unknown liveness contracts: 396
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=396

Showing first 200 of 396 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x002cdac50b3eefe6adb6168833fb49c040a1a7a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0055e248ee7feab91969b77ab32f184b72be82fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0084c2e1b1823564e597ff4848a88d61ac63d703` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x00bac667a4ccf9089ab1db978238c555c4349545` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0146f3ab76c93d437be7769b001a58efee0e66a3` | non_address_book | unknown | unknown | unverified | n/a | `0x11e91bb6d1334585aa37d8f4fde3932c7960b938` |
| unverified unclassified | UnnamedContract<br>`0x015729c84a1c5e541dfbf6f0ddc59ae66527b5ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0417ce2934899d7130229cda39db456ff2332685` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x054fac7aa44f85a59fd41c33006336ec8b03e916` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0559a1b22409eef7559a5c88cbaa4e285e7b9c30` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x05abfad11c275f91cc79f6ec507cb273e9f59de7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x05c630e9fc8a064f0e8e6fbb9e2b5d2215da5653` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x07d1718ff05a8c53c8f05adaed57c0d672945f9a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x07d9d83df553c013e767872af8da75d84e1368f9` | non_address_book | unknown | unknown | unverified | n/a | `0x11e91bb6d1334585aa37d8f4fde3932c7960b938` |
| unverified unclassified | UnnamedContract<br>`0x085780639cc2cacd35e474e71f4d000e2405d8f6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x08a602616593b79591cfc88a130c8825a0fcbd94` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0919bbee89ea2d6c306e5fe873b64ceb0efe555b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x09b0e3a114135f528f762db8363b4f5eae3f3bf1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x09ce8f58e7340601bb9179000fb49c31843c5283` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0ab9dc99a33cd02a776a9117f211803fb69fd7c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0b46aeb66f97b1586ca6588fda50a6f277a56753` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0b700c60de435d522081cc5eb12b63875fe7e65a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0b9e51d9a436b6b78b5e2666f15b2d0666a7a851` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0bbfd53ec934e5d4d3d55dd860642add395de979` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0c439db9b9f11e7f2d4624de6d0f8ffc23dcd1f8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0c5c61025f047cb7e3e85852dc8eafd7b9a4abfb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0cd730bdc145fb116d2b2328c0baca40d801d222` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0d3e9a29e856cf00d670368a7ab0512cb0c29fac` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0d73d31e1e0d4cc266f0805c94f8e2b9b37d4c3a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0e4f31a2f48418c90f5e9fa84bf761d832c54ced` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0e67460226a71df07115c1f169418dd159e5521b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0fd2650b2898cd2f21e95c81882c8d36b2612d5f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x0fdb73ae370a0b3f349dc046cfeb54c0fa870799` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x112873b395b98287f3a4db266a58e2d01779ad96` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1145f304d74f3295fa38b82e7bb8704b0e187fa1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1146cb9f7d8633c5f2ed62ff74ab81cb488780dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1236193c71128f9e7b6bb56f506676add8589009` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x12af4529129303d7fbd2563e242c4a2890525912` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x12b295d12a4d4df2f3f5b2b8e151bbe000564fa5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x12be1e1e1f4632f68a78e0ea0247d7e3c2dbc8aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1359fce197cf743016cd1a620939a1a80df259a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x14f1cbae37f765614655967afc51b544b8143749` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x150f62ec3a9d9ae30b7da4d413af73d8adc15c9f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x15100606433dc500451e8289984acfceead03149` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x155c0c3cde438a3d10bd38f3257cd8d17b8b3cff` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x163283d59fe2a579f2920a7f8ea19f7799b32fa0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x16b334f2644cc00b85db1a1eff0c2c395e00c28d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x16dbdaaec4ac74597da5438aca8e5b9a954fda9c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x17e2e8ca0b35aa750771e000d1e926417b97f29d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x17f21f468d77e6e35702a9ae7a9da50db7f6a4f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x184b6aed8d975385e0ad02e026d649208a3c58a4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1925e197fffa52060f0d2515cd3781e26c63f08c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1951fb29ee3ed3026ed7ce2beee3194d90fbb2bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1a144095ad1cb488fe6378dbfc62368a7453d114` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1a17ccf198e03858227c27205f15a4b388235db7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1ba2de0e2f7fd59535bc5b29d742fd23b050df18` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1c81b9bec1cdf9ddc0cb68b9edf3e825065ef084` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1ca7b82c4265835c7841cf29407217d820a7dadb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1d100dc012c54606f0046c9420f72b8c63803a00` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1d20671a21112e85b03b00f94fd760de0bef37ba` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x1f844447ecf5b1523bfbadad3d9dea975982ea93` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2091353d10096349faa685c4dc3d383837f54533` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2122a2bee97545595550b85379ac7676fd21a5b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x21275a57cf7592a1bb41e75497c070efc8b66b52` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x215d87bd3c7482e2348338815e059de07daf798a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x218b689a4f4afba497123b4831f58d6379d99801` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x21fb1221317ac539ee355fc113054e54b1cd0231` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x221ffb180ad01213ff882ab7de9c75e23f9efa63` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x222786833b5fd5ee21532d8b576391babefdaad1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2290eefea24a6e43b26c27187742bd1fedc10bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x22ba83dd069ffe4c8731b1fdac34287231b0f3ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2319289e56830b50a282c25af4f0045c724b3f79` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x23831e29db590bbbacf267ee2cf377cd3e54a718` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x24177d4ad619ae2582872d25985dcef4d1de7ba5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x250893ca4ba5d05626c785e8da758026928fcd24` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x253d0c045ee4fb6f2707fe7d1fcd0ef036e032a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x25707b9e6690b52c60ae6744d711cf9c1dfc1876` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x267b7a1d56d624293ba1819f30b5bf0f12a524e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x267c6a96db7422faa60aa7198ffeeec4169cd65f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2755eebf220bfd31b83fd9244b6d061bca225311` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x288810cdbdfed9ea3be3ca4e421ab795fd0669f3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x28ed637c5e3371c2678c2d346df04fb634ed832d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x297dd69725911fe5f08b8f8c5edddb724d7d11df` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x29ee4b752fe14b0bc1f279dca98415f2fa6f3a8d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2ac0a3b5cb25d6071f05e9729922261bdf8e7cb4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2ba1cab8c43226b98652fbed1eb6eff117d9c1aa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2bb0c32101456f5960d4e994bac183fe0dc6c82c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2be95a7c0ad24e2d2876793172d046db05d26f7f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2c613d2c163247cd43fd05d6efc487c327d1b248` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2d8b895773b093055919e16d537e3a2295d5ef6c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2e5a5af7ee900d34bcfb70c47023bf1d6be35cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x2ed6624cc9e6200c2a60631f8ceb69fbafbe3733` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x30b8b9588592bc92617d5b4bcceed06f76f66b6a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x316f7c1c54f6f5455b9ae92218596bad431a4309` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x31b630b21065664ddd2dba0ed3a60d8ff59501f0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x31bfaf256875a93b5d02cdef80b17ef780663d81` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x31f02918630ce0976ad4a70e1d9c4439fc06476a` | non_address_book | unknown | unknown | unverified | n/a | `0x11e91bb6d1334585aa37d8f4fde3932c7960b938` |
| unverified unclassified | UnnamedContract<br>`0x32356fe312eba9b7d6a157ad28d1ca91b571cda6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x33636d49fbefbe798e15e7f356e8dbef543cc708` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3374b9466d571edd695cf5e198f7c89b33c0ce01` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x345a345dad48c3504113539ce83c0cb765627b54` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x353e11ab2da88bfc57fd42c2871301c1f123d4db` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x361f88157073b8522def857761484ca7b1d5c8be` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x36ecdec1b5e301321166cefd5856a44bfa13a1ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3716352d57c2e48eedb56ee0712ef29e0c2f3069` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x37303d55fd8570c070bedd9a0e64421f318bb01b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x376909c828fa57d271e6b208036d24943503fbad` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x384b11daa4a6d2b86cc542cb68c473f554b82d35` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x387568e1ea4ff4d003b8147739db69d87325e206` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x38965311507d4e54973f81475a149c09376e241e` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x389b4a98e01290811687f4fff92281b1ef84c5a3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3a3060074fc936803ec9c40caba0b1c583c183c5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3bd15fee3fe7bcc68eac516892b9d21fd30e0196` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3cdbf28214e4d703c5c599abb5a765bef9bf8815` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3cfe091c9028154cc5cb721258e9360803b130f5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3d35dc5948c948f131ddd9e3a341b99e45174a74` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3e9cdbc08b09579bbc8b5b901d88c27ee60e6498` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3ec677ba393f2257ed0e1d37aa8442eb7f0953fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x3fe86703e99e09ece2e3bc6c3672a0c0432893b9` | non_address_book | unknown | unknown | unverified | n/a | `0x11e91bb6d1334585aa37d8f4fde3932c7960b938` |
| unverified unclassified | UnnamedContract<br>`0x43fcfe9f128b5e4271c7e25c47efe91ba8896220` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x447d902da96a22727d0b53f215d0c387fe1ae114` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4480debb165466a0dbb1196879c43c7f0cc297db` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x456517ee29af17e59ea1c70852d3fb15804bd122` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x49e51067e695bd79d6275ecab6e9e527a72abde4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4a2ab45d27428901e826db4a52dae00594b68022` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4a75ce4cf4c74ae6bcd7212324f88c7ecd7bba3b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4ae3be52c411cc08434d28645fd391497c69c815` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4bbd78629b2794d73a3def4c502c422de674831d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4be29f398dbf33c13a6c8463a4a45ba97577add1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4ca79f4fe25bcd329445cdbe7e065427aca98380` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4e6a1dc233f264dd07b63e206fc451d986ba9908` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4eefea49e4d876599765d5375cf7314cd14c9d38` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4f8330946669d71014efdce30ef19a256643fba8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4f96fe476e7dcd0404894454927b9885eb8b57c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x4fb9445019ba1e3a39bd1dfbe9cc7815e0a3c285` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x50562fe7e870420f5aae480b7f94eb4ace2fcd70` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x50b4dc15b34e31671c9ca40f9eb05d7ebd6b13f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x51e286478519924a400554bae7a3fa139f9b1576` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x51ef9fd457b9607911fb6cb72b9e47ffd5f053a6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x549716f858aeff9cb845d4c78c67a7599b0df240` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x558e7dd3a72aaa8d54002cabc4565ad9db58a6df` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x55a51450b1d025b4f6fa259b2008851553343cde` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x564a464c9c357de593fa48efd784048a9e366523` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x56afb443de36340c32f1a461605171992480059d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x56b85438f1e16a91eac5fe2daab2c3dd57690175` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x576b4779727f5998577bb4e25bf726abe742b9f7` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5801bb8f568979c722176df36b1a74654a9c52b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x58465fff9f31f0d46822d3a4cea0395f017e161a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x584b01ab834ee75b2a685da500bcd0d7380fb8e0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5a097b014c547718e79030a077a91ae37679eff5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5a161b94c737326ca115ec46f4eaf4eec5037dbe` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5ac1a882e6cedc58511b7e42b02bab42e2c02956` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5b1d12365bec01b8b672ee45912d1bbc86305dba` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5c28b966ab37cfb9397bbc04595f91f0fbf06d9b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5d0aacf75116d1645db2b3d1ca4b303ef0ca3752` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5d2c6215555b36889ef235c6d5ccde22e9964e6a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5e3ca2a5736fb093328e4ca19a9a1966025f3905` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5fd37c3b46d05859b333d6e418ce7d6d405c20b6` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x5fec7879738cb209af6d9880e4566a24200accae` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x606462126e4bd5c4d153fe09967e4c46c9c7fecf` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x61f32964c39cca4353144a6db2f8efdb3216b35b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x63b038a7298fbdcf0945068637ec59b8a5e9c6bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x63fe55b3fe3f74b42840788cfbe6229869590f83` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6440e21a3634c319c69cef8d17601dbc4e97c3db` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x65c9a641afceb9c0e6034e558a319488fa0fa3be` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x65d513e448966d8c6ff046fc93c3de396fce5cef` | non_address_book | unknown | unknown | unverified | n/a | `0x11e91bb6d1334585aa37d8f4fde3932c7960b938` |
| unverified unclassified | UnnamedContract<br>`0x65d72aa8da931f047169112fcf34f52dbaae7d18` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x676c359c78f75581ab2da5c353d2577c41cecb43` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x678b5ecfe9fb6f9d900262f7b196d87168a1ef16` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6793de5e5a329be514b51184db13639dc7ccf8dd` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x679de4a3836d916fc86c6d9944c98a694f68adb4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x67a94c63689cda730e99491d29e56acd247e5430` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x680f26dbc8fa2b463607ebb49a68a69c33476665` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6844aaab4131041b563e6217eb0ba218123f5e45` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x68863fb8855b04509a835082478d6e3d0be4e61a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x69518d1d70ad537c41401303bdf96032338e40de` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x69556a04b10d16dc62f0b8ea739d03947863cd0b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x695c6f5ed9ceb6709e00c08e1326710f3169b922` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x697ddb8e742047561c8e4bb69d2ddb1b8bb42b60` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x69c40892c814fbb6fcdcbeb034e3dc854f3d7e10` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6ac9de58a9cbc012e10cd3d2543f596de153cac8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6af422087abf42819f764ff8de95269036b9a8f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6bc45630ef423f75c3b7280cf819661b2dc3051a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6c3197e00a96bc3f390d2443e989c48f4c88bbf8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6c338c0bfb67970231109d4b33047a6e6bc685e5` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6c981a842b7238185a5c2dd27c8f939f98a99d97` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6d9e81c5b7c4b37d0fe9e8cda776e057f4040868` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6dc7a100d09ddbf344fc4dd0398f79500d0c2716` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6e854737e091ca0d2ad9da36f93302b9aa995a62` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6eb03222179f83126735d7e9fde94571d716d399` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6ecfa38fee8a5277b91efda204c235814f0122e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x6fcfe767c479ef1f2d8c7a4b27e2abadd355910f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x714b853b3ba73e439c652cfe79660f329e6ebb42` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x7267277682ffc281b00b0ec56d8de22e8ae88e13` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x72a6239f1651a4556f4c40fe97575885a195f535` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x73a7b27308f2c8b3769fb88734f561c23a4afb66` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x74e9234a6e03c382a01bb942b1af05b639371309` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x7612bcabd3d66c71ff740472e063be6a74f126d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x76fad0f85c4b34347f2c1cb02d2ef1b3d8128fcf` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x7743e50f534a7f9f1791dde7dcd89f7783eefc39` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |
| unverified unclassified | UnnamedContract<br>`0x781ba968d5cc0b40eb592d5c8a9a3a4000063885` | non_address_book | unknown | unknown | unverified | n/a | `0xa1d0027ca4c0cb79f9403d06a29470abc7b0a468` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Furnace_Update_20221111.pdf) | SECBIT | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | SECBIT | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2412] SECBIT_CLever_Report_v1.1.pdf — no match: No reason recorded
- [2413] SECBIT_CLever_Furnace_Update_20221111.pdf — no match: No reason recorded
- [2414] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | MetaFurnace.sol | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | AllInOneGateWay | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveBasePoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveMetaPoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | Vesting | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6c280db098db673d30d5b34ec04b6387185d3620` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 398 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2412] SECBIT_CLever_Report_v1.1.pdf
- [2413] SECBIT_CLever_Furnace_Update_20221111.pdf
- [2414] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
