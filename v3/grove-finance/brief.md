# Agentic Audit Brief: Grove Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 23 (4 matched; 19 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Grove Finance (`grove-finance`)
- Website: [https://data.grove.finance/](https://data.grove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, ethereum
- Contract surface: 86 unique implementations (86 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,501,151,858.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Grove Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1369f7b2b38c76b6478c0f0e66d94923421891ba`, chain 1)
- UnnamedContract (`0x5c40dc1ccaa8ce64133d157ab838fa0c0f0d946f`, chain 1)
- UnnamedContract (`0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a`, chain 1)
- UnnamedContract (`0xa3931d71877c0e7a3148cb7eb4463524fec27fbd`, chain 1)
- UnnamedContract (`0xb30fe1cf884b48a22a50d22a9282004f2c5e9406`, chain 1)
- UnnamedContract (`0xdc035d45d973e3ec169d2276ddab16f1e407384f`, chain 1)
- UnnamedContract (`0xfd9dea9a8d5b955649579af482db7198a392a9f5`, chain 1)
- ALMProxy (`0x491edfb0b8b608044e227225c715981a30f3a44e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 78 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 14 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 8 of 86 unique; 78 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/79
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 11 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 1.3% | 2026-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ALMProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387093 | `0x491edfb0b8b608044e227225c715981a30f3a44e` | ✅ Audited |

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowanceAssetProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb743c527546f6e009d1e4c87bbf2095f061e6b39` | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa5dc1650cebf5e8db4a6070fa10702666f0ec3` | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a6282998ebc1ee5a41c0ccc8fd9fdab7769c493` | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a943134fc891f0d8ecc3c8f8dd3b25944fdc922` | ⚠️ Unaudited |
| CCTPReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26e9512547fec1906c55256e491dfb6673d8c23f` | ⚠️ Unaudited |
| CCTPv2Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54e39b82d43a6f1513d3ec69c2ac98ab3f49d9b2` | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a49ee732c76837b7e7e181e9c3c43946eed528c` | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x15023f401e6065a2b55db7a96297960b4b400f4c` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe79c1c7e24755574438a26d5e062ad2626c04662` | ⚠️ Unaudited |
| DelegateCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3146c3ddef7c00d3dcc3cfd33041d0d677091977` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63866ebe37dd39565d6f9b752e0a2177f70bd31b` | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e5d83ff1a6d32c53f25937664c53e9b57e37021` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x021840988add1cb60be98d8ba1c577e314b0c6aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0490a00cd72c4c51186afeb97c2d8b567261f814` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x04fb23ef3cb3eb559d0ba096fbfda90241ff8e66` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x05dae9bfbc82ed6bfa707087126f7af850f5385d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0656748e529baac7338a2dc99297bb9f568511a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x068d79fd744ed0b64c1a1d218683e699811492b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06ac066b0f918ca8a1d13a420035530085a780a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06d4bcbfa12782ea136f77fd6031ea364be8c565` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x078646dd17ef2b9d7c346ac76c426004c9210d91` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x07952f21df5068bfa900ff317e6aaf4fe376a561` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0885f310222f3c8d237b36861d1a84e551cd4aa3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x189fd44ef6901c1d096c95e41909d83743b97229` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ea550a49c0f6def620f734c6329c4c12a68ad4f` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x491edfb0b8b608044e227225c715981a30f3a44e` | ⚠️ Unaudited |
| ForeignController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08b045609a673996ca10fedbafae2395a21ba539` | ⚠️ Unaudited |
| GalaxyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c0adff8e114f3ca106051144353ac703d24b901` | ⚠️ Unaudited |
| GalaxyToken1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x301dd323b97e1bb3ba6350c2eb3dad8dfa7a2d05` | ⚠️ Unaudited |
| GlobalRegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d95f6064f2aa53d6b1c0eab826aeecc303e8c75` | ⚠️ Unaudited |
| GroveAvalanche_20250807 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ac0865e7fcad8b89850b83a709eec57569f919f` | ⚠️ Unaudited |
| GroveAvalanche_20250821 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde73d4ab2b728b3826aa18ac7acde71677a3ae4a` | ⚠️ Unaudited |
| GroveBase_20251113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cea53dcf28b603c0e3b6d05c0ad517d79a90dd1` | ⚠️ Unaudited |
| GroveEthereum_20250724 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8afc2c232716674b45cb131f858e870aa6acd9ff` | ⚠️ Unaudited |
| GroveEthereum_20250807 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25127f759b6f07020bf2206d31beb6ed04d1550` | ⚠️ Unaudited |
| GroveEthereum_20250821 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa533fed0f065def8dcfa6699aa3d73337302bed` | ⚠️ Unaudited |
| GroveEthereum_20251002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e7b3bfab1fb6267baecec034bbf7592f6b4e9b` | ⚠️ Unaudited |
| GroveEthereum_20251016 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a28fb43d5d3093904b889538277fb175b42ece` | ⚠️ Unaudited |
| GroveEthereum_20251030 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4a92f8375ef89165aef4639e640e077d7c656b` | ⚠️ Unaudited |
| GroveEthereum_20251113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d711e13bee2b12c774ee70c70997bdfc835a819` | ⚠️ Unaudited |
| GroveEthereum_20251211 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6772d7eaab1c2e275f46b99d8cce8d470fa790ab` | ⚠️ Unaudited |
| GroveEthereum_20260326 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e187473527938211187c85a414b19dd34ecd53` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe3190143eb552456f88464662f0c0c4ac67a77eb` | ⚠️ Unaudited |
| InvestorLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4d0fc75407de18bde9930cbbc3238ebac29fda` | ⚠️ Unaudited |
| IssuerMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02658cc68a706fdd8474619040d3d6df54e57b7d` | ⚠️ Unaudited |
| LZReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68705b4a440c7322d84788498d815f525c033936` | ⚠️ Unaudited |
| MainnetController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d142e958b56f44c8b745a2d36f218053addf683` | ⚠️ Unaudited |
| MbpsFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x184cb128c1d4778da88bbde95c35d199aaec649d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeef2b5fd3d94469b7782aebe6364e6e6fb1b709` | ⚠️ Unaudited |
| MonadSpellConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a4084c86c165fdda77dadeacf8c9a1994bb4266` | ⚠️ Unaudited |
| MonadSpellNoSetup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1bcc3265c7233304ae3c0f8c0f3970032ab26a` | ⚠️ Unaudited |
| OmnibusTBEController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1cf534f2bebe9c69bcbde5ab33a7d184d5d8035f` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0638033f826c88d8b540a26c0a31130694c63070` | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x226b44eaab75be8000b1700c413e42513bc7c66f` | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0051527b57ec296dcb6f28ff8e7c0820373c0c` | ⚠️ Unaudited |
| PullTokenWrapperAllowImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20236948b9c878789f23048ad81b44978869a31e` | ⚠️ Unaudited |
| RateLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a4ba6886be41db0783ca76540801bc3eebd39a0` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4580d3c5fff079bde60af9e98b62d4fb031ee0a0` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12263bef18d07c48940eaa56f7b2efc665169db8` | ⚠️ Unaudited |
| RegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ef785e8783a9daa336850df39d251d12749f2e4` | ⚠️ Unaudited |
| SandboxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e9eb19fb06e56f5bd1e3207e7a61d39dd22c6b7` | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b9aaf91dd71ea63487026908d06ab97c05d06a5` | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db0dd371646b62c0de87b72101009f50484b9a3` | ⚠️ Unaudited |
| SecuritizeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4a107baec38840e744d397f6a7e90ffc36bee141` | ⚠️ Unaudited |
| SecuritizeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4535b360b4907b44b27cd499e07ed7772b723dea` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c97c9754880e569c8f098b3cc654089f7ac5fbb` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58f93d6b1ef2f44ec379cb975657c132cbed3b6b` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6e0e35bb38b4051f8cf97205055a4d7d12ffb0` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3146c3ddef7c00d3dcc3cfd33041d0d677091977` | ⚠️ Unaudited |
| TokenLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x550bcacd69c722e19eee0599ef502c358ebc97e5` | ⚠️ Unaudited |
| TokenReallocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0002fcfc817cdc092526cd22fd90fa2c4f507cf8` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0f93d040de44e78f251b03c43be9cf317dcf64` | ⚠️ Unaudited |
| TransferRestrictions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b3890342be6d7287c477a100df9d549fdde0503` | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4665137f0138a639bc5b4dd3d88947b2b0cd66ab` | ⚠️ Unaudited |
| VaultRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121d63424e6f8632602f8f67848a28209179711d` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbeef0e0834849acc03f0089f01f4f1eeb06873c9` | ⚠️ Unaudited |
| WalletRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04c360034c30803eaffcb5e2a4bf708a49194a6f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387092 | `0x1369f7b2b38c76b6478c0f0e66d94923421891ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387094 | `0x5c40dc1ccaa8ce64133d157ab838fa0c0f0d946f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387095 | `0x5f5cfcb8a463868e37ab27b5eff3ba02112df19a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387096 | `0xa3931d71877c0e7a3148cb7eb4463524fec27fbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387097 | `0xb30fe1cf884b48a22a50d22a9282004f2c5e9406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387098 | `0xdc035d45d973e3ec169d2276ddab16f1e407384f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387099 | `0xfd9dea9a8d5b955649579af482db7198a392a9f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Grove Basin Cantina Audit](https://cantina.xyz/portfolio/71794706-b078-4579-8f50-a9bd25d732d3) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Grove Basin ChainSecurity Audit](https://reports.chainsecurity.com/GroveLabs/ChainSecurity_GroveLabs_Basin_Audit.pdf) | ChainSecurity | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [v160-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [v160-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [v180-certora-audit.pdf](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [v180-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 25 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/grove-labs/grove-alm-controller/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/grove-labs/grove-gov-relay/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v110-cantina-audit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/grove-labs/grove-gov-relay/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [v120-certora-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-gov-relay/blob/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v120-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [v110-chainsecurity-audit.pdf](https://github.com/grove-labs/xchain-helpers/blob/d7bf92cd6182da577c5ff9912507997b7a516561/audits/v110-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [v100-chainsecurity-audit.pdf](https://github.com/grove-labs/grove-gov-relay/blob/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20449] Grove Basin Cantina Audit — no match: No scope section or contract names found in the provided text.
- [20450] Grove Basin ChainSecurity Audit — no match: Extracted 27 contract names from the scope table and additional files added in later versions. Audit date from cover page.
- [20451] v160-cantina-audit.pdf — no match: The report does not have a dedicated scope section. Contract names were extracted from findings context. The audit date is from the cover page.
- [20452] v160-chainsecurity-audit.pdf — matched: All contracts listed in the scope table (Section 2.1) are extracted. The audit date is from the cover page.
- [20453] v180-certora-audit.pdf — no match: Extracted contracts from scope table and findings. Libraries are included as they are explicitly in scope (src/libraries/*). Audit date is the end date of the engagement (December 5, 2025).
- [20454] v180-chainsecurity-audit.pdf — matched: Extracted 26 contract names from the scope table and version additions. Audit date from cover page.
- [20456] Rendered PDF capture — no match: Extracted contracts from scope table and findings. Libraries UniswapV3Lib, CurveLib, PendleLib, CCTPLib are in scope as part of src/libraries/*. Audit date from 'December 5, 2025' in project scope section.
- [20458] Rendered PDF capture — no match: No explicit scope section; contracts inferred from findings and deployment scripts. Audit date from cover page.
- [20459] Rendered PDF capture — no match: Two contracts in scope: Executor.sol and IExecutor.sol. Audit date from cover page.
- [20462] v120-certora-audit.pdf — no match: Extracted contracts from scope table and findings. Libraries UniswapV3Lib, CurveLib, PendleLib, CCTPLib are in scope via src/libraries/*. Audit date from work period end date.
- [20465] v110-chainsecurity-audit.pdf — no match: Only one contract in scope: ArbitrumERC20Forwarder.sol. Audit date from cover page and version table.
- [20485] v100-chainsecurity-audit.pdf — no match: Two contracts in scope: Executor and IExecutor. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Grove Basin ChainSecurity Audit | GroveBasin | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | GroveBasinFactory | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IAaveV3PoolLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IAsyncVaultLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IChronicleOracleLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IERC4626VaultLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IGroveBasin | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IGroveBasinPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IGroveRateProvider | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IPSMLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | ITokenRedeemer | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | AaveV3UsdtPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | BasePocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | MorphoUsdtPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | UsdsUsdcPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | ChronicleRateProvider | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | FixedRateProvider | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | BUIDLTokenRedeemer | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | JTRSYTokenRedeemer | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IATokenLike | unmatched — not counted | — | added in Version 2 scope | no |
| Grove Basin ChainSecurity Audit | DeployChronicleRateProvider | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | DeployFixedRateProvider | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | DeployTimelockController | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | BasinSetup | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | SetupBUIDLUsdsUsdcBasin | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | SetupJTRSYMorphoUsdtBasin | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | SetupJTRSYUsdsUsdcBasin | unmatched — not counted | — | added in Version 5 scope | no |
| v160-cantina-audit.pdf | MainnetController | unmatched — not counted | — | mentioned in findings context | no |
| v160-cantina-audit.pdf | ForeignController | unmatched — not counted | — | mentioned in findings context | no |
| v160-cantina-audit.pdf | CentrifugeInterfaces | unmatched — not counted | — | mentioned in findings context | no |
| v160-chainsecurity-audit.pdf | ALMProxy | own contract | ALMProxy (selected) `0x491edfb0b8b608044e227225c715981a30f3a44e` — deployed 2025-04-01 12:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v160-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CentrifugeInterfaces | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CentrifugeLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | Deploy | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | UniswapV3Lib | unmatched — not counted | — | mentioned in findings H-01, L-03 | no |
| v180-certora-audit.pdf | CurveLib | unmatched — not counted | — | mentioned in finding M-01 | no |
| v180-certora-audit.pdf | PendleLib | unmatched — not counted | — | mentioned in finding L-02 | no |
| v180-certora-audit.pdf | CCTPLib | unmatched — not counted | — | mentioned in finding L-01 | no |
| v180-chainsecurity-audit.pdf | ALMProxy | own contract | ALMProxy (selected) `0x491edfb0b8b608044e227225c715981a30f3a44e` — deployed 2025-04-01 12:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v180-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CentrifugeInterfaces | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CentrifugeLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | PendleInterfaces | unmatched — not counted | — | added in Version 2 scope | no |
| v180-chainsecurity-audit.pdf | PendleLib | unmatched — not counted | — | added in Version 2 scope | no |
| v180-chainsecurity-audit.pdf | MerklInterfaces | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | UniswapV3Interfaces | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | MerklLib | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | UniswapV3Lib | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | ERC20Lib | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | MathLib | unmatched — not counted | — | added in Version 5 scope | no |
| Rendered PDF capture | MainnetController | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | ForeignController | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | Deploy | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | UniswapV3Lib | unmatched — not counted | — | mentioned in findings and scope | no |
| Rendered PDF capture | CurveLib | unmatched — not counted | — | mentioned in findings and scope | no |
| Rendered PDF capture | PendleLib | unmatched — not counted | — | mentioned in findings | no |
| Rendered PDF capture | CCTPLib | unmatched — not counted | — | mentioned in findings | no |
| Rendered PDF capture | ArbitrumERC20Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ArbitrumERC20ForwarderExecutor | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| Rendered PDF capture | Executor | unmatched — not counted | — | mentioned in deployment scripts and findings | no |
| Rendered PDF capture | ArbitrumReceiver | unmatched — not counted | — | mentioned in deployment scripts and findings | no |
| Rendered PDF capture | MessageOrdering | unmatched — not counted | — | mentioned in test code in findings | no |
| Rendered PDF capture | Executor | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | IExecutor | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | ArbitrumERC20Forwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | Deploy | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | UniswapV3Lib | unmatched — not counted | — | mentioned in findings H-01, L-03 | no |
| v120-certora-audit.pdf | CurveLib | unmatched — not counted | — | mentioned in finding M-01 | no |
| v120-certora-audit.pdf | PendleLib | unmatched — not counted | — | mentioned in finding L-02 | no |
| v120-certora-audit.pdf | CCTPLib | unmatched — not counted | — | mentioned in finding L-01 | no |
| v110-chainsecurity-audit.pdf | ArbitrumERC20Forwarder | unmatched — not counted | — | listed in scope table and section 2.1 | no |
| v100-chainsecurity-audit.pdf | Executor | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | IExecutor | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 31 |
| standard_library | 15 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=1, medium=2
- Match method counts: unique_name=4

Zero-match audit list:

- [20449] Grove Basin Cantina Audit
- [20450] Grove Basin ChainSecurity Audit
- [20451] v160-cantina-audit.pdf
- [20453] v180-certora-audit.pdf
- [20456] Rendered PDF capture
- [20458] Rendered PDF capture
- [20459] Rendered PDF capture
- [20462] v120-certora-audit.pdf
- [20465] v110-chainsecurity-audit.pdf
- [20485] v100-chainsecurity-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
