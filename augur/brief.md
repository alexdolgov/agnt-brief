# Agentic Audit Brief: Augur

## Project Overview

- Project: Augur (`augur`)
- Website: [https://augur.net/](https://augur.net/)
- Lifecycle: active (Tier 0, 89.9% below peak)
- Generated: 2026-06-18T19:56:08.564Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4ae8
- Chains: ethereum
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,331,149.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Augur is a decentralized prediction-market and oracle protocol for creating, trading, and resolving markets on event outcomes. Its legacy core contracts include components such as Universe and Cash for market infrastructure and settlement, while Augur's reporting, dispute, fork, migration, and current prediction-market/oracle system center on REP/REPv2 rather than Cash as a native token.

### Architecture

The Delegator proxy delegates calls to the Cash implementation, enabling upgradeability. The Universe contract likely references Cash for market operations, forming a shared infrastructure for the prediction market.

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 53 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 8/52.

## Audit Coverage Summary

- Verified implementations audited: 4/11 (36.4%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: 18.2% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zeppelin | Tier 2 | 4 | 36.4% | 2018-03 |
| LeastAuthority | Tier 2 | 3 | 27.3% | 2017-12 |
| ChainSecurity | Tier 1 | 2 | 18.2% | 2017-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CancelOrder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x344820...1e3aaf`](./contracts/ethereum-1/0x3448209268e97652bb67ea12777d4dfba81e3aaf/); ethereum `0x465bf8...cfb0d0` | ✅ Audited |
| ClaimTradingProceeds | unknown | ethereum | n/a | [`0x433447...07872a`](./contracts/ethereum-1/0x4334477348222a986fc88a05410aa6b07507872a/) | ✅ Audited |
| Market | unknown | ethereum | n/a | [`0x380070...d8ce01`](./contracts/ethereum-1/0x380070670fb427ae8070631eef6f2d0824d8ce01/) | ✅ Audited |
| Universe | unknown | ethereum | n/a | [`0x49244b...46e5aa`](./contracts/ethereum-1/0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Exchange | unknown | ethereum | unit-38745 | [`0x61935c...93b7ef`](./contracts/ethereum-1/0x61935cbdd02287b511119ddb11aeb42f1593b7ef/) | ⚠️ Unaudited |
| RelayHub | unknown | ethereum | n/a | [`0x5648b6...ee0db5`](./contracts/ethereum-1/0x5648b6306380689af8d2de7bdd23d916b9ee0db5/) | ⚠️ Unaudited |
| Trade | unknown | ethereum | n/a | [`0x0cd32f...915667`](./contracts/ethereum-1/0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | n/a | [`0x5c69be...c5aa6f`](./contracts/ethereum-1/0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xa478c2...33eb11`](./contracts/ethereum-1/0xa478c2975ab1ea89e8196811f51a7b7ade33eb11/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0x7a250d...f2488d`](./contracts/ethereum-1/0x7a250d5630b4cf539739df2c5dacb4c659f2488d/) | ⚠️ Unaudited |
| WarpSync | unknown | ethereum | n/a | [`0xe0c69a...c7fc4d`](./contracts/ethereum-1/0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1dd864...a20e18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/ChainSecurity%20-%20Augur%20Core%20v1.pdf) | ChainSecurity | Audit | 2017-12 | stale | Direct | contract_name | 2 | high |
| [LeastAuthority - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/LeastAuthority%20-%20Augur%20Core%20v1.pdf) | LeastAuthority | Audit | 2017-12 | stale | Direct | contract_name | 3 | high |
| [Zeppelin - Augur Core v3.1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.1.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 4 | high |
| [Zeppelin - Augur Core v3.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 4 | high |
| [keythereum-audit.md](https://github.com/AugurProject/augur-audits/blob/master/keythereum/keythereum-audit.md) | unknown | Audit | 2017-04 | stale | Direct | n/a | 0 | n/a |
| [Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/serpent-compiler/Zeppelin%20Solutions%20-%20Serpent%20Compiler%20Audit%20v1.0.0.pdf) | Zeppelin Solutions | Audit | 2017-07 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Solidity Compiler Audit v1.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/solidity-compiler/Coinspect%20-%20Solidity%20Compiler%20Audit%20v1.0.pdf) | Coinspect | Audit | 2017-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x61935c...93b7ef`](./contracts/ethereum-1/0x61935cbdd02287b511119ddb11aeb42f1593b7ef/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cd32f...915667`](./contracts/ethereum-1/0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667/) | Trade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0c69a...c7fc4d`](./contracts/ethereum-1/0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d/) | WarpSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=75

Zero-match audit list:

- [2988] keythereum-audit.md
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
