# Agentic Audit Brief: sDAI

## Project Overview

- Project: sDAI (`sdai`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.681Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, gnosis
- Contract surface: 77 unique implementations (101 raw deployments)
- DeFi Llama TVL: $66,118,976.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 61 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 6 ERC20 tokens, 1 ERC721 NFT, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 23 common project-authored base contract(s) (upgradeabilityownerstorage, upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 195; live-surface contracts included: 88 (41 live, 47 unknown).
- Excluded by liveness: 107 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/27 (0.0%)
- Deployed-live implementations: 30 of 77 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 77
- Raw deployments: 101
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgaveTreasuryRedeemer | operational_periphery | gnosis | n/a | [`0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457`](./contracts/gnosis-100/0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457/) | ⚠️ Unaudited |
| AgaveTreasuryWithdrawer | operational_periphery | gnosis | n/a | [`0x91ed5609e5b9d6991f024570025c872382890018`](./contracts/gnosis-100/0x91ed5609e5b9d6991f024570025c872382890018/) | ⚠️ Unaudited |
| BridgeInterestReceiver | unknown | gnosis | n/a | 2 deployments: gnosis [`0x17780d40287eb6d9605ec8b324605cf98a625122`](./contracts/gnosis-100/0x17780d40287eb6d9605ec8b324605cf98a625122/); gnosis `0x670daeaf0f1a5e336090504c68179670b5059088` | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | ethereum | n/a | [`0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0`](./contracts/ethereum-1/0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0/) | ⚠️ Unaudited |
| BridgeValidators | unknown | gnosis | n/a | 2 deployments: gnosis [`0x26fc9fc1c98607e1634f87b47e6798d436823299`](./contracts/gnosis-100/0x26fc9fc1c98607e1634f87b47e6798d436823299/); gnosis `0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x42f38ec5a75accec50054671233dfac9c0e7a3f6`](./contracts/ethereum-1/0x42f38ec5a75accec50054671233dfac9c0e7a3f6/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | gnosis | n/a | [`0x7a48dac683da91e4faa5ab13d91ab5fd170875bd`](./contracts/gnosis-100/0x7a48dac683da91e4faa5ab13d91ab5fd170875bd/) | ⚠️ Unaudited |
| HashiManager | unknown | gnosis | n/a | 2 deployments: gnosis [`0x0d3cc0e1934add62415243f22c1b1e3dd33d8776`](./contracts/gnosis-100/0x0d3cc0e1934add62415243f22c1b1e3dd33d8776/); gnosis `0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | ⚠️ Unaudited |
| HashiManager | unknown | gnosis | n/a | 2 deployments: gnosis [`0x5483ebc7522c5e2669a887a7a1edf256b3e4440d`](./contracts/gnosis-100/0x5483ebc7522c5e2669a887a7a1edf256b3e4440d/); gnosis `0x60aa15198a3adfc86ff15b941549a6447b2ddb49` | ⚠️ Unaudited |
| HashiManager | unknown | gnosis | n/a | 2 deployments: gnosis [`0x694beeb84f912d0951e88cfcf76900b7c728b5b5`](./contracts/gnosis-100/0x694beeb84f912d0951e88cfcf76900b7c728b5b5/); gnosis `0x74cacae9801ba4fe0027ed6f58d53797cca7296e` | ⚠️ Unaudited |
| HomeBridgeErcToNative | operational_periphery | gnosis | n/a | 2 deployments: gnosis [`0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6`](./contracts/gnosis-100/0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6/); gnosis `0xe6998b0c03d3cb9ee8c04f266e573c7fa8782846` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | gnosis | n/a | 5 deployments: gnosis [`0x1437f115bd1d206c1c0955ac70debafd964eadfe`](./contracts/gnosis-100/0x1437f115bd1d206c1c0955ac70debafd964eadfe/); gnosis `0x315a8234091150f857d3a6bab3c9d13fe6ba0553`; gnosis `0x39ce830f258798269080927ba9bf35f32648a050`; gnosis `0x65efaf6618405652c400e7d78767d795d2474c47`; gnosis `0xf1dc9497d803b906e43ce91d33575b20218cb26f` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | gnosis | n/a | [`0x4e7dfd59060e2c91495b006617f7e429439304ca`](./contracts/gnosis-100/0x4e7dfd59060e2c91495b006617f7e429439304ca/) | ⚠️ Unaudited |
| SavingsDai | unknown | ethereum | n/a | [`0x83f20f44975d03b1b09e64809b757c47f942beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | ⚠️ Unaudited |
| SavingsXDai | unknown | gnosis | n/a | 2 deployments: gnosis [`0x4ab77f4883d099992c69d417ff8708220da171d1`](./contracts/gnosis-100/0x4ab77f4883d099992c69d417ff8708220da171d1/); gnosis `0xaf204776c7245bf4147c2612bf6e5972ee483701` | ⚠️ Unaudited |
| SavingsXDaiAdapter | adapter | gnosis | n/a | 2 deployments: gnosis [`0xd499b51fcfc66bd31248ef4b28d656d67e591a94`](./contracts/gnosis-100/0xd499b51fcfc66bd31248ef4b28d656d67e591a94/); gnosis `0xfae3a9b87d10e37a81f6e660c38c925f4efd7b9c` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x01ac9005f8446af28b065af87216b85faac5f6e2`](./contracts/gnosis-100/0x01ac9005f8446af28b065af87216b85faac5f6e2/); gnosis `0x248ce8d11c990190642aa4eb34e8af2c832acc13` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x110e2d3d4c94596f5698c753d5cd43221d3ec78b`](./contracts/gnosis-100/0x110e2d3d4c94596f5698c753d5cd43221d3ec78b/); gnosis `0x85822764fe473028c753bc1124c5df6607fcb2f0` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x13f2b819b7165686f36af81d887e1459d19de3fb`](./contracts/gnosis-100/0x13f2b819b7165686f36af81d887e1459d19de3fb/); gnosis `0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x20e5eb701e8d711d419d444814308f8c2243461f`](./contracts/gnosis-100/0x20e5eb701e8d711d419d444814308f8c2243461f/); gnosis `0xd28490e975a49ce009163bb9feb566133ace4ed2` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc`](./contracts/gnosis-100/0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc/); gnosis `0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb`](./contracts/gnosis-100/0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb/); gnosis `0x8e0dbc8b165268943121527639889069c92bc339` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed`](./contracts/gnosis-100/0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed/); gnosis `0xc1593302979e5e8e16e53c3303bf99ffa319d314` | ⚠️ Unaudited |
| StaticATokenLM | unknown | gnosis | n/a | 2 deployments: gnosis [`0xa357efdaf20a1b3498400b029314a826b20ae61e`](./contracts/gnosis-100/0xa357efdaf20a1b3498400b029314a826b20ae61e/); gnosis `0xce02a2fb42d93438e508a32e80555add2fd8daff` | ⚠️ Unaudited |
| Swapper_UserProxyFactory | unknown | gnosis | n/a | 3 deployments: gnosis [`0x0f0a02d56708e01af559f7d80b916c178ca6efa0`](./contracts/gnosis-100/0x0f0a02d56708e01af559f7d80b916c178ca6efa0/); gnosis `0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10`; gnosis `0x456844e967f823df3aa565d16d8ed7d4d99179ff` | ⚠️ Unaudited |
| USDSDepositContract | core_logic | gnosis | n/a | [`0x5c183c8a49aba6e31049997a56d75600e27ff8c9`](./contracts/gnosis-100/0x5c183c8a49aba6e31049997a56d75600e27ff8c9/) | ⚠️ Unaudited |
| WrappedAgTokenFactory | unknown | gnosis | n/a | [`0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2`](./contracts/gnosis-100/0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2/) | ⚠️ Unaudited |
| WrappedAgTokenUpgradeable | unknown | gnosis | n/a | 3 deployments: gnosis [`0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b`](./contracts/gnosis-100/0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b/); gnosis `0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5`; gnosis `0xfc4c44bb2fff803b16d0b421bb9f08ed65b0d716` | ⚠️ Unaudited |
| WXDAI | unknown | gnosis | n/a | [`0xe91d153e0b41518a2ce8dd3d7944fa863463a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | ⚠️ Unaudited |
| XDaiForeignBridge | operational_periphery | ethereum | n/a | [`0x4aa42145aa6ebf72e164c9bbc74fbd3788045016`](./contracts/ethereum-1/0x4aa42145aa6ebf72e164c9bbc74fbd3788045016/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0x02e2e694184955432037856e1785a598f2c6eef5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x071bf5695afeda65c405794c6574ae63ca8b73c3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x17dce52b2f7abe4204011196019276d36cd55c71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x201959d07446095cebbb3c162afd9ff7749437a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2ac1f91872c2a642ea957f6822afa470194f1904` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x35dd0085adea1ae2c1893107b844bfec40b85db6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x37673908230360128162aaf9790c90af9540d42c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x46eb3f515c72de82a03d28fec263a56943cd581c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6a0614a055ae3004117face62572398073fc387a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6c8ae5a91503cf83996be170284bc609ba7beb75` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x88be51f9c26efbf821386ed2c33a95f9a62ecb49` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8b1fcd819828f4df3f3bd7667b502ed6ba15da34` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8d43d510880abca3e8e6fc5b0cd7e469410905b9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8eb7982958d8aa2af98a35b8cda2e6c4e746d250` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9065d67115fcc2d52dc1d0c420f27796186e56a2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x91282467dc9d8f1f19112e6ec48e576c130e7570` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x92157163b57da2fac0c1f563bfcf07fd315f89d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9380d8db2cafbb7c9c2c2a47c96db061fc7f368f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x95d0e869271aa731ebc3f4bf6046636493470b3a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9f1837a88cd992b693c266aa6a4254a8644ae99b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xae898842ee80ffa9c45a4802fabf471f3d50b423` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb69aa1583aeea760fb18e55572cbfefca6188dde` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb6f20b02c6e7e7d4594dc1acd76bb20aaa679725` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbc07ceae5a1d18ad6035b4c904a3b70b6e152f0e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbd56909c5261ad1787a561ba031c9fba7d17ef81` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc1529e13a5842d790da01f778bf23a3677830986` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc66e94d2acaebab0d0314a01666b64b88ababc42` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcf6a209df4c745534c97086e7e4d58ee93fbe689` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd99d9d46af82d7c82913c2a6a21258e829e2f10e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe7728def71d2175bdc8049510ea53026df3861e8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xed1d03f17bddbfbd3e908d9e40fbf95f45473a5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457`](./contracts/gnosis-100/0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457/) | AgaveTreasuryRedeemer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x91ed5609e5b9d6991f024570025c872382890018`](./contracts/gnosis-100/0x91ed5609e5b9d6991f024570025c872382890018/) | AgaveTreasuryWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x17780d40287eb6d9605ec8b324605cf98a625122`](./contracts/gnosis-100/0x17780d40287eb6d9605ec8b324605cf98a625122/) | BridgeInterestReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0`](./contracts/ethereum-1/0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0/) | BridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x26fc9fc1c98607e1634f87b47e6798d436823299`](./contracts/gnosis-100/0x26fc9fc1c98607e1634f87b47e6798d436823299/) | BridgeValidators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0d3cc0e1934add62415243f22c1b1e3dd33d8776`](./contracts/gnosis-100/0x0d3cc0e1934add62415243f22c1b1e3dd33d8776/) | HashiManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x5483ebc7522c5e2669a887a7a1edf256b3e4440d`](./contracts/gnosis-100/0x5483ebc7522c5e2669a887a7a1edf256b3e4440d/) | HashiManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x694beeb84f912d0951e88cfcf76900b7c728b5b5`](./contracts/gnosis-100/0x694beeb84f912d0951e88cfcf76900b7c728b5b5/) | HashiManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6`](./contracts/gnosis-100/0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6/) | HomeBridgeErcToNative | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4e7dfd59060e2c91495b006617f7e429439304ca`](./contracts/gnosis-100/0x4e7dfd59060e2c91495b006617f7e429439304ca/) | LendingPoolConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f20f44975d03b1b09e64809b757c47f942beea`](./contracts/ethereum-1/0x83f20f44975d03b1b09e64809b757c47f942beea/) | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4ab77f4883d099992c69d417ff8708220da171d1`](./contracts/gnosis-100/0x4ab77f4883d099992c69d417ff8708220da171d1/) | SavingsXDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xd499b51fcfc66bd31248ef4b28d656d67e591a94`](./contracts/gnosis-100/0xd499b51fcfc66bd31248ef4b28d656d67e591a94/) | SavingsXDaiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x01ac9005f8446af28b065af87216b85faac5f6e2`](./contracts/gnosis-100/0x01ac9005f8446af28b065af87216b85faac5f6e2/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x110e2d3d4c94596f5698c753d5cd43221d3ec78b`](./contracts/gnosis-100/0x110e2d3d4c94596f5698c753d5cd43221d3ec78b/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x13f2b819b7165686f36af81d887e1459d19de3fb`](./contracts/gnosis-100/0x13f2b819b7165686f36af81d887e1459d19de3fb/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x20e5eb701e8d711d419d444814308f8c2243461f`](./contracts/gnosis-100/0x20e5eb701e8d711d419d444814308f8c2243461f/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc`](./contracts/gnosis-100/0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb`](./contracts/gnosis-100/0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed`](./contracts/gnosis-100/0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xa357efdaf20a1b3498400b029314a826b20ae61e`](./contracts/gnosis-100/0xa357efdaf20a1b3498400b029314a826b20ae61e/) | StaticATokenLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0f0a02d56708e01af559f7d80b916c178ca6efa0`](./contracts/gnosis-100/0x0f0a02d56708e01af559f7d80b916c178ca6efa0/) | Swapper_UserProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x5c183c8a49aba6e31049997a56d75600e27ff8c9`](./contracts/gnosis-100/0x5c183c8a49aba6e31049997a56d75600e27ff8c9/) | USDSDepositContract | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2`](./contracts/gnosis-100/0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2/) | WrappedAgTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b`](./contracts/gnosis-100/0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b/) | WrappedAgTokenUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xe91d153e0b41518a2ce8dd3d7944fa863463a97d`](./contracts/gnosis-100/0xe91d153e0b41518a2ce8dd3d7944fa863463a97d/) | WXDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4aa42145aa6ebf72e164c9bbc74fbd3788045016`](./contracts/ethereum-1/0x4aa42145aa6ebf72e164c9bbc74fbd3788045016/) | XDaiForeignBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
