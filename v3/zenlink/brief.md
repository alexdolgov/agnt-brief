# Agentic Audit Brief: Zenlink

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

- Project: Zenlink (`zenlink`)
- Website: [https://zenlink.pro](https://zenlink.pro)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: moonbeam, moonriver
- Contract surface: 255 unique implementations (267 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,304,695.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zenlink. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across moonbeam, moonriver. Structural roles: 10 core, 6 supporting, 4 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: core (10), supporting (6), unclassified (4)
- Contract kinds: contract (20)
- Detected standards: erc20 (2), pausable (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x68bed2c54fd0e6eeb70cfa05723eae7c06805ec5`, chain 1284)
- UnnamedContract (`0x9823eb09c8e368f98c3da2f6174710d88de90eee`, chain 1284)
- UnnamedContract (`0xeb237cf62eda6a179561952840f17a7056d647f6`, chain 1284)
- UnnamedContract (`0xafaff19679ab6baf75ed8098227be189ba47ba0f`, chain 1285)
- Factory (`0xf49255205dfd7933c4d0f25a57d40b1511f92fef`, chain 1284)
- Factory (`0x28eaa01dc747c4e9d37c5ca473e7d167e90f8d38`, chain 1285)
- Factory (`0xf36ae63d89983e3aea8aaad1086c3280eb01438d`, chain 1285)
- Farming (`0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d`, chain 1284)
- Farming (`0xd6708344553cd975189cf45aae2ab3cd749661f4`, chain 1284)
- Farming (`0xf4ec122d32f2117674ce127b72c40506c52a72f8`, chain 1285)
- Migrator (`0xbcb672f571a0fc2a04ce3e71f821855cc624202a`, chain 1284)
- Router (`0x5c93cbf67c74daf14e36002d955ed5c7bd49887a`, chain 1284)
- Router (`0x7a3909c7996efe42d425cd932fc44e3840fcab71`, chain 1284)
- Router (`0x1006fff14e20fcc7d5975d4e81421becfb242fa6`, chain 1285)
- Router (`0xe6fe3db4c5a2e4a9ab3301201b38724e578b35ca`, chain 1285)
- StableSwap (`0x7bde79ad4ae9023ac771f435a1dc6efdf3f434d1`, chain 1285)
- StableSwapRouter (`0xe04b18eff27b55a3bb7e4451c0829daf594843fd`, chain 1285)
- SwapRouterV1 (`0x5711112f7bce2dbbc95cf946db9eef0ca6572242`, chain 1284)
- SwapRouterV1 (`0x2f84b9713a96fb356683de7b44dd2d37658b189d`, chain 1285)
- SwapRouterV1 (`0xfb45b575b66c99e0c8d2639acf237807d4ea1508`, chain 1285)
- ZenlinkToken (`0x3fd9b6c9a24e09f67b7b706d72864aebb439100c`, chain 1284)
- ZenlinkToken (`0x0f47ba9d9bde3442b42175e51d6a367928a1173b`, chain 1285)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 231 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 24 of 255 unique; 231 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 225
- Unique implementations: 255
- Raw deployments: 267
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0x3494764d3be100ba489c8bc5c3438e7629c5e5e5`; moonbeam `0x603ef396029b5e89f9420b4192814aec0664adab` | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3f33f0bc18789346e35688c6b63cf31e95e8fae3` | ⚠️ Unaudited |
| BeamswapV3Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0xa9bbbc8fd1c60063ffc238a91fe6a870f1fe950b`; moonbeam `0xe66104573c182ac01958bc4e34adcb6ce933e8de` | ⚠️ Unaudited |
| DiscountStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0x28874fa76112c694fc7e2f98bbf87e9dbf6ab073`; moonbeam `0x719935fbf7b6870744b53f1544ebb1a4b270bfa5` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263673 | `0x079710316b06bbb2c0ff4befb7d2dac206c716a0` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263684 | `0xf49255205dfd7933c4d0f25a57d40b1511f92fef` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263687 | `0x28eaa01dc747c4e9d37c5ca473e7d167e90f8d38` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263694 | `0xf36ae63d89983e3aea8aaad1086c3280eb01438d` | ⚠️ Unaudited |
| Farming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263680 | `0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d` | ⚠️ Unaudited |
| Farming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263682 | `0xd6708344553cd975189cf45aae2ab3cd749661f4` | ⚠️ Unaudited |
| Farming | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263695 | `0xf4ec122d32f2117674ce127b72c40506c52a72f8` | ⚠️ Unaudited |
| FeeSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8c7d87a2bab7b48c4767983483e339ec0c8785a8` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263681 | `0xbcb672f571a0fc2a04ce3e71f821855cc624202a` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263689 | `0x43581b441e019974e8fcffca0a1032f53e2a87b5` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x959b76b30f12c6ad3f3c59611f5377d44a704208` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2ec9396fb28719dacf460b1501ef7fb412aed501` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-263676 | `0x5c93cbf67c74daf14e36002d955ed5c7bd49887a` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-263678 | `0x7a3909c7996efe42d425cd932fc44e3840fcab71` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonriver | unit-263686 | `0x1006fff14e20fcc7d5975d4e81421becfb242fa6` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | moonriver | unit-263693 | `0xe6fe3db4c5a2e4a9ab3301201b38724e578b35ca` | ⚠️ Unaudited |
| StableSwap | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263690 | `0x7bde79ad4ae9023ac771f435a1dc6efdf3f434d1` | ⚠️ Unaudited |
| StableSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd38a007f60817635163637411353bb1987209827` | ⚠️ Unaudited |
| StableSwapRouter | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263692 | `0xe04b18eff27b55a3bb7e4451c0829daf594843fd` | ⚠️ Unaudited |
| StableSwapStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6dcdda63631201f83c89e459621dac6e244e97f2` | ⚠️ Unaudited |
| Stake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 10 deployments: moonriver `0x166792bdc0a3cabc905cb434ce02ccc10f41ba69`; moonriver `0x2c1294966f581e63428dc0e54bf120515111d70d`; moonriver `0x71aa371b2265f8ec3a49b79a60b86daa1efbd353`; moonriver `0x9a89757639b149a41cba144c5fd77bac629876fb`; moonriver `0xa03bc7f7cf4091dc2886a116dbe728abfd1924a5`; moonriver `0xa34656d3b223af2665ef2c15544ed9efd855ad77`; moonriver `0xa8bb6b5e9022ad843606d87ddf769e30379db055`; moonriver `0xd96a0539e4c89ba73cc8a3a8cc9f0e9ea3db29e3`; moonriver `0xe426c5b8450f15c5d9a7ae8e4823eaa2164cee6c`; moonriver `0xf739d10120a9c3b88865151ab40712f9d81afe75` | ⚠️ Unaudited |
| SwapRouterV1 | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-263675 | `0x5711112f7bce2dbbc95cf946db9eef0ca6572242` | ⚠️ Unaudited |
| SwapRouterV1 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263688 | `0x2f84b9713a96fb356683de7b44dd2d37658b189d` | ⚠️ Unaudited |
| SwapRouterV1 | adapter | project_anchor | own_supporting | 0 | moonriver | unit-263696 | `0xfb45b575b66c99e0c8d2639acf237807d4ea1508` | ⚠️ Unaudited |
| ZenlinkToken | token | project_anchor | own_supporting | 0 | moonbeam | unit-263674 | `0x3fd9b6c9a24e09f67b7b706d72864aebb439100c` | ⚠️ Unaudited |
| ZenlinkToken | token | project_anchor | own_supporting | 0 | moonriver | unit-263685 | `0x0f47ba9d9bde3442b42175e51d6a367928a1173b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (225)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x03742e466f7719966d13f16a881000beb48d3935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0470a61c93687528743cef7002dbd1905f981f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x08a643f7a4c18c99ddc6f096f796224539cd5f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x09c58401cfb944405c67326908f056874300a50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0a52c07adf93fb78bceed7ef59f94a693c5470e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x11bb78198f013fe515b7e2fd3a0eaf14a5136124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x133f8a90214b916bafea3943077f0908fe62fde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x135853e7921ec8d9cafaadd4b9b6c04af7684cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x19dd609db2faac52ee03ac7a1bd817432bfd3de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1ba120a585259602524508b8289c314c3eb5b98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1c5f9bec4a9b5fd85e20073dc419601f1b42aa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1edecb864b9756c888241fadd8f8bd9e2305ff65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x209a10480da693a33e7df39b02228edfb4cf48fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2129347f4d58d8c2dcd5fed3c81346affde59c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2148e0eea290b36ed8ea0224ab2f3987803b84bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x23f0361051d3507b57558db79f8d5db080369285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x26dfc61329b6a2bbab2d13f06ec9b0c5cb2f1abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2b720e4676c8e5699dbf4e934c031193b25ab3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2ce4158de14ad5612ee22c766de68e3902133a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2d9c88e88888543073df11bce50d8fd2e7e076b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2dc678de98ef481a8a7b74f60b9fc8647c95d129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x33bb2ed10bc87a320860574af1dc027f5f248af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x372001884dc0db207bde1b3fd79b8396e928eb7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3892fbe559ab8cc78cfc93c621a576f2fa40063f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x39d40980a0825184b915633cc3147ec9e4698455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3d7adb7dc8c7f5e18c4d43ca2070eb5d87255665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x40b2c5fe065e8448b5f3f63b321859c055e847fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x435a35fc175be0ba097a7bf43128c020ec5bb151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4585ddae104f683a49276c9a08fe91207ad44abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x48ebbfd5cdf230389e47ad5a0cbca353c542dcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x494e1727ea4614e26f6ef933a832c9c9660cb131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4e9ba9695a16d269fd63ec63d4e1b3fbace3a1b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x53b039c5949ff58fe5ed0fcd63b4cbcaa43b0074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5803af9c9f0150d5c6992b3a52cf1053df48af55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5b4bd7bb29809c8f002e6b0e27f84647bf53f255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5c0c437e7451d30a4e8da175435baaeecc5fa3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5d4f244945806b95af75969aa4e8f313bf22baaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5da55ed94de76e82a4355921504a7ecfefa2ef00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5f03c9be7a5e4cffe953e44251bc1dacb1407727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6069797db7af8ff7a2f9a821f728eaa01808cb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x63b5716c5606a6f4230012edb36e0bdfbc7bc097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x65a8e214a023478c3cca5649598365ac47762291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x67bab164d1d3e0ac3e0b10dc3bfff814a6352eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x68610a32d87197b6afc48324dc6ba4222b354165` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263677 | `0x68bed2c54fd0e6eeb70cfa05723eae7c06805ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x69573274171d435cdd0aa1bc8709253d67ac0a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6aea6a4cc9d38badad890a1ade5eeec19c5c02f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6b8437a2d32596ea6f5183e33778f14be86586b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6ee0f9188bbacf227978da1dc77d2d42daf22dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70f63fd6bb6a16033c41375385fcb1d80a65ae68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x71221ba70af76586a522b2545fa92e3f0b13b322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x72e8a754dc6a5d1e90c2c685e6fcdc00c42fb4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x75d10d64f112cca4f82d8f0775c53180ff71aabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x79312044859d552fc205b053099d52dd96f96c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x79a22c8b3e3d29d466ff309692954e10652c2caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a2763b038d9c195c0ffc246127b9e0e4b5bd4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7ad8989699d44d1b9da30cffe82904c108e20db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7bae21fb8408d534adfefcb46371c3576a1d5717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7f36006184f804d047396770f60a778f31b9a590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x832b21fa3aa074ee5328f653d9db147bcb155c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x83da2371ebec4c8b9f9e38ae726f8269c20c67bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x88d200c136e02389c4e3a9166cc9353a37e5bd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x895e754a8052ca95dd579e68185903b4ad65a6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8dab8c49a6fdbd918726a13e549c070590a5a570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x906d16fe6105dc9b3cf94a633327c4961542b5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x944af4fb58bedbce86fb533bd6ddc49c0bca6793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x94cd9fb352fcb00d557050e10ebec0b2984770cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9587426f304ed59d15a8834bf0ba91b1872f3c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x972570f5af7a086c63cb4e927d45c6a2e9827a0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263679 | `0x9823eb09c8e368f98c3da2f6174710d88de90eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x98726d75ddfa5038c077cb2cf7c8fd49fbf31974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9927553354ae0442cd234ab6f88582fa6bc84dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x999a6361057422dba60e7970ad7f0878613c62ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9dd7cdc17292a88437532a78871e30187fef9bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9eaee37bddbb7ad2c2169b3623ba2c0bf0e30774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa1416d2b6a619980191e4d7ce1362de627c27101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa14df7f2a606bdeb8329de80019a3e456601b743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa18200d3676f4dd5cd99b8f3010b17d35b756aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa84baf11184ff65a22adf3ba073dfa7f876bf99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xab4c616dad6b077911f283f90cd08c13c7c4d2e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb29deb315f7090473ee41fb9a7624071c9ed5e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb3c43f5a4ab0a52b180a5350f7f5c47e582cdda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb625244748b34c906940b74129966ed3b3000ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb74b05caf4c91cd23c2aa2e13a3463eebdb79bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb8ae56670ae1a34cbde6ed4bca787ed46f5248a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb9b81c5335d72416430455fc052ec8a2339486ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xba722f7a565cf5a9f43b30ee72072df4565842bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbbbfcedc3c5b378ab4e64f311cdb7a39b4787b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbd5d3b22e47f704aeb77c820d72b6a2c39668c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbd74b165a8f41e08c2ece7e5541d3bad5809bca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc0c08cbd2b343b4af3459b766cd2834c0caa59de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc14cf42e7ad0fd7d414940e1365bae8af23eb231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc1f4bc7a00d2537426736275da6227015ba89c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc550de3c528c4d625e0688eae39d0147c143e968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc5aa91f6c0273c7ede992b3b07f7ff3b32d7207d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc5f0c11a38d28f629489dbc0915f15da0ed7a5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc7633a3d86a4694e566559a1e78c0e05684c0957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc935ca3379bc5aa352d58aaa58a7a70b0019acd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc94464696676731f182c951946a836f64c552309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcd4ff5a7ca1449d2afc06c8154e6402a2d480ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcf9d1c9b17a49adab8bc18bb9ff7c1823317743a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcfd6b617a36da4707fad37e9a15d3c0417301186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd8b45ef81368a7a458344951a6a6e992e36141cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd8e076e2de43b246479691e8bb2d261e2cb324b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd9297bcd22a2a7bb9d8c36b13e548f88ae3b4149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xda6aa190cb595d97f954a1634fede629b8c48962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe43ef4efe369678f48d22dda6f25f01c71ff42b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe4fd20e0c2fbf4d48c0bf3748a9df9e715cbfbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe7c1acab844427b73db06d965d71c14b37368108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe9df4c6c07c860806bb51d29f7a26041ac0b2407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xeaa0995d4c7398bc4ded6929a52c493130f560be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-263683 | `0xeb237cf62eda6a179561952840f17a7056d647f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xed4777785e3021f61b391c01c56361e790fd8b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xede5bdfeb3652435fddf3195280255ee6c3156a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xee1a54332492d54394e747988dbaecfbf1d49795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xeed18d08b79f5245d1e106caf0c69a3836a39d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xeed359e8bb172d487bce5e4d73ff6c81117ac73e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xef48a71a50f31341d5012b433c535cf9e0572d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf4b7d1b2115647b1ab5bc04dd9d74d02610d7009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf6626f6a906dca97c816c06dd32ffec40761de34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf6e1f3e311ff6783e44fa37aacd732270cec8544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf962d4dea2f21eb35e688686370698720fed9afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf9c167ff0fe6d8fcbfde8298e59c72de1feb3679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfb39167fe3b148add082ca62fbe9413cf5fa101f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfb952ef910d4437b554b8bf97e19149cb16068da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xff1dc4a1c3caae633c744132871229a6f4e82e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x008fb9825c52abb0c77c6d3cd7ab5f1ebaae0c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x02d975626d849d3447e8c4462cabede655765e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x049ed253214ba117570ad90a1c3ad169d88384fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0647c36b34081acfb6bf80e2c27685308abd8f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0673aaca29471988c8afb95844ae5f4e5e451334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x08e34b4791c3a3e1cdf35f07ac609cf1cffd21d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c7c68544fcf4ed88451d7b2b324c466ddcf2a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0e7694b1f34c0c7f200a50d556ef12380d3dd4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0fcd5e1be7671c9f15381eb00a16b4a0c4e32c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x140b745d641539ca0d5cec9be612e4e02bcba53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x152a041302cde4c6ba4613decd50d09df6efefe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1c86149c14d82c2dc769be7d6699b5c857fc6f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x227640466739a945485bc96911c5f9f34d8e6840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x22e5284093b422b00ba9b828a058bdf05ddb1e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2425b37f85a3ae86ac45774c1f9fa359bc100d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x256252bd14b6b8c144c1bfba4556bb2950f017f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2a403e1ca4b85ea494aef2885a6df148370f857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2f988baf099a2ce04a841d4d2ecf7659ea08209d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2f9aa3dfd2dc6b68e49747716e5e2b51ba4ae57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3a046ea7fbbe3628f98010af7458fb0962a5b082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3b4895232b4e46c19bf6eec937b51bb8e253d63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3c8127bf7a122b100ad71d061fd5410d416cb718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3e6e965713fefa6baf414194efcb6fb45fd12b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3ebc53b675072fc490db8d1e27f8d7281ad834a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x494b0a3a39ce514ff8cc2ba95a9ccfe6a5b50714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4953e0a926221e70079c56d766b2cc20e4435f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x533bb2c76ff14782954eccf6dd2012d118a8efec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x59b819c2cd7fef6828ceeed9f4715e4b6e08237f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x59cd36393b88140b05caffaf1769e61ffa0e975e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5a63e139905ce2c4fb1c5067c9c7ccbecb86c206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b8c572dccbfe8b5202407ac855462393309253d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5c4c64b9f784fee434c60d64429cc1e3a26b9578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5cf85439b6c66ce270493ed8e2ff389c569c1a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5f95f627ce5986d9d6c5652366fef520057955bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5fa2152993f485ad91af359b6334dc764f966056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x68168ca1719802dce16984b59453620a3d4831b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6a059e1e743ad764dec95b1a90eafe9ac9759f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6b2b20d43411821010c4e54cd3133e8488e62ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6cc6a708b72ead791eeff1128eee34d7f97891c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x758c94bf9d14478812bc52612b71736630041351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7a1e4c4049dec31db94dd07856c984527b02dff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x814e1456b8cd8eba6d9519a2f9367451cb21f453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x898879a9e6d8c50ba6175ce76a57108c100c6d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8a56affe91adc850683a83befdc88c2b01bdc84f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8a7b122d5c67ec00d9bebe771cef6bf84cc1da99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8ff8ebe1182f89eea157bb9194c01325b93c5884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x905b5d85b3e4d2ef70f02d64c7e78ded20bf3f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9d2d0ba3e8800026b8667645260f7f8b28704244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9dd98e8f2f83c072da968da307afb42a81a9b3df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9e91a3e1305da9feee4963d101e23a47023eb0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9f24cf417a0c27eddd9a4d4788f8ab9fcf44ca8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9f53dc9d68c34b4b999808e5a7b268b3b189fdff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9f9b7d8f3adbeebc61e1501c8343f86c428b0342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa2fea70051b15a2da0b06cc2abef912fdaae0839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa4b9afc8e80c0a560e5364da9aaf59fa9dac23d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa6f95cdf64a579c40a455d06f2f225481bdfaaea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa71085453dfbc3c6411bad64d7403c247f57c37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa82d81fd5156f3ae247c994d2222528f8563f0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaa4f1b105192350ba3e14a5c8b53605d2552a27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xad3cad16f13135253b17f6ed2f2288b75a2c181d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-263691 | `0xafaff19679ab6baf75ed8098227be189ba47ba0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb12af34b58f0da7fb9a9a8ffae87adc3ab4421ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb2164303f7c40121140d63e471b3a5566e167dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb3338dfa12aae256f55a4ef30e22d7ea57192d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb3dc69b8d8e83bc0eea9d28b0354419acbce0abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb4a9365fa75e14877d9e6ae996a54b289788cdcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb75e8cccfd7842ca9e283dc3f11d99bb207c9654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb8ac1c83c671bcf6fc8655f37dc9df98a2e3db7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbe39f3bc70adf1ad041cc8a21414460710902b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc0aa3ec158d52d675bb40ba954bc616d93c12d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc180592d59aec11b4fcbdab5dcb2fab9f70e5bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc4cf4bd35db5b3bd1e716145acb6d2945e3445be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc51f97614f8b3e235adbe4c1c9511ad0bddf0ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc55fc9f94088be4c2eb67f5275fef26936406a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc583a28a755de3803303d9ad95ef528d1583c79b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc6d0cd279112ead39506671ceeaf98647900bfc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc6dbebf5eb43bdbaf84bf29659847ba4d3efd62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcd16a4b5b392dbbd24dcd3e20db346a43dae6760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcf75c3b227c018801495fb078ef01a7c8c75e718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd087b3169a1cf992fb29f94d3fff2b083fb07787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd3a5ebab5ce5f90966a83b5f265b7e02c37c2333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd42884d143a03eaa2c69cb136ac0a1264e4075bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd66ffcfcaa575063764d268ac03c69f9954e2169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xda2826196c691cb6154fb8c45a9e9973fe970869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdad38c1574c6669076c6f60510b7b4975ae431ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xddb32b72e4a161af6c15a08b3dd93192c5cb46ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xde1e57c22e50ebdaf57b58538810785bd5d738c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe0ea241056d2a45a71ffb8225cad43a13b1b1c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe1be32e30331cd430e65cb7ac9befd1a801ee05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe1d9feaa00b2a1079fb5c72c53e13df59e0ad6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe39a5c2e4cd612e0893918ad52e5cdd083d812d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe46c07db56a205527384fc0f0866416b5f5b7467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe5e068950e31545dafb42201bba3c3b6067de73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe62a58277cb07d63dcebbedbdf764db23558f86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe80aa4d99cd17fd5d86d064e3bdc7c584560f822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf0b9530341e94cb8b4f73e925ef224b27efbf27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf522cc7368fb256dbcbd8ec70320687fcbc5a6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfaa920b5e4f59aae9ff60877a901f131fdb44bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xffeb5b85918d4cbcb9cf3f748a7ef3e09364078f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 249
- Live contracts: 8
- Unknown liveness contracts: 241
- Source-verified contracts: 30
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=9, exact address book overlap=6, source verified unclassified=15, unverified unclassified=219

Showing first 200 of 249 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | AggregationRouter<br>`0x3494764d3be100ba489c8bc5c3438e7629c5e5e5` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | BaseSplitCodeFactoryContract<br>`0x3f33f0bc18789346e35688c6b63cf31e95e8fae3` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | BeamswapV3Executor<br>`0xa9bbbc8fd1c60063ffc238a91fe6a870f1fe950b` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | DiscountStorage<br>`0x28874fa76112c694fc7e2f98bbf87e9dbf6ab073` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | Factory<br>`0x079710316b06bbb2c0ff4befb7d2dac206c716a0` | project_anchor | unknown | live | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | FeeSettlement<br>`0x8c7d87a2bab7b48c4767983483e339ec0c8785a8` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | ReferralStorage<br>`0x2ec9396fb28719dacf460b1501ef7fb412aed501` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | Migrator<br>`0x43581b441e019974e8fcffca0a1032f53e2a87b5` | project_anchor | unknown | live | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| contamination review | Stake<br>`0x166792bdc0a3cabc905cb434ce02ccc10f41ba69` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| exact address book overlap | Factory<br>`0xf49255205dfd7933c4d0f25a57d40b1511f92fef` | project_anchor | unknown | live | verified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| exact address book overlap | Migrator<br>`0xbcb672f571a0fc2a04ce3e71f821855cc624202a` | project_anchor | unknown | live | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| exact address book overlap | Factory<br>`0x28eaa01dc747c4e9d37c5ca473e7d167e90f8d38` | project_anchor | unknown | live | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| exact address book overlap | Factory<br>`0xf36ae63d89983e3aea8aaad1086c3280eb01438d` | project_anchor | unknown | live | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| exact address book overlap | StableSwapRouter<br>`0xe04b18eff27b55a3bb7e4451c0829daf594843fd` | project_anchor | unknown | live | verified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| exact address book overlap | SwapRouterV1<br>`0x2f84b9713a96fb356683de7b44dd2d37658b189d` | project_anchor | unknown | live | verified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| source verified unclassified | AggregationRouter<br>`0x603ef396029b5e89f9420b4192814aec0664adab` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| source verified unclassified | BeamswapV3Executor<br>`0xe66104573c182ac01958bc4e34adcb6ce933e8de` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| source verified unclassified | DiscountStorage<br>`0x719935fbf7b6870744b53f1544ebb1a4b270bfa5` | non_address_book | unknown | unknown | verified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| source verified unclassified | Multicall2<br>`0x959b76b30f12c6ad3f3c59611f5377d44a704208` | non_address_book | unknown | unknown | verified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| source verified unclassified | StableSwap<br>`0xd38a007f60817635163637411353bb1987209827` | non_address_book | unknown | unknown | verified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| source verified unclassified | StableSwapStorage<br>`0x6dcdda63631201f83c89e459621dac6e244e97f2` | non_address_book | unknown | unknown | verified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| source verified unclassified | Stake<br>`0x2c1294966f581e63428dc0e54bf120515111d70d` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0x71aa371b2265f8ec3a49b79a60b86daa1efbd353` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0x9a89757639b149a41cba144c5fd77bac629876fb` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0xa03bc7f7cf4091dc2886a116dbe728abfd1924a5` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0xa34656d3b223af2665ef2c15544ed9efd855ad77` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0xa8bb6b5e9022ad843606d87ddf769e30379db055` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0xd96a0539e4c89ba73cc8a3a8cc9f0e9ea3db29e3` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0xe426c5b8450f15c5d9a7ae8e4823eaa2164cee6c` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| source verified unclassified | Stake<br>`0xf739d10120a9c3b88865151ab40712f9d81afe75` | non_address_book | unknown | unknown | verified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x03742e466f7719966d13f16a881000beb48d3935` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x0470a61c93687528743cef7002dbd1905f981f61` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x08a643f7a4c18c99ddc6f096f796224539cd5f89` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x09c58401cfb944405c67326908f056874300a50b` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x0a52c07adf93fb78bceed7ef59f94a693c5470e7` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x11bb78198f013fe515b7e2fd3a0eaf14a5136124` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x133f8a90214b916bafea3943077f0908fe62fde7` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x135853e7921ec8d9cafaadd4b9b6c04af7684cb7` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x19dd609db2faac52ee03ac7a1bd817432bfd3de5` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x1ba120a585259602524508b8289c314c3eb5b98e` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x1c5f9bec4a9b5fd85e20073dc419601f1b42aa6a` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x1edecb864b9756c888241fadd8f8bd9e2305ff65` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x209a10480da693a33e7df39b02228edfb4cf48fd` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x2129347f4d58d8c2dcd5fed3c81346affde59c36` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x2148e0eea290b36ed8ea0224ab2f3987803b84bc` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x23f0361051d3507b57558db79f8d5db080369285` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x26dfc61329b6a2bbab2d13f06ec9b0c5cb2f1abe` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x2b720e4676c8e5699dbf4e934c031193b25ab3a9` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x2ce4158de14ad5612ee22c766de68e3902133a10` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x2d9c88e88888543073df11bce50d8fd2e7e076b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x2dc678de98ef481a8a7b74f60b9fc8647c95d129` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x33bb2ed10bc87a320860574af1dc027f5f248af8` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x372001884dc0db207bde1b3fd79b8396e928eb7c` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x3892fbe559ab8cc78cfc93c621a576f2fa40063f` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x39d40980a0825184b915633cc3147ec9e4698455` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x3d7adb7dc8c7f5e18c4d43ca2070eb5d87255665` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x40b2c5fe065e8448b5f3f63b321859c055e847fd` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x435a35fc175be0ba097a7bf43128c020ec5bb151` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x4585ddae104f683a49276c9a08fe91207ad44abd` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x48ebbfd5cdf230389e47ad5a0cbca353c542dcc6` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x494e1727ea4614e26f6ef933a832c9c9660cb131` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x4e9ba9695a16d269fd63ec63d4e1b3fbace3a1b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x53b039c5949ff58fe5ed0fcd63b4cbcaa43b0074` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x5803af9c9f0150d5c6992b3a52cf1053df48af55` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x5b4bd7bb29809c8f002e6b0e27f84647bf53f255` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x5c0c437e7451d30a4e8da175435baaeecc5fa3b9` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x5d4f244945806b95af75969aa4e8f313bf22baaf` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x5da55ed94de76e82a4355921504a7ecfefa2ef00` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x5f03c9be7a5e4cffe953e44251bc1dacb1407727` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x6069797db7af8ff7a2f9a821f728eaa01808cb77` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x63b5716c5606a6f4230012edb36e0bdfbc7bc097` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x65a8e214a023478c3cca5649598365ac47762291` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x67bab164d1d3e0ac3e0b10dc3bfff814a6352eaa` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x68610a32d87197b6afc48324dc6ba4222b354165` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x69573274171d435cdd0aa1bc8709253d67ac0a29` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x6aea6a4cc9d38badad890a1ade5eeec19c5c02f3` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x6b8437a2d32596ea6f5183e33778f14be86586b3` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x6ee0f9188bbacf227978da1dc77d2d42daf22dd9` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x70f63fd6bb6a16033c41375385fcb1d80a65ae68` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x71221ba70af76586a522b2545fa92e3f0b13b322` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x72e8a754dc6a5d1e90c2c685e6fcdc00c42fb4c3` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x75d10d64f112cca4f82d8f0775c53180ff71aabf` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x79312044859d552fc205b053099d52dd96f96c50` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x79a22c8b3e3d29d466ff309692954e10652c2caf` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x7a2763b038d9c195c0ffc246127b9e0e4b5bd4fc` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x7ad8989699d44d1b9da30cffe82904c108e20db0` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x7bae21fb8408d534adfefcb46371c3576a1d5717` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x7f36006184f804d047396770f60a778f31b9a590` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x832b21fa3aa074ee5328f653d9db147bcb155c7a` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x83da2371ebec4c8b9f9e38ae726f8269c20c67bd` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x88d200c136e02389c4e3a9166cc9353a37e5bd28` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x895e754a8052ca95dd579e68185903b4ad65a6f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x8dab8c49a6fdbd918726a13e549c070590a5a570` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x906d16fe6105dc9b3cf94a633327c4961542b5cf` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x944af4fb58bedbce86fb533bd6ddc49c0bca6793` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x94cd9fb352fcb00d557050e10ebec0b2984770cc` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x9587426f304ed59d15a8834bf0ba91b1872f3c24` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x972570f5af7a086c63cb4e927d45c6a2e9827a0b` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x98726d75ddfa5038c077cb2cf7c8fd49fbf31974` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x9927553354ae0442cd234ab6f88582fa6bc84dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x999a6361057422dba60e7970ad7f0878613c62ba` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x9dd7cdc17292a88437532a78871e30187fef9bb5` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0x9eaee37bddbb7ad2c2169b3623ba2c0bf0e30774` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xa1416d2b6a619980191e4d7ce1362de627c27101` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xa14df7f2a606bdeb8329de80019a3e456601b743` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xa18200d3676f4dd5cd99b8f3010b17d35b756aea` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xa84baf11184ff65a22adf3ba073dfa7f876bf99c` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xab4c616dad6b077911f283f90cd08c13c7c4d2e5` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xb29deb315f7090473ee41fb9a7624071c9ed5e7b` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0xb3c43f5a4ab0a52b180a5350f7f5c47e582cdda9` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xb625244748b34c906940b74129966ed3b3000ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xb74b05caf4c91cd23c2aa2e13a3463eebdb79bda` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xb8ae56670ae1a34cbde6ed4bca787ed46f5248a9` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xb9b81c5335d72416430455fc052ec8a2339486ab` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xba722f7a565cf5a9f43b30ee72072df4565842bb` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0xbbbfcedc3c5b378ab4e64f311cdb7a39b4787b68` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xbd5d3b22e47f704aeb77c820d72b6a2c39668c10` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xbd74b165a8f41e08c2ece7e5541d3bad5809bca9` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc0c08cbd2b343b4af3459b766cd2834c0caa59de` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc14cf42e7ad0fd7d414940e1365bae8af23eb231` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc1f4bc7a00d2537426736275da6227015ba89c5b` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc550de3c528c4d625e0688eae39d0147c143e968` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc5aa91f6c0273c7ede992b3b07f7ff3b32d7207d` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xc5f0c11a38d28f629489dbc0915f15da0ed7a5fb` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xc7633a3d86a4694e566559a1e78c0e05684c0957` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc935ca3379bc5aa352d58aaa58a7a70b0019acd0` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xc94464696676731f182c951946a836f64c552309` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xcd4ff5a7ca1449d2afc06c8154e6402a2d480ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xcf9d1c9b17a49adab8bc18bb9ff7c1823317743a` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xcfd6b617a36da4707fad37e9a15d3c0417301186` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xd8b45ef81368a7a458344951a6a6e992e36141cb` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0xd8e076e2de43b246479691e8bb2d261e2cb324b7` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xd9297bcd22a2a7bb9d8c36b13e548f88ae3b4149` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xda6aa190cb595d97f954a1634fede629b8c48962` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xe7c1acab844427b73db06d965d71c14b37368108` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xe9df4c6c07c860806bb51d29f7a26041ac0b2407` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xeaa0995d4c7398bc4ded6929a52c493130f560be` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xed4777785e3021f61b391c01c56361e790fd8b19` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xede5bdfeb3652435fddf3195280255ee6c3156a8` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xee1a54332492d54394e747988dbaecfbf1d49795` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xeed18d08b79f5245d1e106caf0c69a3836a39d16` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xeed359e8bb172d487bce5e4d73ff6c81117ac73e` | non_address_book | unknown | unknown | unverified | n/a | `0xff617c9e13865e19fb29af0f7e3c68452a703e8c` |
| unverified unclassified | UnnamedContract<br>`0xef48a71a50f31341d5012b433c535cf9e0572d87` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xf4b7d1b2115647b1ab5bc04dd9d74d02610d7009` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xf6626f6a906dca97c816c06dd32ffec40761de34` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xf6e1f3e311ff6783e44fa37aacd732270cec8544` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xf962d4dea2f21eb35e688686370698720fed9afb` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xf9c167ff0fe6d8fcbfde8298e59c72de1feb3679` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xfb39167fe3b148add082ca62fbe9413cf5fa101f` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0xfb952ef910d4437b554b8bf97e19149cb16068da` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0xff1dc4a1c3caae633c744132871229a6f4e82e79` | non_address_book | unknown | unknown | unverified | n/a | `0x4da60510480ac2c6768893bc18abbbb7c141f58d` |
| unverified unclassified | UnnamedContract<br>`0x008fb9825c52abb0c77c6d3cd7ab5f1ebaae0c03` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x02d975626d849d3447e8c4462cabede655765e95` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x049ed253214ba117570ad90a1c3ad169d88384fc` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x0647c36b34081acfb6bf80e2c27685308abd8f4d` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x0673aaca29471988c8afb95844ae5f4e5e451334` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x08e34b4791c3a3e1cdf35f07ac609cf1cffd21d8` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x0c7c68544fcf4ed88451d7b2b324c466ddcf2a6e` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x0e7694b1f34c0c7f200a50d556ef12380d3dd4bd` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x0fcd5e1be7671c9f15381eb00a16b4a0c4e32c59` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x140b745d641539ca0d5cec9be612e4e02bcba53a` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x152a041302cde4c6ba4613decd50d09df6efefe3` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x1c86149c14d82c2dc769be7d6699b5c857fc6f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x3c2f97f3cf620d134e22b5b29f888bbf15081e38` |
| unverified unclassified | UnnamedContract<br>`0x227640466739a945485bc96911c5f9f34d8e6840` | non_address_book | unknown | unknown | unverified | n/a | `0x3c2f97f3cf620d134e22b5b29f888bbf15081e38` |
| unverified unclassified | UnnamedContract<br>`0x22e5284093b422b00ba9b828a058bdf05ddb1e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x3c2f97f3cf620d134e22b5b29f888bbf15081e38` |
| unverified unclassified | UnnamedContract<br>`0x2425b37f85a3ae86ac45774c1f9fa359bc100d17` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x256252bd14b6b8c144c1bfba4556bb2950f017f4` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x2a403e1ca4b85ea494aef2885a6df148370f857d` | non_address_book | unknown | unknown | unverified | n/a | `0x3c2f97f3cf620d134e22b5b29f888bbf15081e38` |
| unverified unclassified | UnnamedContract<br>`0x2f988baf099a2ce04a841d4d2ecf7659ea08209d` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x2f9aa3dfd2dc6b68e49747716e5e2b51ba4ae57e` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x3a046ea7fbbe3628f98010af7458fb0962a5b082` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x3b4895232b4e46c19bf6eec937b51bb8e253d63b` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x3c8127bf7a122b100ad71d061fd5410d416cb718` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x3e6e965713fefa6baf414194efcb6fb45fd12b10` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x3ebc53b675072fc490db8d1e27f8d7281ad834a9` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x494b0a3a39ce514ff8cc2ba95a9ccfe6a5b50714` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x4953e0a926221e70079c56d766b2cc20e4435f94` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x533bb2c76ff14782954eccf6dd2012d118a8efec` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x59b819c2cd7fef6828ceeed9f4715e4b6e08237f` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x59cd36393b88140b05caffaf1769e61ffa0e975e` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x5a63e139905ce2c4fb1c5067c9c7ccbecb86c206` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x5b8c572dccbfe8b5202407ac855462393309253d` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x5c4c64b9f784fee434c60d64429cc1e3a26b9578` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x5cf85439b6c66ce270493ed8e2ff389c569c1a33` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x5f95f627ce5986d9d6c5652366fef520057955bc` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x5fa2152993f485ad91af359b6334dc764f966056` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x68168ca1719802dce16984b59453620a3d4831b6` | non_address_book | unknown | unknown | unverified | n/a | `0x3c2f97f3cf620d134e22b5b29f888bbf15081e38` |
| unverified unclassified | UnnamedContract<br>`0x6a059e1e743ad764dec95b1a90eafe9ac9759f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x6b2b20d43411821010c4e54cd3133e8488e62ff5` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x6cc6a708b72ead791eeff1128eee34d7f97891c6` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x758c94bf9d14478812bc52612b71736630041351` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x7a1e4c4049dec31db94dd07856c984527b02dff2` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x814e1456b8cd8eba6d9519a2f9367451cb21f453` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x898879a9e6d8c50ba6175ce76a57108c100c6d16` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |
| unverified unclassified | UnnamedContract<br>`0x8a56affe91adc850683a83befdc88c2b01bdc84f` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x8a7b122d5c67ec00d9bebe771cef6bf84cc1da99` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x8ff8ebe1182f89eea157bb9194c01325b93c5884` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x905b5d85b3e4d2ef70f02d64c7e78ded20bf3f62` | non_address_book | unknown | unknown | unverified | n/a | `0x1c74a73ec0dda983f643925e7c3e7d1965fbe920` |
| unverified unclassified | UnnamedContract<br>`0x9d2d0ba3e8800026b8667645260f7f8b28704244` | non_address_book | unknown | unknown | unverified | n/a | `0x861ae5a125a7b5277f38f12c6c3c4204c178823c` |
| unverified unclassified | UnnamedContract<br>`0x9dd98e8f2f83c072da968da307afb42a81a9b3df` | non_address_book | unknown | unknown | unverified | n/a | `0x4257c5415289f6152750c7678aace08555fee0ea` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Stable-swap_202309291700.pdf](https://beosin.com/audits/Stable-swap_202309291700.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2439] Stable-swap_202309291700.pdf — no match: Scope explicitly lists ./pallets/Stable-swap and ./pallets/stable-asset (only key functions). Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Stable-swap_202309291700.pdf | Stable-swap | unmatched — not counted | — | listed in scope | no |
| Stable-swap_202309291700.pdf | stable-asset | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0x079710316b06bbb2c0ff4befb7d2dac206c716a0` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xf49255205dfd7933c4d0f25a57d40b1511f92fef` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x28eaa01dc747c4e9d37c5ca473e7d167e90f8d38` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xf36ae63d89983e3aea8aaad1086c3280eb01438d` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d` | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xd6708344553cd975189cf45aae2ab3cd749661f4` | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xf4ec122d32f2117674ce127b72c40506c52a72f8` | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xbcb672f571a0fc2a04ce3e71f821855cc624202a` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x43581b441e019974e8fcffca0a1032f53e2a87b5` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x5c93cbf67c74daf14e36002d955ed5c7bd49887a` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x7a3909c7996efe42d425cd932fc44e3840fcab71` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x1006fff14e20fcc7d5975d4e81421becfb242fa6` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xe6fe3db4c5a2e4a9ab3301201b38724e578b35ca` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x7bde79ad4ae9023ac771f435a1dc6efdf3f434d1` | StableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xe04b18eff27b55a3bb7e4451c0829daf594843fd` | StableSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x5711112f7bce2dbbc95cf946db9eef0ca6572242` | SwapRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x2f84b9713a96fb356683de7b44dd2d37658b189d` | SwapRouterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xfb45b575b66c99e0c8d2639acf237807d4ea1508` | SwapRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x3fd9b6c9a24e09f67b7b706d72864aebb439100c` | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x0f47ba9d9bde3442b42175e51d6a367928a1173b` | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 225 |

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

- [2439] Stable-swap_202309291700.pdf

Fork inheritance lineage and inherited audits are included when available.
