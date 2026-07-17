# Agentic Audit Brief: stCYBER

## Project Overview

- Project: stCYBER (`stcyber`)
- Website: [https://cyber.co/stake](https://cyber.co/stake)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.917Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: base, bsc, ethereum, optimism
- Contract surface: 40 unique implementations (58 raw deployments)
- DeFi Llama TVL: $1,106,721.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 35 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 5 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 55 (47 live, 8 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/31 (3.2%)
- Deployed-live implementations: 32 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 40
- Raw deployments: 58
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 3.2% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 3.1% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CyberStakingPool | core_logic | ethereum | n/a | [`0x18eed20f71bef84b605253c89a7576e3634134c0`](./contracts/ethereum-1/0x18eed20f71bef84b605253c89a7576e3634134c0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x19b5804b88f10262a55ac731f28a3bbc4209853a`](./contracts/ethereum-1/0x19b5804b88f10262a55ac731f28a3bbc4209853a/) | ⚠️ Unaudited |
| CyberToken | token | ethereum | n/a | 4 deployments: ethereum [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/); optimism [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/optimism-10/0x14778860e937f509e651192a90589de711fb88a9/); bsc [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/bsc-56/0x14778860e937f509e651192a90589de711fb88a9/); base [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/base-8453/0x14778860e937f509e651192a90589de711fb88a9/) | ⚠️ Unaudited |
| CyberTokenAdapter | adapter | ethereum | n/a | [`0xcb07992de144bdee56fdb66fff2454b43243b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | ⚠️ Unaudited |
| CyberTokenController | governance | optimism | n/a | 3 deployments: optimism [`0x9a9d5a29206dde4f70825032df32333de5f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/); bsc [`0x9a9d5a29206dde4f70825032df32333de5f63921`](./contracts/bsc-56/0x9a9d5a29206dde4f70825032df32333de5f63921/); base [`0x9a9d5a29206dde4f70825032df32333de5f63921`](./contracts/base-8453/0x9a9d5a29206dde4f70825032df32333de5f63921/) | ⚠️ Unaudited |
| CyberVesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0xb2bbfc07948fedeb5935316203c33ce70bef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/); ethereum `0xc0af6b8f188ade028a552ba7d778e896845922c9`; ethereum `0xcc30bb544864137c213cd6629b7eb3a03af3b2c9`; ethereum `0xdb67d7738871e4e888848e307b9f666fb526f794` | ⚠️ Unaudited |
| DataAvailabilityChallenge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d93eaa86eb6948b977857750a5512bef6b05c51`](./contracts/ethereum-1/0x0d93eaa86eb6948b977857750a5512bef6b05c51/); ethereum `0x10e34efe14e4d270c0f77bf1af01b6c832161b49` | ⚠️ Unaudited |
| DelayedWETH | unknown | ethereum | n/a | [`0x588dad44201885ff23068f1142e303d52d103919`](./contracts/ethereum-1/0x588dad44201885ff23068f1142e303d52d103919/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0xbf4676f21a7889e0fd61bcdc9b98e60b01c1b36f`](./contracts/ethereum-1/0xbf4676f21a7889e0fd61bcdc9b98e60b01c1b36f/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d034969c3a31f16ae3540c802facdcacfe57eb3`](./contracts/ethereum-1/0x2d034969c3a31f16ae3540c802facdcacfe57eb3/); ethereum `0x557bc59ad1c68126f4f9ee9be0ee9d7710f68242` | ⚠️ Unaudited |
| ExecutorFeeLib | unknown | ethereum | n/a | [`0x8d6023c0d13f2c527818177a913fe7632434c461`](./contracts/ethereum-1/0x8d6023c0d13f2c527818177a913fe7632434c461/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x3c01ebf22e9c111528c1e027d68944edab08dfc9`](./contracts/ethereum-1/0x3c01ebf22e9c111528c1e027d68944edab08dfc9/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x849d0821b1d313b65f6ff152176f4b6a0af7aa56`](./contracts/ethereum-1/0x849d0821b1d313b65f6ff152176f4b6a0af7aa56/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | [`0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1`](./contracts/ethereum-1/0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x4f4b716627d2ba0439327ce8b563b4443af47dbd`](./contracts/ethereum-1/0x4f4b716627d2ba0439327ce8b563b4443af47dbd/) | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | n/a | [`0x01b46e02fce5fc0731076711affe73beecd87997`](./contracts/ethereum-1/0x01b46e02fce5fc0731076711affe73beecd87997/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x12a580c05466eefb2c467c6b115844cdaf55b255`](./contracts/ethereum-1/0x12a580c05466eefb2c467c6b115844cdaf55b255/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0xa669a743b065828682ee16109273f5cfef5e676d`](./contracts/ethereum-1/0xa669a743b065828682ee16109273f5cfef5e676d/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x0048defca9f0da952cfd1ae9f8e962937d3e4143`](./contracts/ethereum-1/0x0048defca9f0da952cfd1ae9f8e962937d3e4143/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x51a00470eb50d758ecff3b96db0bf4a8e86268f4`](./contracts/ethereum-1/0x51a00470eb50d758ecff3b96db0bf4a8e86268f4/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0x985f187489954435ddf9571d45500184566e4b46`](./contracts/ethereum-1/0x985f187489954435ddf9571d45500184566e4b46/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0xacfd93b4887cef4f05cf3440d150d2ce97339142`](./contracts/ethereum-1/0xacfd93b4887cef4f05cf3440d150d2ce97339142/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99`](./contracts/ethereum-1/0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x544dbfe87c3c308502371468b23386a9486c9680`](./contracts/ethereum-1/0x544dbfe87c3c308502371468b23386a9486c9680/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde`](./contracts/ethereum-1/0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4ccfb0f513e9886743353fcaf6d63bf578199f2`](./contracts/ethereum-1/0xa4ccfb0f513e9886743353fcaf6d63bf578199f2/); ethereum `0xeae8985742b0647bde180199e1dca3116a87acdd` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0xa1780b58a75816f69ac34d606486d98824d41a73`](./contracts/ethereum-1/0xa1780b58a75816f69ac34d606486d98824d41a73/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 8 deployments: ethereum [`0x4a7228cb5bd8f811490bf5af6ec4b50740259be3`](./contracts/ethereum-1/0x4a7228cb5bd8f811490bf5af6ec4b50740259be3/); ethereum `0x7e54107731ec43e78da678dfa5fb6222ad036e03`; ethereum `0xa009a477af6c5a5d17c0fd27e8936000d3daec14`; ethereum `0xb998538b4c78e16a2ee7fbde1c30c708d3f265e9`; ethereum `0xbac5f491fa0f16baaae0b63c4d73c9fd4a2e14c2`; ethereum `0xc21f0ee3e77ca42ea727368f00a3f01c1270ba46`; ethereum `0xdb191bf30c45ae78229a81ab7548f6e1fb1d2ebd`; ethereum `0xfc4328e6888ee5079185dc1a3a0d0283a141bf36` | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x1aec4c3be47c30d0befa7514cf9d99eac596959d`](./contracts/ethereum-1/0x1aec4c3be47c30d0befa7514cf9d99eac596959d/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055`](./contracts/ethereum-1/0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | [`0x726c6ac8a53061e56afb2c890545348ba6f0df0e`](./contracts/ethereum-1/0x726c6ac8a53061e56afb2c890545348ba6f0df0e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x090fcee3ae4132d3fd4363042c34e8e63a0c2352` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x414066fd3dadc875531be2992770adab2ecb6366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ed1282a1ace084de1e99e9ce5ed68896c49d65f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf128b972ae3cea776b2594117385002d4736c4a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf40c9e62ca1d6bdf14803725b7eaa86f5d470be3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b20927a5dbf71d0539d48173c5f5b342bc67798` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - Cyber Token Bridges.pdf](https://github.com/cyberconnecthq/cyber-token-bridges/blob/main/audit/SlowMist%20Audit%20Report%20-%20Cyber%20Token%20Bridges.pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x19b5804b88f10262a55ac731f28a3bbc4209853a`](./contracts/ethereum-1/0x19b5804b88f10262a55ac731f28a3bbc4209853a/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/) | CyberToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb07992de144bdee56fdb66fff2454b43243b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | CyberTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9a9d5a29206dde4f70825032df32333de5f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/) | CyberTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2bbfc07948fedeb5935316203c33ce70bef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | CyberVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d93eaa86eb6948b977857750a5512bef6b05c51`](./contracts/ethereum-1/0x0d93eaa86eb6948b977857750a5512bef6b05c51/) | DataAvailabilityChallenge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x588dad44201885ff23068f1142e303d52d103919`](./contracts/ethereum-1/0x588dad44201885ff23068f1142e303d52d103919/) | DelayedWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf4676f21a7889e0fd61bcdc9b98e60b01c1b36f`](./contracts/ethereum-1/0xbf4676f21a7889e0fd61bcdc9b98e60b01c1b36f/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d034969c3a31f16ae3540c802facdcacfe57eb3`](./contracts/ethereum-1/0x2d034969c3a31f16ae3540c802facdcacfe57eb3/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d6023c0d13f2c527818177a913fe7632434c461`](./contracts/ethereum-1/0x8d6023c0d13f2c527818177a913fe7632434c461/) | ExecutorFeeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c01ebf22e9c111528c1e027d68944edab08dfc9`](./contracts/ethereum-1/0x3c01ebf22e9c111528c1e027d68944edab08dfc9/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x849d0821b1d313b65f6ff152176f4b6a0af7aa56`](./contracts/ethereum-1/0x849d0821b1d313b65f6ff152176f4b6a0af7aa56/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1`](./contracts/ethereum-1/0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f4b716627d2ba0439327ce8b563b4443af47dbd`](./contracts/ethereum-1/0x4f4b716627d2ba0439327ce8b563b4443af47dbd/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b46e02fce5fc0731076711affe73beecd87997`](./contracts/ethereum-1/0x01b46e02fce5fc0731076711affe73beecd87997/) | L1StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12a580c05466eefb2c467c6b115844cdaf55b255`](./contracts/ethereum-1/0x12a580c05466eefb2c467c6b115844cdaf55b255/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa669a743b065828682ee16109273f5cfef5e676d`](./contracts/ethereum-1/0xa669a743b065828682ee16109273f5cfef5e676d/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0048defca9f0da952cfd1ae9f8e962937d3e4143`](./contracts/ethereum-1/0x0048defca9f0da952cfd1ae9f8e962937d3e4143/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a00470eb50d758ecff3b96db0bf4a8e86268f4`](./contracts/ethereum-1/0x51a00470eb50d758ecff3b96db0bf4a8e86268f4/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x985f187489954435ddf9571d45500184566e4b46`](./contracts/ethereum-1/0x985f187489954435ddf9571d45500184566e4b46/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacfd93b4887cef4f05cf3440d150d2ce97339142`](./contracts/ethereum-1/0xacfd93b4887cef4f05cf3440d150d2ce97339142/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99`](./contracts/ethereum-1/0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x544dbfe87c3c308502371468b23386a9486c9680`](./contracts/ethereum-1/0x544dbfe87c3c308502371468b23386a9486c9680/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde`](./contracts/ethereum-1/0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ccfb0f513e9886743353fcaf6d63bf578199f2`](./contracts/ethereum-1/0xa4ccfb0f513e9886743353fcaf6d63bf578199f2/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1780b58a75816f69ac34d606486d98824d41a73`](./contracts/ethereum-1/0xa1780b58a75816f69ac34d606486d98824d41a73/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aec4c3be47c30d0befa7514cf9d99eac596959d`](./contracts/ethereum-1/0x1aec4c3be47c30d0befa7514cf9d99eac596959d/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055`](./contracts/ethereum-1/0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x726c6ac8a53061e56afb2c890545348ba6f0df0e`](./contracts/ethereum-1/0x726c6ac8a53061e56afb2c890545348ba6f0df0e/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
