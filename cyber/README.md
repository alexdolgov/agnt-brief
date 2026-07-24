# Agentic Audit Brief: Cyber

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Cyber (`cyber`)
- Website: [https://cyber.co/](https://cyber.co/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bsc, ethereum, optimism
- Contract surface: 69 unique implementations (74 raw deployments)
- Coverage basis: 0/22 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $361,709.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cyber. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across base, bsc, ethereum, optimism. Structural roles: 18 core, 3 supporting, 1 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (18), supporting (3), infra (1)
- Contract kinds: contract (22)
- Detected standards: erc1967proxy (6), ownable (6), pausable (3), accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (17), openzeppelin-upgradeable (12), solmate (10), layerzero (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

1 of 41 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

**L1StandardBridge** (`0x01b46e02fce5fc0731076711affe73beecd87997`, chain 1)
Origin: stcyber (`0x01b46e...d87997`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x10e34efe14e4d270c0f77bf1af01b6c832161b49`, chain 1)
- UnnamedContract (`0x12a580c05466eefb2c467c6b115844cdaf55b255`, chain 1)
- UnnamedContract (`0x4f4b716627d2ba0439327ce8b563b4443af47dbd`, chain 1)
- UnnamedContract (`0x544dbfe87c3c308502371468b23386a9486c9680`, chain 1)
- UnnamedContract (`0x579f8dfdaf8f180050c67b5d41342d686f2b28a6`, chain 1)
- UnnamedContract (`0x6daf222ad565522bfc1d9ef3cc78751f6c007e6d`, chain 1)
- UnnamedContract (`0x726c6ac8a53061e56afb2c890545348ba6f0df0e`, chain 1)
- UnnamedContract (`0x7e54107731ec43e78da678dfa5fb6222ad036e03`, chain 1)
- UnnamedContract (`0x849d0821b1d313b65f6ff152176f4b6a0af7aa56`, chain 1)
- UnnamedContract (`0x985f187489954435ddf9571d45500184566e4b46`, chain 1)
- UnnamedContract (`0xa669a743b065828682ee16109273f5cfef5e676d`, chain 1)
- UnnamedContract (`0xbf4676f21a7889e0fd61bcdc9b98e60b01c1b36f`, chain 1)
- UnnamedContract (`0xc2e2d8150ae64367cadc3d47e98253e54b5458c7`, chain 1)
- UnnamedContract (`0xd9db270c1b5e3bd161e8c8503c55ceabee709552`, chain 1)
- UnnamedContract (`0x14778860e937f509e651192a90589de711fb88a9`, chain 10)
- UnnamedContract (`0x14778860e937f509e651192a90589de711fb88a9`, chain 56)
- UnnamedContract (`0x9a9d5a29206dde4f70825032df32333de5f63921`, chain 56)
- UnnamedContract (`0x14778860e937f509e651192a90589de711fb88a9`, chain 8453)
- UnnamedContract (`0x9a9d5a29206dde4f70825032df32333de5f63921`, chain 8453)
- AddressManager (`0x19b5804b88f10262a55ac731f28a3bbc4209853a`, chain 1)
- CyberToken (`0x14778860e937f509e651192a90589de711fb88a9`, chain 1)
- CyberTokenAdapter (`0xcb07992de144bdee56fdb66fff2454b43243b052`, chain 1)
- CyberTokenController (`0x9a9d5a29206dde4f70825032df32333de5f63921`, chain 10)
- DataAvailabilityChallenge (`0x0d93eaa86eb6948b977857750a5512bef6b05c51`, chain 1)
- DisputeGameFactory (`0xb79cf113e524043b3ef9bf7861a05900bb3649a3`, chain 1)
- GnosisSafeProxy (`0xc2259e7fb719411f97abdcdf449f6ba3b9d75398`, chain 1)
- GnosisSafeProxyFactory (`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`, chain 1)
- L1ERC721Bridge (`0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1`, chain 1)
- L2OutputOracle (`0x93e1c0d8ef27930130fb809ce18ca681a8c32f85`, chain 1)
- MIPS (`0x0048defca9f0da952cfd1ae9f8e962937d3e4143`, chain 1)
- OptimismPortal (`0xacfd93b4887cef4f05cf3440d150d2ce97339142`, chain 1)
- PreimageOracle (`0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde`, chain 1)
- Proxy (`0x1aec4c3be47c30d0befa7514cf9d99eac596959d`, chain 1)
- Proxy (`0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99`, chain 1)
- Proxy (`0x51a00470eb50d758ecff3b96db0bf4a8e86268f4`, chain 1)
- Proxy (`0x588dad44201885ff23068f1142e303d52d103919`, chain 1)
- Proxy (`0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055`, chain 1)
- Proxy (`0xa1780b58a75816f69ac34d606486d98824d41a73`, chain 1)
- ResolvedDelegateProxy (`0x3c01ebf22e9c111528c1e027d68944edab08dfc9`, chain 1)
- TimelockController (`0x81759adbf5520ad94da10991dfa29ff147d3337b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/22 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 37 of 69 unique; 32 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 69
- Raw deployments: 74
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

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234830 | `0x19b5804b88f10262a55ac731f28a3bbc4209853a` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ⚠️ Unaudited |
| CyberToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234829 | `0x14778860e937f509e651192a90589de711fb88a9` | ⚠️ Unaudited |
| CyberTokenAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234846 | `0xcb07992de144bdee56fdb66fff2454b43243b052` | ⚠️ Unaudited |
| CyberTokenController | unknown | project_anchor | own_supporting | 0 | optimism | unit-234848 | `0x9a9d5a29206dde4f70825032df32333de5f63921` | ⚠️ Unaudited |
| CyberVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2bbfc07948fedeb5935316203c33ce70bef57d0` | ⚠️ Unaudited |
| DataAvailabilityChallenge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234825 | `0x0d93eaa86eb6948b977857750a5512bef6b05c51` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234844 | `0xb79cf113e524043b3ef9bf7861a05900bb3649a3` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d034969c3a31f16ae3540c802facdcacfe57eb3` | ⚠️ Unaudited |
| ExecutorFeeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d6023c0d13f2c527818177a913fe7632434c461` | ⚠️ Unaudited |
| FaultDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96769a472f1d8e3d2719cc09cf4b4667e8d3bbcc` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234859 | 2 deployments: ethereum `0xc2259e7fb719411f97abdcdf449f6ba3b9d75398`; ethereum `0xd9db270c1b5e3bd161e8c8503c55ceabee709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234842 | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234827 | `0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234823 | `0x01b46e02fce5fc0731076711affe73beecd87997` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234839 | `0x93e1c0d8ef27930130fb809ce18ca681a8c32f85` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2bbfc07948fedeb5935316203c33ce70bef57d0` | ⚠️ Unaudited |
| MIPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234822 | `0x0048defca9f0da952cfd1ae9f8e962937d3e4143` | ⚠️ Unaudited |
| OptimismPortal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234843 | `0xacfd93b4887cef4f05cf3440d150d2ce97339142` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe42cc6ac1f47d1b343a631a31b6d242dbf36b0c` | ⚠️ Unaudited |
| PreimageOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234824 | `0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234853 | 2 deployments: ethereum `0x1aec4c3be47c30d0befa7514cf9d99eac596959d`; ethereum `0x579f8dfdaf8f180050c67b5d41342d686f2b28a6` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234861 | `0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234860 | `0x51a00470eb50d758ecff3b96db0bf4a8e86268f4` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234854 | 2 deployments: ethereum `0x588dad44201885ff23068f1142e303d52d103919`; ethereum `0x6daf222ad565522bfc1d9ef3cc78751f6c007e6d` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234855 | `0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234856 | 2 deployments: ethereum `0xa1780b58a75816f69ac34d606486d98824d41a73`; ethereum `0xc2e2d8150ae64367cadc3d47e98253e54b5458c7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7228cb5bd8f811490bf5af6ec4b50740259be3` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234858 | `0x3c01ebf22e9c111528c1e027d68944edab08dfc9` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234837 | `0x81759adbf5520ad94da10991dfa29ff147d3337b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa4ccfb0f513e9886743353fcaf6d63bf578199f2`; ethereum `0xeae8985742b0647bde180199e1dca3116a87acdd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090fcee3ae4132d3fd4363042c34e8e63a0c2352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234826 | `0x10e34efe14e4d270c0f77bf1af01b6c832161b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234828 | `0x12a580c05466eefb2c467c6b115844cdaf55b255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3efe22fa52f6789ddfc263cec5bcf435b14b77e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414066fd3dadc875531be2992770adab2ecb6366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234832 | `0x4f4b716627d2ba0439327ce8b563b4443af47dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522d3a9c2bc14ce1c4d210ed41ab239fded02f2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234833 | `0x544dbfe87c3c308502371468b23386a9486c9680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x557bc59ad1c68126f4f9ee9be0ee9d7710f68242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61c1ed69b3b89242b8e898b0f0aec7b19e2dbd58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234835 | `0x726c6ac8a53061e56afb2c890545348ba6f0df0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234836 | `0x7e54107731ec43e78da678dfa5fb6222ad036e03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234838 | `0x849d0821b1d313b65f6ff152176f4b6a0af7aa56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed1282a1ace084de1e99e9ce5ed68896c49d65f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234840 | `0x985f187489954435ddf9571d45500184566e4b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a9d5a29206dde4f70825032df32333de5f63921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa009a477af6c5a5d17c0fd27e8936000d3daec14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234841 | `0xa669a743b065828682ee16109273f5cfef5e676d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb998538b4c78e16a2ee7fbde1c30c708d3f265e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac5f491fa0f16baaae0b63c4d73c9fd4a2e14c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234845 | `0xbf4676f21a7889e0fd61bcdc9b98e60b01c1b36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0af6b8f188ade028a552ba7d778e896845922c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21f0ee3e77ca42ea727368f00a3f01c1270ba46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc30bb544864137c213cd6629b7eb3a03af3b2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb191bf30c45ae78229a81ab7548f6e1fb1d2ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb67d7738871e4e888848e307b9f666fb526f794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf128b972ae3cea776b2594117385002d4736c4a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf40c9e62ca1d6bdf14803725b7eaa86f5d470be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc4328e6888ee5079185dc1a3a0d0283a141bf36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe98ba9d562f8359981269c9e22fdbf02717b723` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-234847 | `0x14778860e937f509e651192a90589de711fb88a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-234849 | `0x14778860e937f509e651192a90589de711fb88a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-234850 | `0x9a9d5a29206dde4f70825032df32333de5f63921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-234851 | `0x14778860e937f509e651192a90589de711fb88a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-234852 | `0x9a9d5a29206dde4f70825032df32333de5f63921` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 21
- Live contracts: 0
- Unknown liveness contracts: 21
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=21

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x090fcee3ae4132d3fd4363042c34e8e63a0c2352` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0x414066fd3dadc875531be2992770adab2ecb6366` | non_address_book | unknown | unknown | unverified | n/a | `0x1a76ed328600489811f819959a74043f106cf0f9` |
| unverified unclassified | UnnamedContract<br>`0x557bc59ad1c68126f4f9ee9be0ee9d7710f68242` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0x61c1ed69b3b89242b8e898b0f0aec7b19e2dbd58` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0x8ed1282a1ace084de1e99e9ce5ed68896c49d65f` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | non_address_book | unknown | unknown | unverified | n/a | `0xe906b91103d216420f7ae13b29fde73ce9c206cd` |
| unverified unclassified | UnnamedContract<br>`0xa009a477af6c5a5d17c0fd27e8936000d3daec14` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xb998538b4c78e16a2ee7fbde1c30c708d3f265e9` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xbac5f491fa0f16baaae0b63c4d73c9fd4a2e14c2` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xc0af6b8f188ade028a552ba7d778e896845922c9` | non_address_book | unknown | unknown | unverified | n/a | `0xe906b91103d216420f7ae13b29fde73ce9c206cd` |
| unverified unclassified | UnnamedContract<br>`0xc21f0ee3e77ca42ea727368f00a3f01c1270ba46` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xcc30bb544864137c213cd6629b7eb3a03af3b2c9` | non_address_book | unknown | unknown | unverified | n/a | `0xe906b91103d216420f7ae13b29fde73ce9c206cd` |
| unverified unclassified | UnnamedContract<br>`0xdb191bf30c45ae78229a81ab7548f6e1fb1d2ebd` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xdb67d7738871e4e888848e307b9f666fb526f794` | non_address_book | unknown | unknown | unverified | n/a | `0xe906b91103d216420f7ae13b29fde73ce9c206cd` |
| unverified unclassified | UnnamedContract<br>`0xeae8985742b0647bde180199e1dca3116a87acdd` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xf128b972ae3cea776b2594117385002d4736c4a6` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xf40c9e62ca1d6bdf14803725b7eaa86f5d470be3` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xfc4328e6888ee5079185dc1a3a0d0283a141bf36` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0xfe98ba9d562f8359981269c9e22fdbf02717b723` | non_address_book | unknown | unknown | unverified | n/a | `0x0e0be581b17684f849af6964d731fce0f7d366bd` |
| unverified unclassified | UnnamedContract<br>`0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | non_address_book | unknown | unknown | unverified | n/a | `0xe906b91103d216420f7ae13b29fde73ce9c206cd` |
| unverified unclassified | UnnamedContract<br>`0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | non_address_book | unknown | unknown | unverified | n/a | `0xe906b91103d216420f7ae13b29fde73ce9c206cd` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x19b5804b88f10262a55ac731f28a3bbc4209853a` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14778860e937f509e651192a90589de711fb88a9` | CyberToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb07992de144bdee56fdb66fff2454b43243b052` | CyberTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x9a9d5a29206dde4f70825032df32333de5f63921` | CyberTokenController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d93eaa86eb6948b977857750a5512bef6b05c51` | DataAvailabilityChallenge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb79cf113e524043b3ef9bf7861a05900bb3649a3` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01b46e02fce5fc0731076711affe73beecd87997` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93e1c0d8ef27930130fb809ce18ca681a8c32f85` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0048defca9f0da952cfd1ae9f8e962937d3e4143` | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xacfd93b4887cef4f05cf3440d150d2ce97339142` | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde` | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3c01ebf22e9c111528c1e027d68944edab08dfc9` | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
