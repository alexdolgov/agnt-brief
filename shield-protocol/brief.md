# Agentic Audit Brief: Shield Protocol

## Project Overview

- Project: Shield Protocol (`shield-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.104Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 38 unique implementations (59 raw deployments)
- DeFi Llama TVL: $34,498.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 21 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (xtoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 44 (34 live, 10 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/26 (0.0%)
- Deployed-live implementations: 28 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 38
- Raw deployments: 59
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AndyShieldOracle | operational_periphery | bsc | n/a | [`0x46a336...3a9bc1`](./contracts/bsc-56/0x46a336a42741eb7e8282d27740c3063c453a9bc1/) | ⚠️ Unaudited |
| ANDYX | unknown | bsc | n/a | 2 deployments: bsc [`0x38cda1...14e996`](./contracts/bsc-56/0x38cda149f8d9886b0bb43aef348b40654c14e996/); bsc `0xbfe801...09e668` | ⚠️ Unaudited |
| AndyZapper | adapter | bsc | n/a | 2 deployments: bsc [`0x46a0d3...7ed58d`](./contracts/bsc-56/0x46a0d3bffd59fae0fa649637d3a3327ce67ed58d/); bsc `0x5e0c30...988f42` | ⚠️ Unaudited |
| AndyZapper | adapter | bsc | n/a | [`0xd19626...922874`](./contracts/bsc-56/0xd1962687b4b86f044aa7d66549c5e73313922874/) | ⚠️ Unaudited |
| BNBX | unknown | bsc | n/a | 2 deployments: bsc [`0x97a9ea...b02089`](./contracts/bsc-56/0x97a9eab08beee492e1990f0c1cf7e8a4d9b02089/); bsc `0xcf4a68...16207d` | ⚠️ Unaudited |
| CollateralUpdater | unknown | bsc | n/a | [`0xacbb17...4acdc0`](./contracts/bsc-56/0xacbb1791a113f4ee8dac1d0655a442759a4acdc0/) | ⚠️ Unaudited |
| GUARDX | unknown | bsc | n/a | 2 deployments: bsc [`0x28fdac...dfe87c`](./contracts/bsc-56/0x28fdac16bd4b0db82296faf5d9a531a65ddfe87c/); bsc `0xfafea5...a8b8cf` | ⚠️ Unaudited |
| MasterOracleAndy | operational_periphery | bsc | n/a | [`0x034d1f...c56f04`](./contracts/bsc-56/0x034d1fefc4727c3ffb2b6d16c856df04c6c56f04/) | ⚠️ Unaudited |
| MasterOracleGuard | operational_periphery | bsc | n/a | [`0x26fe02...83208c`](./contracts/bsc-56/0x26fe020cb83732b06206e5ce7f890e43db83208c/) | ⚠️ Unaudited |
| OracleUpdater | operational_periphery | bsc | n/a | [`0x1fa5b0...bedc80`](./contracts/bsc-56/0x1fa5b0b4eec50aa067462cc6207548be4abedc80/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 2 deployments: bsc [`0xa976a4...d615fa`](./contracts/bsc-56/0xa976a4ba5076f1264e0f8ffb5b9ff4ac9fd615fa/); bsc `0xb5a343...ce8f68` | ⚠️ Unaudited |
| Pool | unknown | bsc | n/a | 2 deployments: bsc [`0x8e2004...8ad00d`](./contracts/bsc-56/0x8e2004ddda433819a8547315a1032f36cd8ad00d/); bsc `0xcc4089...15ecd4` | ⚠️ Unaudited |
| PoolAndy | core_logic | bsc | n/a | 2 deployments: bsc [`0x552da2...5fa619`](./contracts/bsc-56/0x552da260cde6ac1f96cd07874ae276a7195fa619/); bsc `0xb91db5...0bde91` | ⚠️ Unaudited |
| PoolGuard | unknown | bsc | n/a | 2 deployments: bsc [`0x220866...e58ebe`](./contracts/bsc-56/0x220866e7b1b740240ce38ca5391258cc69e58ebe/); bsc `0xdd2ad3...6f7e90` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | [`0xfca16c...7df07f`](./contracts/bsc-56/0xfca16c04cb4744228faec361979b2c698c7df07f/) | ⚠️ Unaudited |
| Shield | unknown | bsc | n/a | [`0xd9e90d...935710`](./contracts/bsc-56/0xd9e90df21f4229249e8841580cde7048bf935710/) | ⚠️ Unaudited |
| ShieldDaoChefFee | unknown | bsc | n/a | 2 deployments: bsc [`0xd8d4bf...92644c`](./contracts/bsc-56/0xd8d4bf1bcb9db777188a20ee458e9f560092644c/); bsc `0xda1e95...619ceb` | ⚠️ Unaudited |
| ShieldDaoStaking | unknown | bsc | n/a | 2 deployments: bsc [`0x36d7fa...7bf843`](./contracts/bsc-56/0x36d7fa1c701aaa811f8736c40435c50bb77bf843/); bsc `0xbcd570...f746d4` | ⚠️ Unaudited |
| ShieldDaoStaking | unknown | bsc | n/a | 2 deployments: bsc [`0x6d8ab2...fbeb14`](./contracts/bsc-56/0x6d8ab2b67206049acffba650fe459b6cf7fbeb14/); bsc `0x7ae6ef...3d99fa` | ⚠️ Unaudited |
| ShieldDaoStaking | unknown | bsc | n/a | 2 deployments: bsc [`0x9b3750...f6715e`](./contracts/bsc-56/0x9b3750c273a94f673cc20fd9dcc4b4574cf6715e/); bsc `0xab5037...8e37cf` | ⚠️ Unaudited |
| ShieldDaoTreasury | unknown | bsc | n/a | 2 deployments: bsc [`0x9b9ac5...ad9a61`](./contracts/bsc-56/0x9b9ac5f5508e723687b483f53ecea768d9ad9a61/); bsc `0xde216b...2ea9fe` | ⚠️ Unaudited |
| ShieldDaoZapWethSwap | adapter | bsc | n/a | 2 deployments: bsc [`0x27d22b...72e68c`](./contracts/bsc-56/0x27d22b46294e4204af76494cbc9a221ab072e68c/); bsc `0xb5e811...ddcdb6` | ⚠️ Unaudited |
| ShieldDaoZapWethSwapMultiHop | unknown | bsc | n/a | 3 deployments: bsc [`0x03aea2...daad66`](./contracts/bsc-56/0x03aea2046b9ef92930643cd1682fe1bc50daad66/); bsc `0x22f974...ef958e`; bsc `0x56cdab...32c188` | ⚠️ Unaudited |
| SHIELDPointSystem | unknown | bsc | n/a | 2 deployments: bsc [`0x54d89b...8fab18`](./contracts/bsc-56/0x54d89b6d1cd91151807262dcaebbf8b6d48fab18/); bsc `0x87786b...e84558` | ⚠️ Unaudited |
| SHIELDReserve | unknown | bsc | n/a | 2 deployments: bsc [`0x11fd47...d647be`](./contracts/bsc-56/0x11fd476a7e14e50b514a452b9b2d847366d647be/); bsc `0x2010df...805198` | ⚠️ Unaudited |
| SwapStrategySHIELD | unknown | bsc | n/a | 3 deployments: bsc [`0x5e2bab...97ae5f`](./contracts/bsc-56/0x5e2bab8c23f377f4d4ce6e77e00e346d0197ae5f/); bsc `0x8473a4...1810d6`; bsc `0x9dc365...fad2a2` | ⚠️ Unaudited |
| SwapStrategySHLDGUARD | unknown | bsc | n/a | 2 deployments: bsc [`0xbb93f1...49e0d6`](./contracts/bsc-56/0xbb93f170b058e7f0e7fc73f589fa43c39b49e0d6/); bsc `0xc0af55...af8889` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x9938db...e58e12`](./contracts/bsc-56/0x9938dbe760d77496ff97a31fca47d42bb0e58e12/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0e6f0d...8b7ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188006...006901` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22c593...afc12e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28480e...649caf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x751e34...b44918` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f01d...a20f05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e6d69...e3751f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88ee08...eaaa5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9aceea...c11361` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ce456...2df8b7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Shield_Protocol_0xD9E90DF21F4229249E8841580cDE7048bF935710.pdf](https://spywolf.co/audits/Shield_Protocol_0xD9E90DF21F4229249E8841580cDE7048bF935710.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x46a336...3a9bc1`](./contracts/bsc-56/0x46a336a42741eb7e8282d27740c3063c453a9bc1/) | AndyShieldOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x38cda1...14e996`](./contracts/bsc-56/0x38cda149f8d9886b0bb43aef348b40654c14e996/) | ANDYX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46a0d3...7ed58d`](./contracts/bsc-56/0x46a0d3bffd59fae0fa649637d3a3327ce67ed58d/) | AndyZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd19626...922874`](./contracts/bsc-56/0xd1962687b4b86f044aa7d66549c5e73313922874/) | AndyZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97a9ea...b02089`](./contracts/bsc-56/0x97a9eab08beee492e1990f0c1cf7e8a4d9b02089/) | BNBX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xacbb17...4acdc0`](./contracts/bsc-56/0xacbb1791a113f4ee8dac1d0655a442759a4acdc0/) | CollateralUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28fdac...dfe87c`](./contracts/bsc-56/0x28fdac16bd4b0db82296faf5d9a531a65ddfe87c/) | GUARDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x034d1f...c56f04`](./contracts/bsc-56/0x034d1fefc4727c3ffb2b6d16c856df04c6c56f04/) | MasterOracleAndy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26fe02...83208c`](./contracts/bsc-56/0x26fe020cb83732b06206e5ce7f890e43db83208c/) | MasterOracleGuard | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa5b0...bedc80`](./contracts/bsc-56/0x1fa5b0b4eec50aa067462cc6207548be4abedc80/) | OracleUpdater | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa976a4...d615fa`](./contracts/bsc-56/0xa976a4ba5076f1264e0f8ffb5b9ff4ac9fd615fa/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8e2004...8ad00d`](./contracts/bsc-56/0x8e2004ddda433819a8547315a1032f36cd8ad00d/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x552da2...5fa619`](./contracts/bsc-56/0x552da260cde6ac1f96cd07874ae276a7195fa619/) | PoolAndy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x220866...e58ebe`](./contracts/bsc-56/0x220866e7b1b740240ce38ca5391258cc69e58ebe/) | PoolGuard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd9e90d...935710`](./contracts/bsc-56/0xd9e90df21f4229249e8841580cde7048bf935710/) | Shield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd8d4bf...92644c`](./contracts/bsc-56/0xd8d4bf1bcb9db777188a20ee458e9f560092644c/) | ShieldDaoChefFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x36d7fa...7bf843`](./contracts/bsc-56/0x36d7fa1c701aaa811f8736c40435c50bb77bf843/) | ShieldDaoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6d8ab2...fbeb14`](./contracts/bsc-56/0x6d8ab2b67206049acffba650fe459b6cf7fbeb14/) | ShieldDaoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9b3750...f6715e`](./contracts/bsc-56/0x9b3750c273a94f673cc20fd9dcc4b4574cf6715e/) | ShieldDaoStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9b9ac5...ad9a61`](./contracts/bsc-56/0x9b9ac5f5508e723687b483f53ecea768d9ad9a61/) | ShieldDaoTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27d22b...72e68c`](./contracts/bsc-56/0x27d22b46294e4204af76494cbc9a221ab072e68c/) | ShieldDaoZapWethSwap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03aea2...daad66`](./contracts/bsc-56/0x03aea2046b9ef92930643cd1682fe1bc50daad66/) | ShieldDaoZapWethSwapMultiHop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54d89b...8fab18`](./contracts/bsc-56/0x54d89b6d1cd91151807262dcaebbf8b6d48fab18/) | SHIELDPointSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11fd47...d647be`](./contracts/bsc-56/0x11fd476a7e14e50b514a452b9b2d847366d647be/) | SHIELDReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e2bab...97ae5f`](./contracts/bsc-56/0x5e2bab8c23f377f4d4ce6e77e00e346d0197ae5f/) | SwapStrategySHIELD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb93f1...49e0d6`](./contracts/bsc-56/0xbb93f170b058e7f0e7fc73f589fa43c39b49e0d6/) | SwapStrategySHLDGUARD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13822] Shield_Protocol_0xD9E90DF21F4229249E8841580cDE7048bF935710.pdf

Fork inheritance lineage and inherited audits are included when available.
