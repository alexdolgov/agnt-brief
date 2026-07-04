# Agentic Audit Brief: Arrakis Finance

## Project Overview

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 96.4% below peak)
- Generated: 2026-07-04T14:53:04.158Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, unichain
- Contract surface: 251 unique implementations (573 raw deployments)
- DeFi Llama TVL: $65,967,661.00
- On-chain TVL (included contracts): $68,860.65
- TVL by chain: Ethereum $68,860.65

## Project Description

Liquidity Manager. Structurally: 96 project-authored contract(s) across 6 chain(s); 5 ERC20 tokens, 1 ERC721 NFT, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 20 common project-authored base contract(s) (proxy, ownableuninitialized, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 602; live-surface contracts included: 530 (428 live, 102 unknown).
- Excluded by liveness: 72 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/127 (9.4%)
- Deployed-live implementations: 150 of 251 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/150
- Verified + Unaudited implementations: 136
- Verified by bytecode match: 1
- Unverified implementations: 101
- Unique implementations: 251
- Raw deployments: 573
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $68,860.65
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 1.6% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 11 | 7.3% | 2023-01 |
| unknown | Tier 2 | 6 | 4.0% | 2023-08 |
| Sherlock | Tier 1 | 2 | 1.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArrakisV1RouterStaking | adapter | ethereum | n/a | 2 deployments: ethereum [`0xdd9206...424a74`](./contracts/ethereum-1/0xdd92062adf9f6edf528babe7f04804fe86424a74/); ethereum `0xe9bf34...66b472` | ✅ Audited |
| ArrakisV1RouterStaking | adapter | optimism | n/a | 2 deployments: optimism [`0x9ce88a...0094d5`](./contracts/optimism-10/0x9ce88a56d120300061593ef7ad074a1b710094d5/); optimism `0xc248d6...5b05c2` | ✅ Audited |
| ArrakisV1RouterStaking | adapter | polygon | n/a | 2 deployments: polygon [`0xc73fb1...06df66`](./contracts/polygon-137/0xc73fb100a995b33f9fa181d420f4c8d74506df66/); polygon `0xe92501...0b7472` | ✅ Audited |
| ArrakisV2 | unknown | ethereum | n/a | 10 deployments: ethereum [`0x2f389e...d5cf00`](./contracts/ethereum-1/0x2f389e583f064f94a63b3cca502719f27cd5cf00/); ethereum `0xaf0f96...7b134d`; ethereum `0xb5c3b2...6b09ba`; optimism `0xaf0f96...7b134d`; optimism `0xb5c3b2...6b09ba`; polygon `0x399e3b...cbbd5e`; polygon `0xaf0f96...7b134d`; polygon `0xb5c3b2...6b09ba`; arbitrum `0xaf0f96...7b134d`; arbitrum `0xb5c3b2...6b09ba` | ✅ Audited |
| ArrakisV2Resolver | unknown | ethereum | n/a | 13 deployments: ethereum [`0x4bc385...f905f5`](./contracts/ethereum-1/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); ethereum `0x535c5f...1cc7b8`; ethereum `0x767902...8339c7`; ethereum `0xb11bb8...c1f193`; optimism [`0x4bc385...f905f5`](./contracts/optimism-10/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); optimism `0x535c5f...1cc7b8`; optimism `0xb11bb8...c1f193`; polygon [`0x4bc385...f905f5`](./contracts/polygon-137/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); polygon `0x535c5f...1cc7b8`; polygon `0xb11bb8...c1f193`; arbitrum [`0x4bc385...f905f5`](./contracts/arbitrum-42161/0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5/); arbitrum `0x535c5f...1cc7b8`; arbitrum `0xb11bb8...c1f193` | ✅ Audited |
| GUniFactory | registry | polygon | n/a | 5 deployments: ethereum `0x9a999c...c58f40`; ethereum `0xc97476...065eaf`; ethereum `0xf51726...5772ce`; optimism `0xb9bfd9...195b5d`; polygon [`0x33f054...c15e86`](./contracts/polygon-137/0x33f054051f2cd19fd53eaf33e33f7faad7c15e86/) | ✅ Audited |
| GUniPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x454bb7...49665b`](./contracts/ethereum-1/0x454bb75c7dbca9092981a7d4f641fac02e49665b/); ethereum `0x68c68f...9f94cf`; ethereum `0x6dfc8b...e1b48b`; ethereum `0xb542d5...797369`; ethereum `0xb54613...597d82` | ✅ Audited |
| PALMManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x8e0cfa...b3d511`](./contracts/ethereum-1/0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511/); ethereum `0xa39b17...41aeab`; ethereum `0xf4dc9d...0405dd` | ✅ Audited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x536efd...d14716`](./contracts/ethereum-1/0x536efd4570dca7c980848d10ea8ab7e502d14716/); ethereum `0xc73fb1...06df66` | ✅ Audited |
| Position | unknown | ethereum | n/a | 8 deployments: ethereum [`0x8638fb...e49642`](./contracts/ethereum-1/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); ethereum `0xf7cb77...1faf44`; optimism [`0x8638fb...e49642`](./contracts/optimism-10/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); optimism `0xf7cb77...1faf44`; polygon [`0x8638fb...e49642`](./contracts/polygon-137/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); polygon `0xf7cb77...1faf44`; arbitrum [`0x8638fb...e49642`](./contracts/arbitrum-42161/0x8638fbd429b19249bb3bcf3ec72d07a657e49642/); arbitrum `0xf7cb77...1faf44` | ✅ Audited |
| Underlying | unknown | ethereum | n/a | 14 deployments: ethereum [`0x39b989...3b780a`](./contracts/ethereum-1/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); ethereum `0x3b8d59...bc0988`; ethereum `0x4f3f69...563021`; ethereum `0x92cb4f...7c2bd2`; optimism [`0x39b989...3b780a`](./contracts/optimism-10/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); optimism `0x3b8d59...bc0988`; optimism `0x92cb4f...7c2bd2`; polygon [`0x39b989...3b780a`](./contracts/polygon-137/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); polygon `0x3b8d59...bc0988`; polygon `0x92cb4f...7c2bd2`; polygon `0xfa8726...9bc5cd`; arbitrum [`0x39b989...3b780a`](./contracts/arbitrum-42161/0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a/); arbitrum `0x3b8d59...bc0988`; arbitrum `0x92cb4f...7c2bd2` | ✅ Audited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4974a4...92824f`](./contracts/ethereum-1/0x4974a491f43de6ebcd1b3528aa52383b7692824f/); ethereum `0x83c1ae...f93608` | ✅ Audited |
| Vyper_contract | unknown | polygon | n/a | 4 deployments: polygon [`0x56c5b0...c40275`](./contracts/polygon-137/0x56c5b00bdeb3cb8adf745650599f9adef3c40275/); polygon `0x5aabe8...a64e98`; polygon `0xb76359...f604ba`; polygon `0xe54e04...a5d270` | ✅ Audited |

### ⚠️ Verified + Unaudited (136)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GUniPoolStatic | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x288a17...3da13a`](./contracts/ethereum-1/0x288a17459b5d0ecc401f5ecdc166f447ea3da13a/); ethereum `0xa64269...6b1bcc` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x67092a...87b691`](./contracts/ethereum-1/0x67092ab1c3dac772ff15f823eb48cb63f087b691/); ethereum `0xefe047...263b25` | ⚠️ Unaudited |
| SovereignPool | core_logic | ethereum | n/a | [`0xd9a406...e68202`](./contracts/ethereum-1/0xd9a406dbc1a301b0d2ed5ba0d9398c4debe68202/) | ⚠️ Unaudited |
| ArrakisMetaVaultPublic | core_logic | ethereum | n/a | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x584bd5...d95382`](./contracts/ethereum-1/0x584bd540963d5b084f2a6365b97c7664ded95382/); ethereum `0xe98c7c...074a3d` | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | base | n/a | 2 deployments: base [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/); base `0xd9e51f...adefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | base | n/a | 3 deployments: base [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/); base `0x1a5273...0c33aa`; base `0xe7d57e...2b2f43` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | ethereum | n/a | [`0xea1aff...2db7d9`](./contracts/ethereum-1/0xea1aff9dbffd1580f6b81a3ad3589e66652db7d9/) | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | optimism | n/a | [`0x2845c6...616f09`](./contracts/optimism-10/0x2845c6929d621e32b7596520c8a1e5a37e616f09/) | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | polygon | n/a | [`0x37265a...dc342a`](./contracts/polygon-137/0x37265a834e95d11c36527451c7844ef346dc342a/) | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | ethereum | n/a | 5 deployments: ethereum [`0x820fb8...123982`](./contracts/ethereum-1/0x820fb8127a689327c863de8433278d6181123982/); bsc [`0x820fb8...123982`](./contracts/bsc-56/0x820fb8127a689327c863de8433278d6181123982/); base [`0x820fb8...123982`](./contracts/base-8453/0x820fb8127a689327c863de8433278d6181123982/); plasma [`0x820fb8...123982`](./contracts/plasma-9745/0x820fb8127a689327c863de8433278d6181123982/); arbitrum [`0x820fb8...123982`](./contracts/arbitrum-42161/0x820fb8127a689327c863de8433278d6181123982/) | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/); ethereum `0x9e890d...a073b0`; ethereum `0xdfe90e...bea1ff` | ⚠️ Unaudited |
| ArrakisStandardManager | governance | ethereum | n/a | [`0x2e6e87...733bda`](./contracts/ethereum-1/0x2e6e879648293e939aa68ba4c6c129a1be733bda/) | ⚠️ Unaudited |
| ArrakisV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d91f6...8759b6`](./contracts/ethereum-1/0x1d91f6d917ec51de53a5789c34fff777a58759b6/); ethereum `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x1d91f6...8759b6`](./contracts/optimism-10/0x1d91f6d917ec51de53a5789c34fff777a58759b6/); optimism `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x1d91f6...8759b6`](./contracts/polygon-137/0x1d91f6d917ec51de53a5789c34fff777a58759b6/); polygon `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1d91f6...8759b6`](./contracts/arbitrum-42161/0x1d91f6d917ec51de53a5789c34fff777a58759b6/); arbitrum `0x7f346f...e6df38` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | ethereum | n/a | 4 deployments: ethereum [`0x891e7e...63b8b3`](./contracts/ethereum-1/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/); optimism [`0x891e7e...63b8b3`](./contracts/optimism-10/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/); polygon [`0x891e7e...63b8b3`](./contracts/polygon-137/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/); arbitrum [`0x891e7e...63b8b3`](./contracts/arbitrum-42161/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/) | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x055b6d...273a88`](./contracts/ethereum-1/0x055b6d3919042be29c5f044a55529933e1273a88/); ethereum `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | n/a | 6 deployments: ethereum [`0x0ffa13...2465e0`](./contracts/ethereum-1/0x0ffa13e41d1cf3a22ca01d94d27955c3762465e0/); ethereum `0x26673a...b3b775`; optimism `0x26673a...b3b775`; polygon `0x26673a...b3b775`; polygon `0xb9e521...ce8aaf`; arbitrum `0x26673a...b3b775` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0xecb8ff...6c8288`](./contracts/ethereum-1/0xecb8ffcb2369ef188a082a662f496126f66c8288/); ethereum `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | optimism | n/a | 2 deployments: optimism [`0x055b6d...273a88`](./contracts/optimism-10/0x055b6d3919042be29c5f044a55529933e1273a88/); optimism `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | optimism | n/a | 2 deployments: optimism [`0xecb8ff...6c8288`](./contracts/optimism-10/0xecb8ffcb2369ef188a082a662f496126f66c8288/); optimism `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | polygon | n/a | 2 deployments: polygon [`0x055b6d...273a88`](./contracts/polygon-137/0x055b6d3919042be29c5f044a55529933e1273a88/); polygon `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | polygon | n/a | 2 deployments: polygon [`0x68f51d...a4c58b`](./contracts/polygon-137/0x68f51d2aeb485ca3a65a7ff54e9266dd5ea4c58b/); polygon `0x8d1c48...c513f1` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | polygon | n/a | 2 deployments: polygon [`0xecb8ff...6c8288`](./contracts/polygon-137/0xecb8ffcb2369ef188a082a662f496126f66c8288/); polygon `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x055b6d...273a88`](./contracts/arbitrum-42161/0x055b6d3919042be29c5f044a55529933e1273a88/); arbitrum `0x453f7d...53857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0xecb8ff...6c8288`](./contracts/arbitrum-42161/0xecb8ffcb2369ef188a082a662f496126f66c8288/); arbitrum `0xf90aaf...be865d` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | n/a | 14 deployments: ethereum [`0x07d2ce...64449f`](./contracts/ethereum-1/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); ethereum `0x89e4be...7f07d6`; ethereum `0xbaffbf...bba929`; ethereum `0xccee73...5c8d9c`; optimism [`0x07d2ce...64449f`](./contracts/optimism-10/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); optimism `0x89e4be...7f07d6`; optimism `0xccee73...5c8d9c`; polygon [`0x07d2ce...64449f`](./contracts/polygon-137/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); polygon `0x7843ea...0749d6`; polygon `0x89e4be...7f07d6`; polygon `0xccee73...5c8d9c`; arbitrum [`0x07d2ce...64449f`](./contracts/arbitrum-42161/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); arbitrum `0x89e4be...7f07d6`; arbitrum `0xccee73...5c8d9c` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6ac8ba...f61b94`](./contracts/ethereum-1/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); ethereum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | optimism | n/a | 2 deployments: optimism [`0x6ac8ba...f61b94`](./contracts/optimism-10/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); optimism `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | polygon | n/a | 2 deployments: polygon [`0x6ac8ba...f61b94`](./contracts/polygon-137/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); polygon `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x6ac8ba...f61b94`](./contracts/arbitrum-42161/0x6ac8bab8b775a03b8b72b2940251432442f61b94/); arbitrum `0xfe3d83...f15e3d` | ⚠️ Unaudited |
| AssetListingGUni | unknown | ethereum | n/a | [`0x67e4ed...507d2d`](./contracts/ethereum-1/0x67e4ede946b3d76c4c505566eb821a1470507d2d/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | n/a | 3 deployments: ethereum [`0x41346d...eee23b`](./contracts/ethereum-1/0x41346d3dd4b4688a388b24dac4014d75faeee23b/); ethereum `0x7e232a...65df00`; ethereum `0xc36681...4b6292` | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | n/a | 4 deployments: ethereum [`0x60c4a1...109014`](./contracts/ethereum-1/0x60c4a1483b2e4d57268078dbb677816d47109014/); ethereum `0xc50811...957358`; ethereum `0xccd64b...93c7d2`; ethereum `0xea3112...483044` | ⚠️ Unaudited |
| CLFactory | registry | base | n/a | 6 deployments: base [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/); base `0x5e7bb1...06809a`; base `0xade65c...89716a`; base `0xc6403d...1cd165`; base `0xec2ffc...9cd4d1`; base `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | 5 deployments: base [`0x11909e...7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/); base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x7dccb0...204b3e`; base `0xc0d208...cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | n/a | 5 deployments: base [`0x385293...f56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/); base `0x3be76d...998529`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | 6 deployments: base [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/); base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xec8e53...315831` | ⚠️ Unaudited |
| CLQuoter | periphery | bsc | n/a | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | ⚠️ Unaudited |
| CreationCodePrivateVault | core_logic | ethereum | n/a | [`0xdd10ee...27923f`](./contracts/ethereum-1/0xdd10ee185960ce42513bbb652cb24028cb27923f/) | ⚠️ Unaudited |
| CreationCodePublicVault | core_logic | ethereum | n/a | [`0xd9fbe9...419ef1`](./contracts/ethereum-1/0xd9fbe90c39d40157c7d25ba4359354b3f5419ef1/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | 2 deployments: base [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/); base `0xe945ab...2a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 4 deployments: base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | base | n/a | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | ⚠️ Unaudited |
| EIP173Proxy | unknown | polygon | n/a | [`0x75830b...116540`](./contracts/polygon-137/0x75830bca247c671a338526f01f47e29384116540/) | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x810f9c...c33c69`](./contracts/ethereum-1/0x810f9c4613f466f02cc7da671a3ba9a7e8c33c69/); ethereum `0xdcdccb...3f7b56` | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xaf0c7d...bd928c`](./contracts/ethereum-1/0xaf0c7de1ea9c654355a10fc3b99a9ffea4bd928c/); ethereum `0xc2d819...129057` | ⚠️ Unaudited |
| GelatoUniV3Router | adapter | ethereum | n/a | [`0x5dacf7...a1e82b`](./contracts/ethereum-1/0x5dacf7b13bea52df7ba5222983b1ffe146a1e82b/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | n/a | 2 deployments: ethereum [`0x6f4411...7ab981`](./contracts/ethereum-1/0x6f441151b478e0d60588f221f1a35bcc3f7ab981/); ethereum `0xfb4e25...97f408` | ⚠️ Unaudited |
| GUniFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x034a66...158f9c`](./contracts/ethereum-1/0x034a6626eec82e14ac5b0130f04f85a2ea158f9c/); ethereum `0x075d37...de7051` | ⚠️ Unaudited |
| GUniOracle | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x399e3b...cbbd5e`](./contracts/ethereum-1/0x399e3bb2bbd49c570aa6edc6ac390e0d0acbbd5e/); ethereum `0x50f614...069f6b`; ethereum `0x7843ea...0749d6` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5780bb...9e04a0`](./contracts/ethereum-1/0x5780bb3a9f579dc181b5fe00d8f56224dd9e04a0/); ethereum `0x9db7be...a590d5` | ⚠️ Unaudited |
| GUniResolver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b01f3...ede976`](./contracts/ethereum-1/0x3b01f3534c9505fe8e7cf42794a545a0d2ede976/); ethereum `0xc8b920...b3dc89` | ⚠️ Unaudited |
| GUniResolver02 | unknown | ethereum | n/a | [`0x72c321...e39ee5`](./contracts/ethereum-1/0x72c321acf29f2b4ccd0cd0d17f42d4e6a2e39ee5/) | ⚠️ Unaudited |
| GUniRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x513e0a...a2a03d`](./contracts/ethereum-1/0x513e0a261af2d33b46f98b81fed547608fa2a03d/); ethereum `0x9de3f4...927f6a` | ⚠️ Unaudited |
| GUniRouter | adapter | ethereum | n/a | [`0x8ca6fa...5007a7`](./contracts/ethereum-1/0x8ca6fa325bc32f86a12cc4964edf1f71655007a7/) | ⚠️ Unaudited |
| GUniRouter | adapter | optimism | n/a | 2 deployments: optimism [`0x97551a...110fc1`](./contracts/optimism-10/0x97551ad4c64927ff40f4ccc310d233835a110fc1/); optimism `0xc56f04...5142ba` | ⚠️ Unaudited |
| GUniRouter | adapter | polygon | n/a | 2 deployments: polygon [`0x477e50...3efca0`](./contracts/polygon-137/0x477e509b9d08862baeb8ab69e901ae72b13efca0/); polygon `0xb42de7...fa7811` | ⚠️ Unaudited |
| GUniRouterStaking | adapter | polygon | n/a | 2 deployments: polygon [`0x6be877...7fac63`](./contracts/polygon-137/0x6be877dd7136d8864a56a87a577fcfb3ca7fac63/); polygon `0x9c3c16...87ca7f` | ⚠️ Unaudited |
| HOT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x326999...62132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/); ethereum `0xf23785...c20cde` | ⚠️ Unaudited |
| HOTExecutor | unknown | ethereum | n/a | [`0xc5a947...d10183`](./contracts/ethereum-1/0xc5a947a66a15205ed9cd02c3be24cdf5c1d10183/) | ⚠️ Unaudited |
| HOTOracleWrapper | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xf12679...9356dd`](./contracts/ethereum-1/0xf126798061555cf2778465bb5a001dc8d99356dd/); ethereum `0xf23d83...c4ee80` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x18d1bc...3c7994`](./contracts/ethereum-1/0x18d1bc899a8e9baaadab80f401cb3a6c2b3c7994/); ethereum `0xb378c8...91a2f1`; ethereum `0xc2b92c...9a7174`; ethereum `0xddda52...4dfed0` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x232ea1...9aea2e`](./contracts/optimism-10/0x232ea11b244b1b36d034ba57b15ad514149aea2e/); optimism `0x6aaee1...285b37`; optimism `0x8c99b6...afc501`; optimism `0xd9723f...6e281c` | ⚠️ Unaudited |
| MetaPoolFactory | registry | ethereum | n/a | [`0x8582bf...d7c216`](./contracts/ethereum-1/0x8582bf142be76fef830d23f590a2587f2ad7c216/) | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | ethereum | n/a | [`0xd61407...f9b962`](./contracts/ethereum-1/0xd61407b9b63956cfb61341aafefbd7eda1f9b962/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 4 deployments: base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x393550...5d81ad`; base `0x9574e3...3ada30`; base `0x9951ff...1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | base | n/a | 2 deployments: base [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/); base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | base | n/a | [`0xcd2a7d...65b555`](./contracts/base-8453/0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555/) | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0xe278c1...27a265`](./contracts/ethereum-1/0xe278c1944ba3321c1079abf94961e9ff1127a265/); ethereum `0xf95e09...b2bb0c` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | ethereum | n/a | 3 deployments: ethereum [`0x791d75...779603`](./contracts/ethereum-1/0x791d75f87a701c3f7dffcec1b6094db22c779603/); ethereum `0x87d101...461f6b`; ethereum `0xd2307b...a89317` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 3 deployments: base [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/); base `0x7dd33b...6238d8`; base `0xe702fc...928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xa990c6...b9d55f`](./contracts/base-8453/0xa990c6a764b73bf43cee5bb40339c3322fb9d55f/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | n/a | 5 deployments: base [`0x11b5f9...953814`](./contracts/base-8453/0x11b5f9dff0fb1141715b2d549231ce8e07953814/); base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PALMfeeCollector | unknown | optimism | n/a | 2 deployments: optimism [`0x187dbd...0dede5`](./contracts/optimism-10/0x187dbd46e895dc06dda1840eda6d9b01990dede5/); optimism `0x89cfc2...b51a4c` | ⚠️ Unaudited |
| PALMfeeCollector | unknown | polygon | n/a | 2 deployments: polygon [`0x46736d...3ae104`](./contracts/polygon-137/0x46736dabf8c16e0bd8bf1457c5dc4c6f533ae104/); polygon `0x72a6b6...2edbd2` | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x0a7d53...b3013e`](./contracts/ethereum-1/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); ethereum `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x5b5157...2c8449`](./contracts/ethereum-1/0x5b5157eec5466a926d3979833a16f7f3732c8449/); ethereum `0xf13be5...f1f74c` | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x880d0a...b1c4e8`](./contracts/ethereum-1/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/); ethereum `0xf82069...862a89` | ⚠️ Unaudited |
| PALMManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x8eebba...92856e`](./contracts/ethereum-1/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); ethereum `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | optimism | n/a | 2 deployments: optimism [`0x0a7d53...b3013e`](./contracts/optimism-10/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); optimism `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | optimism | n/a | 2 deployments: optimism [`0x8eebba...92856e`](./contracts/optimism-10/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); optimism `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | polygon | n/a | 2 deployments: polygon [`0x0a7d53...b3013e`](./contracts/polygon-137/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); polygon `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | polygon | n/a | 2 deployments: polygon [`0x8eebba...92856e`](./contracts/polygon-137/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); polygon `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x0a7d53...b3013e`](./contracts/arbitrum-42161/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); arbitrum `0xecf6a0...69c38f` | ⚠️ Unaudited |
| PALMManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x8eebba...92856e`](./contracts/arbitrum-42161/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/); arbitrum `0xf90ec8...b8877e` | ⚠️ Unaudited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x38e6d8...c9f005`](./contracts/ethereum-1/0x38e6d81100c0221b736e143c7cb1e90f2cc9f005/); ethereum `0xb78b61...1c4585` | ⚠️ Unaudited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x50763a...2d2890`](./contracts/ethereum-1/0x50763a665dc24692e25ec8e2c203a79e602d2890/); ethereum `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65b87a...95c515`](./contracts/ethereum-1/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); ethereum `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | optimism | n/a | 2 deployments: optimism [`0x50763a...2d2890`](./contracts/optimism-10/0x50763a665dc24692e25ec8e2c203a79e602d2890/); optimism `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | optimism | n/a | 2 deployments: optimism [`0x65b87a...95c515`](./contracts/optimism-10/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); optimism `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | polygon | n/a | 2 deployments: polygon [`0x50763a...2d2890`](./contracts/polygon-137/0x50763a665dc24692e25ec8e2c203a79e602d2890/); polygon `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | polygon | n/a | 2 deployments: polygon [`0x65b87a...95c515`](./contracts/polygon-137/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); polygon `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x50763a...2d2890`](./contracts/arbitrum-42161/0x50763a665dc24692e25ec8e2c203a79e602d2890/); arbitrum `0xbd39e8...7ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x65b87a...95c515`](./contracts/arbitrum-42161/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/); arbitrum `0xb041f6...fad3ee` | ⚠️ Unaudited |
| PancakeSwapV3MulticallHelper | periphery | base | n/a | [`0xf02961...dbd2ea`](./contracts/base-8453/0xf029611a16e1a8ca6aad83c08d2b017511dbd2ea/) | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/); bsc [`0x49083c...3d4b11`](./contracts/bsc-56/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | bsc | n/a | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | ⚠️ Unaudited |
| PancakeV4Oracle | operational_periphery | bsc | n/a | 7 deployments: bsc [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/); bsc `0x0748dd...7ebb35`; bsc `0x30c552...634a98`; bsc `0x31d00e...cd360d`; bsc `0x81d442...e16bb8`; bsc `0xda26e9...958abf`; bsc `0xf4e067...9e3340` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); ethereum `0xca0e1b...e96a25`; optimism [`0x4cd412...cfab84`](./contracts/optimism-10/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); optimism `0xca0e1b...e96a25`; polygon [`0x4cd412...cfab84`](./contracts/polygon-137/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); polygon `0xca0e1b...e96a25`; arbitrum [`0x4cd412...cfab84`](./contracts/arbitrum-42161/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); arbitrum `0xca0e1b...e96a25` | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | ethereum | n/a | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | ⚠️ Unaudited |
| ProtocolFactory | registry | ethereum | n/a | [`0xf09171...4cd72f`](./contracts/ethereum-1/0xf09171e8f0768ed5fc48e3945e4ac2027d4cd72f/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 29 deployments: ethereum [`0x7d996d...a01daf`](./contracts/ethereum-1/0x7d996d214913c6f2192bd52055468872b9a01daf/); ethereum `0x89dc63...2c9ca0`; ethereum `0xc00e8a...9b7b19`; ethereum `0xd0db41...9c0d8a`; ethereum `0xdd8f35...1518e7`; ethereum `0xdf4433...d8d8dd`; ethereum `0xe1de7b...5b4baf`; ethereum `0xe92501...0b7472`; ethereum `0xec0634...8a6fa7`; optimism `0x89dc63...2c9ca0`; optimism `0xc00e8a...9b7b19`; optimism `0xd0db41...9c0d8a`; optimism `0xdf4433...d8d8dd`; optimism `0xe1de7b...5b4baf`; optimism `0xec0634...8a6fa7`; optimism `0xf48362...2b47b8`; polygon `0x89dc63...2c9ca0`; polygon `0x8ce752...670720`; polygon `0xc00e8a...9b7b19`; polygon `0xd0db41...9c0d8a`; polygon `0xdf4433...d8d8dd`; polygon `0xe1de7b...5b4baf`; polygon `0xec0634...8a6fa7`; arbitrum `0x89dc63...2c9ca0`; arbitrum `0xc00e8a...9b7b19`; arbitrum `0xd0db41...9c0d8a`; arbitrum `0xdf4433...d8d8dd`; arbitrum `0xe1de7b...5b4baf`; arbitrum `0xec0634...8a6fa7` | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 4 deployments: base [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/); base `0x3d4c22...271c6c`; base `0x514c8b...089259`; base `0x919e53...4601fc` | ⚠️ Unaudited |
| Redistributor | operational_periphery | base | n/a | 3 deployments: base [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/); base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| ReserveMath | unknown | ethereum | n/a | [`0xcc5e67...4e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | ethereum | n/a | 3 deployments: ethereum [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/); ethereum `0x8ef4d0...2dd04d`; ethereum `0xa552df...473398` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | ethereum | n/a | [`0xc6c533...9fb265`](./contracts/ethereum-1/0xc6c53369c36d6b4f4a6c195441fe2d33149fb265/) | ⚠️ Unaudited |
| SimpleManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x3522df...c811e1`](./contracts/ethereum-1/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); ethereum `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | optimism | n/a | 2 deployments: optimism [`0x3522df...c811e1`](./contracts/optimism-10/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); optimism `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | polygon | n/a | 2 deployments: polygon [`0x3522df...c811e1`](./contracts/polygon-137/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); polygon `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleManager | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x3522df...c811e1`](./contracts/arbitrum-42161/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); arbitrum `0x64ab6c...d9a9fa` | ⚠️ Unaudited |
| SimpleTimelock | governance | ethereum | n/a | 2 deployments: ethereum [`0x026012...fc6a40`](./contracts/ethereum-1/0x0260125e9951fcc800d17aaed9a9ab5b4bfc6a40/); ethereum `0x579e01...5d1806` | ⚠️ Unaudited |
| SimpleTimelock | governance | polygon | n/a | 2 deployments: polygon [`0xd39977...24bb01`](./contracts/polygon-137/0xd39977d67519b1297e4a3aab0aa684f35624bb01/); polygon `0xe81e18...e12181` | ⚠️ Unaudited |
| SovereignPoolFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x56f0e2...5c17b6`](./contracts/ethereum-1/0x56f0e2c503b32dafbf3bd6482e73c36e7e5c17b6/); ethereum `0xa68d6c...6f9617`; ethereum `0xf57b45...cdaf2f` | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | 2 deployments: base [`0x698cb2...63a92f`](./contracts/base-8453/0x698cb2b6dd822994581fea6ea4fc755d1363a92f/); base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| TempProxyAdmin | governance | polygon | n/a | [`0x880d0a...b1c4e8`](./contracts/polygon-137/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 3 deployments: ethereum [`0x741d42...87e639`](./contracts/ethereum-1/0x741d420ee761fd4bd0b4573c916e30950c87e639/); ethereum `0xaf6f96...c40b7f`; ethereum `0xd3e822...23a60c` | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | ethereum | n/a | [`0x8c0283...ace35e`](./contracts/ethereum-1/0x8c02839babf7788d9d7043614b2f85cdd8ace35e/) | ⚠️ Unaudited |
| UniV4Oracle | operational_periphery | arbitrum | n/a | 2 deployments: ethereum `0xe1ef0c...434f32`; arbitrum [`0x173229...c19ff9`](./contracts/arbitrum-42161/0x173229f540e85376aa180d41928994163ac19ff9/) | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | ethereum | n/a | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6cb442...00be3e`](./contracts/base-8453/0x6cb442acf35158d5eda88fe602221b67b400be3e/) | ⚠️ Unaudited |
| ValantisModulePrivate | unknown | ethereum | n/a | [`0x7e2fc9...9e55bc`](./contracts/ethereum-1/0x7e2fc9b2d37ea3e771b6f2375915b87cca9e55bc/) | ⚠️ Unaudited |
| ValantisModulePublic | unknown | ethereum | n/a | [`0xdef855...0252f1`](./contracts/ethereum-1/0xdef855fd1c110887f53045d42aba3f47840252f1/) | ⚠️ Unaudited |
| Vyper_contract | unknown | optimism | n/a | 14 deployments: optimism [`0x1535ec...846479`](./contracts/optimism-10/0x1535ec8c7477d38066326189f5b1c695c2846479/); optimism `0x212f71...a48741`; optimism `0x24c95f...6e9d0d`; optimism `0x436675...05a210`; optimism `0x499b7c...500ab3`; optimism `0x68f51d...a4c58b`; optimism `0x7e232a...65df00`; optimism `0x8b24d4...bbb0f1`; optimism `0x8d1c48...c513f1`; optimism `0xaf9707...14b847`; optimism `0xbee2b7...2c071e`; optimism `0xc36681...4b6292`; optimism `0xdedd02...e80aa5`; optimism `0xf78daf...43ee6c` | ⚠️ Unaudited |
| Vyper_contract | unknown | optimism | n/a | 20 deployments: optimism [`0x15a065...94fe3f`](./contracts/optimism-10/0x15a065b0ab032541146fa3ca1cb382a22c94fe3f/); optimism `0x1b6a53...e0a8e6`; optimism `0x2b65ed...d84dfb`; optimism `0x310b18...06b4c3`; optimism `0x367f2d...dea853`; optimism `0x48a151...5189b0`; optimism `0x57a2b0...535b48`; optimism `0x62bdb9...36c2a6`; optimism `0x7f3013...1b76be`; optimism `0x8044de...b1569f`; optimism `0x87c7c8...86f0f5`; optimism `0xb556f4...feb971`; optimism `0xb8888e...12a00d`; optimism `0xccd64b...93c7d2`; optimism `0xcd0923...095c91`; optimism `0xd3a3fb...9b2402`; optimism `0xdf50c6...7ce65d`; optimism `0xe140e5...c25196`; optimism `0xe49d19...979c34`; optimism `0xff949c...8b698a` | ⚠️ Unaudited |
| Vyper_contract | unknown | polygon | n/a | 2 deployments: polygon [`0x5780bb...9e04a0`](./contracts/polygon-137/0x5780bb3a9f579dc181b5fe00d8f56224dd9e04a0/); polygon `0x67092a...87b691` | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | ethereum | n/a | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | ⚠️ Unaudited |
| WrappedFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8b4f2f...cf74c2`](./contracts/ethereum-1/0x8b4f2f26077441aaa0a45f957436bc72b7cf74c2/); ethereum `0x99997f...93d662` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UpgradeableBeacon | registry | bsc | n/a | 38 deployments: ethereum `0x143687...627255`; ethereum `0x4cc1bb...5b9468`; ethereum `0x98e373...687bc5`; ethereum `0xdf4975...4b6a38`; ethereum `0xe42a4b...909b72`; ethereum `0xe973cf...b0351b`; ethereum `0xff0474...f47bd9`; optimism `0xf6b2a7...c83dd7`; bsc [`0x00057d...cf6c04`](./contracts/bsc-56/0x00057dbd24e1264e9bf2d63dbe428234ebcf6c04/); bsc `0x205e64...796199`; bsc `0x6028dc...7090c7`; bsc `0x68c0d8...20f07a`; bsc `0x6aba59...8501b7`; bsc `0x741d42...87e639`; bsc `0x902912...8d2c75`; bsc `0xb4da34...05bb5f`; bsc `0xb6f7f6...4fb3ca`; bsc `0xc0b7fa...b987f0`; bsc `0xe137ae...68ce58`; bsc `0xef770d...c2037f`; unichain `0xc16489...a740cc`; base `0x243727...fa6f9b`; base `0x568336...25ac6f`; base `0x618e7d...e59778`; base `0x6b81f1...78df08`; base `0x82c0a1...75067f`; base `0x8b5c39...1cb82f`; base `0x998a52...6a0a55`; base `0xa8c0b4...45342f`; base `0xd7b402...d6b283`; base `0xdf4975...4b6a38`; base `0xe2641d...733bb2`; plasma `0x9a4935...293345`; arbitrum `0x1ec500...bd7327`; arbitrum `0x28a9a4...3cf6cb`; arbitrum `0x75dd57...8534e6`; arbitrum `0x9fe203...78ab6f`; arbitrum `0xf8bf2c...b22a7e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x022a0c...62f556` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0432cd...66f4d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13fcef...f54662` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14e6d6...94e4bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x196e74...fd1c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cf456...6f4406` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2482db...3cc924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29939b...c4a603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x304962...c588ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb789c1...409de0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4ae05...a8f3eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf093f5...496ae5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x413fc8...ed01ab` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x79fc92...c52168` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x586eb5...9d8a4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe2881...0f2a1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc16489...a740cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x4b6fee...6e6f73` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15ef18...acb4e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d6827...5d54a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72155b...36a6f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d4a02...688107` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x800c00...6740a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b24d4...bbb0f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce3be9...4a7296` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9c810...979f83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x022a0c...62f556` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x06419f...66f7e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x122c7c...f25fa7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d0c44...5c6916` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1dddec...be0da4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b1ff6...b9e3dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3025b4...2c3abb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32c75a...02d4d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6aba59...8501b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x741d42...87e639` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ca74d...70dd5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x836553...d7091a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8dd906...d4ea6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fdbe9...1f539d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97d42d...f6e5fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2ecda...b99f26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb789c1...409de0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc13a67...25bb59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8f35...1518e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4db6e...d507f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf23d83...c4ee80` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x010e08...c7dde9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01e595...e104cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04da2c...301355` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e4697...b37ab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f62fc...657e09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x154878...04ec38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21e7bd...2b70b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x248d28...3dbe11` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x312c5b...5106a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x379db4...ab2390` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38b413...9101f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4294bb...093cc3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x450489...54c6e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ab3e1...318e42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b4b51...9b7af1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b6fee...6e6f73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52637f...e4ca9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6028dc...7090c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d5d3...c24f71` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64865e...1479ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x649055...532842` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fea64...600030` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7285b2...6d27fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89255b...9825dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b4f2f...cf74c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ef4d0...2dd04d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x902912...8d2c75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a4935...293345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb0e897...7baef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb259bc...19c565` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbeb59f...5add2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0b7fa...b987f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5a947...d10183` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc8989...6006e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3db92...6df9fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd668a6...410637` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda4d62...261459` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdce48a...00819f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddfdfd...dae0e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde6b49...66766c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe19ae7...ce72ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1a764...3deef4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe25f76...17e885` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4db6e...d507f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe891b9...3aff82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4e067...9e3340` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf54882...4e1151` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb8c9a...36b8d9` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xcc8989...6006e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Arrakis_Audit_Report_Sherlock.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 2 | n/a |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 4 | n/a |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | contract_name | 6 | high |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 4 | n/a |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | contract_name | 2 | n/a |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 2 | n/a |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 2 | n/a |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x67092a...87b691`](./contracts/ethereum-1/0x67092ab1c3dac772ff15f823eb48cb63f087b691/) | GUniPoolStatic | core_logic | $1,140.57 | Verified native implementation with $1,140.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9a406...e68202`](./contracts/ethereum-1/0xd9a406dbc1a301b0d2ed5ba0d9398c4debe68202/) | SovereignPool | core_logic | $377.79 | Verified native implementation with $377.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ArrakisMetaVaultPublic | core_logic | $0.09 | Verified native implementation with $0.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/) | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/) | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x37265a...dc342a`](./contracts/polygon-137/0x37265a834e95d11c36527451c7844ef346dc342a/) | ArrakisFactoryV1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x820fb8...123982`](./contracts/ethereum-1/0x820fb8127a689327c863de8433278d6181123982/) | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/) | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d91f6...8759b6`](./contracts/ethereum-1/0x1d91f6d917ec51de53a5789c34fff777a58759b6/) | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1d91f6...8759b6`](./contracts/polygon-137/0x1d91f6d917ec51de53a5789c34fff777a58759b6/) | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d91f6...8759b6`](./contracts/arbitrum-42161/0x1d91f6d917ec51de53a5789c34fff777a58759b6/) | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x891e7e...63b8b3`](./contracts/ethereum-1/0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3/) | ArrakisV2Beacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ffa13...2465e0`](./contracts/ethereum-1/0x0ffa13e41d1cf3a22ca01d94d27955c3762465e0/) | ArrakisV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d2ce...64449f`](./contracts/ethereum-1/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e4ed...507d2d`](./contracts/ethereum-1/0x67e4ede946b3d76c4c505566eb821a1470507d2d/) | AssetListingGUni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11909e...7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/) | CLGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x385293...f56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/) | CLGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd10ee...27923f`](./contracts/ethereum-1/0xdd10ee185960ce42513bbb652cb24028cb27923f/) | CreationCodePrivateVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9fbe9...419ef1`](./contracts/ethereum-1/0xd9fbe90c39d40157c7d25ba4359354b3f5419ef1/) | CreationCodePublicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5264ee...2a2223`](./contracts/base-8453/0x5264eeeab16037a7a7af15ff69a470af6e2a2223/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | DynamicSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf0c7d...bd928c`](./contracts/ethereum-1/0xaf0c7de1ea9c654355a10fc3b99a9ffea4bd928c/) | GelatoUniV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f4411...7ab981`](./contracts/ethereum-1/0x6f441151b478e0d60588f221f1a35bcc3f7ab981/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034a66...158f9c`](./contracts/ethereum-1/0x034a6626eec82e14ac5b0130f04f85a2ea158f9c/) | GUniFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399e3b...cbbd5e`](./contracts/ethereum-1/0x399e3bb2bbd49c570aa6edc6ac390e0d0acbbd5e/) | GUniOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5780bb...9e04a0`](./contracts/ethereum-1/0x5780bb3a9f579dc181b5fe00d8f56224dd9e04a0/) | GUniPoolStatic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b01f3...ede976`](./contracts/ethereum-1/0x3b01f3534c9505fe8e7cf42794a545a0d2ede976/) | GUniResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72c321...e39ee5`](./contracts/ethereum-1/0x72c321acf29f2b4ccd0cd0d17f42d4e6a2e39ee5/) | GUniResolver02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ca6fa...5007a7`](./contracts/ethereum-1/0x8ca6fa325bc32f86a12cc4964edf1f71655007a7/) | GUniRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12679...9356dd`](./contracts/ethereum-1/0xf126798061555cf2778465bb5a001dc8d99356dd/) | HOTOracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8582bf...d7c216`](./contracts/ethereum-1/0x8582bf142be76fef830d23f590a2587f2ad7c216/) | MetaPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd61407...f9b962`](./contracts/ethereum-1/0xd61407b9b63956cfb61341aafefbd7eda1f9b962/) | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe278c1...27a265`](./contracts/ethereum-1/0xe278c1944ba3321c1079abf94961e9ff1127a265/) | ModulePrivateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x791d75...779603`](./contracts/ethereum-1/0x791d75f87a701c3f7dffcec1b6094db22c779603/) | ModulePublicRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46736d...3ae104`](./contracts/polygon-137/0x46736dabf8c16e0bd8bf1457c5dc4c6f533ae104/) | PALMfeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880d0a...b1c4e8`](./contracts/ethereum-1/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8eebba...92856e`](./contracts/ethereum-1/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8eebba...92856e`](./contracts/optimism-10/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8eebba...92856e`](./contracts/polygon-137/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8eebba...92856e`](./contracts/arbitrum-42161/0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e/) | PALMManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x65b87a...95c515`](./contracts/optimism-10/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65b87a...95c515`](./contracts/polygon-137/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65b87a...95c515`](./contracts/arbitrum-42161/0x65b87a8a6c173d9ffde1f4c1d97187820495c515/) | PALMTerms | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf09171...4cd72f`](./contracts/ethereum-1/0xf09171e8f0768ed5fc48e3945e4ac2027d4cd72f/) | ProtocolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/) | Redistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5e67...4e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ReserveMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/) | RouterSwapExecutor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6c533...9fb265`](./contracts/ethereum-1/0xc6c53369c36d6b4f4a6c195441fe2d33149fb265/) | RouterSwapResolver | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56f0e2...5c17b6`](./contracts/ethereum-1/0x56f0e2c503b32dafbf3bd6482e73c36e7e5c17b6/) | SovereignPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x173229...c19ff9`](./contracts/arbitrum-42161/0x173229f540e85376aa180d41928994163ac19ff9/) | UniV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4f2f...cf74c2`](./contracts/ethereum-1/0x8b4f2f26077441aaa0a45f957436bc72b7cf74c2/) | WrappedFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 17 |
| standard_library | 35 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=16, extraction_exact=6

Zero-match audit list:

- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
