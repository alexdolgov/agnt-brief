# Agentic Audit Brief: Etherex

## Project Overview

- Project: Etherex (`etherex`)
- Website: [https://etherex.finance/](https://etherex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.908Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: linea
- Contract surface: 69 unique implementations (131 raw deployments)
- DeFi Llama TVL: $1,361,034.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 49 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 5 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 7 common project-authored base contract(s) (multicall, peripheryimmutablestate, poolinitializer). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 137; live-surface contracts included: 129 (110 live, 19 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 22/45 (48.9%)
- Deployed-live implementations: 50 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/52
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 69
- Raw deployments: 131
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 22 match-unverified
- Tier 1 coverage: 48.9% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 18 | 34.6% | 2025-10 |
| Code4rena | Tier 1 | 7 | 13.5% | 2024-10 |
| Consensys Diligence | Tier 1 | 6 | 11.5% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessHub | unknown | linea | n/a | 26 deployments: linea [`0x00cc296010664ff909aa90795a919046d1423b67`](./contracts/linea-59144/0x00cc296010664ff909aa90795a919046d1423b67/); linea `0x09aaa525f9c4e5c5e0ac05a6b994d77e21fbea2a`; linea `0x09d128e0a38afc9846a9e7ede7d4b76601fc72a3`; linea `0x0cc5a720004de614ff515d073f362509dd2d666c`; linea `0x0d8ff344dd3fef004813ff7865e528c63de66422`; linea `0x3fd55d05fed2fb9c463b598bc52ab4b5f5d6d071`; linea `0x44f5512a453177c686bfcdef62b94ebfbf22f508`; linea `0x51a2690132cde2b66a3346932465b89ec3e80006`; linea `0x55cab4d2cd21e4fd5abde5667c490b87144b40b1`; linea `0x582f3f017ba12f142edf56310bdcbf95cc031c7a`; linea `0x5aae85c146bca912f1f7fb43ba3aaa54fbda036b`; linea `0x5e2f4d1b9ed30cdad1cff169562b5356f5e4b4e7`; linea `0x6a0673814258a7739241f77540744235321c99c1`; linea `0x7026f9a84b0727ccf310298065010ab3d18dd004`; linea `0x7ac7935df815efe423df95c8a52c35da558c9026`; linea `0x8af8a09161c4d0ee7e25f778a059dd7bbe71b734`; linea `0x8e394fb7e802a780958af4215498efd4875b49e1`; linea `0x93948c03a47b2a812dab7b36c40f982c6b4351ed`; linea `0x967a7a875a7ac07eb30fd9f6e9353dd4c537854c`; linea `0x9ce2fbc74e04c8b294435308838893ff95709346`; linea `0xb6139621e96f000e7a6e44d6d6196eb46d31a7b6`; linea `0xb66d0cd955345c270d5e9162e583bc33849fd40b`; linea `0xbb100bf42997e0d61e89b4a51ef68d93fd008e31`; linea `0xd434fe96a2aa23b0fabb07c1f837ff85c006805e`; linea `0xe345ada88f71c1f8215530c862fc6277b5ddc6bc`; linea `0xe6d0d3b6c26c568983ee0f0b6745c33bfacb5298` | ✅ Audited |
| AccessHub | unknown | linea | n/a | [`0x683035188e3670fda1def2a7aa5742dea28ed5f3`](./contracts/linea-59144/0x683035188e3670fda1def2a7aa5742dea28ed5f3/) | ✅ Audited |
| Etherex | unknown | linea | n/a | 3 deployments: linea [`0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d`](./contracts/linea-59144/0xbe8b8dcbc1e5cda63c667e76d539dbf5d369f11d/); linea `0xefd81eec32b9a8222d1842ec3d99c7532c31e348`; linea `0xf0c89c8104707d2698288da2724b05881e0bd9eb` | ✅ Audited |
| FeeCollector | unknown | linea | n/a | 2 deployments: linea [`0x51a2a0b162d27254e30473b7072d95f4b37f21a1`](./contracts/linea-59144/0x51a2a0b162d27254e30473b7072d95f4b37f21a1/); linea `0x532c15d1803f565ad37b77f5b20d9e3a4254e0f3` | ✅ Audited |
| FeeDistributorFactory | operational_periphery | linea | n/a | 2 deployments: linea [`0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f`](./contracts/linea-59144/0x61c56ad143e364dacbb60fc901f7993e9e6f3f6f/); linea `0xfde48794f3ea7f26cd2b00f078366455b1e6b7bf` | ✅ Audited |
| GaugeV3 | operational_periphery | linea | n/a | 5 deployments: linea [`0x18068c050d237d46310f59f40559bd0c6b3b0b25`](./contracts/linea-59144/0x18068c050d237d46310f59f40559bd0c6b3b0b25/); linea `0x84b4654d0451b697b4764eacfbd4a9fdfa04201b`; linea `0x9270d3ccd5af75dfefcd4a4f79aa2ca8dbf81a74`; linea `0x9d5c0eea4de82aae5b3f71080c65b40806dc9cb4`; linea `0xeba9eba1be848fbcdcb073dd788e8453d1eacb40` | ✅ Audited |
| GaugeV3 | operational_periphery | linea | n/a | [`0x499aed38bdafd972e1cd2926d2b9088547dd8fcb`](./contracts/linea-59144/0x499aed38bdafd972e1cd2926d2b9088547dd8fcb/) | ✅ Audited |
| Minter | operational_periphery | linea | n/a | 4 deployments: linea [`0x0b6d3b42861ee8abfcaac818033694e758ecc3eb`](./contracts/linea-59144/0x0b6d3b42861ee8abfcaac818033694e758ecc3eb/); linea `0x462e26ddf2de188bc75afe74e6a31b2c56d2a966`; linea `0x76da798f9813be02d3635eca40ebd3db04da9f8f`; linea `0xf8396260bdb72b6708b293db3842cdced90b6255` | ✅ Audited |
| NonfungiblePositionManager | governance | linea | n/a | [`0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58`](./contracts/linea-59144/0xa04a9f0a961f8fcc4a94bcf53e676b236cbb2f58/) | ✅ Audited |
| Oracle | operational_periphery | linea | n/a | [`0x389df9430143880ddb13bdd5fd30daf2d57e7d55`](./contracts/linea-59144/0x389df9430143880ddb13bdd5fd30daf2d57e7d55/) | ✅ Audited |
| Position | unknown | linea | n/a | [`0x2832e19221631e7082926e2bb354497613bf9d6f`](./contracts/linea-59144/0x2832e19221631e7082926e2bb354497613bf9d6f/) | ✅ Audited |
| ProtocolActions | unknown | linea | n/a | [`0x34413f3cddafef7db46f92296a7cea444b3140fd`](./contracts/linea-59144/0x34413f3cddafef7db46f92296a7cea444b3140fd/) | ✅ Audited |
| RamsesTreasuryHelper | operational_periphery | linea | n/a | [`0x15325a2ec4bf164d47cf48d5d6a9edda385636a5`](./contracts/linea-59144/0x15325a2ec4bf164d47cf48d5d6a9edda385636a5/) | ✅ Audited |
| RamsesV3Factory | registry | linea | n/a | [`0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1`](./contracts/linea-59144/0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1/) | ✅ Audited |
| RamsesV3Pool | core_logic | linea | n/a | [`0x90e8a5b881d211f418d77ba8978788b62544914b`](./contracts/linea-59144/0x90e8a5b881d211f418d77ba8978788b62544914b/) | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | linea | n/a | [`0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8`](./contracts/linea-59144/0x80dca113b33ce4da3a7aac15c2e62fc6d6c7bec8/) | ✅ Audited |
| RamsesV3PositionManager | governance | linea | n/a | [`0xb56542bf1822c3fea210d920c8ab0fcaabcd1798`](./contracts/linea-59144/0xb56542bf1822c3fea210d920c8ab0fcaabcd1798/) | ✅ Audited |
| REX33 | unknown | linea | n/a | 5 deployments: linea [`0x312b67a8de4291ce2c3628d24fa62eb04f433ec0`](./contracts/linea-59144/0x312b67a8de4291ce2c3628d24fa62eb04f433ec0/); linea `0xbf42f61a1f176c43cb6fca7ea5afb55d59639dff`; linea `0xc4b578ffc2403b3911e233dc939157147f31509c`; linea `0xccfc11f393a3c7f79ad09c5be2f408215ef15749`; linea `0xe4eeb461ad1e4ef8b8ef71a33694ccd84af051c4` | ✅ Audited |
| VoteModule | unknown | linea | n/a | 2 deployments: linea [`0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1`](./contracts/linea-59144/0xedd7cbc9c47547d0b552d5bc2be76135f49c15b1/); linea `0xf70dc8cf16ee9a68249f35c36cd1c1ba9c631ee4` | ✅ Audited |
| Voter | unknown | linea | n/a | 7 deployments: linea [`0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046`](./contracts/linea-59144/0x1dac11c6578c3a6ddffcb3bf1741cf3d11a94046/); linea `0x4961f781f6b9c3e795be0e3e550917291afc7679`; linea `0x5f26a63548f583f2c01669388aeeef5f9506fc19`; linea `0x706e4a3ebe40b017ec568d1fecbf20271df157e1`; linea `0xa0b937aa848877b98a2c2d799ec3fc10fed4f116`; linea `0xade917f16f0aaef80f1ff5939635b18b629d56d1`; linea `0xe8e8e833f59d8e1fbd7caabe0e766f16a22f8468` | ✅ Audited |
| Voter | unknown | linea | n/a | [`0x942117ec0458a8aa08669e94b52001bd43f889c1`](./contracts/linea-59144/0x942117ec0458a8aa08669e94b52001bd43f889c1/) | ✅ Audited |
| XRex | unknown | linea | n/a | 2 deployments: linea [`0x58d034c3c22851e9dc8fc2f07055659cf9146997`](./contracts/linea-59144/0x58d034c3c22851e9dc8fc2f07055659cf9146997/); linea `0xc93b315971a4f260875103f5da84cb1e30f366cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutomatedFeeNotifier | unknown | linea | n/a | 8 deployments: linea [`0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/); linea `0x4bc655bce615312fb703fdc3314e39570e6cb1f3`; linea `0x4dd0c28941e9edcca2ed559d4f15768e55ea2a4c`; linea `0x5ad9ec38ba13e493746a48a2bb7680818db0e48c`; linea `0xb0b55dbc4449fb5bcc127e81e3dece0035af5939`; linea `0xbf074374ec7307596963384f36fd2e514f780d36`; linea `0xd7cb73ffdea0da4d2b3551a30cf75f531a81ac2c`; linea `0xfd29fadd2c1edd0eb222a31d579c7367d7cf80e7` | ⚠️ Unaudited |
| BribeHolder | operational_periphery | linea | n/a | [`0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b`](./contracts/linea-59144/0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b/) | ⚠️ Unaudited |
| FeeDistributor | unknown | linea | n/a | [`0xc2b256f2977b4c7eff6d39e35dbe245efd767b7c`](./contracts/linea-59144/0xc2b256f2977b4c7eff6d39e35dbe245efd767b7c/) | ⚠️ Unaudited |
| FeeLiquidator | operational_periphery | linea | n/a | [`0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b`](./contracts/linea-59144/0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b/) | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | linea | n/a | [`0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | linea | n/a | [`0xd766d9da469c4a7d325b66ffcf33139650c4a200`](./contracts/linea-59144/0xd766d9da469c4a7d325b66ffcf33139650c4a200/) | ⚠️ Unaudited |
| MevModule | unknown | linea | n/a | 2 deployments: linea [`0x614f116c0e64190512d4764b4c2122f9e2703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/); linea `0xdf278799d1b15c6cecc5543c17f4821869088d5b` | ⚠️ Unaudited |
| MevModule | unknown | linea | n/a | [`0x90fc1f74cde75122a17db99c11597bf593b4940d`](./contracts/linea-59144/0x90fc1f74cde75122a17db99c11597bf593b4940d/) | ⚠️ Unaudited |
| MinimalizedFeePusher | unknown | linea | n/a | 2 deployments: linea [`0x1b4e17d4263a7f751d8965ae514293c0461c4efb`](./contracts/linea-59144/0x1b4e17d4263a7f751d8965ae514293c0461c4efb/); linea `0x98af61cfd44b5f5c7f4a79ff3492981a3aeb4a8c` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | linea | n/a | [`0x59037f2c0337a5150c0cd08cb2df684e043712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | linea | n/a | [`0xfc65c6308765ebbb0d87df8b6502674b868453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | ⚠️ Unaudited |
| Pair | unknown | linea | n/a | [`0x8418e91cf8cbf7dd37b6492e23bec75d0f4d81d8`](./contracts/linea-59144/0x8418e91cf8cbf7dd37b6492e23bec75d0f4d81d8/) | ⚠️ Unaudited |
| PairFactory | registry | linea | n/a | [`0xc0b920f6f1d6122b8187c031554dc8194f644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | n/a | 2 deployments: linea [`0x3950d9b43c77cf5e165ee9aa5c59efdc5a542dc3`](./contracts/linea-59144/0x3950d9b43c77cf5e165ee9aa5c59efdc5a542dc3/); linea `0xdc78e9400ba73dad459b6179b06e1e70853d384e` | ⚠️ Unaudited |
| Quoter | periphery | linea | n/a | [`0xb593fa9d853ad89bfcf77c9a22d24936774fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | ⚠️ Unaudited |
| QuoterV2 | periphery | linea | n/a | [`0xe660c95e17884b6c81b01445efc24556f8aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | linea | n/a | 2 deployments: linea [`0x020079c6cb277ec22306a45e7d4eaefd24d3200e`](./contracts/linea-59144/0x020079c6cb277ec22306a45e7d4eaefd24d3200e/); linea `0x0efaaec1b2e11ee89c0a29ebdcde846c8631693b` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | linea | n/a | [`0x4e710feb1b2e784233893af659442e4739272bfb`](./contracts/linea-59144/0x4e710feb1b2e784233893af659442e4739272bfb/) | ⚠️ Unaudited |
| RewardValidator | unknown | linea | n/a | 2 deployments: linea [`0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc`](./contracts/linea-59144/0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc/); linea `0xe576004e25750d9ec8eb493d0a3684948fc0a97c` | ⚠️ Unaudited |
| Router | adapter | linea | n/a | [`0x32db39c56c171b4c96e974ddede8e42498929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | ⚠️ Unaudited |
| SafeL2 | unknown | linea | n/a | [`0xde4b22eb9f9c2c55e72e330c87663b28e9d388f7`](./contracts/linea-59144/0xde4b22eb9f9c2c55e72e330c87663b28e9d388f7/) | ⚠️ Unaudited |
| SafeProxy | unknown | linea | n/a | [`0x007e783be0f271510ef919357466c122fd539cce`](./contracts/linea-59144/0x007e783be0f271510ef919357466c122fd539cce/) | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | [`0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a`](./contracts/linea-59144/0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a/) | ⚠️ Unaudited |
| TickLens | periphery | linea | n/a | [`0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | ⚠️ Unaudited |
| TimeLock | governance | linea | n/a | [`0xf9a15373c36f50e0dea03e80a568f03392d89944`](./contracts/linea-59144/0xf9a15373c36f50e0dea03e80a568f03392d89944/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | n/a | [`0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458`](./contracts/linea-59144/0xf2643190116ed2a9c3cfbd3c489a60d4a51bb458/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | linea | n/a | [`0x1211fb02d3c61fd576e76675ce9cb38230ee5b3e`](./contracts/linea-59144/0x1211fb02d3c61fd576e76675ce9cb38230ee5b3e/) | ⚠️ Unaudited |
| UniversalRouter | adapter | linea | n/a | [`0x85974429677c2a701af470b82f3118e74307826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | ⚠️ Unaudited |
| VeClaim | unknown | linea | n/a | 2 deployments: linea [`0x9dec69a9d329b8431070774e299a54c0eb269cad`](./contracts/linea-59144/0x9dec69a9d329b8431070774e299a54c0eb269cad/); linea `0xce65f3dbf8c98d9b250b3540868c3923bd2d4c6d` | ⚠️ Unaudited |
| Voter | unknown | linea | n/a | 2 deployments: linea [`0x56ebcffb07b86b87d1d344e5c483b18d07dd256f`](./contracts/linea-59144/0x56ebcffb07b86b87d1d344e5c483b18d07dd256f/); linea `0x982c01a16dd46670c1be8cead75699815fcaa125` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | linea | n/a | `0x05733c9d96d67f7a572846be2d7105327fec3289` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x09666eaf650dc52cece84b1bcd2dd78997d239c7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0ed01d983d65a1d624d1942ec268656987750acc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1ddf722c565ed8e9b6918a6bea34e9825a7944b3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x35e755fac2e275629ff17647dcfad50f6bad5a69` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3f91ddca18fc4ece913556012a5567ca013e7ce7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4717509f8e89fa019bfe25191297dc1e19eb3e34` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4f919b2f681add2c0080cfbb1f3dd1ebc5af1415` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7601dfc5c4ccac975e8b72f44f7dc5f8c07497b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x762e6134583f7ca0d0303ef82bda780d6a7ecb16` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x88c9879e18abbd6ec40ee6be215756a442d56756` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x971634201e37854ea0c72fc652e9b1dbd4461ee0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc0cd56e070e25913d631876218609f2191da1c2a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcd73c96e91ad14b4e243e49d5c0eea954e635d61` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd0dad85f058f2299c3dac8a3440cfd02d51c3f5f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf458a2aa188fc043f9b0ef4c729b36f20f7f3d8e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb8561b4d836225d2c82da00a7d4c753e6c4950d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 18 | n/a |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | 6 | n/a |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df`](./contracts/linea-59144/0x2e5c9e4146f57c5dc6dcb88a86bdf5e8087c10df/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b`](./contracts/linea-59144/0xf7a8b3770f661059f4ea0d79ad7fe8d642f9ea9b/) | BribeHolder | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc2b256f2977b4c7eff6d39e35dbe245efd767b7c`](./contracts/linea-59144/0xc2b256f2977b4c7eff6d39e35dbe245efd767b7c/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b`](./contracts/linea-59144/0x3add8307bcc1b6c757cf1d7664b2f37c9bba039b/) | FeeLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7`](./contracts/linea-59144/0x75430c78a65bfb7dcdf89a3f0daa8da36402d6a7/) | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd766d9da469c4a7d325b66ffcf33139650c4a200`](./contracts/linea-59144/0xd766d9da469c4a7d325b66ffcf33139650c4a200/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x614f116c0e64190512d4764b4c2122f9e2703abd`](./contracts/linea-59144/0x614f116c0e64190512d4764b4c2122f9e2703abd/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x90fc1f74cde75122a17db99c11597bf593b4940d`](./contracts/linea-59144/0x90fc1f74cde75122a17db99c11597bf593b4940d/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1b4e17d4263a7f751d8965ae514293c0461c4efb`](./contracts/linea-59144/0x1b4e17d4263a7f751d8965ae514293c0461c4efb/) | MinimalizedFeePusher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x59037f2c0337a5150c0cd08cb2df684e043712a6`](./contracts/linea-59144/0x59037f2c0337a5150c0cd08cb2df684e043712a6/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xfc65c6308765ebbb0d87df8b6502674b868453c4`](./contracts/linea-59144/0xfc65c6308765ebbb0d87df8b6502674b868453c4/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8418e91cf8cbf7dd37b6492e23bec75d0f4d81d8`](./contracts/linea-59144/0x8418e91cf8cbf7dd37b6492e23bec75d0f4d81d8/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc0b920f6f1d6122b8187c031554dc8194f644592`](./contracts/linea-59144/0xc0b920f6f1d6122b8187c031554dc8194f644592/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb593fa9d853ad89bfcf77c9a22d24936774fe335`](./contracts/linea-59144/0xb593fa9d853ad89bfcf77c9a22d24936774fe335/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe660c95e17884b6c81b01445efc24556f8aba037`](./contracts/linea-59144/0xe660c95e17884b6c81b01445efc24556f8aba037/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x020079c6cb277ec22306a45e7d4eaefd24d3200e`](./contracts/linea-59144/0x020079c6cb277ec22306a45e7d4eaefd24d3200e/) | RamsesTreasuryHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4e710feb1b2e784233893af659442e4739272bfb`](./contracts/linea-59144/0x4e710feb1b2e784233893af659442e4739272bfb/) | RamsesV3PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc`](./contracts/linea-59144/0x7930ec744ff2a62c34ac730afd9e7cc462b1e0fc/) | RewardValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x32db39c56c171b4c96e974ddede8e42498929c54`](./contracts/linea-59144/0x32db39c56c171b4c96e974ddede8e42498929c54/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a`](./contracts/linea-59144/0x8be024b5c546b5d45cbb23163e1a4dca8fa5052a/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8`](./contracts/linea-59144/0x432a5219320d4ae3ebf33a84ae9944f655e8e2b8/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf9a15373c36f50e0dea03e80a568f03392d89944`](./contracts/linea-59144/0xf9a15373c36f50e0dea03e80a568f03392d89944/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x85974429677c2a701af470b82f3118e74307826e`](./contracts/linea-59144/0x85974429677c2a701af470b82f3118e74307826e/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9dec69a9d329b8431070774e299a54c0eb269cad`](./contracts/linea-59144/0x9dec69a9d329b8431070774e299a54c0eb269cad/) | VeClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x56ebcffb07b86b87d1d344e5c483b18d07dd256f`](./contracts/linea-59144/0x56ebcffb07b86b87d1d344e5c483b18d07dd256f/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=31

Zero-match audit list:

- [2725] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
