# Agentic Audit Brief: thetanuts-finance

## Project Overview

- Project: thetanuts-finance (`thetanuts-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:01.306Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum, polygon
- Contract surface: 21 unique implementations (21 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 21 project-authored contract(s) across 3 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (erc20permit, eip712, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | ethereum | n/a | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| BitDAO | unknown | ethereum | n/a | [`0x1a4b46...0fa4c5`](./contracts/ethereum-1/0x1a4b46696b2bb4794eb3d4c26f1c55f9170fa4c5/) | ⚠️ Unaudited |
| BridgeToken | unknown | ethereum | n/a | [`0xa693b1...ee87a5`](./contracts/ethereum-1/0xa693b19d2931d498c5b318df961919bb4aee87a5/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | ethereum | n/a | [`0x784a7a...e29d07`](./contracts/ethereum-1/0x784a7a995d74dc00142bde03cbf603d32ce29d07/) | ⚠️ Unaudited |
| Depositer | unknown | ethereum | n/a | [`0xe2c071...d3ac2c`](./contracts/ethereum-1/0xe2c071e1e1957a62fddf0199018e061ebfd3ac2c/) | ⚠️ Unaudited |
| esNUT | unknown | ethereum | n/a | [`0x0495f3...fd313d`](./contracts/ethereum-1/0x0495f34e72189f8a77ad47b2f747ea0ecafd313d/) | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | ethereum | n/a | [`0xf224f6...0c654c`](./contracts/ethereum-1/0xf224f675376636dee83b80600672ebdce10c654c/) | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | ethereum | n/a | [`0x066d1c...db4f0a`](./contracts/ethereum-1/0x066d1cdbe060db67924aa1d35a9e79e2f4db4f0a/) | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | ethereum | n/a | [`0x684dfa...7a4bd4`](./contracts/ethereum-1/0x684dfad48f3ac1b61dc8c6871b9aeec9d47a4bd4/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x09d134...649295`](./contracts/ethereum-1/0x09d1341849319f46a1fef75575c3bda339649295/) | ⚠️ Unaudited |
| MigrationBSC | unknown | ethereum | n/a | [`0xdcf084...711071`](./contracts/ethereum-1/0xdcf08427aad1c0e7d31dfd5846aaacae5f711071/) | ⚠️ Unaudited |
| NUT | unknown | ethereum | n/a | [`0x23f3d4...5c0c9b`](./contracts/ethereum-1/0x23f3d4625aef6f0b84d50db1d53516e6015c0c9b/) | ⚠️ Unaudited |
| NutGovernor | unknown | ethereum | n/a | [`0xa36ab9...bc209d`](./contracts/ethereum-1/0xa36ab9eb4fcd7880cb95bcf97dc480c77dbc209d/) | ⚠️ Unaudited |
| OwnerProxy | unknown | ethereum | n/a | [`0x264941...e327d7`](./contracts/ethereum-1/0x264941c2e28e430a21450053c8f2aabffbe327d7/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0x15fa86...fb6418`](./contracts/ethereum-1/0x15fa86404bfba8b46684552f792558128bfb6418/) | ⚠️ Unaudited |
| ScheduledVesting | unknown | ethereum | n/a | [`0x98f392...d61ab9`](./contracts/ethereum-1/0x98f39230a68f508d767a7653158852b6d4d61ab9/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x62734c...a0b3ce`](./contracts/ethereum-1/0x62734c612d08109b12970cfe11eb7dc68ea0b3ce/) | ⚠️ Unaudited |
| UniswapV3Pool | unknown | arbitrum | n/a | [`0x4cd207...b72666`](./contracts/arbitrum-42161/0x4cd207d3bb951dffee3fae27a0be70019bb72666/) | ⚠️ Unaudited |
| V3Proxy | unknown | polygon | n/a | [`0x0dcec1...63cebe`](./contracts/polygon-137/0x0dcec1fc9921d16aa59e3c251bcc85b7b263cebe/) | ⚠️ Unaudited |
| WETHGateway | unknown | ethereum | n/a | [`0x63ea74...1523b8`](./contracts/ethereum-1/0x63ea74c8d5c67d12f86dcf782852b6bb5d1523b8/) | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
