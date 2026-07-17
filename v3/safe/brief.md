# Agentic Audit Brief: Safe

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 5 audit(s)
- Eligible audit results: 18 (5 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Safe (`safe`)
- Website: [https://safe.global/](https://safe.global/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, zksync-era
- Contract surface: 66 unique implementations (66 raw deployments)
- Coverage basis: 8/11 confirmed own live verified implementations (72.7%); conservative 72.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $57,679,293.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Safe. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum, zksync-era. Structural roles: 7 supporting, 4 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (7), core (4)
- Contract kinds: contract (11)
- Detected standards: eip1271 (1), erc165 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 62 contracts are derived from known codebases. 62 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x017062a1de2fe6b99be3d9d37841fed19f573804`, chain 1)
- UnnamedContract (`0x07efa797c55b5dde3698d876b277abb6b893654c`, chain 1)
- UnnamedContract (`0x12302fe9c02ff50939baaaaf415fc226c078613c`, chain 1)
- UnnamedContract (`0x34cfac646f301356faa8b21e94227e3583fe3f5f`, chain 1)
- UnnamedContract (`0x38869bf66a61cf6bdb996a6ae40d5853fd43b526`, chain 1)
- UnnamedContract (`0x3d4ba2e0884aa488718476ca2fb8efc291a46199`, chain 1)
- UnnamedContract (`0x3e5c63644e683549055b9be8653de26e0b4cd36e`, chain 1)
- UnnamedContract (`0x40a2accbd92bca938b02010e17a5b8929b49130d`, chain 1)
- UnnamedContract (`0x4ffef8222648872b3de295ba1e49110e61f5b5aa`, chain 1)
- UnnamedContract (`0x526643f69b81b008f46d95cd5ced5ec0edffdac6`, chain 1)
- UnnamedContract (`0x54e86d004d71a8d2112ec75face57d730b0433f3`, chain 1)
- UnnamedContract (`0x59ad6735bcd8152b84860cb256dd9e96b85f69da`, chain 1)
- UnnamedContract (`0x6439e7abd8bb915a5263094784c5cf561c4172ac`, chain 1)
- UnnamedContract (`0x6851d6fdfafd08c0295c392436245e5bc78b0185`, chain 1)
- UnnamedContract (`0x69f4d1788e39c87893c980c06edf4b7f686e2938`, chain 1)
- UnnamedContract (`0x727a77a074d1e6c4530e814f89e618a3298fc044`, chain 1)
- UnnamedContract (`0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b`, chain 1)
- UnnamedContract (`0x7cbb62eaa69f79e6873cd1ecb2392971036cfaa4`, chain 1)
- UnnamedContract (`0x8538fcbccba7f5303d2c679fa5d7a629a8c9bf4a`, chain 1)
- UnnamedContract (`0x85a8ca358d388530ad0fb95d0cb89dd44fc242c3`, chain 1)
- UnnamedContract (`0x8d29be29923b68abfdd21e541b9374737b49cdad`, chain 1)
- UnnamedContract (`0x900c7589200010d6c6ecaae5b06ebe653bc2d82a`, chain 1)
- UnnamedContract (`0x98ffbbf51bb33a056b08ddf711f289936aaff717`, chain 1)
- UnnamedContract (`0x998739bfdaadde7c933b942a68053933098f9eda`, chain 1)
- UnnamedContract (`0x9b35af71d77eaf8d7e40252370304687390a1a52`, chain 1)
- UnnamedContract (`0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b`, chain 1)
- UnnamedContract (`0xa65387f16b013cf2af4605ad8aa5ec25a2cba3a2`, chain 1)
- UnnamedContract (`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`, chain 1)
- UnnamedContract (`0xa83c336b20401af773b6219ba5027174338d1836`, chain 1)
- UnnamedContract (`0xb19d6ffc2182150f8eb585b79d4abcd7c5640a9d`, chain 1)
- UnnamedContract (`0xb6029ea3b2c51d09a50b53ca8012feeb05bda35a`, chain 1)
- UnnamedContract (`0xbd89a1ce4dde368ffab0ec35506eece0b1ffdc54`, chain 1)
- UnnamedContract (`0xc22834581ebc8527d974f8a1c97e1bea4ef910bc`, chain 1)
- UnnamedContract (`0xd5d82b6addc9027b22dca772aa68d5d74cdbdf44`, chain 1)
- UnnamedContract (`0xd9db270c1b5e3bd161e8c8503c55ceabee709552`, chain 1)
- UnnamedContract (`0xedd160febbd92e350d4d398fb636302fccd67c7e`, chain 1)
- UnnamedContract (`0xf48f2b2d2a534e402487b3ee7c18c33aec0fe5e4`, chain 1)
- UnnamedContract (`0xf61a721642b0c0c8b334ba3763ba1326f53798c0`, chain 1)
- UnnamedContract (`0xfb1bffc9d739b8d520daf37df666da4c687191ea`, chain 1)
- UnnamedContract (`0xfd0732dc9e303f09fcef3a7388ad10a83459ec99`, chain 1)
- UnnamedContract (`0xff83f6335d8930cbad1c0d439a841f01888d9f69`, chain 1)
- UnnamedContract (`0x0408ef011960d02349d50286d20531229bcef773`, chain 324)
- UnnamedContract (`0x199a9df0224031c20cc27083a4164c9c8f1bcb39`, chain 324)
- UnnamedContract (`0x309d0b190fecca8e1d5d8309a16f7e3cb133e885`, chain 324)
- UnnamedContract (`0x610fca2e0279fa1f8c00c8c2f71df522ad469380`, chain 324)
- UnnamedContract (`0x817756c6c555a94bcee39eb5a102abc1678b09a7`, chain 324)
- UnnamedContract (`0xa26620d1f8f1a2433f0d25027f141aacafb3e590`, chain 324)
- UnnamedContract (`0xaca1ec0a1a575cdccf1dc3d5d296202eb6061888`, chain 324)
- UnnamedContract (`0xc329d02fd8cb2fc13aa919005af46320794a8629`, chain 324)
- UnnamedContract (`0xc35f063962328ac65ced5d4c3fc5def8dec68dfa`, chain 324)
- UnnamedContract (`0xdd35026932273768a3e31f4eff7313b5b7a7199d`, chain 324)
- CompatibilityFallbackHandler (`0x3efcbb83a4a7afcb4f68d501e2c2203a38be77f4`, chain 1)
- CreateCall (`0x2ef5ecfbea521449e4de05edb1ce63b75eda90b4`, chain 1)
- MultiSend (`0x218543288004cd07832472d464648173c77d7eb7`, chain 1)
- MultiSend (`0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761`, chain 1)
- MultiSendCallOnly (`0x9641d764fc13c8b624c04430c7356c1c7c8102e2`, chain 1)
- Safe (`0x41675c099f32341bf84bfc5382af534df5c7461a`, chain 1)
- Safe (`0xff51a5898e281db6dfc7855790607438df2ca44b`, chain 1)
- SafeL2 (`0x29fcb43b46531bca003ddc8fcb67ffe91900c762`, chain 1)
- SafeProxyFactory (`0x14f2982d601c9458f93bd70b218933a6f8165e7b`, chain 1)
- SafeProxyFactory (`0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67`, chain 1)
- SignMessageLib (`0xd53cd0ab83d845ac265be939c57f53ad838012c9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/73 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/11 (72.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 62 of 66 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/14
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 52
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 7 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 6 | 42.9% | 2025-05 |
| unknown | Tier 2 | 5 | 35.7% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CompatibilityFallbackHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391958 | `0x3efcbb83a4a7afcb4f68d501e2c2203a38be77f4` | ✅ Audited |
| CreateCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391951 | `0x2ef5ecfbea521449e4de05edb1ce63b75eda90b4` | ✅ Audited |
| MultiSend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391949 | `0x218543288004cd07832472d464648173c77d7eb7` | ✅ Audited |
| MultiSendCallOnly | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391978 | `0x9641d764fc13c8b624c04430c7356c1c7c8102e2` | ✅ Audited |
| Safe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392004 | `0xff51a5898e281db6dfc7855790607438df2ca44b` | ✅ Audited |
| SafeL2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391950 | `0x29fcb43b46531bca003ddc8fcb67ffe91900c762` | ✅ Audited |
| SafeProxyFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-391947 | `0x14f2982d601c9458f93bd70b218933a6f8165e7b` | ✅ Audited |
| SignMessageLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391994 | `0xd53cd0ab83d845ac265be939c57f53ad838012c9` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8cf60b289f8d31f737049b590b5e4285ff0bd1d1` | ⚠️ Unaudited |
| MultiSend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391983 | `0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391960 | `0x41675c099f32341bf84bfc5382af534df5c7461a` | ⚠️ Unaudited |
| Safe4337Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226` | ⚠️ Unaudited |
| SafeProxyFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-391962 | `0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67` | ⚠️ Unaudited |
| VestingPool | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b71e2551915d98d22c448b040a3bc4801ea4ff` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391943 | `0x017062a1de2fe6b99be3d9d37841fed19f573804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391944 | `0x07efa797c55b5dde3698d876b277abb6b893654c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391946 | `0x12302fe9c02ff50939baaaaf415fc226c078613c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391953 | `0x34cfac646f301356faa8b21e94227e3583fe3f5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391955 | `0x38869bf66a61cf6bdb996a6ae40d5853fd43b526` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391956 | `0x3d4ba2e0884aa488718476ca2fb8efc291a46199` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391957 | `0x3e5c63644e683549055b9be8653de26e0b4cd36e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391959 | `0x40a2accbd92bca938b02010e17a5b8929b49130d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391963 | `0x4ffef8222648872b3de295ba1e49110e61f5b5aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391964 | `0x526643f69b81b008f46d95cd5ced5ec0edffdac6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391965 | `0x54e86d004d71a8d2112ec75face57d730b0433f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391966 | `0x59ad6735bcd8152b84860cb256dd9e96b85f69da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391967 | `0x6439e7abd8bb915a5263094784c5cf561c4172ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391968 | `0x6851d6fdfafd08c0295c392436245e5bc78b0185` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391969 | `0x69f4d1788e39c87893c980c06edf4b7f686e2938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391970 | `0x727a77a074d1e6c4530e814f89e618a3298fc044` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391971 | `0x76e2cfc1f5fa8f6a5b3fc4c8f4788f0116861f9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391972 | `0x7cbb62eaa69f79e6873cd1ecb2392971036cfaa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391973 | `0x8538fcbccba7f5303d2c679fa5d7a629a8c9bf4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391974 | `0x85a8ca358d388530ad0fb95d0cb89dd44fc242c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391975 | `0x8d29be29923b68abfdd21e541b9374737b49cdad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391976 | `0x900c7589200010d6c6ecaae5b06ebe653bc2d82a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391979 | `0x98ffbbf51bb33a056b08ddf711f289936aaff717` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391980 | `0x998739bfdaadde7c933b942a68053933098f9eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391981 | `0x9b35af71d77eaf8d7e40252370304687390a1a52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391982 | `0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa581c4a4db7175302464ff3c06380bc3270b4037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391984 | `0xa65387f16b013cf2af4605ad8aa5ec25a2cba3a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391985 | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391986 | `0xa83c336b20401af773b6219ba5027174338d1836` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391989 | `0xb19d6ffc2182150f8eb585b79d4abcd7c5640a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391990 | `0xb6029ea3b2c51d09a50b53ca8012feeb05bda35a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391991 | `0xbd89a1ce4dde368ffab0ec35506eece0b1ffdc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391992 | `0xc22834581ebc8527d974f8a1c97e1bea4ef910bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391995 | `0xd5d82b6addc9027b22dca772aa68d5d74cdbdf44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391996 | `0xd9db270c1b5e3bd161e8c8503c55ceabee709552` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391998 | `0xedd160febbd92e350d4d398fb636302fccd67c7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392000 | `0xf48f2b2d2a534e402487b3ee7c18c33aec0fe5e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392001 | `0xf61a721642b0c0c8b334ba3763ba1326f53798c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392002 | `0xfb1bffc9d739b8d520daf37df666da4c687191ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392003 | `0xfd0732dc9e303f09fcef3a7388ad10a83459ec99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392005 | `0xff83f6335d8930cbad1c0d439a841f01888d9f69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392006 | `0x0408ef011960d02349d50286d20531229bcef773` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392007 | `0x199a9df0224031c20cc27083a4164c9c8f1bcb39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392008 | `0x309d0b190fecca8e1d5d8309a16f7e3cb133e885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392009 | `0x610fca2e0279fa1f8c00c8c2f71df522ad469380` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392010 | `0x817756c6c555a94bcee39eb5a102abc1678b09a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392011 | `0xa26620d1f8f1a2433f0d25027f141aacafb3e590` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392012 | `0xaca1ec0a1a575cdccf1dc3d5d296202eb6061888` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392013 | `0xc329d02fd8cb2fc13aa919005af46320794a8629` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392014 | `0xc35f063962328ac65ced5d4c3fc5def8dec68dfa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-392015 | `0xdd35026932273768a3e31f4eff7313b5b7a7199d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025.07 - Certora Audit.pdf](https://github.com/safe-global/safe-wallet-monorepo/blob/dev/apps/mobile/docs/audits/2025.07%20-%20Certora%20Audit.pdf) | unknown | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Gnosis_Safe_Audit_Report.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Gnosis_Safe_Audit_Report_1_1_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_1_0.pdf) | unknown | Audit | 2019-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 27 | high |
| [Gnosis_Safe_Audit_Report_1_1_1.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_1_1.pdf) | unknown | Audit | 2019-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 27 | high |
| [Gnosis_Safe_Audit_Report_1_2_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_2_0.pdf) | unknown | Audit | 2020-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Gnosis_Safe_Audit_Report_1_3_0_Final.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_3_0_Final.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf) | unknown | Audit | 2019-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Gnosis_Safe_Symbolic_Execution.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Gnosis_Safe_Symbolic_Execution.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Safe_Audit_Report_1_4_0.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Audit_Report_1_4_0.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 1 | high |
| [Safe_Audit_Report_1_5_0_Ackee.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Audit_Report_1_5_0_Ackee.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 18 | high |
| [Safe_Audit_Report_1_5_0_Certora.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Audit_Report_1_5_0_Certora.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 32 | high |
| [Safe_Library_Contracts_Audit_Report_1_4_1.pdf](https://github.com/safe-global/safe-smart-account/blob/main/docs/Safe_Library_Contracts_Audit_Report_1_4_1.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [audit_1_1_1.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_1_1.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit_1_2_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_2_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit_1_3_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_3_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit_1_4_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_4_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audit_1_5_0.md](https://github.com/safe-global/safe-smart-account/blob/main/docs/audit_1_5_0.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4792] 2025.07 - Certora Audit.pdf — no match: Extracted 16 files from scope section and findings. Audit date from 'July 14, 2025' in project overview.
- [4831] Gnosis_Safe_Audit_Report.pdf — no match: Extracted contracts from both interim report and iteration 2. MultiSendStruct.sol explicitly out of scope. No audit date found in the provided text.
- [4832] Gnosis_Safe_Audit_Report_1_1_0.pdf — matched: All contracts listed in the 'Files in Scope' section were extracted. The audit date is from the title 'Gnosis Safe November 11, 2019 Security Review'.
- [4833] Gnosis_Safe_Audit_Report_1_1_1.pdf — matched: All contracts listed in the 'Files in Scope' section were extracted. The audit date is from the title: 'Gnosis Safe November 11, 2019 Security Review'.
- [4834] Gnosis_Safe_Audit_Report_1_2_0.pdf — no match: Two contracts in scope from Gnosis Safe gas validation adjustment audit.
- [4835] Gnosis_Safe_Audit_Report_1_3_0_Final.pdf — no match: The scope mentions 'All solidity files in: https://github.com/gnosis/safe-contracts/tree/ad6c7355d5bdf4f7fa348fbfcb9f07431769a3c9' but does not list specific contract names. The only file name mentioned is ReentrencyTransactionGuard.sol, but it is in a note, not explicitly in scope.
- [4836] Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf — no match: Scope defined as all Solidity files in the repository; contract names extracted from report notes.
- [4837] Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf — no match: Scope section explicitly lists GnosisSafe, OwnerManager, ModuleManager, MasterCopy contracts and their functions. Audit date from cover page: 'Delivered: February 7th, 2019 Updated: February 27th, 2019'.
- [4838] Gnosis_Safe_Symbolic_Execution.pdf — no match: The provided text is raw EVM bytecode disassembly, not a structured audit report. No scope section, file paths, or audit date are identifiable. Only the contract name 'GnosisSafePersonalEdition' was extracted from function signatures in the disassembly.
- [4839] Safe_Audit_Report_1_4_0.pdf — matched: Scope explicitly listed in Executive Summary Revision 1.0: SafeL2.sol, proxies/SafeProxyFactory.sol, handler/CompatibilityFallbackHandler.sol, libraries/MultiSendCallOnly.sol, libraries/SignMessageLib.sol. Audit date from cover page: 28.3.2023.
- [4840] Safe_Audit_Report_1_5_0_Ackee.pdf — matched: Scope includes all Solidity files in contracts directory excluding contracts/examples and contracts/test. Contracts extracted from file paths and findings targets.
- [4841] Safe_Audit_Report_1_5_0_Certora.pdf — matched: Extracted 37 contract names from the scope section listing files and from the report body. Audit date derived from work period end date (Jan 14, 2025).
- [4842] Safe_Library_Contracts_Audit_Report_1_4_1.pdf — no match: Three contracts explicitly listed in scope table and project overview. Audit date inferred from 'v3 August2024' on cover page, using last day of month.
- [4844] audit_1_1_1.md — no match: The provided text is a header/footer snippet with metadata and links, not the full audit report. No contract names or scope section are present.
- [4845] audit_1_2_0.md — no match: No scope section or contract names found in the provided text.
- [4846] audit_1_3_0.md — no match: The provided text is a header/cover page with links to PDF reports, not the full audit report content. No contracts or scope are listed.
- [4847] audit_1_4_0.md — no match: The provided text is a summary page with links to an audit report PDF, but does not contain the actual scope or contract names. The PDF file 'Safe_Audit_Report_1_4_0.pdf' would need to be examined to extract contract names.
- [4848] audit_1_5_0.md — no match: The provided text is a table of contents or summary listing auditor names and commit hashes, but does not contain any contract names, file paths, or scope sections. The actual audit reports are referenced as PDFs but not included.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025.07 - Certora Audit.pdf | key-storage.service.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | wallet.service.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | types.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | useSign.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | useImportPrivateKey.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | useDelegate.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | SignTransaction.tsx | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | useLegacyImport.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | app.config.js | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | transforms.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | legacyData.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | useEditAccountItem.ts | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | react-native-device-crypto-npm-0.1.7-dbd2698fc4.patch | unmatched — not counted | — | listed in scope | no |
| 2025.07 - Certora Audit.pdf | ImportPrivateKey.container.tsx | unmatched — not counted | — | mentioned in finding M-03 | no |
| 2025.07 - Certora Audit.pdf | sign.ts | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2025.07 - Certora Audit.pdf | web3/index.ts | unmatched — not counted | — | mentioned in finding L-01 | no |
| Gnosis_Safe_Audit_Report.pdf | GnosisSafe | unmatched — not counted | — | listed in scope and reviewed in both iterations | no |
| Gnosis_Safe_Audit_Report.pdf | Proxy | unmatched — not counted | — | listed in scope and reviewed | no |
| Gnosis_Safe_Audit_Report.pdf | DailyLimitExtension | unmatched — not counted | — | mentioned as an extension in scope | no |
| Gnosis_Safe_Audit_Report.pdf | SocialRecoveryExtension | unmatched — not counted | — | mentioned as an extension in scope | no |
| Gnosis_Safe_Audit_Report.pdf | CreateAndAddModules | unmatched — not counted | — | listed in iteration 2 scope | no |
| Gnosis_Safe_Audit_Report.pdf | MultiSend | ambiguous — not counted | MultiSend (alternative) `0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761` — deployed 2021-05-25 18:18:32+03 — liveness: live (current_address_book_code)<br>MultiSend (alternative) `0x218543288004cd07832472d464648173c77d7eb7` — deployed 2025-06-24 17:47:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Gnosis_Safe_Audit_Report.pdf | StateChannelModule | unmatched — not counted | — | explicitly audited in iteration 2 | no |
| Gnosis_Safe_Audit_Report.pdf | GnosisSafePersonalEdition | unmatched — not counted | — | reviewed in iteration 2 | no |
| Gnosis_Safe_Audit_Report.pdf | GnosisSafeTeamEdition | unmatched — not counted | — | reviewed in iteration 2 | no |
| Gnosis_Safe_Audit_Report.pdf | ModuleManager | unmatched — not counted | — | reviewed in iteration 2 | no |
| Gnosis_Safe_Audit_Report.pdf | OwnerManager | unmatched — not counted | — | reviewed in iteration 2 | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | FallbackManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | Module | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | Enum | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | EtherPaymentFallback | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | MasterCopy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | SecuredTokenTransfer | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | SelfAuthorized | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | SignatureDecoder | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | DefaultCallbackHandler | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | ERC721TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | ERC777TokensRecipient | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | ISignatureValidator | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | CreateAndAddModules | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | CreateCall | own contract | CreateCall (selected) `0x2ef5ecfbea521449e4de05edb1ce63b75eda90b4` — deployed 2025-06-24 17:47:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | MultiSend | ambiguous — not counted | MultiSend (alternative) `0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761` — deployed 2021-05-25 18:18:32+03 — liveness: live (current_address_book_code)<br>MultiSend (alternative) `0x218543288004cd07832472d464648173c77d7eb7` — deployed 2025-06-24 17:47:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | DailyLimitModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | SocialRecoveryModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | StateChannelModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | WhitelistModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | DelegateConstructorProxy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | PayingProxy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | ProxyFactory | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_0.pdf | GnosisSafe | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | FallbackManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | Module | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | Enum | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | EtherPaymentFallback | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | MasterCopy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | SecuredTokenTransfer | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | SelfAuthorized | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | SignatureDecoder | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | DefaultCallbackHandler | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | ERC1155TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | ERC721TokenReceiver | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | ERC777TokensRecipient | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | ISignatureValidator | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | CreateAndAddModules | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | CreateCall | own contract | CreateCall (selected) `0x2ef5ecfbea521449e4de05edb1ce63b75eda90b4` — deployed 2025-06-24 17:47:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | MultiSend | ambiguous — not counted | MultiSend (alternative) `0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761` — deployed 2021-05-25 18:18:32+03 — liveness: live (current_address_book_code)<br>MultiSend (alternative) `0x218543288004cd07832472d464648173c77d7eb7` — deployed 2025-06-24 17:47:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | DailyLimitModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | SocialRecoveryModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | StateChannelModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | WhitelistModule | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | DelegateConstructorProxy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | PayingProxy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | ProxyFactory | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_1_1.pdf | GnosisSafe | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_2_0.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_2_0.pdf | GnosisSafe | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf | GnosisSafe | unmatched — not counted | — | mentioned in report notes | no |
| Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf | GnosisSafeProxyFactory | unmatched — not counted | — | mentioned in report notes | no |
| Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf | SecuredTokenTransfer | unmatched — not counted | — | mentioned in report notes | no |
| Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf | OwnerManager | unmatched — not counted | — | mentioned in report notes | no |
| Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf | GnosisSafe | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf | MasterCopy | unmatched — not counted | — | listed in scope | no |
| Gnosis_Safe_Symbolic_Execution.pdf | GnosisSafePersonalEdition | unmatched — not counted | — | Contract name appears in the audit report text (e.g., 'GnosisSafePersonalEdition::constructor', 'GnosisSafePersonalEdition::setup'). | no |
| Safe_Audit_Report_1_4_0.pdf | SafeL2 | own contract | SafeL2 (selected) `0x29fcb43b46531bca003ddc8fcb67ffe91900c762` — deployed 2023-06-15 21:13:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_4_0.pdf | SafeProxyFactory | ambiguous — not counted | SafeProxyFactory (alternative) `0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67` — deployed 2023-06-09 08:48:23+03 — liveness: live (current_address_book_code)<br>SafeProxyFactory (alternative) `0x14f2982d601c9458f93bd70b218933a6f8165e7b` — deployed 2025-06-24 17:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Safe_Audit_Report_1_4_0.pdf | CompatibilityFallbackHandler | own contract | CompatibilityFallbackHandler (selected) `0x3efcbb83a4a7afcb4f68d501e2c2203a38be77f4` — deployed 2025-06-24 17:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_4_0.pdf | MultiSendCallOnly | own contract | MultiSendCallOnly (selected) `0x9641d764fc13c8b624c04430c7356c1c7c8102e2` — deployed 2023-06-10 03:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_4_0.pdf | SignMessageLib | own contract | SignMessageLib (selected) `0xd53cd0ab83d845ac265be939c57f53ad838012c9` — deployed 2023-06-15 21:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SafeProxyFactory | own contract | SafeProxyFactory (alternative) `0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67` — deployed 2023-06-09 08:48:23+03 — liveness: live (current_address_book_code)<br>SafeProxyFactory (selected) `0x14f2982d601c9458f93bd70b218933a6f8165e7b` — deployed 2025-06-24 17:46:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-24 was 27d from audit; next candidate 719d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SafeProxy | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | CompatibilityFallbackHandler | own contract | CompatibilityFallbackHandler (selected) `0x3efcbb83a4a7afcb4f68d501e2c2203a38be77f4` — deployed 2025-06-24 17:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SafeToL2Migration | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | Safe | own contract | Safe (alternative) `0x41675c099f32341bf84bfc5382af534df5c7461a` — deployed 2023-06-15 21:16:47+03 — liveness: live (current_address_book_code)<br>Safe (selected) `0xff51a5898e281db6dfc7855790607438df2ca44b` — deployed 2025-07-03 14:46:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-07-03 was 36d from audit; next candidate 713d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | TokenCallbackHandler | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | FallbackManager | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SignatureVerifierMuxer | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | MultiSendCallOnly | own contract | MultiSendCallOnly (selected) `0x9641d764fc13c8b624c04430c7356c1c7c8102e2` — deployed 2023-06-10 03:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | MultiSend | own contract | MultiSend (alternative) `0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761` — deployed 2021-05-25 18:18:32+03 — liveness: live (current_address_book_code)<br>MultiSend (selected) `0x218543288004cd07832472d464648173c77d7eb7` — deployed 2025-06-24 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-06-24 was 27d from audit; next candidate 1464d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | ModuleManager | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | ERC165Handler | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | ExtensibleBase | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | FallbackHandler | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | OwnerManager | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SafeStorage | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SignatureValidatorConstants | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | SignMessageLib | own contract | SignMessageLib (selected) `0xd53cd0ab83d845ac265be939c57f53ad838012c9` — deployed 2023-06-15 21:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Ackee.pdf | GuardManager | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | Executor | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | ExtensibleFallbackHandler | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | ISafe | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | INativeCurrencyPaymentFallback | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Ackee.pdf | MarshalLib | unmatched — not counted | — | listed in scope and findings | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | Safe | ambiguous — not counted | Safe (alternative) `0x41675c099f32341bf84bfc5382af534df5c7461a` — deployed 2023-06-15 21:16:47+03 — liveness: live (current_address_book_code)<br>Safe (alternative) `0xff51a5898e281db6dfc7855790607438df2ca44b` — deployed 2025-07-03 14:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeL2 | own contract | SafeL2 (selected) `0x29fcb43b46531bca003ddc8fcb67ffe91900c762` — deployed 2023-06-15 21:13:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Certora.pdf | SimulateTxAccessor | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | FallbackManager | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | GuardManager | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | NativeCurrencyPaymentFallback | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SecuredTokenTransfer | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SelfAuthorized | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SignatureDecoder | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | Singleton | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | StorageAccessible | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | ERC165Handler | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | ExtensibleBase | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | FallbackHandler | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | MarshalLib | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SignatureVerifierMuxer | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | TokenCallbacks | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | CompatibilityFallbackHandler | own contract | CompatibilityFallbackHandler (selected) `0x3efcbb83a4a7afcb4f68d501e2c2203a38be77f4` — deployed 2025-06-24 17:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Certora.pdf | ExtensibleFallbackHandler | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | HandlerContext | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | TokenCallbackHandler | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | CreateCall | own contract | CreateCall (selected) `0x2ef5ecfbea521449e4de05edb1ce63b75eda90b4` — deployed 2025-06-24 17:47:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Certora.pdf | Enum | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | ErrorMessage | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | MultiSend | ambiguous — not counted | MultiSend (alternative) `0xa238cbeb142c10ef7ad8442c6d1f9e89e07e7761` — deployed 2021-05-25 18:18:32+03 — liveness: live (current_address_book_code)<br>MultiSend (alternative) `0x218543288004cd07832472d464648173c77d7eb7` — deployed 2025-06-24 17:47:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | MultiSendCallOnly | own contract | MultiSendCallOnly (selected) `0x9641d764fc13c8b624c04430c7356c1c7c8102e2` — deployed 2023-06-10 03:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeMigration | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeStorage | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeToL2Migration | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeToL2Setup | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SignMessageLib | own contract | SignMessageLib (selected) `0xd53cd0ab83d845ac265be939c57f53ad838012c9` — deployed 2023-06-15 21:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeProxy | unmatched — not counted | — | listed in scope | no |
| Safe_Audit_Report_1_5_0_Certora.pdf | SafeProxyFactory | ambiguous — not counted | SafeProxyFactory (alternative) `0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67` — deployed 2023-06-09 08:48:23+03 — liveness: live (current_address_book_code)<br>SafeProxyFactory (alternative) `0x14f2982d601c9458f93bd70b218933a6f8165e7b` — deployed 2025-06-24 17:46:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Safe_Library_Contracts_Audit_Report_1_4_1.pdf | SafeMigration | unmatched — not counted | — | listed in scope table and project overview | no |
| Safe_Library_Contracts_Audit_Report_1_4_1.pdf | SafeToL2Setup | unmatched — not counted | — | listed in scope table and project overview | no |
| Safe_Library_Contracts_Audit_Report_1_4_1.pdf | SafeToL2Migration | unmatched — not counted | — | listed in scope table and project overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 12 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 7 ambiguous, 139 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=7
- Match method counts: temporal_name=3, unique_name=14

Zero-match audit list:

- [4792] 2025.07 - Certora Audit.pdf
- [4831] Gnosis_Safe_Audit_Report.pdf
- [4834] Gnosis_Safe_Audit_Report_1_2_0.pdf
- [4835] Gnosis_Safe_Audit_Report_1_3_0_Final.pdf
- [4836] Gnosis_Safe_Audit_Report_1_3_0_Initial.pdf
- [4837] Gnosis_Safe_Formal_Verification_Report_1_0_0.pdf
- [4838] Gnosis_Safe_Symbolic_Execution.pdf
- [4842] Safe_Library_Contracts_Audit_Report_1_4_1.pdf
- [4844] audit_1_1_1.md
- [4845] audit_1_2_0.md
- [4846] audit_1_3_0.md
- [4847] audit_1_4_0.md
- [4848] audit_1_5_0.md

Fork inheritance lineage and inherited audits are included when available.
