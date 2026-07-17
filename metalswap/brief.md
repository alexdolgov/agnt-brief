# Agentic Audit Brief: metalswap

## Project Overview

- Project: metalswap (`metalswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.661Z
- Pipeline run: v2-2026-07-04-7d91d2
- Chains: bsc, ethereum, linea
- Contract surface: 52 unique implementations (52 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 45 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens, 3 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 17 common project-authored base contract(s) (upgradeabilityproxy, proxy, administrable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Lido** (`lido`) in the NameWrapper, OwnedResolver, PublicResolver subsystem.
15 audits inherited from `lido`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 52 (51 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/43 (7.0%)
- Deployed-live implementations: 51 of 52 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/52
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 16 (1 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 15 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 7.0% (Code4rena, Cyfrin, MixBytes, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 5.8% | 2026-03 |
| Composable Security | Tier 2 | 3 | 5.8% | 2026-06 |
| Cyfrin | Tier 1 | 3 | 5.8% | 2026-05 |
| MixBytes | Tier 1 | 3 | 5.8% | 2026-05 |
| Nethermind | Tier 2 | 3 | 5.8% | 2026-04 |
| Spearbit | Tier 1 | 3 | 5.8% | 2026-03 |
| yAudit | Tier 2 | 3 | 5.8% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NameWrapper | unknown | linea | n/a | [`0xa53cca02f98d590819141aa85c891e2af713c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | ✅ Audited |
| OwnedResolver | unknown | linea | n/a | [`0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | ✅ Audited |
| PublicResolver | unknown | linea | n/a | [`0x86c5aed9f27837074612288610fb98ccc1733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x45804880de22913dafe09f4980848ece6ecbaf78`](./contracts/ethereum-1/0x45804880de22913dafe09f4980848ece6ecbaf78/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | bsc | n/a | [`0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e`](./contracts/bsc-56/0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | bsc | n/a | [`0x582c12b30f85162fa393e5dbe2573f9f601f9d91`](./contracts/bsc-56/0x582c12b30f85162fa393e5dbe2573f9f601f9d91/) | ⚠️ Unaudited |
| BABTAdaptor | unknown | bsc | n/a | [`0x43f04360894aef83d02d7a5cdd91ad64144969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | linea | n/a | [`0x6e84390dcc5195414ec91a8c56a5c91021b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | ⚠️ Unaudited |
| BatchTransfer | unknown | bsc | n/a | [`0xa9d79d8741510dd0fb2df7b741c899334b28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | ⚠️ Unaudited |
| ENSRegistry | unknown | linea | n/a | [`0x50130b669b28c339991d8676fa73cf122a121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | bsc | n/a | [`0xc3d2405f43adab0a921a129eacae9051e3fc94c3`](./contracts/bsc-56/0xc3d2405f43adab0a921a129eacae9051e3fc94c3/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | bsc | n/a | [`0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | bsc | n/a | [`0xb16e4aa530d050b07ba98be418d2b732c011cdda`](./contracts/bsc-56/0xb16e4aa530d050b07ba98be418d2b732c011cdda/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | bsc | n/a | [`0x543b2a89e759696fd3dc46743da5de2439fa259e`](./contracts/bsc-56/0x543b2a89e759696fd3dc46743da5de2439fa259e/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | linea | n/a | [`0xdb75db974b1f2bd3b5916d503036208064d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ⚠️ Unaudited |
| FactoryPortal | unknown | bsc | n/a | [`0xff9c94f5f5a3e3d65d2375215188140e23d604e3`](./contracts/bsc-56/0xff9c94f5f5a3e3d65d2375215188140e23d604e3/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | linea | n/a | [`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | linea | n/a | [`0x0e57c8d26671e267c3c971824b93343bb75c2dc8`](./contracts/linea-59144/0x0e57c8d26671e267c3c971824b93343bb75c2dc8/) | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | [`0x29c0c69c028c5be41a487814aa29ff43f5de4e1a`](./contracts/bsc-56/0x29c0c69c028c5be41a487814aa29ff43f5de4e1a/) | ⚠️ Unaudited |
| L2MessageService | unknown | linea | n/a | [`0x05d43713b7e333d2d54be65ce3b5f3698ab960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | ⚠️ Unaudited |
| L2USDCBridge | unknown | linea | n/a | [`0x1998108fa7993ea67a8b1a99d392a3288c5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ⚠️ Unaudited |
| LineaSurgeXP | unknown | linea | n/a | [`0x96b3a15257c4983a6fe9073d8c91763433124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | ⚠️ Unaudited |
| LineaVoyageXP | unknown | linea | n/a | [`0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | ⚠️ Unaudited |
| LineaXP | unknown | linea | n/a | [`0xc24e7b826b3c1e8918843baf7abd2e51399cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | ⚠️ Unaudited |
| MetalSwap | unknown | ethereum | n/a | [`0x3e5d9d8a63cc8a88748f229999cf59487e90721e`](./contracts/ethereum-1/0x3e5d9d8a63cc8a88748f229999cf59487e90721e/) | ⚠️ Unaudited |
| MetalSwapIronStakingPool | unknown | ethereum | n/a | [`0xaf9101314b14d8e243e1d519c0dd4e69dfd44466`](./contracts/ethereum-1/0xaf9101314b14d8e243e1d519c0dd4e69dfd44466/) | ⚠️ Unaudited |
| MonthlyBounty | unknown | bsc | n/a | [`0x27ed9675b109e725067bdcbb2c5a1fd069e18642`](./contracts/bsc-56/0x27ed9675b109e725067bdcbb2c5a1fd069e18642/) | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | bsc | n/a | [`0x0550082c40c6a04096b62116f227d110a699967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | ⚠️ Unaudited |
| NFTFactory | unknown | bsc | n/a | [`0x2c19b304afc2cd7ff8606ac212418d55d07b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/) | ⚠️ Unaudited |
| NFTRouter | unknown | bsc | n/a | [`0xf2d0fa5d973edf443d43719c444ddb28a74fbb56`](./contracts/bsc-56/0xf2d0fa5d973edf443d43719c444ddb28a74fbb56/) | ⚠️ Unaudited |
| PremiumHolder | unknown | bsc | n/a | [`0x31c459baead0be6951c1e9697af07c25113730fd`](./contracts/bsc-56/0x31c459baead0be6951c1e9697af07c25113730fd/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | linea | n/a | [`0x1e1f6f22f97b4a7522d8b62e983953639239774e`](./contracts/linea-59144/0x1e1f6f22f97b4a7522d8b62e983953639239774e/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | linea | n/a | [`0x08d3ff6e65f680844fd2465393ff6f0d742b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ⚠️ Unaudited |
| RewardDistributor | unknown | bsc | n/a | [`0x103f7d014f46c6bcb9f86217c36368a08abe426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/) | ⚠️ Unaudited |
| RewardHandler_Factory_SlowRelease | unknown | bsc | n/a | [`0x18c792978ccf5f81a2c1dfb44737fc14597d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | bsc | n/a | [`0x411f3e09c66b30e7facfec45cd823b2e19dfad2d`](./contracts/bsc-56/0x411f3e09c66b30e7facfec45cd823b2e19dfad2d/) | ⚠️ Unaudited |
| RewardPortal | unknown | bsc | n/a | [`0x03e72e3f327a731af63a931cc06c84e2627b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/) | ⚠️ Unaudited |
| RewardShare | unknown | bsc | n/a | [`0x13ee726d95742d437ebb664bf0d3feff8dbe2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | ⚠️ Unaudited |
| Root | unknown | linea | n/a | [`0xfbf795ead640e261868eb200ed2850eb9c151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | ⚠️ Unaudited |
| RouterConfig | unknown | bsc | n/a | [`0x0aa6262af21b85cbe396caf68d59aad8db3079fa`](./contracts/bsc-56/0x0aa6262af21b85cbe396caf68d59aad8db3079fa/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | linea | n/a | [`0x18703d0117121f6a7476221e2afc57faf9866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | ⚠️ Unaudited |
| TokenBridge | unknown | linea | n/a | [`0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | ⚠️ Unaudited |
| TokenPriceConfig | unknown | bsc | n/a | [`0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x060bad68e5d9b0c0dbcef7963925eca257d76f69`](./contracts/bsc-56/0x060bad68e5d9b0c0dbcef7963925eca257d76f69/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x83151af121458611530b49ba1e78f5f27e3d1b81`](./contracts/bsc-56/0x83151af121458611530b49ba1e78f5f27e3d1b81/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x0ece76334fb560f2b1a49a60e38cf726b02203f0`](./contracts/linea-59144/0x0ece76334fb560f2b1a49a60e38cf726b02203f0/) | ⚠️ Unaudited |
| UniversalResolver | unknown | linea | n/a | [`0x3aa974fb3f8c1e02796048bdcded79e9d53a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | linea | n/a | [`0xe798695d2e78f7caeb5bbf3385433959324c02c0`](./contracts/linea-59144/0xe798695d2e78f7caeb5bbf3385433959324c02c0/) | ⚠️ Unaudited |
| ve_query | unknown | bsc | n/a | [`0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345`](./contracts/bsc-56/0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345/) | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | bsc | n/a | [`0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/) | ⚠️ Unaudited |
| VEShareNFT | unknown | bsc | n/a | [`0x55f8d898760240e6eff3c2cc23974ae8c8fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | ⚠️ Unaudited |

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
| [2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [skynet.certik.com/projects/metalswap](https://skynet.certik.com/projects/metalswap) | CertiK | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Composable Security Lido Oracle V8 Audit Report.pdf](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [Cyfrin CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes CircuitBreaker Audit Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes Lido v3 Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes Lido Easy Track stVaults Security Audit Report 03-26.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [Cyfrin CircuitBreaker Formal Verification Report 04-2026.pdf](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |
| [MixBytes Lido DeFi Wrapper MellowStrategyAdapter Security Audit Report 03-2026.pdf](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Inherited from Lido — forked code, scoped to NameWrapper, OwnedResolver, PublicResolver | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e`](./contracts/bsc-56/0xae4ff8ef7dcc87b10a07e8e13eb78cc07d54179e/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43f04360894aef83d02d7a5cdd91ad64144969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/) | BABTAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6e84390dcc5195414ec91a8c56a5c91021b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | BaseRegistrarImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9d79d8741510dd0fb2df7b741c899334b28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | BatchTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x50130b669b28c339991d8676fa73cf122a121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ENSRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3d2405f43adab0a921a129eacae9051e3fc94c3`](./contracts/bsc-56/0xc3d2405f43adab0a921a129eacae9051e3fc94c3/) | ERC1155GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/) | ERC20GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb16e4aa530d050b07ba98be418d2b732c011cdda`](./contracts/bsc-56/0xb16e4aa530d050b07ba98be418d2b732c011cdda/) | ERC677GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x543b2a89e759696fd3dc46743da5de2439fa259e`](./contracts/bsc-56/0x543b2a89e759696fd3dc46743da5de2439fa259e/) | ERC721GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xdb75db974b1f2bd3b5916d503036208064d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ETHRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff9c94f5f5a3e3d65d2375215188140e23d604e3`](./contracts/bsc-56/0xff9c94f5f5a3e3d65d2375215188140e23d604e3/) | FactoryPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0e57c8d26671e267c3c971824b93343bb75c2dc8`](./contracts/linea-59144/0x0e57c8d26671e267c3c971824b93343bb75c2dc8/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29c0c69c028c5be41a487814aa29ff43f5de4e1a`](./contracts/bsc-56/0x29c0c69c028c5be41a487814aa29ff43f5de4e1a/) | IDCard_V2_Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x05d43713b7e333d2d54be65ce3b5f3698ab960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | L2MessageService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1998108fa7993ea67a8b1a99d392a3288c5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | L2USDCBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x96b3a15257c4983a6fe9073d8c91763433124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | LineaSurgeXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | LineaVoyageXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc24e7b826b3c1e8918843baf7abd2e51399cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | LineaXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e5d9d8a63cc8a88748f229999cf59487e90721e`](./contracts/ethereum-1/0x3e5d9d8a63cc8a88748f229999cf59487e90721e/) | MetalSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf9101314b14d8e243e1d519c0dd4e69dfd44466`](./contracts/ethereum-1/0xaf9101314b14d8e243e1d519c0dd4e69dfd44466/) | MetalSwapIronStakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27ed9675b109e725067bdcbb2c5a1fd069e18642`](./contracts/bsc-56/0x27ed9675b109e725067bdcbb2c5a1fd069e18642/) | MonthlyBounty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0550082c40c6a04096b62116f227d110a699967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | MultiHonor_Multichain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c19b304afc2cd7ff8606ac212418d55d07b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/) | NFTFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf2d0fa5d973edf443d43719c444ddb28a74fbb56`](./contracts/bsc-56/0xf2d0fa5d973edf443d43719c444ddb28a74fbb56/) | NFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31c459baead0be6951c1e9697af07c25113730fd`](./contracts/bsc-56/0x31c459baead0be6951c1e9697af07c25113730fd/) | PremiumHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x08d3ff6e65f680844fd2465393ff6f0d742b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ReverseRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x103f7d014f46c6bcb9f86217c36368a08abe426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18c792978ccf5f81a2c1dfb44737fc14597d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/) | RewardHandler_Factory_SlowRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x411f3e09c66b30e7facfec45cd823b2e19dfad2d`](./contracts/bsc-56/0x411f3e09c66b30e7facfec45cd823b2e19dfad2d/) | RewardMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03e72e3f327a731af63a931cc06c84e2627b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/) | RewardPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x13ee726d95742d437ebb664bf0d3feff8dbe2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | RewardShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xfbf795ead640e261868eb200ed2850eb9c151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0aa6262af21b85cbe396caf68d59aad8db3079fa`](./contracts/bsc-56/0x0aa6262af21b85cbe396caf68d59aad8db3079fa/) | RouterConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18703d0117121f6a7476221e2afc57faf9866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | StaticMetadataService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | TokenPriceConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3aa974fb3f8c1e02796048bdcded79e9d53a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | UniversalResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345`](./contracts/bsc-56/0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345/) | ve_query | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/) | VEPowerOracleSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55f8d898760240e6eff3c2cc23974ae8c8fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | VEShareNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=45

Zero-match audit list:

- [20833] skynet.certik.com/projects/metalswap

Fork inheritance lineage and inherited audits are included when available.
