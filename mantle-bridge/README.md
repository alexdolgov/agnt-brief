# Agentic Audit Brief: Mantle Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 10 (4 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Mantle Bridge (`mantle-bridge`)
- Website: [https://app.mantle.xyz/bridge](https://app.mantle.xyz/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, mantle, sepolia
- Contract surface: 389 unique implementations (393 raw deployments)
- Coverage basis: 1/11 confirmed own live verified implementations (9.1%); conservative 9.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,219,197.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mantle Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum, mantle, sepolia. Structural roles: 7 supporting, 4 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (7), core (4)
- Contract kinds: unclassified (6), contract (5)
- Detected standards: erc1967proxy (3), erc165 (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x676a795fe6e43c17c668de16730c3f690feb7120`, chain 1)
- UnnamedContract (`0x95fc37a27a2f68e3a647cdc081f0a89bb47c3012`, chain 1)
- UnnamedContract (`0xc54cb22944f2be476e02decfcd7e3e7d3e15a8fb`, chain 1)
- UnnamedContract (`0xca35f8338054739d138884685e08b39ee2217794`, chain 1)
- UnnamedContract (`0xcaf8938b6c4a27a96aaafbb7228fd613d40ea70a`, chain 1)
- UnnamedContract (`0x420000000000000000000000000000000000000f`, chain 5000)
- UnnamedContract (`0x4200000000000000000000000000000000000012`, chain 5000)
- UnnamedContract (`0x4200000000000000000000000000000000000015`, chain 5000)
- IONX (`0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42`, chain 5000)
- Lib_AddressManager (`0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42`, chain 1)
- OPSuccinctL2OutputOracle (`0x31d543e7be1da6efdc2206ef7822879045b9f481`, chain 1)
- OptimismMintableERC20Factory (`0x3b96c878cc334a7d9ea994ec4b6c28bddde00eb2`, chain 1)
- Proxy (`0x4200000000000000000000000000000000000007`, chain 5000)
- Proxy (`0x4200000000000000000000000000000000000010`, chain 5000)
- Proxy (`0x4200000000000000000000000000000000000011`, chain 5000)
- Proxy (`0x4200000000000000000000000000000000000013`, chain 5000)
- Proxy (`0x4200000000000000000000000000000000000016`, chain 5000)
- Proxy (`0x4200000000000000000000000000000000000019`, chain 5000)
- SystemConfig (`0x427ea0710fa5252057f0d88274f7aeb308386caf`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/11 (9.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 361 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 19 of 389 unique; 370 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/42
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 347
- Unique implementations: 389
- Raw deployments: 393
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 9.1% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 2.4% | 2024-03 |
| Secure3 | Tier 2 | 1 | 2.4% | 2024-04 |
| Sigma Prime | Tier 2 | 1 | 2.4% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388919 | `0x427ea0710fa5252057f0d88274f7aeb308386caf` | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe92ac303841f9ee446828e5215affb044937d0d` | ⚠️ Unaudited |
| AgniPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1858d52cf57c07a018171d7a1e68dc081f17144f` | ⚠️ Unaudited |
| AssertionMap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1872ce78a362c58d093ee107cadee2667b7bd993` | ⚠️ Unaudited |
| BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31abe1c466c2a8b95fd84258dd1471472979b650` | ⚠️ Unaudited |
| BVM_EigenDataLayrChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x50fa427235c7c8caa4a0c21b5009f5a0d015b23a` | ⚠️ Unaudited |
| BVM_EigenDataLayrFee | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf037ba8b0e82439ad82325d986e097fd19e994ef` | ⚠️ Unaudited |
| CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x291dc3819b863e19b0a9b9809f8025d2eb4aae93` | ⚠️ Unaudited |
| ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd48ef85b99e3e3d711ca8b41cbc07da1677f3e` | ⚠️ Unaudited |
| ChugSplashDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b59785f4dd909b6d2c94090fda6a2d447f478e8` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6475fc2b78fdb0b03fdce4c8a2ee4106ee9f2f` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x4e59e778a0fb77fbb305637435c62faed9aed40f` | ⚠️ Unaudited |
| IONX | unknown | project_anchor | own_supporting | 0 | mantle | unit-388912 | `0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f75372387670ab855e45c5a498b2c271e8967ae` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc62ecbb6c99eb687acc079ce367eafec007222` | ⚠️ Unaudited |
| L1MantleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3c3a81e81dc49a522a592e7622a7e711c06bf354`; ethereum `0xcd368c1d80120b0dd92447c87eb570154f8e685c` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e186deedc9e9007f3daa0a45b3a6849d52901a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b386a4a96e21223b20c21d02aef75da4ecd723` | ⚠️ Unaudited |
| Lib_AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388883 | `0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42` | ⚠️ Unaudited |
| MantleTokenMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffb94c81d9a283ab4373ab4ba3534dc4fb8d1295` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388918 | `0x31d543e7be1da6efdc2206ef7822879045b9f481` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388920 | `0x3b96c878cc334a7d9ea994ec4b6c28bddde00eb2` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a66afa64ef16822706e448ade722890bd331ab` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ca5f4eafc1509909d0dde211ffc6ea2a3e0502` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5d358a3beb84b1d71e030c8e0eea74d9caeca3` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388921 | `0x4200000000000000000000000000000000000007` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388922 | `0x4200000000000000000000000000000000000010` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388923 | `0x4200000000000000000000000000000000000011` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388924 | `0x4200000000000000000000000000000000000013` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388925 | `0x4200000000000000000000000000000000000016` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-388926 | `0x4200000000000000000000000000000000000019` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cac2b1a172ac24012621101634dd5abd6399add` | ⚠️ Unaudited |
| Rollup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242a33ca49c564cafc9c83c700b79f1074c42a0d` | ⚠️ Unaudited |
| StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e9d387555af0cde22cb98833bae40d640ad7fa` | ⚠️ Unaudited |
| SystemDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28399b58989d43a3c04ee20c73076653a4431d17` | ⚠️ Unaudited |
| TssDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7126f676ac359ece8d5244120ff9e78ed3222246` | ⚠️ Unaudited |
| TssDelegationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x988ddc2b0ad9ba5ade892e1bf848308e8c7a9187` | ⚠️ Unaudited |
| TssDelegationSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x910265c29c099eac87ef6d374b6f3be45b516eb7`; ethereum `0xc159f0b28a7bd4b4924e762207275a4475c09fd5` | ⚠️ Unaudited |
| TssGroupManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x399ca67660b79f7aa8a7efd5bef9836a4c19cacf`; ethereum `0xf7576237087f808eb39531ca490b4f8efd4a0c69` | ⚠️ Unaudited |
| TssStakingSlashing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09b276f9ecb83fb6a37970e655863b04143dc431` | ⚠️ Unaudited |
| VerifierEntry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f77d44e1789d47e076a4d5f2779a1fcab821c2a`; ethereum `0xa1c7b28b4743248584725fef31516fd4ea72aea8` | ⚠️ Unaudited |
| WMANTLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (347)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b34526c91424e955d13c7226bc4385e57e6706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1183d0ec537175827c4683f579e92fdfe2466f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f308067241b2028503c07bd7cb3751ffab0fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x247704ada40aeb8aebc3e8b17a2dc49fdb28d061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efae081b4dc3d7d31aedf865c1c39599c7eecac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37dac5312e31adb8bb0802fc72ca84da5cdfcb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3938d52ba5b26c710512a75bc7907f2c01b2269f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4121dc8e48bc6196795eb4867772a5e259fece07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4692363048d0f32a2de7816860d48fff0c61b24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca146c0868b3299e1c7e8cfe6926da1ec276c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x601fa606f2dff948f006efc4c1c770ba0cc0eeaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388882 | `0x676a795fe6e43c17c668de16730c3f690feb7120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbc0cb1ea40781ab4cb80eaac97ea2401bd3fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbb7d9c5dc60844b8cf442ddc6be081c060b2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0536f045f86ebccfdfcf38d78329fe9e1aaeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729967093aa8e67c359fd78f271c2e540cacbd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x740bb86d373a11b1ba8136b397796bb192ba1350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766812f5275a4ab689886fcf7754a09f729ee61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78cf48880e9e1b3ab209779c0d8a76f611e53e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c7d2be76cba51bf68b0aaf41bbb90dd901cd39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4e5514b34135803daf5c5c931f633d98963859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ab5d8e50aef3a9860b39bf6e664c622d871350` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388884 | `0x95fc37a27a2f68e3a647cdc081f0a89bb47c3012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7e0f59ecaaf3bc2a1603d46065ea26e14f614d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d79e982bfd3c2ccd09d2e374ddc75fe328f317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90fce37d274e673f3850b835f18790542b1755d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3db4bd5bc225930ed674494f9a4f6a11b8efbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4133552ba49dfb60da6eb5ca0102d0f94ce071f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb581f4655639f38ab73f17588c55fef865d48ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f4ee05fffb85ba03fede089f75e63a9a55ddf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8de82551fa4ba3be4b3d9097763edbeed541308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d712e6c40b964fd0b7ac93894240aded649024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388885 | `0xc54cb22944f2be476e02decfcd7e3e7d3e15a8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7180b3c97018f3bb5efbd536d3722b21e291662` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388886 | `0xca35f8338054739d138884685e08b39ee2217794` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388887 | `0xcaf8938b6c4a27a96aaafbb7228fd613d40ea70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1230865641561653406906fb08873f011c19080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1328c9167e0693b689b5aa5a024379d4e437858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3f0bd982d72e28cccc69e0a9da439e9d587b3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4b5e3d46d202c3523c3ad89dfe74ec272bfc96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1399f54ba2597b4eada9e3450c34d393fb131a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2cb0525465a7c8c4e57d6dad5f4fe92682a6b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388907 | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388908 | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388909 | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x013f4f5f361397a86da8897f9cb41c8bd42f4c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x022f834cfb639561bded9e43fe7dc0a1ee23918c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02b83c091a1e75de443b23aa7d139ebf92deb2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x034a17875a9cccb79687b118e3779018a8b74fa8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388888 | `0x04b34526c91424e955d13c7226bc4385e57e6706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x058569abbb3154f1b1c418ea7f30b8d9d4dfc9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05e1922b447369a777e6f6706cef418d8e66c217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0689ea6fddac743c34950c321cb4010bb1a01789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06cfda6f46524ac6de249a2fd8f3d04169a3cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07f0597fd05fc62d4d7ce4d773316f967cb0ab89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a6d8931616f5fa0f764a835021d8c114f4233dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c04d3139cfd2f7ce921da267cba9f98e8e082cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c689f6c83a424614e914269555046cf16c5831c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c84c1d92838390a1df6856e70c46ff64b3530db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e477cc5fce55825ac5654534683f07ff5727d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0eefdfb17b6e941f3cb106ac5aeaa3d893e757a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x111c47c9415e31d15d84aa0cabf360b7bfed2ebc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388889 | `0x1183d0ec537175827c4683f579e92fdfe2466f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12a2e723ba2328cf493380d23efc92714eda4e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14d7c1962357011d896bc34a3294b957e4d0c10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1509a4babc2cf9adac3ec391b8d242be6932bfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15cbb523d7a0b5e533ccb46df1c3b6dca4a26c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19e88e86e7c328483ca01ca8f4fe52a0182e5469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ad307127c915c3be4a0b9e5fe89d91c7f9490f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ada30a3805edf63bfa5367d865641c3a182bf1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b0e5bc7c01937c2954394d969cdf668ca04a2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b5d7b881d5556142b8749ce9ce44459b69b6d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c4b7f7b8908495d8265a2adcf2a2c8497c2f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ca2dab499d344f2d3628c361998cbc07f97fd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1cb5c0354453ed17a71ec0ac7b4b4626ae909855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1eb4bc457840642fb817d73de664915037133cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f6dcf67b04410df562c84001804dc9349edebec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x218eaab1e6224f264e40ab60ccb53e460e3b53a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388890 | `0x21f308067241b2028503c07bd7cb3751ffab0fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x22438e78e19b817b570850ac390cd88687a45a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24279b2187e9b1c90022ecb0e2ec2e96acdf49d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388891 | `0x247704ada40aeb8aebc3e8b17a2dc49fdb28d061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2593d59e94e86b66280e27052eab834eb104af10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25d849d8ee2d9fe49d60415998d0a591edfca978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x266e8d7808f3e5eb257bda06aa230632f41618e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26767ada244a8e4695c6f2cf20e8e4b33be02ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x281b26feb758000c42649ec3c1e0290c5a31aefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28ad8e928f8941655d68c0520fe9b2a89b8e7dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a43cbb2e8c542934d74023363ebb67832bfbbae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a58bcdce366a0e407f46cb3ce0a485ce3e33ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c602ebcaea4582826a7bc5367990d93253cf4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d1b2b6248175ffbb588433708d529345422104b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2dddef934a7f4beffb68a03efbdcb4305abcb399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e289d979815153c7de641912f722c395c4d7ff4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388892 | `0x2efae081b4dc3d7d31aedf865c1c39599c7eecac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2feb4163306d7c456c66f3e1ca24def270391dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3109bee4a8d87841be18a3a2d3359e9ac790b090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x31adc0f05e654a68a2a0dba0244c0a1ae2aa192d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32e6f6854e96142f4c3d55074ffeb216d1cb1480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x354ab8c61a4ccd08d9bcbb49205587a8371a35df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3632e1c8c4697daab299ce4f83fb2a4c47779d94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388893 | `0x37dac5312e31adb8bb0802fc72ca84da5cdfcb4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388894 | `0x3938d52ba5b26c710512a75bc7907f2c01b2269f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x396b3811d1227a07d4cba6f5110ba3261a8e7c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39749725bab7460021340fdbfbaf0d9ec9f4e7b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39ef7bc38ba0f1a84bc92c4106989e2df9bd59c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c3d6db26efb0ddcacd3de1485d66855ac8a89cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c7612ed788bf38108a98038f3f56392ac8a3fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d8fe45bf99591197c845779668fb6f3d30c79b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ef7e12726836baf54117fbb394883a757818b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ffeb0fe8a7c95d7b353ba29ea285fbe5de4eb61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40a0be3526ed58b78f11943bd2ac26c6acb79312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40a2c699d7d81b7e8586e79cfa2a779d0bba10ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388895 | `0x4121dc8e48bc6196795eb4867772a5e259fece07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41471556eaf3e895531950841f8145b30acb2cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x415fc9f54de4b657936332e631078b00469ec5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x426dd8d48e342de728bbb7d84f2bfb7915751055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4287ff8bbd0b70ad965f18db4384120d164c5543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42e5be50bc5823b85463d0a0d79f0925399a5928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x430cd6e2050eeaae6851d51bf658a64159a91c34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43738cdae426c7661f49283f81ebd99930d418c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4431577245c3d5a0f4601a48232948e69a152287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x471e82c6b4748b92fdfecb38ed601febe2cdc36c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4729a65fa0a20171f4c0cb4a89700f751ab0aaab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48e9e65a1435ba9ca0d51ffd18317f2a39e6293e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x496dbe4e966989081c9fb9430a6898f4b10e73c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a26ed38edf243c5cfe61335a25971da56f7538a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ade2fa6b0cdad64f998ea91e0edcc97741e0b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c15c650f75a21a4ca4052f858c867af7dc622ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e89aa8a93caf882b9fe9066db5972e3eaf13b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f5cfbe7c12266a41eb783883033b39e84a009a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ff17ff6fc4254e84318323f01329d86decffdf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52384b5ccb1e5185e36f07402fcd936ade7afb03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x536bed6283500bf93ba4428c18a7a629425a5c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x556e41070ab46660ab8d51bb2d2b74dbca078271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57472ef329f75760cf6c27a891cc8b0e47bab599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57b26f8874cbb63fdfa56a8b40c2fd641a10bc7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58bf31c4aaab388877715c0a36a02529850fe01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58c1d0aa55a7876e290392519e8125e6f32d721d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a43ab33021a108bd001c3bb9d2fb721e9dd74e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5abb02c2b4b8b361adcf6d03f722117f781c2f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b9423099d6b51b14c71f2b18d189b941ff4794f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ce6a0a5a2e1f11034925ab612bb7528347c71d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ce86f8ce8ab9af1899bd16d819b024bcd711a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e1ccef90de4c3f1a4b8b7eb601e8c25e41327f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5eda5fa4613f6acbee299b0bf4599d3e92f94080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f11e6f2fa51882db26aeed81a72e64a50c79283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ff55ddc835788b63df5d5c45af434c1d5c858cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x604753b139eb4fe38e28778882a576ac4422ce5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x60755ef59d770e4131a30f5d63209a34e21dce47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62ca7465f8fc52c7fdbd4bf11f04154d6f3ceca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63d200e4e4ed926cb0cb2b73e943293a0ca27bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63ef17a34e55d59c983cd0031ccc8d2aecf3b0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x641a147f7a5bc557d37dc20842aeab8999573b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x658fd092aaa8ddcfaa3f029f554d53df0f1a835d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65fea8f60aa7b1e279a1dd8664aa7d800721e45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67f08efea5a55d9526c0e4f1c1cd55b1e9d6d8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68f653b4d065057f236ecdd93a3dc8b08ae60488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x699f53d382fe547476ac18dfbf983b4b8c1149c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a472bdecc29e4e275675d1367eaeb2867239f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a5e399687bb3ac5d89f8167c3f102ebd764ac3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a82f7451c8aacecbb80317fb76665a3a037cde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a8c5f553a2327cbc66d53f6cc5edd4c95899cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c15d17452816879e322106f44f61a1ea2b39564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ea41ce8cb19fd4a52125897e1dba5400dbeaa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ebe0d73809b793ce09faf2e4d8984d4b6939527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f1eeed475a34563b3b6d6a66f6b7e64c7412531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fe5484711ef0ef0451613d9136ba36514e0a22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7081c28db8795ae32e044f8f1fa732d62a5c59fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x71bccdbdbea387b673baa7c573d4083cd8ccdaec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x722086a48c8b97cbebf7c455a5bb653f435e03f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7245dfbe86b3eb0c592b1e3dfbe86cea929a5c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73cbd0de9e8cb1d726b55855831b46dcc4ad91f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74b7534c53177248f555035ae0697bb1f1ae42f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74f3823812597db3ad8984f9006497baf7a085a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7505508404825fcf1e1e0346b50b86736d8944ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7637803ecffd15af163efd7425d7b27f8e489cb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76df16b0850051df20fb14522d89cb62b56afd71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77cdb5cc59f20a5a2fed7b91656948dfffc3fc76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x780dfc16506b895f3832090f6c198bdebedefdd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x784ed5141985b6c7254b89b95cece6f8d0a36aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79bb043cc14464776e139688e73c5ef80a14f107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79d39bdecce792b3ed519fae94b801830adc1299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79ffbfc8450b05676d265243a28fd312e2553018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7a18aa3102595d914fc97ff65d5f2b97bce7c095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7dc1e47f1a367b6750802077632787181e70bf8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f7775d439ffbf0d7dac7d0823928fcdf97f1f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7fba5962be3180b9273c8b748a9433e49cb960fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82bd018bc8825c4e6ec0c22afddc990c96e3b5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8354fc683f0bc154a6db6f89e59eb883b14416c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x836c66509117f58c44c5f84d3b7070fd16f04eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83920850d614a46a6a4a0df8852c468afa47aae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x845df083672292515b57f76ed96fe2f762bc485a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8599392352094ef95111a72e9b3805b0add4e012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86582a763b46b00bc27f7741e22cd703a17c9ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8807eb9e92f5654bb3b0d1a24e0409edb04ae055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89f990ac05db398a7a50b8b2911cc50332765ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a5070da80b595974219fa7b3466951dc1f05e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a7479812c1cb852dbae7b1463c725daa762a655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b75232b7e847f9cfe9dc53e49aba4951b19cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x905d3103102a20cda5004174a90d3348a0ec365b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90c902debeefdf9e0a3144ba687fd1a0fc99f968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9136651379c1ba8855f57586022e5b9d07bd446f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x941629728251cc7a6329674f944edd4179ca740a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x941cb21d040f5c8dba5b31fb32145df078fcafa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x941edcc7f658a7e78a1ac8ee1e56509e0b1991c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x94456fae55ec229d046a9fe8c8420a5cce7486c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x94b685000525a14ed01dd0f5921f9289f5970f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x94da41975014db496d59513c14642a641b36d47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9633f62a1f22e14fe3b6997cc0b59150960dc452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9654e43e9b49a3c11cd6cecd9436b97679942564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9677cf6ba59d04b4c3eb734db8c173172f73386e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97bf9b0bd969d846d9dc554daf6fc67e7a5bf8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9805862dccca6a7bc1fbdbb10a78ffe3b793749b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x990e0848a9257324cc2e3c23ae6f47785545d6ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99d254ecbb1867ff32cb19d288d6d83f541d13ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a41a0cf1df3abd31d2244a480c02c0448b1f667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a75f613d1d0f3bd873a24182f5673dd4dfed343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c0ef3428ed1d6a99a08fd0246d0096b505bd804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c1597fa245f22a255eb9072512d4c6cd3afd6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c3496adae72f4d16f3aa3a4e863401bccad8e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d1ba6b111fded36ea5e4e206aafa25db657fbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d5a2b85c20c64eb6e3fb224c450ea3b55ec4dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa10f9ce2db00d4038f739776ff5cf02406ab57ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1365df6fd3ed7172b71fae2c18ef1e0984042a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa19b8ef9161bbb2d77268ba944e10818cee5f9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2468bb40bd9d6025748f330df7599efac62e65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa3bc8c86e1069bebb4cc3720458d4e35229ab4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa3e6cbcb695ca40fc9a9ca0590f1ef2e9fde4d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa407004e30980f37cc5056335c649f39818f5898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa417aa93ca4fc9f0b0aac70700b6205173638927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa4668346d97aa6e181d917d2dbb892c28742c581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa4688c26231d1c22f38d77bb2bef341e03572261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa469ce279db1e954f50ad77ab11a898886255959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa521559dd0e073dcfa93ea5bc00b600181a510f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa62c575962c3bff19506dd0e936234eda5052c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa66e08d5187560bac8fce7e3060b0448c4352872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7f30118e8c7ad0e78c7ea77aefc669074e61266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8b5aa67d3a8dc0cc3fb27ff3e71072c98b6a17a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa9a1e3a4527fe35ed166772724e3f4a37f3f608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaacf2a309fcb6f50b6267829921d4958ba94e417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaae3faca9dfe303669ec8aef7478cc9ce02596b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xadde56e9d01182a406947c71ed17c40e1935f4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae1e4c5de66200c0df9cdc204bebb50aa92cc930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaf394553c7c06f4d1876e234c8bb3068a5fa1408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafee9bb2f50ec94b7e0b84410044c00ec01e85c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb017e777f33a06d632792cbe0304b7abaeedde6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb1571de3d36f632cafc5e9ddd559124f4fd6eb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb2189a80ab4c29baae42f0a7345c8af3cc22ac9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388896 | `0xb3db4bd5bc225930ed674494f9a4f6a11b8efbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5aa949e78946c909a0fb2cefb458887eab9b279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb6fec31440c8251a33d3c5f02f77fb4217a621b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb716bd4ad00acbcc44a9a30495fc4404bcd9a6b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8488a08f8a5b1ef461beb4272354ddaa8352718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9015eea714d541e31e07bd26786548b2a5c8770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb93ee6a485de74048a457c19df2cca158c1ee03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba2595abd3e6c88188005522dda7292eda49fa22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbab0b0d26649504294f5be9d1d7946b279f58d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbcffe9f3e726f1b86802dfd09443dfc553a2cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbca4c6a295cfa75a19884c4e98c3d22db7f67af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd2018ff5321b010b78cda1085bdf7f6718c2455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbdc554db6c15fcab7872cf64991ca476f3ce07c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbeb8ba8cf6b5a43fa6ac308603d3100c8ade4d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc2e0a884c626d9a2b32b04dac63c0b5cb8c6190b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc47ed089cde1d84b1cfdef13ef174362ec037ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc500b7d49b98f94a94aba709a4616d93b83ca092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc50da178c45a2a5ac04ccd5cdd42f07484610eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5704239036157271a8325d1feaf63dcf323cdfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc59c996050523daf133788de4c93f5ebea6c52f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6192ea97f14e7058c3a1e4c031e0a4b4af28ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc688097d9cf229b485269dd1a52769068f204c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc74fd16dc78dd0327294f448209480a67c37a652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7553fea69e0ad31fb79776123490d2259507879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7ca071b62a93e74f6e5ea71f246208e88f4893a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7d4dcf1036b8d7f51b66ec1bc0e483edfd35b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9745695a243b4a1f9d821827f31ec1d0bffbd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9c1bf81e8a0a6df501ee9b4327c13d054ef20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca4319cd16c896e42712570930f393b25c5dc5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbb3b329e3380dfddcd96ea6b570ce3fe007f08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbd47919ac3c5b4a1376b12a622e59a24fac242d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcde6ffcc8f7f81f586a183707fb7f84dfbf2b903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce067a8cf0e7da824ad8eb6d7099c402f00a0679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce1bdd07650a669ec423fd1423b48a994701d781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcec3ced3717ca7179da2da51886557938871419a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd00240452ce3b267a740b3d83d8c5ef22abf64ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd06d0d996749499b286d1d706d2d02a85ec80886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0767b86ce2672003c8a8284d5a4c736f92deb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd0bfc6b0dd98c2c1f588777d3dde0df63800b4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd219bc347200008b09e97db6b296c3bb56b6e21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd39ea001abd98722b025a8baeab590ee92356358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd50df7a8f956f80af62b7f83ee71691507da0ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd511321d1f9ff3d19dc31baa5afe8f3a36f4b518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd554c2f8fa0f4e57f56bb6b1147e6d76e5f9340f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7f17171896461a6eb74f95df3f9b0d966a8a907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd86efd4495c90549407e83fb4b90b5422ba2689e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9842376ffba293f9472f0b255aba526869cb87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda3f7555cb1587e2ce9a7500f3efb250a7e48bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda7e9958c4a63f6091521702cc4fb18873feb626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd5a84e38daeb7c95014439c1196f342158611d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdee87bd03f79e1b32c406ecbd686de86d790d0d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf6fdce7ef2260cda02322a9ce1836143086c82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfc0eb9894cb3e228d600cf2beb26180ed648a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe04a1c370f660ecc27aef4616f5dafd6bfe6a915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0f942f03ca8f9dd43bec19ba1c40dced0bd5de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2a3332f33ea593a4328b948aba805f870633cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2ccefb475ec89d47ea38d3bda66aa5464f9f2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2eac21e19dc1f2bb72bed89123dc4c4f24f9cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe4fdf4018f1cb1b6b39aa7924bfb236dffef776c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe65bb83777c13dfb2aad4923bd7baac561f0481e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6c7f0e18490ee3cf6bb2c223a7a7b582793519d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6cda93400a2bd2c1381b88d44ff16717165d7cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6fcbafe1086a36b696801daa24e516c939c5ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe730fc707a005b37d2db8351b2c5800ecb465e69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7ec8a54b103d93071d67d8ecb92d2fdf432d058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe8c85044f06e7377f3100f4e885e2faa1ecb29c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe8e95ecc1dceb3c15cb37d384e7f07186997b96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe913711244e63efe8a343e8a0b1f98cc9801165a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea2d0328e23e3dc34a45ddc7ffe60b773043d323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea71e468aeecbc77b1bbc13c9a108e8bbfa06cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee982ece69b8c2f51839351e2bbc056c1bff6df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeecbd877c129e08493747692109908b709c53d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeed7586916e8064f664f78212639e81ad97464bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf118c26b08dddcdb0a3d7326b22fde49baf2ddff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf259df6a94455184c17d8a4b9448189853810664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf26e9932106e6477a4ae15da0eddcdb985065a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf2b2c5de4dc42a605e20e84693f530dc7163dd0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3fff9350e9da5d7de24b36c8debb88d86f47768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf43bde4eba4c9439bf1559960211870f95bf3752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf48119b33890e8b1c6c5b9ecd72090f77bc08cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf53c98b89fb01686d5d2bdd1c41d3c318989303f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf64426c5a003468f08b0f3bd59ce368d416527ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6908b8de69e444f2ed0fd206d1e453cd9b21e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf76ce426e7cd3b8869023cf314c484dfedae0b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf85c1baaaa7680f20138ed0b89fceb1c811181d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8fb522b1fca30d7da247df451a966ad47dea895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8fb784bd9be129762879479112d82fff85d525d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf93be38e833f4e366f41f63520c4362e411aad7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf964deb849946ca81b0ab3afae8ed6a07522a2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfafa8671c1e213ab054806832d2ec40e11b2e8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb03c3263fa4663c9e4b1f377c967fee104e3909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb1828185ab248eeafdfdb68a482afa9dacd9f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc7c5fb18b3e878a688d6f8717fb9541a6b93595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe3a8a11359e0f1c76d990bc06d8cbe4a0cc0ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff6b4c6eff64b3920ed724831b3010447e9e34c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff80b1dfedfbe4a8d6f29aa4404a3db658c23ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffa5af2b17171075c72cb4201e4976ae1088da82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffbdee9f73d1a4971b07d3aa4f2816f59f0aef7a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 325
- Live contracts: 0
- Unknown liveness contracts: 325
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=325

Showing first 200 of 325 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x4692363048d0f32a2de7816860d48fff0c61b24b` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ca146c0868b3299e1c7e8cfe6926da1ec276c60` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x601fa606f2dff948f006efc4c1c770ba0cc0eeaf` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cbc0cb1ea40781ab4cb80eaac97ea2401bd3fac` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dbb7d9c5dc60844b8cf442ddc6be081c060b2e3` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e0536f045f86ebccfdfcf38d78329fe9e1aaeef` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x729967093aa8e67c359fd78f271c2e540cacbd5e` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x740bb86d373a11b1ba8136b397796bb192ba1350` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x766812f5275a4ab689886fcf7754a09f729ee61e` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78cf48880e9e1b3ab209779c0d8a76f611e53e81` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c7d2be76cba51bf68b0aaf41bbb90dd901cd39f` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e4e5514b34135803daf5c5c931f633d98963859` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90ab5d8e50aef3a9860b39bf6e664c622d871350` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c7e0f59ecaaf3bc2a1603d46065ea26e14f614d` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0d79e982bfd3c2ccd09d2e374ddc75fe328f317` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1c7b28b4743248584725fef31516fd4ea72aea8` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa90fce37d274e673f3850b835f18790542b1755d` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4133552ba49dfb60da6eb5ca0102d0f94ce071f` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb581f4655639f38ab73f17588c55fef865d48ce0` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5f4ee05fffb85ba03fede089f75e63a9a55ddf0` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8de82551fa4ba3be4b3d9097763edbeed541308` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0d712e6c40b964fd0b7ac93894240aded649024` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc159f0b28a7bd4b4924e762207275a4475c09fd5` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7180b3c97018f3bb5efbd536d3722b21e291662` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1230865641561653406906fb08873f011c19080` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1328c9167e0693b689b5aa5a024379d4e437858` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3f0bd982d72e28cccc69e0a9da439e9d587b3bd` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4b5e3d46d202c3523c3ad89dfe74ec272bfc96a` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1399f54ba2597b4eada9e3450c34d393fb131a7` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7576237087f808eb39531ca490b4f8efd4a0c69` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe2cb0525465a7c8c4e57d6dad5f4fe92682a6b7` | non_address_book | unknown | unknown | unverified | n/a | `0x2a2954f3989a83cc43dd58b0f038d5f276f21333` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd368c1d80120b0dd92447c87eb570154f8e685c` | non_address_book | unknown | unknown | unverified | n/a | `0xc22de539e70144c8d54e5922bf486de78900bb9f` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x013f4f5f361397a86da8897f9cb41c8bd42f4c66` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x022f834cfb639561bded9e43fe7dc0a1ee23918c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x02b83c091a1e75de443b23aa7d139ebf92deb2c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x034a17875a9cccb79687b118e3779018a8b74fa8` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x058569abbb3154f1b1c418ea7f30b8d9d4dfc9c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x05e1922b447369a777e6f6706cef418d8e66c217` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0689ea6fddac743c34950c321cb4010bb1a01789` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x06cfda6f46524ac6de249a2fd8f3d04169a3cdc6` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x07f0597fd05fc62d4d7ce4d773316f967cb0ab89` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0a6d8931616f5fa0f764a835021d8c114f4233dc` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0c04d3139cfd2f7ce921da267cba9f98e8e082cf` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0c689f6c83a424614e914269555046cf16c5831c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0c84c1d92838390a1df6856e70c46ff64b3530db` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0e477cc5fce55825ac5654534683f07ff5727d5e` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0eefdfb17b6e941f3cb106ac5aeaa3d893e757a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x111c47c9415e31d15d84aa0cabf360b7bfed2ebc` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x12a2e723ba2328cf493380d23efc92714eda4e78` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x14d7c1962357011d896bc34a3294b957e4d0c10f` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1509a4babc2cf9adac3ec391b8d242be6932bfdb` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x15cbb523d7a0b5e533ccb46df1c3b6dca4a26c69` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x19e88e86e7c328483ca01ca8f4fe52a0182e5469` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ad307127c915c3be4a0b9e5fe89d91c7f9490f0` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ada30a3805edf63bfa5367d865641c3a182bf1f` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1b0e5bc7c01937c2954394d969cdf668ca04a2b7` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1b5d7b881d5556142b8749ce9ce44459b69b6d2b` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1c4b7f7b8908495d8265a2adcf2a2c8497c2f1c9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ca2dab499d344f2d3628c361998cbc07f97fd56` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1cb5c0354453ed17a71ec0ac7b4b4626ae909855` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1eb4bc457840642fb817d73de664915037133cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1f6dcf67b04410df562c84001804dc9349edebec` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x218eaab1e6224f264e40ab60ccb53e460e3b53a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x22438e78e19b817b570850ac390cd88687a45a02` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x24279b2187e9b1c90022ecb0e2ec2e96acdf49d0` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2593d59e94e86b66280e27052eab834eb104af10` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x25d849d8ee2d9fe49d60415998d0a591edfca978` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x266e8d7808f3e5eb257bda06aa230632f41618e4` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x26767ada244a8e4695c6f2cf20e8e4b33be02ea1` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x281b26feb758000c42649ec3c1e0290c5a31aefb` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x28ad8e928f8941655d68c0520fe9b2a89b8e7dc2` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2a43cbb2e8c542934d74023363ebb67832bfbbae` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2a58bcdce366a0e407f46cb3ce0a485ce3e33ca4` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2c602ebcaea4582826a7bc5367990d93253cf4ea` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2d1b2b6248175ffbb588433708d529345422104b` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2dddef934a7f4beffb68a03efbdcb4305abcb399` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2e289d979815153c7de641912f722c395c4d7ff4` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2feb4163306d7c456c66f3e1ca24def270391dcc` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3109bee4a8d87841be18a3a2d3359e9ac790b090` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x31adc0f05e654a68a2a0dba0244c0a1ae2aa192d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x32e6f6854e96142f4c3d55074ffeb216d1cb1480` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x354ab8c61a4ccd08d9bcbb49205587a8371a35df` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3632e1c8c4697daab299ce4f83fb2a4c47779d94` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x396b3811d1227a07d4cba6f5110ba3261a8e7c7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x39749725bab7460021340fdbfbaf0d9ec9f4e7b1` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x39ef7bc38ba0f1a84bc92c4106989e2df9bd59c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3c3d6db26efb0ddcacd3de1485d66855ac8a89cd` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3c7612ed788bf38108a98038f3f56392ac8a3fcd` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3d8fe45bf99591197c845779668fb6f3d30c79b9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3ef7e12726836baf54117fbb394883a757818b68` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3ffeb0fe8a7c95d7b353ba29ea285fbe5de4eb61` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x40a0be3526ed58b78f11943bd2ac26c6acb79312` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x40a2c699d7d81b7e8586e79cfa2a779d0bba10ff` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x41471556eaf3e895531950841f8145b30acb2cef` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x415fc9f54de4b657936332e631078b00469ec5ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x426dd8d48e342de728bbb7d84f2bfb7915751055` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4287ff8bbd0b70ad965f18db4384120d164c5543` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42e5be50bc5823b85463d0a0d79f0925399a5928` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x430cd6e2050eeaae6851d51bf658a64159a91c34` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x43738cdae426c7661f49283f81ebd99930d418c9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4431577245c3d5a0f4601a48232948e69a152287` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x471e82c6b4748b92fdfecb38ed601febe2cdc36c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4729a65fa0a20171f4c0cb4a89700f751ab0aaab` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x48e9e65a1435ba9ca0d51ffd18317f2a39e6293e` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x496dbe4e966989081c9fb9430a6898f4b10e73c9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4a26ed38edf243c5cfe61335a25971da56f7538a` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4ade2fa6b0cdad64f998ea91e0edcc97741e0b03` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4c15c650f75a21a4ca4052f858c867af7dc622ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4e89aa8a93caf882b9fe9066db5972e3eaf13b15` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4f5cfbe7c12266a41eb783883033b39e84a009a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4ff17ff6fc4254e84318323f01329d86decffdf0` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x52384b5ccb1e5185e36f07402fcd936ade7afb03` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x536bed6283500bf93ba4428c18a7a629425a5c7e` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x556e41070ab46660ab8d51bb2d2b74dbca078271` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x57472ef329f75760cf6c27a891cc8b0e47bab599` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x57b26f8874cbb63fdfa56a8b40c2fd641a10bc7c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x58bf31c4aaab388877715c0a36a02529850fe01d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x58c1d0aa55a7876e290392519e8125e6f32d721d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5a43ab33021a108bd001c3bb9d2fb721e9dd74e2` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5abb02c2b4b8b361adcf6d03f722117f781c2f58` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5b9423099d6b51b14c71f2b18d189b941ff4794f` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5ce6a0a5a2e1f11034925ab612bb7528347c71d2` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5ce86f8ce8ab9af1899bd16d819b024bcd711a97` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5e1ccef90de4c3f1a4b8b7eb601e8c25e41327f9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5eda5fa4613f6acbee299b0bf4599d3e92f94080` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5f11e6f2fa51882db26aeed81a72e64a50c79283` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5ff55ddc835788b63df5d5c45af434c1d5c858cb` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x604753b139eb4fe38e28778882a576ac4422ce5b` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x60755ef59d770e4131a30f5d63209a34e21dce47` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x62ca7465f8fc52c7fdbd4bf11f04154d6f3ceca0` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x63d200e4e4ed926cb0cb2b73e943293a0ca27bf5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x63ef17a34e55d59c983cd0031ccc8d2aecf3b0a6` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x641a147f7a5bc557d37dc20842aeab8999573b7a` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x658fd092aaa8ddcfaa3f029f554d53df0f1a835d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x65fea8f60aa7b1e279a1dd8664aa7d800721e45d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x67f08efea5a55d9526c0e4f1c1cd55b1e9d6d8b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x68f653b4d065057f236ecdd93a3dc8b08ae60488` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x699f53d382fe547476ac18dfbf983b4b8c1149c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a472bdecc29e4e275675d1367eaeb2867239f48` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a5e399687bb3ac5d89f8167c3f102ebd764ac3c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a82f7451c8aacecbb80317fb76665a3a037cde4` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a8c5f553a2327cbc66d53f6cc5edd4c95899cc8` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6c15d17452816879e322106f44f61a1ea2b39564` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6ea41ce8cb19fd4a52125897e1dba5400dbeaa55` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6ebe0d73809b793ce09faf2e4d8984d4b6939527` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6f1eeed475a34563b3b6d6a66f6b7e64c7412531` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6fe5484711ef0ef0451613d9136ba36514e0a22d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7081c28db8795ae32e044f8f1fa732d62a5c59fc` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x71bccdbdbea387b673baa7c573d4083cd8ccdaec` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x722086a48c8b97cbebf7c455a5bb653f435e03f2` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7245dfbe86b3eb0c592b1e3dfbe86cea929a5c8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x73cbd0de9e8cb1d726b55855831b46dcc4ad91f6` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x74b7534c53177248f555035ae0697bb1f1ae42f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x74f3823812597db3ad8984f9006497baf7a085a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7505508404825fcf1e1e0346b50b86736d8944ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7637803ecffd15af163efd7425d7b27f8e489cb9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x76df16b0850051df20fb14522d89cb62b56afd71` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x77cdb5cc59f20a5a2fed7b91656948dfffc3fc76` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x780dfc16506b895f3832090f6c198bdebedefdd7` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x784ed5141985b6c7254b89b95cece6f8d0a36aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x79bb043cc14464776e139688e73c5ef80a14f107` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x79d39bdecce792b3ed519fae94b801830adc1299` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x79ffbfc8450b05676d265243a28fd312e2553018` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7a18aa3102595d914fc97ff65d5f2b97bce7c095` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7dc1e47f1a367b6750802077632787181e70bf8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7f7775d439ffbf0d7dac7d0823928fcdf97f1f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7fba5962be3180b9273c8b748a9433e49cb960fa` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x82bd018bc8825c4e6ec0c22afddc990c96e3b5ff` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8354fc683f0bc154a6db6f89e59eb883b14416c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x836c66509117f58c44c5f84d3b7070fd16f04eb8` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x83920850d614a46a6a4a0df8852c468afa47aae9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x845df083672292515b57f76ed96fe2f762bc485a` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8599392352094ef95111a72e9b3805b0add4e012` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x86582a763b46b00bc27f7741e22cd703a17c9ea4` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8807eb9e92f5654bb3b0d1a24e0409edb04ae055` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x89f990ac05db398a7a50b8b2911cc50332765ae9` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8a5070da80b595974219fa7b3466951dc1f05e10` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8a7479812c1cb852dbae7b1463c725daa762a655` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8b75232b7e847f9cfe9dc53e49aba4951b19cbb0` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x905d3103102a20cda5004174a90d3348a0ec365b` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x90c902debeefdf9e0a3144ba687fd1a0fc99f968` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9136651379c1ba8855f57586022e5b9d07bd446f` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x941629728251cc7a6329674f944edd4179ca740a` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x941cb21d040f5c8dba5b31fb32145df078fcafa0` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x941edcc7f658a7e78a1ac8ee1e56509e0b1991c6` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x94456fae55ec229d046a9fe8c8420a5cce7486c6` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x94b685000525a14ed01dd0f5921f9289f5970f6c` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x94da41975014db496d59513c14642a641b36d47d` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9633f62a1f22e14fe3b6997cc0b59150960dc452` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9654e43e9b49a3c11cd6cecd9436b97679942564` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9677cf6ba59d04b4c3eb734db8c173172f73386e` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x97bf9b0bd969d846d9dc554daf6fc67e7a5bf8f5` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9805862dccca6a7bc1fbdbb10a78ffe3b793749b` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x990e0848a9257324cc2e3c23ae6f47785545d6ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x99d254ecbb1867ff32cb19d288d6d83f541d13ad` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9a41a0cf1df3abd31d2244a480c02c0448b1f667` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9a75f613d1d0f3bd873a24182f5673dd4dfed343` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9c0ef3428ed1d6a99a08fd0246d0096b505bd804` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9c1597fa245f22a255eb9072512d4c6cd3afd6c6` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9c3496adae72f4d16f3aa3a4e863401bccad8e96` | non_address_book | unknown | unknown | unverified | n/a | `0xc675f727fb9f19c31f10a15ddad8d05a27504c46` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mantle_V2_ Secure3 Audit Report.pdf (also discovered via alternate URL)](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/Secure3/Mantle_V2_%20Secure3%20Audit%20Report.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [Mantle Op-Geth Audit Final Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20Op-Geth%20Audit%20Final%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Mantle V2 Solidity Contracts Audit Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20V2%20Solidity%20Contracts%20Audit%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 33 | high |
| [Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/OpenZeppelin/Mantle%20Node%2C%20Batcher%2C%20Proposer%2C%20and%20Tooling%20Incremental%20Final%20Audit%20Report%20(March%202024).pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf](https://github.com/mantle-xyz/mantle-v2/blob/release/v1.0.0/technical-documents/security-reviews/SigmaPrime/Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 21 | high |
| [Mantle Op-Geth Audit Final Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20Op-Geth%20Audit%20Final%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Mantle V2 Solidity Contracts Audit Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20V2%20Solidity%20Contracts%20Audit%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 33 | high |
| [Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/OpenZeppelin/Mantle%20Node%2C%20Batcher%2C%20Proposer%2C%20and%20Tooling%20Incremental%20Final%20Audit%20Report%20(March%202024).pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf](https://raw.githubusercontent.com/mantle-xyz/mantle-v2/01f238b03b6fca137aac35248e89bffa55d15fa7/technical-documents/security-reviews/SigmaPrime/Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 25 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21150] Mantle_V2_ Secure3 Audit Report.pdf — no match: Extracted contract names from audit scope (L1 and L2 contracts in mantle-v2/packages/contracts-bedrock/contracts/) and from findings referencing specific contracts. Also included Go files from op-geth. Audit date from cover page: 'Mar 4th, 2024'.
- [21151] Mantle Op-Geth Audit Final Report (March 2024).pdf — no match: The scope section lists only file paths (e.g., core/state_transition.go) but no contract names. The report audits an op-geth repository (Go code), not smart contracts. No Solidity contract names are identifiable.
- [21152] Mantle V2 Solidity Contracts Audit Report (March 2024).pdf — matched: Extracted all contracts explicitly listed in the Scope section, including dependencies with limited review and files audited for differences. Audit date found on cover page: 'March 15, 2024'.
- [21153] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf — no match: The audit report lists five components (op-node, op-batcher, op-proposer, op-chain-ops, op-service) as in scope. These are Go modules, not smart contracts, but they are the audited targets. The audit date is explicitly given as 'March 15, 2024' on the cover page.
- [21154] Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf — matched: Scope explicitly lists packages/contracts-bedrock/contracts/L1/ and L2/ directories. Additional contracts referenced in findings are included.
- [21155] Mantle Op-Geth Audit Final Report (March 2024).pdf — no match: The scope section lists only file paths (e.g., core/state_transition.go) but no explicit contract names. The report audits an op-geth repository (Go code), not smart contracts. No Solidity contract names are identifiable.
- [21156] Mantle V2 Solidity Contracts Audit Report (March 2024).pdf — matched: Extracted all contracts from the Scope section and additional files audited for differences. The audit date is explicitly stated as 'March 15, 2024' on the cover page.
- [21157] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf — no match: The audit report lists five components (op-node, op-batcher, op-proposer, op-chain-ops, op-service) as in scope. These are Go modules, not smart contracts, but they are the audited targets. The audit date is March 15, 2024 from the title.
- [21158] Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf — matched: Extracted contracts from scope section and findings. Date from cover page 'April, 2024' mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mantle_V2_ Secure3 Audit Report.pdf | L1CrossDomainMessenger | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2CrossDomainMessenger | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L1StandardBridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2StandardBridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L1ERC721Bridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2ERC721Bridge | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | OptimismPortal | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2OutputOracle | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | ResourceMetering | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | FeeVault | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | CrossDomainMessenger | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | SafeCall | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Hashing | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Encoding | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Constants | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Types | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Predeploys | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L2ToL1MessagePasser | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | BVM_ETH | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | L1_MNT_ADDRESS | unmatched — not counted | — | Listed in audit scope and referenced in findings | no |
| Mantle_V2_ Secure3 Audit Report.pdf | IOptimismMintableERC721 | unmatched — not counted | — | Referenced in finding MNT-3 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | ERC165Checker | unmatched — not counted | — | Referenced in finding MNT-3 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | Uniswapv3Quoter | unmatched — not counted | — | Referenced in findings MNT-11, MNT-14 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | StateTransition | unmatched — not counted | — | Referenced in findings MNT-9, MNT-24, MNT-46 | no |
| Mantle_V2_ Secure3 Audit Report.pdf | txpool | unmatched — not counted | — | Referenced in findings MNT-15, MNT-16, MNT-34 | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0710fa5252057f0d88274f7aeb308386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BaseFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BVM_ETH | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable2 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable3 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1Block | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1FeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SequencerFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ERC721Bridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | StandardBridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainMessenger | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismMintableERC20 | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Semver | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | FeeVault | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | PortalSender | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemDictator | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | LegacyERC20MNT | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Burn | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Encoding | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Hashing | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Predeploys | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Types | unmatched — not counted | — | audited for differences | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-node | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-batcher | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-proposer | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-chain-ops | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-service | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1CrossDomainMessenger | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | OptimismPortal | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1StandardBridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2StandardBridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ToL1MessagePasser | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2CrossDomainMessenger | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | GasPriceOracle | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2OutputOracle | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1ERC721Bridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ERC721Bridge | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0710fa5252057f0d88274f7aeb308386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | ResourceMetering | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L1/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BVM_ETH | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1Block | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable2 | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable3 | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BaseFeeVault | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1FeeVault | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SequencerFeeVault | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | WETH9 | unmatched — not counted | — | Listed in scope: packages/contracts-bedrock/contracts/L2/ directory | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | DataLayrServiceManager | unmatched — not counted | — | Referenced in findings as on-chain contract emitting events | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0710fa5252057f0d88274f7aeb308386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BaseFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | BVM_ETH | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable2 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainOwnable3 | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1Block | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L1FeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SequencerFeeVault | unmatched — not counted | — | listed in scope | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | ERC721Bridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | StandardBridge | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | CrossDomainMessenger | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | OptimismMintableERC20 | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Semver | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | FeeVault | unmatched — not counted | — | listed as dependency with limited review | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | PortalSender | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | SystemDictator | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | LegacyERC20MNT | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Burn | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Encoding | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Hashing | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Predeploys | unmatched — not counted | — | audited for differences | no |
| Mantle V2 Solidity Contracts Audit Report (March 2024).pdf | Types | unmatched — not counted | — | audited for differences | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-node | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-batcher | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-proposer | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-chain-ops | unmatched — not counted | — | listed in scope | no |
| Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf | op-service | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | OptimismPortal | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2StandardBridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | GasPriceOracle | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SystemConfig | own proxy deployment | SystemConfig (proxy) (selected) `0x427ea0710fa5252057f0d88274f7aeb308386caf` — deployed 2024-03-14 21:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | ResourceMetering | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BVM_ETH | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1Block | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable2 | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | CrossDomainOwnable3 | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BaseFeeVault | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | L1FeeVault | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | SequencerFeeVault | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | WETH9 | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | DepositTx | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | MetaTxSignData | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | StateTransition | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | BatchSubmitter | unmatched — not counted | — | listed in scope and findings | no |
| Sigma_Prime_Mantle_L2_Rollup_V2_Security_Assessment_Report_v2_0.pdf | DataLayrServiceManager | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42` | IONX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6968f3f16c3e64003f02e121cf0d5ccbf5625a42` | Lib_AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31d543e7be1da6efdc2206ef7822879045b9f481` | OPSuccinctL2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b96c878cc334a7d9ea994ec4b6c28bddde00eb2` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 347 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 147 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=2
- Match method counts: unique_name=4

Zero-match audit list:

- [21150] Mantle_V2_ Secure3 Audit Report.pdf
- [21151] Mantle Op-Geth Audit Final Report (March 2024).pdf
- [21153] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf
- [21155] Mantle Op-Geth Audit Final Report (March 2024).pdf
- [21157] Mantle Node, Batcher, Proposer, and Tooling Incremental Final Audit Report (March 2024).pdf

Fork inheritance lineage and inherited audits are included when available.
