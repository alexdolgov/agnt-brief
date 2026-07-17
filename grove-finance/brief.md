# Agentic Audit Brief: Grove Finance

## Project Overview

- Project: Grove Finance (`grove-finance`)
- Website: [https://data.grove.finance/](https://data.grove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.094Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: avalanche, base, ethereum
- Contract surface: 79 unique implementations (79 raw deployments)
- DeFi Llama TVL: $2,501,151,858.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 54 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (basedscontract, serviceconsumer, idsserviceconsumer). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Spark** (`spark`) in the ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, SparkEthereum_20250515, SparkEthereum_20250529, … subsystem.
16 audits inherited from `spark`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 79 (77 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/31 (61.3%)
- Deployed-live implementations: 77 of 79 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/79
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 79
- Raw deployments: 79
- Audits discovered: 25 (9 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 22
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 17 fresh, 0 aging, 2 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 61.3% (Certora, ChainSecurity, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 19 | 24.1% | 2026-06 |
| Spearbit | Tier 1 | 17 | 21.5% | 2026-05 |
| Certora | Tier 1 | 16 | 20.3% | 2025-12 |
| ABDK | Tier 2 | 3 | 3.8% | n/a |
| OpenZeppelin | Tier 1 | 3 | 3.8% | n/a |
| PeckShield | Tier 2 | 3 | 3.8% | n/a |
| Sigma Prime | Tier 2 | 3 | 3.8% | 2023-04 |
| Trail of Bits | Tier 1 | 3 | 3.8% | n/a |
| yAudit | Tier 2 | 3 | 3.8% | n/a |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ALMProxy | unknown | ethereum | n/a | [`0x491edfb0b8b608044e227225c715981a30f3a44e`](./contracts/ethereum-1/0x491edfb0b8b608044e227225c715981a30f3a44e/) | ✅ Audited |
| CCTPv2Receiver | unknown | avalanche | n/a | [`0x54e39b82d43a6f1513d3ec69c2ac98ab3f49d9b2`](./contracts/avalanche-43114/0x54e39b82d43a6f1513d3ec69c2ac98ab3f49d9b2/) | ✅ Audited |
| Executor | unknown | base | n/a | [`0x491edfb0b8b608044e227225c715981a30f3a44e`](./contracts/base-8453/0x491edfb0b8b608044e227225c715981a30f3a44e/) | ✅ Audited |
| ForeignController | unknown | base | n/a | [`0x08b045609a673996ca10fedbafae2395a21ba539`](./contracts/base-8453/0x08b045609a673996ca10fedbafae2395a21ba539/) | ✅ Audited |
| GroveAvalanche_20250807 | unknown | avalanche | n/a | [`0x6ac0865e7fcad8b89850b83a709eec57569f919f`](./contracts/avalanche-43114/0x6ac0865e7fcad8b89850b83a709eec57569f919f/) | ✅ Audited |
| GroveAvalanche_20250821 | unknown | avalanche | n/a | [`0xde73d4ab2b728b3826aa18ac7acde71677a3ae4a`](./contracts/avalanche-43114/0xde73d4ab2b728b3826aa18ac7acde71677a3ae4a/) | ✅ Audited |
| GroveBase_20251113 | unknown | base | n/a | [`0x7cea53dcf28b603c0e3b6d05c0ad517d79a90dd1`](./contracts/base-8453/0x7cea53dcf28b603c0e3b6d05c0ad517d79a90dd1/) | ✅ Audited |
| GroveEthereum_20250724 | unknown | ethereum | n/a | [`0x8afc2c232716674b45cb131f858e870aa6acd9ff`](./contracts/ethereum-1/0x8afc2c232716674b45cb131f858e870aa6acd9ff/) | ✅ Audited |
| GroveEthereum_20250807 | unknown | ethereum | n/a | [`0xa25127f759b6f07020bf2206d31beb6ed04d1550`](./contracts/ethereum-1/0xa25127f759b6f07020bf2206d31beb6ed04d1550/) | ✅ Audited |
| GroveEthereum_20250821 | unknown | ethereum | n/a | [`0xfa533fed0f065def8dcfa6699aa3d73337302bed`](./contracts/ethereum-1/0xfa533fed0f065def8dcfa6699aa3d73337302bed/) | ✅ Audited |
| GroveEthereum_20251002 | unknown | ethereum | n/a | [`0x67e7b3bfab1fb6267baecec034bbf7592f6b4e9b`](./contracts/ethereum-1/0x67e7b3bfab1fb6267baecec034bbf7592f6b4e9b/) | ✅ Audited |
| GroveEthereum_20251016 | unknown | ethereum | n/a | [`0xf2a28fb43d5d3093904b889538277fb175b42ece`](./contracts/ethereum-1/0xf2a28fb43d5d3093904b889538277fb175b42ece/) | ✅ Audited |
| GroveEthereum_20251030 | unknown | ethereum | n/a | [`0x8b4a92f8375ef89165aef4639e640e077d7c656b`](./contracts/ethereum-1/0x8b4a92f8375ef89165aef4639e640e077d7c656b/) | ✅ Audited |
| GroveEthereum_20251113 | unknown | ethereum | n/a | [`0x6d711e13bee2b12c774ee70c70997bdfc835a819`](./contracts/ethereum-1/0x6d711e13bee2b12c774ee70c70997bdfc835a819/) | ✅ Audited |
| GroveEthereum_20251211 | unknown | ethereum | n/a | [`0x6772d7eaab1c2e275f46b99d8cce8d470fa790ab`](./contracts/ethereum-1/0x6772d7eaab1c2e275f46b99d8cce8d470fa790ab/) | ✅ Audited |
| GroveEthereum_20260326 | unknown | ethereum | n/a | [`0x78e187473527938211187c85a414b19dd34ecd53`](./contracts/ethereum-1/0x78e187473527938211187c85a414b19dd34ecd53/) | ✅ Audited |
| LZReceiver | unknown | avalanche | n/a | [`0x68705b4a440c7322d84788498d815f525c033936`](./contracts/avalanche-43114/0x68705b4a440c7322d84788498d815f525c033936/) | ✅ Audited |
| MainnetController | unknown | ethereum | n/a | [`0x0d142e958b56f44c8b745a2d36f218053addf683`](./contracts/ethereum-1/0x0d142e958b56f44c8b745a2d36f218053addf683/) | ✅ Audited |
| RateLimits | unknown | avalanche | n/a | [`0x4a4ba6886be41db0783ca76540801bc3eebd39a0`](./contracts/avalanche-43114/0x4a4ba6886be41db0783ca76540801bc3eebd39a0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowanceAssetProvider | unknown | ethereum | n/a | [`0xb743c527546f6e009d1e4c87bbf2095f061e6b39`](./contracts/ethereum-1/0xb743c527546f6e009d1e4c87bbf2095f061e6b39/) | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | ethereum | n/a | [`0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3`](./contracts/ethereum-1/0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3/) | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | ethereum | n/a | [`0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493`](./contracts/ethereum-1/0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493/) | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | ethereum | n/a | [`0x5a943134fc891f0d8ecc3c8f8dd3b25944fdc922`](./contracts/ethereum-1/0x5a943134fc891f0d8ecc3c8f8dd3b25944fdc922/) | ⚠️ Unaudited |
| CCTPReceiver | unknown | avalanche | n/a | [`0x26e9512547fec1906c55256e491dfb6673d8c23f`](./contracts/avalanche-43114/0x26e9512547fec1906c55256e491dfb6673d8c23f/) | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | ethereum | n/a | [`0x2a49ee732c76837b7e7e181e9c3c43946eed528c`](./contracts/ethereum-1/0x2a49ee732c76837b7e7e181e9c3c43946eed528c/) | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | ethereum | n/a | [`0x15023f401e6065a2b55db7a96297960b4b400f4c`](./contracts/ethereum-1/0x15023f401e6065a2b55db7a96297960b4b400f4c/) | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | ethereum | n/a | [`0xe79c1c7e24755574438a26d5e062ad2626c04662`](./contracts/ethereum-1/0xe79c1c7e24755574438a26d5e062ad2626c04662/) | ⚠️ Unaudited |
| DelegateCaller | unknown | ethereum | n/a | [`0x3146c3ddef7c00d3dcc3cfd33041d0d677091977`](./contracts/ethereum-1/0x3146c3ddef7c00d3dcc3cfd33041d0d677091977/) | ⚠️ Unaudited |
| Disperse | unknown | ethereum | n/a | [`0x63866ebe37dd39565d6f9b752e0a2177f70bd31b`](./contracts/ethereum-1/0x63866ebe37dd39565d6f9b752e0a2177f70bd31b/) | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | ethereum | n/a | [`0x1e5d83ff1a6d32c53f25937664c53e9b57e37021`](./contracts/ethereum-1/0x1e5d83ff1a6d32c53f25937664c53e9b57e37021/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x021840988add1cb60be98d8ba1c577e314b0c6aa`](./contracts/ethereum-1/0x021840988add1cb60be98d8ba1c577e314b0c6aa/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0490a00cd72c4c51186afeb97c2d8b567261f814`](./contracts/ethereum-1/0x0490a00cd72c4c51186afeb97c2d8b567261f814/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66`](./contracts/ethereum-1/0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x05dae9bfbc82ed6bfa707087126f7af850f5385d`](./contracts/ethereum-1/0x05dae9bfbc82ed6bfa707087126f7af850f5385d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0656748e529baac7338a2dc99297bb9f568511a3`](./contracts/ethereum-1/0x0656748e529baac7338a2dc99297bb9f568511a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x068d79fd744ed0b64c1a1d218683e699811492b6`](./contracts/ethereum-1/0x068d79fd744ed0b64c1a1d218683e699811492b6/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x06ac066b0f918ca8a1d13a420035530085a780a3`](./contracts/ethereum-1/0x06ac066b0f918ca8a1d13a420035530085a780a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x06d4bcbfa12782ea136f77fd6031ea364be8c565`](./contracts/ethereum-1/0x06d4bcbfa12782ea136f77fd6031ea364be8c565/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x078646dd17ef2b9d7c346ac76c426004c9210d91`](./contracts/ethereum-1/0x078646dd17ef2b9d7c346ac76c426004c9210d91/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x07952f21df5068bfa900ff317e6aaf4fe376a561`](./contracts/ethereum-1/0x07952f21df5068bfa900ff317e6aaf4fe376a561/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0885f310222f3c8d237b36861d1a84e551cd4aa3`](./contracts/ethereum-1/0x0885f310222f3c8d237b36861d1a84e551cd4aa3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x189fd44ef6901c1d096c95e41909d83743b97229`](./contracts/ethereum-1/0x189fd44ef6901c1d096c95e41909d83743b97229/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x1ea550a49c0f6def620f734c6329c4c12a68ad4f`](./contracts/ethereum-1/0x1ea550a49c0f6def620f734c6329c4c12a68ad4f/) | ⚠️ Unaudited |
| GalaxyToken | unknown | avalanche | n/a | [`0x2c0adff8e114f3ca106051144353ac703d24b901`](./contracts/avalanche-43114/0x2c0adff8e114f3ca106051144353ac703d24b901/) | ⚠️ Unaudited |
| GalaxyToken1 | unknown | avalanche | n/a | [`0x301dd323b97e1bb3ba6350c2eb3dad8dfa7a2d05`](./contracts/avalanche-43114/0x301dd323b97e1bb3ba6350c2eb3dad8dfa7a2d05/) | ⚠️ Unaudited |
| GlobalRegistryService | unknown | ethereum | n/a | [`0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75`](./contracts/ethereum-1/0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xe3190143eb552456f88464662f0c0c4ac67a77eb`](./contracts/ethereum-1/0xe3190143eb552456f88464662f0c0c4ac67a77eb/) | ⚠️ Unaudited |
| InvestorLockManager | unknown | ethereum | n/a | [`0x0e4d0fc75407de18bde9930cbbc3238ebac29fda`](./contracts/ethereum-1/0x0e4d0fc75407de18bde9930cbbc3238ebac29fda/) | ⚠️ Unaudited |
| IssuerMulticall | unknown | ethereum | n/a | [`0x02658cc68a706fdd8474619040d3d6df54e57b7d`](./contracts/ethereum-1/0x02658cc68a706fdd8474619040d3d6df54e57b7d/) | ⚠️ Unaudited |
| MbpsFeeManager | unknown | ethereum | n/a | [`0x184cb128c1d4778da88bbde95c35d199aaec649d`](./contracts/ethereum-1/0x184cb128c1d4778da88bbde95c35d199aaec649d/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | [`0xbeef2b5fd3d94469b7782aebe6364e6e6fb1b709`](./contracts/ethereum-1/0xbeef2b5fd3d94469b7782aebe6364e6e6fb1b709/) | ⚠️ Unaudited |
| MonadSpellConfig | unknown | ethereum | n/a | [`0x4a4084c86c165fdda77dadeacf8c9a1994bb4266`](./contracts/ethereum-1/0x4a4084c86c165fdda77dadeacf8c9a1994bb4266/) | ⚠️ Unaudited |
| MonadSpellNoSetup | unknown | ethereum | n/a | [`0x5c1bcc3265c7233304ae3c0f8c0f3970032ab26a`](./contracts/ethereum-1/0x5c1bcc3265c7233304ae3c0f8c0f3970032ab26a/) | ⚠️ Unaudited |
| OmnibusTBEController | unknown | ethereum | n/a | [`0x1cf534f2bebe9c69bcbde5ab33a7d184d5d8035f`](./contracts/ethereum-1/0x1cf534f2bebe9c69bcbde5ab33a7d184d5d8035f/) | ⚠️ Unaudited |
| OptimismReceiver | unknown | base | n/a | [`0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a`](./contracts/base-8453/0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x0638033f826c88d8b540a26c0a31130694c63070`](./contracts/ethereum-1/0x0638033f826c88d8b540a26c0a31130694c63070/) | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | ethereum | n/a | [`0x226b44eaab75be8000b1700c413e42513bc7c66f`](./contracts/ethereum-1/0x226b44eaab75be8000b1700c413e42513bc7c66f/) | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | ethereum | n/a | [`0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c`](./contracts/ethereum-1/0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c/) | ⚠️ Unaudited |
| PullTokenWrapperAllowImmutable | unknown | ethereum | n/a | [`0x20236948b9c878789f23048ad81b44978869a31e`](./contracts/ethereum-1/0x20236948b9c878789f23048ad81b44978869a31e/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0`](./contracts/ethereum-1/0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0/) | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | ethereum | n/a | [`0x12263bef18d07c48940eaa56f7b2efc665169db8`](./contracts/ethereum-1/0x12263bef18d07c48940eaa56f7b2efc665169db8/) | ⚠️ Unaudited |
| RegistryService | unknown | ethereum | n/a | [`0x0ef785e8783a9daa336850df39d251d12749f2e4`](./contracts/ethereum-1/0x0ef785e8783a9daa336850df39d251d12749f2e4/) | ⚠️ Unaudited |
| SandboxToken | unknown | ethereum | n/a | [`0x1e9eb19fb06e56f5bd1e3207e7a61d39dd22c6b7`](./contracts/ethereum-1/0x1e9eb19fb06e56f5bd1e3207e7a61d39dd22c6b7/) | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | ethereum | n/a | [`0x1b9aaf91dd71ea63487026908d06ab97c05d06a5`](./contracts/ethereum-1/0x1b9aaf91dd71ea63487026908d06ab97c05d06a5/) | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | ethereum | n/a | [`0x0db0dd371646b62c0de87b72101009f50484b9a3`](./contracts/ethereum-1/0x0db0dd371646b62c0de87b72101009f50484b9a3/) | ⚠️ Unaudited |
| SecuritizeSwap | unknown | ethereum | n/a | [`0x4a107baec38840e744d397f6a7e90ffc36bee141`](./contracts/ethereum-1/0x4a107baec38840e744d397f6a7e90ffc36bee141/) | ⚠️ Unaudited |
| SecuritizeVault | unknown | ethereum | n/a | [`0x4535b360b4907b44b27cd499e07ed7772b723dea`](./contracts/ethereum-1/0x4535b360b4907b44b27cd499e07ed7772b723dea/) | ⚠️ Unaudited |
| Settlement | unknown | ethereum | n/a | [`0x6c97c9754880e569c8f098b3cc654089f7ac5fbb`](./contracts/ethereum-1/0x6c97c9754880e569c8f098b3cc654089f7ac5fbb/) | ⚠️ Unaudited |
| ShareToken | unknown | avalanche | n/a | [`0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b`](./contracts/avalanche-43114/0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b/) | ⚠️ Unaudited |
| StakingRewards | unknown | avalanche | n/a | [`0x6c6e0e35bb38b4051f8cf97205055a4d7d12ffb0`](./contracts/avalanche-43114/0x6c6e0e35bb38b4051f8cf97205055a4d7d12ffb0/) | ⚠️ Unaudited |
| TestToken | unknown | avalanche | n/a | [`0x3146c3ddef7c00d3dcc3cfd33041d0d677091977`](./contracts/avalanche-43114/0x3146c3ddef7c00d3dcc3cfd33041d0d677091977/) | ⚠️ Unaudited |
| TokenLibrary | unknown | ethereum | n/a | [`0x550bcacd69c722e19eee0599ef502c358ebc97e5`](./contracts/ethereum-1/0x550bcacd69c722e19eee0599ef502c358ebc97e5/) | ⚠️ Unaudited |
| TokenReallocator | unknown | ethereum | n/a | [`0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8`](./contracts/ethereum-1/0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8/) | ⚠️ Unaudited |
| Tranche | unknown | ethereum | n/a | [`0x5a0f93d040de44e78f251b03c43be9cf317dcf64`](./contracts/ethereum-1/0x5a0f93d040de44e78f251b03c43be9cf317dcf64/) | ⚠️ Unaudited |
| TransferRestrictions | unknown | avalanche | n/a | [`0x6b3890342be6d7287c477a100df9d549fdde0503`](./contracts/avalanche-43114/0x6b3890342be6d7287c477a100df9d549fdde0503/) | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | ethereum | n/a | [`0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab`](./contracts/ethereum-1/0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab/) | ⚠️ Unaudited |
| VaultRegistrar | unknown | ethereum | n/a | [`0x121d63424e6f8632602f8f67848a28209179711d`](./contracts/ethereum-1/0x121d63424e6f8632602f8f67848a28209179711d/) | ⚠️ Unaudited |
| VaultV2 | unknown | base | n/a | [`0xbeef0e0834849acc03f0089f01f4f1eeb06873c9`](./contracts/base-8453/0xbeef0e0834849acc03f0089f01f4f1eeb06873c9/) | ⚠️ Unaudited |
| WalletRegistrar | unknown | ethereum | n/a | [`0x04c360034c30803eaffcb5e2a4bf708a49194a6f`](./contracts/ethereum-1/0x04c360034c30803eaffcb5e2a4bf708a49194a6f/) | ⚠️ Unaudited |

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
| [aave.com/security](https://aave.com/security) | yAudit | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [01-11-2021_OpenZeppelin_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [07-01-2022_TrailOfBits_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [14-01-2022_PeckShield_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [19-04-2023_SigmaPrime_AaveV3-0-2.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/19-04-2023_SigmaPrime_AaveV3-0-2.pdf) | Sigma Prime | Audit | 2023-04 | stale | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf](https://github.com/sparkdotfi/sparklend-v1-core/blob/master/audits/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | n/a | unknown | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [Grove Basin Cantina Audit](https://cantina.xyz/portfolio/71794706-b078-4579-8f50-a9bd25d732d3) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [Grove Basin ChainSecurity Audit](https://reports.chainsecurity.com/GroveLabs/ChainSecurity_GroveLabs_Basin_Audit.pdf) | ChainSecurity | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [v160-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2025-08 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | contract_name|inherited | 14 | high |
| [v160-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 16 | high |
| [v180-certora-audit.pdf](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 16 | high |
| [v180-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-12 | fresh | Direct | contract_name | 16 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/grove-labs/grove-alm-controller/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | 16 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/grove-labs/grove-gov-relay/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v110-cantina-audit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [v120-certora-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-gov-relay/blob/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v120-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 16 | high |
| [v110-chainsecurity-audit.pdf](https://github.com/grove-labs/xchain-helpers/blob/d7bf92cd6182da577c5ff9912507997b7a516561/audits/v110-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [20260514-cantina-report-sky-xchain-ssr-oracle.pdf](https://github.com/sparkdotfi/xchain-ssr-oracle/blob/master/audits/20260514-cantina-report-sky-xchain-ssr-oracle.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [v120-cantina-audit.pdf](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-cantina-audit.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [v120-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/xchain-helpers/blob/master/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | contract_name|inherited | 6 | high |
| [20260504-cantina-report-sky-stusdsmom.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260504-cantina-report-sky-stusdsmom.pdf) | Spearbit | Audit | 2026-05 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf](https://github.com/sky-ecosystem/stusds/blob/master/audit/20260410-ChainSecurity_Sky_SkyStUSDS_Audit.pdf) | ChainSecurity | Audit | 2026-04 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [v100-cantina-audit.pdf](https://github.com/sparkdotfi/spark-savings-intents/blob/master/audits/v100-cantina-audit.pdf) | Spearbit | Audit | 2026-03 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | inherited | 3 | n/a |
| [v100-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/sparkdotfi/spark-savings-intents/blob/master/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Inherited from Spark — forked code, scoped to ForeignController, SparkArbitrumOne_20250417, SparkAvalanche_20251016, SparkEthereum_20250417, +13 more | contract_name|inherited | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x26e9512547fec1906c55256e491dfb6673d8c23f`](./contracts/avalanche-43114/0x26e9512547fec1906c55256e491dfb6673d8c23f/) | CCTPReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3146c3ddef7c00d3dcc3cfd33041d0d677091977`](./contracts/ethereum-1/0x3146c3ddef7c00d3dcc3cfd33041d0d677091977/) | DelegateCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2c0adff8e114f3ca106051144353ac703d24b901`](./contracts/avalanche-43114/0x2c0adff8e114f3ca106051144353ac703d24b901/) | GalaxyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x301dd323b97e1bb3ba6350c2eb3dad8dfa7a2d05`](./contracts/avalanche-43114/0x301dd323b97e1bb3ba6350c2eb3dad8dfa7a2d05/) | GalaxyToken1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a4084c86c165fdda77dadeacf8c9a1994bb4266`](./contracts/ethereum-1/0x4a4084c86c165fdda77dadeacf8c9a1994bb4266/) | MonadSpellConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c1bcc3265c7233304ae3c0f8c0f3970032ab26a`](./contracts/ethereum-1/0x5c1bcc3265c7233304ae3c0f8c0f3970032ab26a/) | MonadSpellNoSetup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a`](./contracts/base-8453/0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a/) | OptimismReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20236948b9c878789f23048ad81b44978869a31e`](./contracts/ethereum-1/0x20236948b9c878789f23048ad81b44978869a31e/) | PullTokenWrapperAllowImmutable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e9eb19fb06e56f5bd1e3207e7a61d39dd22c6b7`](./contracts/ethereum-1/0x1e9eb19fb06e56f5bd1e3207e7a61d39dd22c6b7/) | SandboxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b`](./contracts/avalanche-43114/0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b/) | ShareToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6c6e0e35bb38b4051f8cf97205055a4d7d12ffb0`](./contracts/avalanche-43114/0x6c6e0e35bb38b4051f8cf97205055a4d7d12ffb0/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3146c3ddef7c00d3dcc3cfd33041d0d677091977`](./contracts/avalanche-43114/0x3146c3ddef7c00d3dcc3cfd33041d0d677091977/) | TestToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a0f93d040de44e78f251b03c43be9cf317dcf64`](./contracts/ethereum-1/0x5a0f93d040de44e78f251b03c43be9cf317dcf64/) | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbeef0e0834849acc03f0089f01f4f1eeb06873c9`](./contracts/base-8453/0xbeef0e0834849acc03f0089f01f4f1eeb06873c9/) | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 31 |
| standard_library | 15 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=182, inherited_name_remap=48

Zero-match audit list:

- [20449] Grove Basin Cantina Audit
- [20450] Grove Basin ChainSecurity Audit
- [20465] v110-chainsecurity-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
