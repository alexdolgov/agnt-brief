# Agentic Audit Brief: Blast L2

⚠️ Lifecycle status: UNKNOWN - TVL dropped 32.8% over 90 days

## Project Overview

- Project: Blast L2 (`blast-l2`)
- Website: [https://blast.io/](https://blast.io/)
- Lifecycle: unknown (Tier 0, 98.2% below peak)
- Generated: 2026-06-19T06:13:20.548Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: blast, ethereum
- Contract surface: 31 unique implementations (36 raw deployments)
- DeFi Llama TVL: $52,149,812.00
- On-chain TVL (included contracts): $568.85
- TVL by chain: Blast $568.85

## Project Description

Blast L2 is an Ethereum Layer 2 network that provides native yield for ETH and stablecoins through automatic rebasing and yield distribution. It includes a canonical bridge for asset transfers between Ethereum and Blast, and a pre-launch farm that allowed early users to earn yield and points.

### Architecture

The L1 and L2 Blast Contracts form the core bridging infrastructure, with L1 contracts managing asset locking and yield generation, and L2 contracts handling minting and rebasing of yield-bearing tokens. The Token Contracts are tightly integrated with the L2 bridge, as bridged assets are represented by OptimismMintableERC20 tokens, while the Blast Bridge and pre-launch Farm provide auxiliary entry points for early users.

## Contract Surface Quality

- Indexed contracts: 410; live-surface contracts included: 36 (36 live, 0 unknown).
- Excluded by liveness: 364 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 17/32 live.
- Detected codebases: makerdao-dss
- Unverified dependencies: 105/174.

## Audit Coverage Summary

- Verified implementations audited: 0/27 (0.0%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 31
- Raw deployments: 36
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $568.85
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $568.85 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceToken | token | blast | n/a | [`0xb1a570...88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/); blast [`0xba5ed0...8ba5ed`](./contracts/blast-81457/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DsrManager | governance | ethereum | n/a | [`0x373238...081ddb`](./contracts/ethereum-1/0x373238337bfe1146fb49989fc222523f83081ddb/) | ⚠️ Unaudited |
| ETHYieldManager | bridge_template | ethereum | unit-39191 | [`0x98078d...e1c8fe`](./contracts/ethereum-1/0x98078db053902644191f93988341e31289e1c8fe/) | ⚠️ Unaudited |
| Gas | unknown | blast | unit-39206 | [`0x430000...000001`](./contracts/blast-81457/0x4300000000000000000000000000000000000001/) | ⚠️ Unaudited |
| GemJoin | unknown | ethereum | n/a | [`0x2f0b23...6b042a`](./contracts/ethereum-1/0x2f0b23f53734252bda2277357e97e1517d6b042a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-39184 (2 proxies) | 2 deployments: ethereum [`0x4f72ee...c58b05`](./contracts/ethereum-1/0x4f72ee94b8ba3be7f886565d3583a7f636c58b05/); ethereum `0x67ca7c...af608c` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | n/a | 3 deployments: ethereum [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/); ethereum `0xcfa3a7...315196`; blast [`0x000000...439497`](./contracts/blast-81457/0x0000000000ffe8b47b3e2130213b802212439497/) | ⚠️ Unaudited |
| L1BlastBridge | bridge_template | ethereum | unit-39183 | [`0x3a05e5...a49115`](./contracts/ethereum-1/0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | unit-39186 | [`0x5d4472...a8e9d0`](./contracts/ethereum-1/0x5d4472f31bd9385709ec61305afc749f0fa8e9d0/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-39188 | [`0x697402...bfc524`](./contracts/ethereum-1/0x697402166fbf2f22e970df8a6486ef171dbfc524/) | ⚠️ Unaudited |
| L2BlastBridge | operational_periphery | blast | unit-39210 | [`0x430000...000005`](./contracts/blast-81457/0x4300000000000000000000000000000000000005/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | blast | unit-39196 | [`0x420000...000007`](./contracts/blast-81457/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | unit-39190 | [`0x826d1b...215c76`](./contracts/ethereum-1/0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | blast | unit-39198 | [`0x420000...000010`](./contracts/blast-81457/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | blast | unit-39202 | [`0x420000...000016`](./contracts/blast-81457/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| LaunchBridge | operational_periphery | ethereum | unit-39187 | [`0x5f6ae0...1da47d`](./contracts/ethereum-1/0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0x5e227a...c17796`](./contracts/ethereum-1/0x5e227ad1969ea493b43f840cff78d08a6fc17796/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | 2 deployments: ethereum [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); blast [`0xca11bd...76ca11`](./contracts/blast-81457/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | blast | n/a | [`0xf7bc58...1d2692`](./contracts/blast-81457/0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | blast | unit-39199 | [`0x420000...000012`](./contracts/blast-81457/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | unit-39181 | [`0x0ec68c...0db6cb`](./contracts/ethereum-1/0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb/) | ⚠️ Unaudited |
| Proxy | unknown | blast | unit-39201 | [`0x420000...000015`](./contracts/blast-81457/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| Proxy | proxy | blast | n/a | [`0x420000...000023`](./contracts/blast-81457/0x4200000000000000000000000000000000000023/) | ⚠️ Unaudited |
| Shares | unknown | blast | unit-39205 | [`0x430000...000000`](./contracts/blast-81457/0x4300000000000000000000000000000000000000/) | ⚠️ Unaudited |
| USDYieldManager | bridge_template | ethereum | unit-39192 | [`0xa23028...828438`](./contracts/ethereum-1/0xa230285d5683c74935ad14c446e137c8c8828438/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4e59b4...b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xb1a570...88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | GovernanceToken | token | $568.85 | Verified native implementation with $568.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d4472...a8e9d0`](./contracts/ethereum-1/0x5d4472f31bd9385709ec61305afc749f0fa8e9d0/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xf7bc58...1d2692`](./contracts/blast-81457/0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
