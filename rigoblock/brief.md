# Agentic Audit Brief: rigoblock

## Project Overview

- Project: rigoblock (`rigoblock`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:47.033Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, base, bsc, ethereum, optimism, polygon, unichain
- Contract surface: 77 unique implementations (77 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 74 project-authored contract(s) across 7 chain(s); 7 ERC20 tokens, 5 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 19 common project-authored base contract(s) (authorizable, iownable, iauthorizable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Tetu** (`tetu`) in the IDCard_V2_Controller, RouterConfig subsystem.
5 audits inherited from `tetu`, scoped to that subsystem.

Total inherited audits: 5. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 77 (76 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/72 (2.8%)
- Deployed-live implementations: 76 of 77 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/77
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 5 (0 direct, 5 inherited from forked code)
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/tetu/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 2.8% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 2.6% | n/a |
| Immunefi | Tier 1 | 2 | 2.6% | n/a |
| PeckShield | Tier 2 | 2 | 2.6% | n/a |
| unknown | Tier 2 | 2 | 2.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IDCard_V2_Controller | unknown | bsc | n/a | [`0x29c0c6...de4e1a`](./contracts/bsc-56/0x29c0c69c028c5be41a487814aa29ff43f5de4e1a/) | ✅ Audited |
| RouterConfig | unknown | bsc | n/a | [`0x0aa626...3079fa`](./contracts/bsc-56/0x0aa6262af21b85cbe396caf68d59aad8db3079fa/) | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| A0xRouter | unknown | ethereum | n/a | [`0xb4396f...99365b`](./contracts/ethereum-1/0xb4396febcce313669cdff53ba62b7a86a799365b/) | ⚠️ Unaudited |
| AGmxV2 | unknown | arbitrum | n/a | [`0xd72b9f...d0115a`](./contracts/arbitrum-42161/0xd72b9f2453fb3cafc61cbef3cb14483d61d0115a/) | ⚠️ Unaudited |
| AGovernance | unknown | ethereum | n/a | [`0xf59e31...f2a4a5`](./contracts/ethereum-1/0xf59e31f738eef10ca94845b3be78a0a626f2a4a5/) | ⚠️ Unaudited |
| AIntents | unknown | polygon | n/a | [`0x400120...e06820`](./contracts/polygon-137/0x4001208d81ee344b7ea90d59b5e2f25de5e06820/) | ⚠️ Unaudited |
| AMulticall | unknown | unichain | n/a | [`0x1dc90d...51ffc6`](./contracts/unichain-130/0x1dc90d2c0d5312dcbc31be6ccd23b03bf251ffc6/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | bsc | n/a | [`0xae4ff8...54179e`](./contracts/bsc-56/0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | bsc | n/a | [`0x3d473c...7a8e3c`](./contracts/bsc-56/0x3d473c3ef4cd4c909b020f48477a2ee2617a8e3c/) | ⚠️ Unaudited |
| ASelfCustody | unknown | ethereum | n/a | [`0x025434...259304`](./contracts/ethereum-1/0x02543473ebe34c5c5675f3c9d00912d289259304/) | ⚠️ Unaudited |
| AStaking | unknown | optimism | n/a | [`0x21b423...813254`](./contracts/optimism-10/0x21b423ad9488cad08e06c50a5db0f65aaa813254/) | ⚠️ Unaudited |
| AUniswap | unknown | ethereum | n/a | [`0x0dc22c...8970c9`](./contracts/ethereum-1/0x0dc22c3613f91e104a3c0a0c992f5e623e8970c9/) | ⚠️ Unaudited |
| AUniswapRouter | unknown | polygon | n/a | [`0x0103d9...c519e9`](./contracts/polygon-137/0x0103d9e14e9bd3b8054463f95a8d90ca43c519e9/) | ⚠️ Unaudited |
| AUniswapV2 | unknown | ethereum | n/a | [`0x3f473a...c0871b`](./contracts/ethereum-1/0x3f473aba899b1f9fed006c44cc3d89f80cc0871b/) | ⚠️ Unaudited |
| Authority | unknown | ethereum | n/a | [`0x307b26...78cc19`](./contracts/ethereum-1/0x307b265c6ab333b63e739936722cc8e62d78cc19/) | ⚠️ Unaudited |
| BABTAdaptor | unknown | bsc | n/a | [`0x43f043...4969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/) | ⚠️ Unaudited |
| BatchTransfer | unknown | bsc | n/a | [`0xa9d79d...28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x30b622...88bee7`](./contracts/polygon-137/0x30b622609ffab1641b498e9bf1ff102ab288bee7/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| DragoRegistry | unknown | ethereum | n/a | [`0xde6445...58822e`](./contracts/ethereum-1/0xde6445484a8dcd9bf35fc95eb4e3990cc358822e/) | ⚠️ Unaudited |
| EApps | unknown | base | n/a | [`0x6a3a0f...16e397`](./contracts/base-8453/0x6a3a0fe16d1bbc5d699fdb5d082c76aeff16e397/) | ⚠️ Unaudited |
| ECrosschain | unknown | ethereum | n/a | [`0xbb7430...6ada98`](./contracts/ethereum-1/0xbb7430ecd5b8340a745f550799fc3724a36ada98/) | ⚠️ Unaudited |
| ENavView | unknown | bsc | n/a | [`0x18865b...e52ec2`](./contracts/bsc-56/0x18865b9458d950045fcc660a29afef5daae52ec2/) | ⚠️ Unaudited |
| EOracle | unknown | base | n/a | [`0x1c3702...9e757e`](./contracts/base-8453/0x1c3702ac7596a8937d48625e81380749bc9e757e/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | bsc | n/a | [`0xc3d240...fc94c3`](./contracts/bsc-56/0xc3d2405f43adab0a921a129eacae9051e3fc94c3/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | bsc | n/a | [`0x31e9c5...fc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/) | ⚠️ Unaudited |
| ERC20Proxy | unknown | optimism | n/a | [`0x28891f...81dd29`](./contracts/optimism-10/0x28891f41ea506ba7ea3be9f2075ab0aa8b81dd29/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | bsc | n/a | [`0xb16e4a...11cdda`](./contracts/bsc-56/0xb16e4aa530d050b07ba98be418d2b732c011cdda/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | bsc | n/a | [`0x543b2a...fa259e`](./contracts/bsc-56/0x543b2a89e759696fd3dc46743da5de2439fa259e/) | ⚠️ Unaudited |
| EUpgrade | unknown | ethereum | n/a | [`0x64bca3...0690fc`](./contracts/ethereum-1/0x64bca3673c8990b11225e9f49e6da554180690fc/) | ⚠️ Unaudited |
| EWhitelist | unknown | ethereum | n/a | [`0xb43bad...7d89ab`](./contracts/ethereum-1/0xb43bad2638696f8bc82247b92bd56b8df37d89ab/) | ⚠️ Unaudited |
| ExchangesAuthority | unknown | ethereum | n/a | [`0x13d304...7c8966`](./contracts/ethereum-1/0x13d3045021c19d8e2480be22e4552b2b527c8966/) | ⚠️ Unaudited |
| ExtensionsMap | unknown | ethereum | n/a | [`0x02d05a...c9a67a`](./contracts/ethereum-1/0x02d05a307725d91755c486beafe6697562c9a67a/) | ⚠️ Unaudited |
| ExtensionsMapDeployer | unknown | ethereum | n/a | [`0x7a2d3a...6fd673`](./contracts/ethereum-1/0x7a2d3a2fa5a7e27f50c25d5edbc4b88eb96fd673/) | ⚠️ Unaudited |
| FactoryPortal | unknown | bsc | n/a | [`0xff9c94...d604e3`](./contracts/bsc-56/0xff9c94f5f5a3e3d65d2375215188140e23d604e3/) | ⚠️ Unaudited |
| Firepit | unknown | ethereum | n/a | [`0x0adcf4...e9f79f`](./contracts/ethereum-1/0x0adcf4fa0dffcceecad2705dfa1caaf1a9e9f79f/) | ⚠️ Unaudited |
| GrgVault | unknown | ethereum | n/a | [`0x0a3374...4fdc58`](./contracts/ethereum-1/0x0a33744ee5d57d6d69944213d8e6ad80d64fdc58/) | ⚠️ Unaudited |
| Inflation | unknown | ethereum | n/a | [`0x35972b...a44655`](./contracts/ethereum-1/0x35972be96f011fd6a51f6090a856083078a44655/) | ⚠️ Unaudited |
| InflationL2 | unknown | unichain | n/a | [`0x3a0c47...f8dad6`](./contracts/unichain-130/0x3a0c479a2715cc01bc3f744f74efd45f40f8dad6/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0xecf462...e143b3`](./contracts/optimism-10/0xecf46257ed31c329f204eb43e254c609dee143b3/) | ⚠️ Unaudited |
| MonthlyBounty | unknown | bsc | n/a | [`0x27ed96...e18642`](./contracts/bsc-56/0x27ed9675b109e725067bdcbb2c5a1fd069e18642/) | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | bsc | n/a | [`0x055008...99967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | ⚠️ Unaudited |
| Network | unknown | ethereum | n/a | [`0xaadf2b...0e3f30`](./contracts/ethereum-1/0xaadf2b0f76f966610da92d773240acaa1b0e3f30/) | ⚠️ Unaudited |
| NFTFactory | unknown | bsc | n/a | [`0x2c19b3...7b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/) | ⚠️ Unaudited |
| NFTRouter | unknown | bsc | n/a | [`0xf2d0fa...4fbb56`](./contracts/bsc-56/0xf2d0fa5d973edf443d43719c444ddb28a74fbb56/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | unichain | n/a | [`0x03c286...1120dd`](./contracts/unichain-130/0x03c2868c6d7fd27575426f395ee081498b1120dd/) | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x06767e...503ed6`](./contracts/ethereum-1/0x06767e8090ba5c4eca89ed00c3a719909d503ed6/) | ⚠️ Unaudited |
| PositionManager | unknown | optimism | n/a | [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | ⚠️ Unaudited |
| PremiumHolder | unknown | bsc | n/a | [`0x31c459...3730fd`](./contracts/bsc-56/0x31c459baead0be6951c1e9697af07c25113730fd/) | ⚠️ Unaudited |
| ProgressiveUnlockWallet | unknown | ethereum | n/a | [`0xac1886...e5f465`](./contracts/ethereum-1/0xac1886906baa783e634b2c6c392082e0dee5f465/) | ⚠️ Unaudited |
| ProofOfPerformance | unknown | polygon | n/a | [`0x4170b7...46be9a`](./contracts/polygon-137/0x4170b7d618f3e5b29b3dbdcdadd626ff3746be9a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x3b2ebf...49fd9b`](./contracts/bsc-56/0x3b2ebf3e893e1e56964757f2ab92eefa2049fd9b/) | ⚠️ Unaudited |
| RewardDistributor | unknown | bsc | n/a | [`0x103f7d...be426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/) | ⚠️ Unaudited |
| RewardHandler_Factory_SlowRelease | unknown | bsc | n/a | [`0x18c792...7d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | bsc | n/a | [`0x411f3e...dfad2d`](./contracts/bsc-56/0x411f3e09c66b30e7facfec45cd823b2e19dfad2d/) | ⚠️ Unaudited |
| RewardPortal | unknown | bsc | n/a | [`0x03e72e...7b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/) | ⚠️ Unaudited |
| RewardShare | unknown | bsc | n/a | [`0x13ee72...be2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | ⚠️ Unaudited |
| RigoBlockDeployer | unknown | ethereum | n/a | [`0x8fe205...479832`](./contracts/ethereum-1/0x8fe2051b8107192d695449cf2b002c2ecb479832/) | ⚠️ Unaudited |
| RigoblockGovernance | unknown | ethereum | n/a | [`0x5f8607...09767a`](./contracts/ethereum-1/0x5f8607739c2d2d0b57a4292868c368ab1809767a/) | ⚠️ Unaudited |
| RigoblockGovernanceFactory | unknown | ethereum | n/a | [`0xc1adda...d2d760`](./contracts/ethereum-1/0xc1adda7605d2dc47dd91a930c978cd6a18d2d760/) | ⚠️ Unaudited |
| RigoblockGovernanceStrategy | unknown | base | n/a | [`0x1fbef9...db07ea`](./contracts/base-8453/0x1fbef987c7d87f794548aa9089e87b9a15db07ea/) | ⚠️ Unaudited |
| RigoblockV3Pool | unknown | ethereum | n/a | [`0x7df14b...91841d`](./contracts/ethereum-1/0x7df14ba4a5f565cd56206e49fc66b3002a91841d/) | ⚠️ Unaudited |
| RigoToken | unknown | ethereum | n/a | [`0x4fbb35...9bc964`](./contracts/ethereum-1/0x4fbb350052bca5417566f188eb2ebce5b19bc964/) | ⚠️ Unaudited |
| SmartPool | unknown | ethereum | n/a | [`0x1db955...545420`](./contracts/ethereum-1/0x1db955265b8dc18715cab12e805f9b71fa545420/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x10bffa...f670ca`](./contracts/ethereum-1/0x10bffaf04448313dd64476072391e7f9f7f670ca/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0x7f4638...e92874`](./contracts/arbitrum-42161/0x7f4638a58c0615037decc86f1dae60e55fe92874/) | ⚠️ Unaudited |
| TokenJar | unknown | ethereum | n/a | [`0xa0f9c3...452b37`](./contracts/ethereum-1/0xa0f9c380ad1e1be09046319fd907335b2b452b37/) | ⚠️ Unaudited |
| TokenPriceConfig | unknown | bsc | n/a | [`0x7f9778...7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x060bad...d76f69`](./contracts/bsc-56/0x060bad68e5d9b0c0dbcef7963925eca257d76f69/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x83151a...3d1b81`](./contracts/bsc-56/0x83151af121458611530b49ba1e78f5f27e3d1b81/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x009aed...643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | ⚠️ Unaudited |
| ve_query | unknown | bsc | n/a | [`0x4d2e8b...230345`](./contracts/bsc-56/0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345/) | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | bsc | n/a | [`0x26a3fc...4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/) | ⚠️ Unaudited |
| VEShareNFT | unknown | bsc | n/a | [`0x55f8d8...fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | ⚠️ Unaudited |
| VestingWallet | unknown | ethereum | n/a | [`0xf3b672...a30026`](./contracts/ethereum-1/0xf3b672f490aceb1435ef343e12cff9d418a30026/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [assets/-Me8Xn_pJtAjktHi3oBg/-Mk3PCbgu5qmhtNbzxcL/-Mk3QDm9D23sE9tIfpI3/PeckShield-Audit-Report-Tetu-v1.0.pdf](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Me8Xn_pJtAjktHi3oBg%2F-Mk3PCbgu5qmhtNbzxcL%2F-Mk3QDm9D23sE9tIfpI3%2FPeckShield-Audit-Report-Tetu-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Tetu — forked code, scoped to IDCard_V2_Controller, RouterConfig | inherited | 2 | n/a |
| [spaces/-Me8Xn_pJtAjktHi3oBg/uploads/MxXQOMXoIFZ6uFjz3G4c/PeckShield-Audit-Report-Tetuv2-v1.0.pdf](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Me8Xn_pJtAjktHi3oBg%2Fuploads%2FMxXQOMXoIFZ6uFjz3G4c%2FPeckShield-Audit-Report-Tetuv2-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Tetu — forked code, scoped to IDCard_V2_Controller, RouterConfig | inherited | 2 | n/a |
| [assets/-Me8Xn_pJtAjktHi3oBg/-Mfimt8Ii5RUGI8n3xdQ/-MfitjlyTlbQXlA093Ni/Security_Audit_for_Tetu.io.pdf](https://316135650-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-Me8Xn_pJtAjktHi3oBg%2F-Mfimt8Ii5RUGI8n3xdQ%2F-MfitjlyTlbQXlA093Ni%2FSecurity_Audit_for_Tetu.io.pdf) | unknown | Audit | n/a | unknown | Inherited from Tetu — forked code, scoped to IDCard_V2_Controller, RouterConfig | inherited | 2 | n/a |
| [immunefi.com/bug-bounty/tetu/information](https://immunefi.com/bug-bounty/tetu/information) | Immunefi | Bug Bounty | Ongoing | n/a | Inherited from Tetu — forked code, scoped to IDCard_V2_Controller, RouterConfig | n/a | n/a | n/a |
| [skynet.certik.com/projects/tetu](https://skynet.certik.com/projects/tetu) | CertiK | Audit | n/a | unknown | Inherited from Tetu — forked code, scoped to IDCard_V2_Controller, RouterConfig | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb4396f...99365b`](./contracts/ethereum-1/0xb4396febcce313669cdff53ba62b7a86a799365b/) | A0xRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd72b9f...d0115a`](./contracts/arbitrum-42161/0xd72b9f2453fb3cafc61cbef3cb14483d61d0115a/) | AGmxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf59e31...f2a4a5`](./contracts/ethereum-1/0xf59e31f738eef10ca94845b3be78a0a626f2a4a5/) | AGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x400120...e06820`](./contracts/polygon-137/0x4001208d81ee344b7ea90d59b5e2f25de5e06820/) | AIntents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1dc90d...51ffc6`](./contracts/unichain-130/0x1dc90d2c0d5312dcbc31be6ccd23b03bf251ffc6/) | AMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae4ff8...54179e`](./contracts/bsc-56/0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025434...259304`](./contracts/ethereum-1/0x02543473ebe34c5c5675f3c9d00912d289259304/) | ASelfCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x21b423...813254`](./contracts/optimism-10/0x21b423ad9488cad08e06c50a5db0f65aaa813254/) | AStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dc22c...8970c9`](./contracts/ethereum-1/0x0dc22c3613f91e104a3c0a0c992f5e623e8970c9/) | AUniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0103d9...c519e9`](./contracts/polygon-137/0x0103d9e14e9bd3b8054463f95a8d90ca43c519e9/) | AUniswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f473a...c0871b`](./contracts/ethereum-1/0x3f473aba899b1f9fed006c44cc3d89f80cc0871b/) | AUniswapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307b26...78cc19`](./contracts/ethereum-1/0x307b265c6ab333b63e739936722cc8e62d78cc19/) | Authority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43f043...4969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/) | BABTAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9d79d...28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | BatchTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30b622...88bee7`](./contracts/polygon-137/0x30b622609ffab1641b498e9bf1ff102ab288bee7/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | CryptoCabz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde6445...58822e`](./contracts/ethereum-1/0xde6445484a8dcd9bf35fc95eb4e3990cc358822e/) | DragoRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6a3a0f...16e397`](./contracts/base-8453/0x6a3a0fe16d1bbc5d699fdb5d082c76aeff16e397/) | EApps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb7430...6ada98`](./contracts/ethereum-1/0xbb7430ecd5b8340a745f550799fc3724a36ada98/) | ECrosschain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18865b...e52ec2`](./contracts/bsc-56/0x18865b9458d950045fcc660a29afef5daae52ec2/) | ENavView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c3702...9e757e`](./contracts/base-8453/0x1c3702ac7596a8937d48625e81380749bc9e757e/) | EOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3d240...fc94c3`](./contracts/bsc-56/0xc3d2405f43adab0a921a129eacae9051e3fc94c3/) | ERC1155GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31e9c5...fc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/) | ERC20GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x28891f...81dd29`](./contracts/optimism-10/0x28891f41ea506ba7ea3be9f2075ab0aa8b81dd29/) | ERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb16e4a...11cdda`](./contracts/bsc-56/0xb16e4aa530d050b07ba98be418d2b732c011cdda/) | ERC677GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x543b2a...fa259e`](./contracts/bsc-56/0x543b2a89e759696fd3dc46743da5de2439fa259e/) | ERC721GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64bca3...0690fc`](./contracts/ethereum-1/0x64bca3673c8990b11225e9f49e6da554180690fc/) | EUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb43bad...7d89ab`](./contracts/ethereum-1/0xb43bad2638696f8bc82247b92bd56b8df37d89ab/) | EWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13d304...7c8966`](./contracts/ethereum-1/0x13d3045021c19d8e2480be22e4552b2b527c8966/) | ExchangesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02d05a...c9a67a`](./contracts/ethereum-1/0x02d05a307725d91755c486beafe6697562c9a67a/) | ExtensionsMap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a2d3a...6fd673`](./contracts/ethereum-1/0x7a2d3a2fa5a7e27f50c25d5edbc4b88eb96fd673/) | ExtensionsMapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff9c94...d604e3`](./contracts/bsc-56/0xff9c94f5f5a3e3d65d2375215188140e23d604e3/) | FactoryPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0adcf4...e9f79f`](./contracts/ethereum-1/0x0adcf4fa0dffcceecad2705dfa1caaf1a9e9f79f/) | Firepit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a3374...4fdc58`](./contracts/ethereum-1/0x0a33744ee5d57d6d69944213d8e6ad80d64fdc58/) | GrgVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35972b...a44655`](./contracts/ethereum-1/0x35972be96f011fd6a51f6090a856083078a44655/) | Inflation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x3a0c47...f8dad6`](./contracts/unichain-130/0x3a0c479a2715cc01bc3f744f74efd45f40f8dad6/) | InflationL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xecf462...e143b3`](./contracts/optimism-10/0xecf46257ed31c329f204eb43e254c609dee143b3/) | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27ed96...e18642`](./contracts/bsc-56/0x27ed9675b109e725067bdcbb2c5a1fd069e18642/) | MonthlyBounty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x055008...99967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | MultiHonor_Multichain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaadf2b...0e3f30`](./contracts/ethereum-1/0xaadf2b0f76f966610da92d773240acaa1b0e3f30/) | Network | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c19b3...7b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/) | NFTFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf2d0fa...4fbb56`](./contracts/bsc-56/0xf2d0fa5d973edf443d43719c444ddb28a74fbb56/) | NFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x03c286...1120dd`](./contracts/unichain-130/0x03c2868c6d7fd27575426f395ee081498b1120dd/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06767e...503ed6`](./contracts/ethereum-1/0x06767e8090ba5c4eca89ed00c3a719909d503ed6/) | PoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c3ea4...9a1017`](./contracts/optimism-10/0x3c3ea4b57a46241e54610e5f022e5c45859a1017/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31c459...3730fd`](./contracts/bsc-56/0x31c459baead0be6951c1e9697af07c25113730fd/) | PremiumHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac1886...e5f465`](./contracts/ethereum-1/0xac1886906baa783e634b2c6c392082e0dee5f465/) | ProgressiveUnlockWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4170b7...46be9a`](./contracts/polygon-137/0x4170b7d618f3e5b29b3dbdcdadd626ff3746be9a/) | ProofOfPerformance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103f7d...be426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18c792...7d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/) | RewardHandler_Factory_SlowRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x411f3e...dfad2d`](./contracts/bsc-56/0x411f3e09c66b30e7facfec45cd823b2e19dfad2d/) | RewardMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03e72e...7b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/) | RewardPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13ee72...be2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | RewardShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fe205...479832`](./contracts/ethereum-1/0x8fe2051b8107192d695449cf2b002c2ecb479832/) | RigoBlockDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f8607...09767a`](./contracts/ethereum-1/0x5f8607739c2d2d0b57a4292868c368ab1809767a/) | RigoblockGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1adda...d2d760`](./contracts/ethereum-1/0xc1adda7605d2dc47dd91a930c978cd6a18d2d760/) | RigoblockGovernanceFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1fbef9...db07ea`](./contracts/base-8453/0x1fbef987c7d87f794548aa9089e87b9a15db07ea/) | RigoblockGovernanceStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7df14b...91841d`](./contracts/ethereum-1/0x7df14ba4a5f565cd56206e49fc66b3002a91841d/) | RigoblockV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fbb35...9bc964`](./contracts/ethereum-1/0x4fbb350052bca5417566f188eb2ebce5b19bc964/) | RigoToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1db955...545420`](./contracts/ethereum-1/0x1db955265b8dc18715cab12e805f9b71fa545420/) | SmartPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10bffa...f670ca`](./contracts/ethereum-1/0x10bffaf04448313dd64476072391e7f9f7f670ca/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7f4638...e92874`](./contracts/arbitrum-42161/0x7f4638a58c0615037decc86f1dae60e55fe92874/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0f9c3...452b37`](./contracts/ethereum-1/0xa0f9c380ad1e1be09046319fd907335b2b452b37/) | TokenJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f9778...7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | TokenPriceConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x009aed...643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d2e8b...230345`](./contracts/bsc-56/0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345/) | ve_query | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26a3fc...4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/) | VEPowerOracleSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55f8d8...fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | VEShareNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3b672...a30026`](./contracts/ethereum-1/0xf3b672f490aceb1435ef343e12cff9d418a30026/) | VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=10

Fork inheritance lineage and inherited audits are included when available.
