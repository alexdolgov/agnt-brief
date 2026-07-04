# Agentic Audit Brief: Gravita Protocol

## Project Overview

- Project: Gravita Protocol (`gravita-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.818Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, linea, mantle, optimism
- Contract surface: 33 unique implementations (33 raw deployments)
- DeFi Llama TVL: $281,914.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 21 project-authored contract(s) across 5 chain(s); 2 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (gravitabase, basemath, addresses). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/33 (18.2%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/33
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hats Finance | Tier 2 | 6 | 18.2% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PriceFeed | unknown | linea | n/a | [`0x725c68...4747d4`](./contracts/linea-59144/0x725c6873033f957ce3196197eaa57cb7384747d4/) | ✅ Audited |
| SortedVessels | unknown | optimism | n/a | [`0x0d2c4a...cb2a09`](./contracts/optimism-10/0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09/) | ✅ Audited |
| StabilityPool | unknown | arbitrum | n/a | [`0x0a3137...b7bdfa`](./contracts/arbitrum-42161/0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa/) | ✅ Audited |
| Timelock | unknown | arbitrum | n/a | [`0x09dfdf...cd3d7b`](./contracts/arbitrum-42161/0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b/) | ✅ Audited |
| VesselManager | unknown | ethereum | n/a | [`0x0d2c4a...cb2a09`](./contracts/ethereum-1/0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09/) | ✅ Audited |
| VesselManagerOperations | unknown | optimism | n/a | [`0x0a3137...b7bdfa`](./contracts/optimism-10/0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminContract | unknown | optimism | n/a | [`0x09dfdf...cd3d7b`](./contracts/optimism-10/0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x118e30...27d3a0`](./contracts/ethereum-1/0x118e3040b899ec6aad6a696b3583ae03a927d3a0/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | ethereum | n/a | [`0x09dfdf...cd3d7b`](./contracts/ethereum-1/0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b/) | ⚠️ Unaudited |
| ConstellationTimelock | unknown | ethereum | n/a | [`0x10a93d...4ed2f0`](./contracts/ethereum-1/0x10a93d4452f65fd8680c3af11d1a48695e4ed2f0/) | ⚠️ Unaudited |
| DebtToken | unknown | ethereum | n/a | [`0x15f744...1eefe4`](./contracts/ethereum-1/0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4/) | ⚠️ Unaudited |
| DefaultPool | unknown | arbitrum | n/a | [`0x24ae02...8b09e7`](./contracts/arbitrum-42161/0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mantle | n/a | [`0x0a3137...b7bdfa`](./contracts/mantle-5000/0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | [`0x0d2c4a...cb2a09`](./contracts/linea-59144/0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09/) | ⚠️ Unaudited |
| FeeCollector | unknown | arbitrum | n/a | [`0x0d2c4a...cb2a09`](./contracts/arbitrum-42161/0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09/) | ⚠️ Unaudited |
| FixedPriceAggregator | unknown | arbitrum | n/a | [`0x118e30...27d3a0`](./contracts/arbitrum-42161/0x118e3040b899ec6aad6a696b3583ae03a927d3a0/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0x40e0e2...d45c20`](./contracts/ethereum-1/0x40e0e274a42d9b1a9d4b64dc6c46d21228d45c20/) | ⚠️ Unaudited |
| gravETH_L2 | unknown | arbitrum | n/a | [`0x17abbb...f2203b`](./contracts/arbitrum-42161/0x17abbb934786dc9feb18906dbc4524b29af2203b/) | ⚠️ Unaudited |
| GravitaDebtToken | unknown | optimism | n/a | [`0x894134...cb9487`](./contracts/optimism-10/0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487/) | ⚠️ Unaudited |
| GravitaProxy | unknown | ethereum | n/a | [`0xa8c6b0...7703a0`](./contracts/ethereum-1/0xa8c6b0d3a06e834a8f0f70603625a475b87703a0/) | ⚠️ Unaudited |
| MerkleClaimStreamer | unknown | ethereum | n/a | [`0x312717...65a04e`](./contracts/ethereum-1/0x312717e67b9a12402fb8d2db031ac9c84665a04e/) | ⚠️ Unaudited |
| NodeSetOperatorRewardDistributor | unknown | ethereum | n/a | [`0x087d8c...21804c`](./contracts/ethereum-1/0x087d8c963d90c5b3e653b0afd3bfaa407521804c/) | ⚠️ Unaudited |
| OperatorDistributor | unknown | ethereum | n/a | [`0x102809...fbabb9`](./contracts/ethereum-1/0x102809fe582ecaa527bb316dcc4e99fc35fbabb9/) | ⚠️ Unaudited |
| PoAConstellationOracle | unknown | ethereum | n/a | [`0x81c100...44cb07`](./contracts/ethereum-1/0x81c1001e1621d05be250814123cc81bbb244cb07/) | ⚠️ Unaudited |
| PriceFeedL2 | unknown | optimism | n/a | [`0x15f744...1eefe4`](./contracts/optimism-10/0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4/) | ⚠️ Unaudited |
| PriceFetcher | unknown | ethereum | n/a | [`0x6047fa...b06774`](./contracts/ethereum-1/0x6047fa105a6dc0300dfe8777842673006db06774/) | ⚠️ Unaudited |
| RPLVault | unknown | ethereum | n/a | [`0x0aff8d...ba2b84`](./contracts/ethereum-1/0x0aff8d886572d65d1d8b41a8519a5acaabba2b84/) | ⚠️ Unaudited |
| SfrxEth2EthPriceAggregator | unknown | arbitrum | n/a | [`0x03d9a5...6d35f3`](./contracts/arbitrum-42161/0x03d9a5eeebaf24870587e29ffb65d62a8d6d35f3/) | ⚠️ Unaudited |
| SuperNodeAccount | unknown | ethereum | n/a | [`0x2a906f...ab6b29`](./contracts/ethereum-1/0x2a906f92b0378bb19a3619e2751b1e0b8cab6b29/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x35e9a3...8833c9`](./contracts/ethereum-1/0x35e9a38cbdcdf773e649c0eaa4437184508833c9/) | ⚠️ Unaudited |
| WETHVault | unknown | ethereum | n/a | [`0x1c649f...5bf78b`](./contracts/ethereum-1/0x1c649fd81727614881daeb9daa8a3c924a5bf78b/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | [`0x1e6d3e...1169ad`](./contracts/ethereum-1/0x1e6d3ec2a3cd38819a43ec7b6abce5998d1169ad/) | ⚠️ Unaudited |
| WstEth2UsdPriceAggregator | unknown | arbitrum | n/a | [`0x8bbf5c...ca3e44`](./contracts/arbitrum-42161/0x8bbf5c949b05e185c470553add43f15118ca3e44/) | ⚠️ Unaudited |

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
| [all Medium and Low findings were addressed.](https://hatsfinance.medium.com/gravita-audit-competition-final-writeup-dfb28463a0dc) | Hats Finance | Contest | 2023-06 | stale | Direct | contract_name | 6 | medium |
| [- [Audits]()](https://docs.gravitaprotocol.com/gravita-docs/about-gravita-protocol/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [17420] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
