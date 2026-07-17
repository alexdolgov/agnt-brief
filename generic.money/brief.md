# Agentic Audit Brief: Generic.Money

## Project Overview

- Project: Generic.Money (`generic.money`)
- Website: [https://www.generic.money/](https://www.generic.money/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.247Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 15 unique implementations (26 raw deployments)
- DeFi Llama TVL: $1,048,044.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (baseadapter, ownable2step, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 22 (21 live, 1 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/15 (46.7%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/15
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 46.7% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 7 | 46.7% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Controller | governance | ethereum | n/a | [`0x1e4b88b37bae84b2975a09e5811cc0312c086b28`](./contracts/ethereum-1/0x1e4b88b37bae84b2975a09e5811cc0312c086b28/) | ✅ Audited |
| GenericDepositor | unknown | ethereum | n/a | [`0x79b4cdb14a31e8b0e21c0120c409ac14af35f919`](./contracts/ethereum-1/0x79b4cdb14a31e8b0e21c0120c409ac14af35f919/) | ✅ Audited |
| GenericUnit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c307badbd78bea5a1ccf9677caa58e7a2172502`](./contracts/ethereum-1/0x8c307badbd78bea5a1ccf9677caa58e7a2172502/); ethereum `0xee77df35586d3b61f53d424ca201cd4b8d3d69d7` | ✅ Audited |
| GenericVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x4825eff24f9b7b76eeafa2ecc6a1d5dfcb3c1c3f`](./contracts/ethereum-1/0x4825eff24f9b7b76eeafa2ecc6a1d5dfcb3c1c3f/); ethereum `0x6133da4cd25773ebd38542a8acef8f94ca89892a`; ethereum `0x844584fea58372dc3d4ed74083d15ed10cd71b1b`; ethereum `0xb8280955ae7b5207af4cdbdcd775135bd38157fe`; ethereum `0xfce133e9a32b730dea66ef19637b9a5d106b73cf` | ✅ Audited |
| LayerZeroAdapter | adapter | ethereum | n/a | [`0x05a166797e784d49ba880b289647eccb29b0144e`](./contracts/ethereum-1/0x05a166797e784d49ba880b289647eccb29b0144e/) | ✅ Audited |
| LineaBridgeAdapter | operational_periphery | ethereum | n/a | [`0xe39d672416421ce1536997ff892c8b339eb9ab93`](./contracts/ethereum-1/0xe39d672416421ce1536997ff892c8b339eb9ab93/) | ✅ Audited |
| OneInchSwapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0xb2368497691f4c6e9b7acede4efc7831417aeffc`](./contracts/ethereum-1/0xb2368497691f4c6e9b7acede4efc7831417aeffc/); ethereum `0xc1c8db9d9fe2a312ce5bd8c76764da8539200a50` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregationRouterV6 | adapter | ethereum | n/a | [`0x111111125421ca6dc452d289314280a0f8842a65`](./contracts/ethereum-1/0x111111125421ca6dc452d289314280a0f8842a65/) | ⚠️ Unaudited |
| BridgeCoordinatorL1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0503f2c5a1a4b72450c6cfa790f2097cf5cb6a01`](./contracts/ethereum-1/0x0503f2c5a1a4b72450c6cfa790f2097cf5cb6a01/); ethereum `0xcecf6e42f9aa38cb50dc6a0c3f279cd457d056b9` | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x3a64d23313e1beaaba25ec13149bd8d514c973ae`](./contracts/ethereum-1/0x3a64d23313e1beaaba25ec13149bd8d514c973ae/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a7af858c40d9fcea728da11e836bdd410bc998b`](./contracts/ethereum-1/0x6a7af858c40d9fcea728da11e836bdd410bc998b/); ethereum `0xf056d4f903e53432873bfd0da32f9d6fcb92825c` | ⚠️ Unaudited |
| DAO | unknown | ethereum | n/a | [`0x3794d7f91b3dd3b338fee671ac6aa42bea5e3d17`](./contracts/ethereum-1/0x3794d7f91b3dd3b338fee671ac6aa42bea5e3d17/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12dc0362553b3cd5141da3bebab0c7e51d1bd5b9`](./contracts/ethereum-1/0x12dc0362553b3cd5141da3bebab0c7e51d1bd5b9/); ethereum `0x17a8b3637377a2eb934ff65e5c2ec511b1383562` | ⚠️ Unaudited |
| GenericUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x933e1a38386d96a8e418d3d93b7f376e5bfeacc0`](./contracts/ethereum-1/0x933e1a38386d96a8e418d3d93b7f376e5bfeacc0/); ethereum `0xece811d35f79c4868a2b911e55d9aa0821399edf` | ⚠️ Unaudited |
| GenericUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xac8c1aeb584765db16ac3e08d4736cfce198589b`](./contracts/ethereum-1/0xac8c1aeb584765db16ac3e08d4736cfce198589b/); ethereum `0xbcfafefeef2d4c2fe3f7e23cfa22b5f05a42b738` | ⚠️ Unaudited |

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
| [2026-01-19-report-cantinacode-generic-money.pdf](https://docs.generic.money/audits/2026-01-19-report-cantinacode-generic-money.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x111111125421ca6dc452d289314280a0f8842a65`](./contracts/ethereum-1/0x111111125421ca6dc452d289314280a0f8842a65/) | AggregationRouterV6 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0503f2c5a1a4b72450c6cfa790f2097cf5cb6a01`](./contracts/ethereum-1/0x0503f2c5a1a4b72450c6cfa790f2097cf5cb6a01/) | BridgeCoordinatorL1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a64d23313e1beaaba25ec13149bd8d514c973ae`](./contracts/ethereum-1/0x3a64d23313e1beaaba25ec13149bd8d514c973ae/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7af858c40d9fcea728da11e836bdd410bc998b`](./contracts/ethereum-1/0x6a7af858c40d9fcea728da11e836bdd410bc998b/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3794d7f91b3dd3b338fee671ac6aa42bea5e3d17`](./contracts/ethereum-1/0x3794d7f91b3dd3b338fee671ac6aa42bea5e3d17/) | DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x933e1a38386d96a8e418d3d93b7f376e5bfeacc0`](./contracts/ethereum-1/0x933e1a38386d96a8e418d3d93b7f376e5bfeacc0/) | GenericUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac8c1aeb584765db16ac3e08d4736cfce198589b`](./contracts/ethereum-1/0xac8c1aeb584765db16ac3e08d4736cfce198589b/) | GenericUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Fork inheritance lineage and inherited audits are included when available.
