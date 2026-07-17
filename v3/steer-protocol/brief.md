# Agentic Audit Brief: Steer Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Steer Protocol (`steer-protocol`)
- Website: [https://app.steer.finance](https://app.steer.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, celo, ethereum, fantom, kava, linea, manta-pacific, mantle, metis, mode, moonbeam, optimism, polygon, polygon-zkevm, scroll, sei, sonic, unichain
- Contract surface: 73 unique implementations (120 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $15,600,255.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Steer Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/58
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 73
- Raw deployments: 120
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseSwapMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefecc1ceb7325c269fdb6337208e096f73f76ced` | ⚠️ Unaudited |
| BasexMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3fd4b3bd38ab8bbf3f26bb17aa410222b9965bc` | ⚠️ Unaudited |
| BasexSinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d04a1f5fd79e09b7692badee2846fd0f90dcf24` | ⚠️ Unaudited |
| BasexWhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cb98e1eeef513086b6a724f6b5401031b125649` | ⚠️ Unaudited |
| BasexWhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1578228d5c62e2705aee5ba1debd6d9a68830189` | ⚠️ Unaudited |
| BundleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x806c2240793b3738000fcb62c66bf462764b903f`; base `0xab36d30c1a1c683037bd7aac67f29b2e3ecc6576` | ⚠️ Unaudited |
| BundleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x279228aafd13bb4642abb772a248c78555dc39c4`; arbitrum `0xca19bec25a41443f35eeae03411dce87d8c0edc4` | ⚠️ Unaudited |
| CamelotMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2c286bd8e5d2cba08674acd202b37d9f922026f` | ⚠️ Unaudited |
| CamelotSinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a9e78387c21d88138481da872e1dbaef71078b2` | ⚠️ Unaudited |
| CamelotWhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe868427c366ba8f1037b20faafe7f3da3bfe8e68` | ⚠️ Unaudited |
| CamelotWhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7350b9d93cbb7c5b54ce7a877e76baecd2b12bd` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x66025704d21c154cf1709ca759d4ddb62293b158`; arbitrum `0xb2f009749260ddbefe5e1687895f0a0e411613ea` | ⚠️ Unaudited |
| DynamicJobs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x279228aafd13bb4642abb772a248c78555dc39c4`; base `0x491bf4aca9a475e107cfa4bcdd836648b72c34e5`; arbitrum `0x981c9af8723a8aa5d85338a8bcf35a9710b0075f`; arbitrum `0xb27a61faf33d2f6ad7af8cc2512c3b58901f779b` | ⚠️ Unaudited |
| ERC1155AdminMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x375775c28d16d1eabdf2d991b3b0a3c81990c812`; arbitrum `0xd778a415a3ab81ef27da61218c71a5f31a4d10be` | ⚠️ Unaudited |
| ERC1155MaxSupplyMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x20d7e6d720e8dc3341e32c3375443969a08f4456`; arbitrum `0x792e36c772f6da6280fa43159792f89e7444cf18` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xac4d51669b80d09d8cc5eeff50026c4d1d3290e6`; base `0xd02c0ebedf6a39f427c2583657400414c403f76b` | ⚠️ Unaudited |
| GasVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b41454cb7858b6d0535e61bae9362af0151cc2d`; base `0xc1ecd10398a6d7036ccee1f50551ff169715081c` | ⚠️ Unaudited |
| GasVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x16ba7102271dc83fff2f709691c2b601dad7668e`; arbitrum `0x254d37f5ed7e96fc2d242cb06b17fae1ee9e1ada` | ⚠️ Unaudited |
| GlobalReentrancyLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x147138a3c8ecd229b9306b7b2efc1b261d875079`; arbitrum `0x90eaa68fae4703ff5328f2e86982e77ebc10539a` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa98376572375692455172f6750c67339667974fe` | ⚠️ Unaudited |
| HorizaMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a4ed72731e682ea5f6f24dd1d62b43c52bfb2a5` | ⚠️ Unaudited |
| HorizaSinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bd01b4ece9a81fb93e899d435ce700a1c4fa08a` | ⚠️ Unaudited |
| HorizaWhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d32bddb8128aa2827761f24b06037c21c18e153` | ⚠️ Unaudited |
| HorizaWhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42d1316c1ce4e0f143c12771004afb91a03caf6d` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a7e75715d157736103ec429ff7079994d907472`; base `0xce965b256e8735911b5e569aba4508fd27afde1e` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64833f91df7e9b5b1f35510a7febd213201aa06e` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2`; arbitrum `0xf4de4180829272ae5f69acacf820f4f7d547513b` | ⚠️ Unaudited |
| KimMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8032d063992f4f6a14bc2be69a0d24cb563365de` | ⚠️ Unaudited |
| KinetixMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x364736e86a1982f2ecd20bbaffa86aeacd7eb561` | ⚠️ Unaudited |
| MultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00d0cc8db826da3f68b0f645acc7785f917aaff8` | ⚠️ Unaudited |
| MultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc1ecd10398a6d7036ccee1f50551ff169715081c`; arbitrum `0xe1c56f99a459ed47b629f3d818bcc84826bced66` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2`; base `0xf4de4180829272ae5f69acacf820f4f7d547513b` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2822ee30383eabcba817ab4a7a592f4a194e14b5`; arbitrum `0x38a07152ee64c7067feeba904d72abc9a9da0c77` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0x4655196cbec85a507450f8d8252e38bedbf0e2d5`; base `0xbcf95873ed5397bc0b2e0a35b06c0dd9ac84c8b8`; arbitrum `0x2b4f9ae93516f3a0eecca4c2a8b6a6727692d710`; arbitrum `0x99eca0e5db125900e3a0389f6d3503837e99f59b` | ⚠️ Unaudited |
| QuickSwapIntegralMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x391cf3047db983cab8dd95b16c4e6c3918d72d23` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2ca933639900b88346edb1d1ddf58a752314d566`; arbitrum `0xf71bb63b641031150220f84fa0326f851ecb3d30` | ⚠️ Unaudited |
| SinglePositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b41454cb7858b6d0535e61bae9362af0151cc2d` | ⚠️ Unaudited |
| SingleStakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x811d4e743ef3343de606d9e477592ee54cdf0799` | ⚠️ Unaudited |
| SmartRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3985abe504a085c88621005c484ffed9033c7d79`; base `0xff42cd42d8a5812cb38fb3c0720dfc490912f48b` | ⚠️ Unaudited |
| SmartRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7bb3b13d7ac186cda714fdbfcb1b276252cfaabb` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: base `0x07536e7fbc498bd886d393fb693e71c8c4e45b97`; base `0x6d5a04974ba2cdc3e307135fe5886b8c7c499e9a`; arbitrum `0x004a733aa20ea2caddba6af62bb56aa96dce4922`; arbitrum `0x0635b76fc26c1d65bb2d761ee2fc4652e8bf5ca8`; arbitrum `0x0b619438d1e8b8c205656502de59af2af71c43e0`; arbitrum `0x1e6a358a1721e0d2b84f39fd328fc03a1b6e863b`; arbitrum `0x233918a7119c71f6e17a9ab075980649d6ded41f`; arbitrum `0x25ef108b328cf752f0e0b0169d499db164173763`; arbitrum `0x3338b85fb1607c519962571b67061e02408475bb`; arbitrum `0x3dc57204f2230c8d972653db0205199eb2bd7f38`; arbitrum `0x6519a921d0e6f06524eff5df976abc9a3abf36cf`; arbitrum `0x78fe84c305c8cd7e23186f2740b73915baeadd52`; arbitrum `0xacdc6fc8f84fba26f065489a7bf5837d7cdf546f`; arbitrum `0xb10ab1a1c0e3e9697928f05da842a292310b37f1`; arbitrum `0xc3b5fd52410e9d8a9b0af606f3d8d8e3965f4e4b`; arbitrum `0xff46e1b60dd9de89aa04902d5c3c5ca01f8576a4` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x116dba5dce9ccda828218b7eb46406810632014c`; base `0xa1dd21fbd9e1f0bf28d41f18bdc22326e50c02e9` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30138931beab8ee0233f8a094660c60a4383eb21` | ⚠️ Unaudited |
| SteerPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x16ba7102271dc83fff2f709691c2b601dad7668e` | ⚠️ Unaudited |
| SteerPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x254d37f5ed7e96fc2d242cb06b17fae1ee9e1ada`; base `0xbfd2e0c4cf82d91ec13731e7bc14ac6120cd01f5`; arbitrum `0xab36d30c1a1c683037bd7aac67f29b2e3ecc6576` | ⚠️ Unaudited |
| SteerPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x37fef4504ee86d1469858c166deb5f7a22489ed9`; arbitrum `0x806c2240793b3738000fcb62c66bf462764b903f` | ⚠️ Unaudited |
| StrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x317eedb54711681056f37e10d5de0b55455b476f`; base `0x99eca0e5db125900e3a0389f6d3503837e99f59b` | ⚠️ Unaudited |
| StrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09eb271b444d1db7163c8555919de85b20be7d1d`; arbitrum `0xd964811233b8a0185d3c93664df82136c80d1bb2` | ⚠️ Unaudited |
| ThickMultiPositionLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb77e4c30d92c8b959811e99213625c7b9490b96` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x31e4ee367d4f2685bafcab9566e9c87e60d48983`; arbitrum `0x81a7651262f347c749544f991fbc2793850a2c5e` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x2822ee30383eabcba817ab4a7a592f4a194e14b5` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7760d5cb6366dd1dead394012186202b1834cde5`; base `0xd964811233b8a0185d3c93664df82136c80d1bb2` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x116dba5dce9ccda828218b7eb46406810632014c`; arbitrum `0x9f5b097ad23e2cf4f34e502a3e41d941678877dc` | ⚠️ Unaudited |
| VeloStakedPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62726c1dfad7a13ab11fd61fc9f2e20a972dec54` | ⚠️ Unaudited |
| WhitelistedMultiLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c5c5beb833fd382b04e039f151942dc3d9a60ce` | ⚠️ Unaudited |
| WhitelistedSingleLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdca3251ebe8f85458e8d95813bcb816460e4bef1` | ⚠️ Unaudited |
| WhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x09eb271b444d1db7163c8555919de85b20be7d1d`; arbitrum `0xa1dd21fbd9e1f0bf28d41f18bdc22326e50c02e9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71be4708c86b8afd6aa47929ce073e400b5b7747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9790afec5d23a840bc0597d9f54584057254d190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaad3154a16d3c1375e58b56281e202caa30c854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x122126e397677cfd6476c531416b7cbec74c06c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x122e6df4a18619c0fc7dc99547aa17c285a5abe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x253b89efa5a23b1b0305416973f21f6a11cefab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44379e4f18d589c5696d86a419b9684aa603ca07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x657bb5fd00e6d6bda438988dcaf5b62ef16f6163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d611ee9904cea8650a8d3d35e71273195aaa9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73f478268fe699d8f3d5855639b7789f8cf42261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76fcf46e3eaf5c5d403009c5c8c0e816b69d0c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc113f7e3af88a4cd1f2cccc5c2d11154c881e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b49bb21d2c2638cfddf4b2dc8dbc61dcbce0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe489df86999c0138a55cecc096930f580d192ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfebd2070f187c3adc7296902e9054f022df5c1a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2025/04/Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4](https://omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566](https://omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243](https://omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f](https://omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf — no match: Three contracts explicitly listed in scope table on page 7. Audit date given as 'March, 2025'.
- [11689] omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 — no match: Extracted contract names from scope section and storage incompatibility discussion. Audit date is the latest revision date (May 29th 2024).
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 — no match: Scope section not provided in text; extracted contract names from audit overview and post-audit sections.
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243 — no match: The report text does not contain a clear scope section listing specific contracts or files. The title mentions 'Algebra Strategies' but no individual contract names are provided.
- [11692] omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope' are extracted. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeLPManager | unmatched — not counted | — | listed in scope table | no |
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeLPManagerV2 | unmatched — not counted | — | listed in scope table | no |
| Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf | StrykeSteerLib | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | AlgebraMultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | QuickSwapMultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | QuickSwapSinglePositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | MultiPositionLiquidityManager | unmatched — not counted | — | listed in scope and storage incompatibility discussion | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | StakingSingleRewards | unmatched — not counted | — | mentioned as audited staking implementation | no |
| omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4 | StakingDualRewards | unmatched — not counted | — | mentioned as audited staking implementation | no |
| omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 | SmartRewardDistributor | unmatched — not counted | — | mentioned as audited module | no |
| omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566 | IntegralMultiPositionLiquidityManager | unmatched — not counted | — | mentioned as audited module | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | Beacon | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BeaconManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BundleRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | BaseLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | DynamicJobs | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | GasVault | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InterfaceManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InternalGovernance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | InternalGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | KeeperRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | MultiPositionLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | Orchestrator | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerToken | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | StakingRewards | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerPeriphery | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerGovernance | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | StrategyRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SteerGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | SinglePositionLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | TreasuryVester | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | VaultRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistRegistry | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistedMultiLiquidityManager | unmatched — not counted | — | listed in scope table | no |
| omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f | WhitelistedSingleLiquidityManager | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 35 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf
- [11689] omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243
- [11692] omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f

Fork inheritance lineage and inherited audits are included when available.
