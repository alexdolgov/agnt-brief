# Agentic Audit Brief: Nomiswap

## Project Overview

- Project: Nomiswap (`nomiswap`)
- Website: [https://nomiswap.io](https://nomiswap.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.799Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc
- Contract surface: 83 unique implementations (112 raw deployments)
- DeFi Llama TVL: $1,380,306.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 70 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 26 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 16 common project-authored base contract(s) (authentication, erc20votesupgradeable, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 471; live-surface contracts included: 112 (40 live, 72 unknown).
- Excluded by liveness: 359 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/11 (18.2%)
- Deployed-live implementations: 11 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 83
- Raw deployments: 112
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 18.2% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NomiswapRouter | adapter | bsc | n/a | [`0xd654953d746f0b114d1f85332dc43446ac79413d`](./contracts/bsc-56/0xd654953d746f0b114d1f85332dc43446ac79413d/) | ✅ Audited |
| StakingService2 | unknown | bsc | n/a | 9 deployments: bsc [`0x06781d2a2a52f848ca1ed890847adb326c86dc2c`](./contracts/bsc-56/0x06781d2a2a52f848ca1ed890847adb326c86dc2c/); bsc `0x283567a552aaf8509d616d0f904a18439437ce34`; bsc `0x2b530d7243c126aaa71d70250f03a76322444a7b`; bsc `0x2d8b192ead2f402867323b072d143d44435edd74`; bsc `0x5657563cfdcedda7cd5ea5fa02423c4d7ce96beb`; bsc `0x6d543a9eeab2e765ae795f097c0531bee4b56160`; bsc `0x85e3fa9dd14f9ed7d33f89e918fa7fe1a639933b`; bsc `0xaef7aaa46a90923a08167a25041f4d3be6d7816a`; bsc `0xb475ef5e425d1652a362836d4f8c570e8e765f96` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DoubleSupplyStakingRouter | unknown | bsc | n/a | 3 deployments: bsc [`0x99b674ba03e896d952983908dba8d7b560fb10d5`](./contracts/bsc-56/0x99b674ba03e896d952983908dba8d7b560fb10d5/); bsc `0xd35181cdce436439b6562380844c7572a991fe16`; bsc `0xdd7b0fc7a1a9de6b40220f6443f5d65531cd9994` | ⚠️ Unaudited |
| FarmingHelper | unknown | bsc | n/a | 3 deployments: bsc [`0xdf1e4cb8ee485af5d842829d4926ed408a6cb658`](./contracts/bsc-56/0xdf1e4cb8ee485af5d842829d4926ed408a6cb658/); bsc `0xf787d03ba3fe8a60a5d329b37d2941ef797a891f`; bsc `0xf915038a27eee0e38cf4c978920e945429894ec6` | ⚠️ Unaudited |
| MintSchedule | unknown | bsc | n/a | [`0xc86e74935181acb6de7c9d8307dd4092e35cf4d0`](./contracts/bsc-56/0xc86e74935181acb6de7c9d8307dd4092e35cf4d0/) | ⚠️ Unaudited |
| Nmx | unknown | bsc | n/a | [`0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | ⚠️ Unaudited |
| NomiswapPair | unknown | bsc | n/a | 5 deployments: bsc [`0x13de257cb86a08753df938b6ad30d1a456a863e6`](./contracts/bsc-56/0x13de257cb86a08753df938b6ad30d1a456a863e6/); bsc `0x33edc4c558c4badfe050d79f565632cf910573b6`; bsc `0xa5f2f22d3b4fccf0fee429e6a8acfc376f5afa22`; bsc `0xe2bbf54dc0ccdd0cf6270f2af2f62ff79903bb27`; bsc `0xfc3a2aeff7141d6ce7c2afb2db6a9e676c2e18a7` | ⚠️ Unaudited |
| NomiswapRouter03 | adapter | bsc | n/a | [`0x4ec3432d9443f05022e2ff4e54fc7514be2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | ⚠️ Unaudited |
| NomiswapRouter04 | adapter | bsc | n/a | [`0x13147820401f455e3318db8686958d457ad2e7b0`](./contracts/bsc-56/0x13147820401f455e3318db8686958d457ad2e7b0/) | ⚠️ Unaudited |
| StakingRouter | unknown | bsc | n/a | [`0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc`](./contracts/bsc-56/0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc/) | ⚠️ Unaudited |
| StakingService | unknown | bsc | n/a | 14 deployments: bsc [`0x03868d2e45a9b579cc68b7addd65cf78ddb62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/); bsc `0x26804231a528c894ab6790530b237449a817da6a`; bsc `0x281e60407b095b956a6a5ac98ee217bef3144928`; bsc `0x5c317770bf9a7d7cc88974a97ffa92c209669bfe`; bsc `0x5cd67d65ff07d5be2488e51f1a8c69273d258338`; bsc `0x63a81d936cb14fa3649a4d071608758cffb3bd94`; bsc `0x8326e22a36486ae7d4b85e8dfa732527b962805c`; bsc `0x857083580aed7b5726860937ef030ed8072bc9ab`; bsc `0x9cd2d1a3214c12bb6dbfa7dbc3b0641c26a2f9a6`; bsc `0xa0f2c13e20a11e00acf4e7b47604b24ca8908797`; bsc `0xa937eddfd12930f758788bcc936b4762bde9d54c`; bsc `0xab2f4297e7e31638ebe8362471b3038018a106d8`; bsc `0xd8925c88b94513be760ad88bc10d780d58fa001d`; bsc `0xdbf1b10fe3e05397cd454163f6f1ed0c1181c3b3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01f765939288de61789a91701e34794bb14d7233` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03120010b57d327f09f6847d07cb4c785e8f521a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09f2b3236978a858747879aa0757df1f001febfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a15aa3628cc79d1655731673e72885dcf12fe98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a54c7b93b78b333fad338e9118ae1d6be63f673` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1332b383fdd4de0f132a653f88aac79ff3edff40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13484b2473d7136668c01531e722d7edba273a52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13ba16f5864d9c610ba603af686401f0f113c352` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x153caa0f1f701ad9d9c0ad6d5ac363e94391d4df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18116472d9187d60ff94d801ae8d80c66ebd9f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x213bac20e7016a92ba5179d307c21c99b2431a9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x246c003c9881947ff24f6b9f1d2ff96cc97d1a52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x290180388078e9041ff8405d0ab6284fc4dac2d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x301193f55fd494679a83fbd8a65b382cf4ff335d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32b3835a06bbf2e499b7d5e6fc78f7d2cfa4e3ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a37d227ac046ca0552194fb7740e06a3c7ecf34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x416903fca6f73568edb1175510ed1a4fb97920df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43f9e5f36f72501b28e379ae404c5ee7937b1cff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4890b3049f2920c21f832e34d445a00aae5d22f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bb856d98726c0777ec02b01d6f89b5488c46823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e22392b0b88b979d67a3c03d1b52e7c91d84a7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50d76e9ed70604bc36be6592bb7cf7b49e05dd25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52fb4c8125c97fa814173d17b2e5d7a74cb023cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bf6289accc83dc6e41cbac7e78b2b7c12754fba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c92de4ff5ce4ebb0b0929c2454abc14c8d74c0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61c1699613b39cf07ef1a997ae2e8349d455de94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64b8c2703af6329c7e45a485434a56c4a84e1957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68ae0feb7b132d25f3e03030d204dbc89574e9eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a8de2d455c788c1049600526947202c4d88f78b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c03e841d93cfc43aa5b865e2c081deb3bfebd63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cb7699d7de08feca445cc1a34f337296772c217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x733f830372fe655353964301170d88c7f472ec56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75097dbb994cbbb18deb2f21dbd71fd86d1caf22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7940522f1165016c1025f1debebf0f7e653104cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x804a3cfb5ff49ace7a355c37f4a9a5b981d7cc00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81fee4729d2c93e19532f560bfca3d4468be5a7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83674e7ea740fc73bf4efcc12be32d499a52a081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88c4f7e8558618ed476e44844eff716d0842e7f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c5fec50c8f5a02e0a8068b749771300b914ee82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92e3024a220c5ab3a5d4aba89931c582e77d6cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93133c09e23bf506d6ff4adc6a3e94fcf020260e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93ea70f52b2a7687cfd23f76d0d0ec7492a66eb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a9a2116a5025a2798f7d31ee654efe1b257b382` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad5a901f3967e049744145e3e9bbf2beae34143` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0a3e3581c319646cb4f61c5357f3a62e5e8ec79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa82085d77e8105f635a3df76c1c70acefb5b69c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae6936eaef8fcf6f5754a3c79736a48fe84c2852` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2fb0112692bc182485b89ab7f72facfebb6cdf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb98fc46c4836d66a776b47d73bfa3000e025c60a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba93add0f84a0fade8d50286789312d56a1d9cb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb37387b7f953bd574e06afd8c011ebd568f5bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcc28b936ef107a6e9b8eb682390042b6ea513b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd01d3522b577557c3abab5a4a176c502fd76c21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc15571e06273c1f6a855d2dc319dcac59abe5488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc87c1a281d76c8960be1e8d487a34a655d82db6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc996cf5d764c6a29ef1ccbb9865133f9bbd7c80e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9205ee7d950b7a9d437b5456101e62025502c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce5f73d0341dbc82e4af4ca4f856a6bb487207ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40f100f49a0d282f1f78aaeeeb15efe6a333aa6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd78bbd8ec6a82c0f876c3e379cafe8aecaa14fc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd11aa3edddc393d030521860428937d4a44c4fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd413c7f6b020a200fac6ce442881e6ee844b750` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7e21f1d66f68c54f9fb58c6241ccc73089c6a0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe921023bff5db277210f9c77b4919a9409f00a0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec64fe845136dc7cda0a46e4241d6d77d2671da9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3b96d5bb1498588c0d5ea88f98769f2e86a0ddf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf533479f52a9598cc87cd391b5132058cbc30dea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf690d6e9fc9b898a7fa55f92f7474327c78c035d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6f88928ed7e3833929b03c409294ec8381ce86e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf79e535d995a95797c593fa8e611a1e1143e68fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf97b33d0a866369bdbf19680cac97edc3aa36711` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa2d6df128ce4b7cf8a33063c03239f210871a9c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/nomiswap](https://skynet.certik.com/projects/nomiswap) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x99b674ba03e896d952983908dba8d7b560fb10d5`](./contracts/bsc-56/0x99b674ba03e896d952983908dba8d7b560fb10d5/) | DoubleSupplyStakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdf1e4cb8ee485af5d842829d4926ed408a6cb658`](./contracts/bsc-56/0xdf1e4cb8ee485af5d842829d4926ed408a6cb658/) | FarmingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc86e74935181acb6de7c9d8307dd4092e35cf4d0`](./contracts/bsc-56/0xc86e74935181acb6de7c9d8307dd4092e35cf4d0/) | MintSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65`](./contracts/bsc-56/0xd32d01a43c869edcd1117c640fbdcfcfd97d9d65/) | Nmx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13de257cb86a08753df938b6ad30d1a456a863e6`](./contracts/bsc-56/0x13de257cb86a08753df938b6ad30d1a456a863e6/) | NomiswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ec3432d9443f05022e2ff4e54fc7514be2359e0`](./contracts/bsc-56/0x4ec3432d9443f05022e2ff4e54fc7514be2359e0/) | NomiswapRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13147820401f455e3318db8686958d457ad2e7b0`](./contracts/bsc-56/0x13147820401f455e3318db8686958d457ad2e7b0/) | NomiswapRouter04 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc`](./contracts/bsc-56/0xc2f8f34907c73e3bf509e8f82eb44cb0a7e00cdc/) | StakingRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03868d2e45a9b579cc68b7addd65cf78ddb62a68`](./contracts/bsc-56/0x03868d2e45a9b579cc68b7addd65cf78ddb62a68/) | StakingService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
