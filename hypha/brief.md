# Agentic Audit Brief: Hypha

## Project Overview

- Project: Hypha (`hypha`)
- Website: [https://www.hypha.sh/](https://www.hypha.sh/)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-19T06:14:22.437Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: avalanche
- Contract surface: 23 unique implementations (31 raw deployments)
- DeFi Llama TVL: $7,380,182.18
- On-chain TVL (included contracts): $1,454,395.76
- TVL by chain: Avalanche $1,454,395.76

## Project Description

Hypha is an Avalanche staking protocol focused on AVAX liquid staking via stAVAX and staking infrastructure. It routes staking activity across Avalanche P-Chain/C-Chain flows, supports validator and node-operator participation through a marketplace/staking engine, and uses GGP where relevant for protocol incentives and governance.

### Architecture

The liquid staking family relies on the token infrastructure (GGP) for incentives and governance for parameter management. Node operation contracts interact with staking and rewards distribution, while governance controls upgrades across all families via proxy admins and multisig.

## Contract Surface Quality

- Indexed contracts: 89; live-surface contracts included: 31 (31 live, 0 unknown).
- Excluded by liveness: 34 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 1/13 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/5.

## Audit Coverage Summary

- Verified implementations audited: 0/19 (0.0%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 23
- Raw deployments: 31
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,454,395.76
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenGGP | token | avalanche | n/a | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | n/a | [`0x6476a7...bb286c`](./contracts/avalanche-43114/0x6476a72282ea701748f56dcfb8a9ffa919bb286c/) | ⚠️ Unaudited |
| CREATE3Factory | registry | avalanche | n/a | [`0x9fbb3d...cd0abf`](./contracts/avalanche-43114/0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | avalanche | unit-21356 | [`0x6c104d...29bcf3`](./contracts/avalanche-43114/0x6c104d5b914931ba179168d63739a297dc29bcf3/) | ⚠️ Unaudited |
| Multicall3 | periphery | avalanche | n/a | [`0xca11bd...76ca11`](./contracts/avalanche-43114/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NodeSale | unknown | avalanche | n/a | 2 deployments: avalanche [`0x50db30...b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/); avalanche `0xa60a66...83cfaa` | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | n/a | [`0xffdc3b...ad5542`](./contracts/avalanche-43114/0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | n/a | [`0xfc3ea3...d8051a`](./contracts/avalanche-43114/0xfc3ea32c03b4be326bced178431789f7e2d8051a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | 2 deployments: avalanche [`0x6e8fd3...aed940`](./contracts/avalanche-43114/0x6e8fd36d51d159209054dadda7f87aa4e1aed940/); avalanche `0xbc5627...e9e190` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| Staking | unknown | avalanche | n/a | [`0xb6ddbf...26aecb`](./contracts/avalanche-43114/0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb/) | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f...14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokenggAVAX | token | avalanche | n/a | 2 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x87c1b4...b48a64` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x6c2e8c...cc4311` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc300bc...268ee7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd960ce...16e584` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf4c562...1620a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://github.com/Zellic/publications/blob/master/GoGoPool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [here](https://github.com/code-423n4/2023-02-gogopool-mitigation-contest) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [here](https://assets-global.website-files.com/62f90a8443126c2ee50f4c4e/643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | TokenGGP | token | $1,454,395.76 | Verified native implementation with $1,454,395.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ClaimNodeOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6476a7...bb286c`](./contracts/avalanche-43114/0x6476a72282ea701748f56dcfb8a9ffa919bb286c/) | ClaimProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x50db30...b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/) | NodeSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xffdc3b...ad5542`](./contracts/avalanche-43114/0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542/) | Ocyticus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfc3ea3...d8051a`](./contracts/avalanche-43114/0xfc3ea32c03b4be326bced178431789f7e2d8051a/) | ProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | RewardsPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb6ddbf...26aecb`](./contracts/avalanche-43114/0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/) | StAvaxWavaxOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/) | TokenggAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | TwapGGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb31f66...fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1968] here
- [1970] here
- [11933] here

Fork inheritance lineage and inherited audits are included when available.
