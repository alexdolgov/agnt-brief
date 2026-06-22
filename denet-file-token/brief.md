# Agentic Audit Brief: DeNet File Token

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: DeNet File Token (`denet-file-token`)
- Website: [https://denet.pro](https://denet.pro)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T11:04:59.279Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: polygon
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): $2,478,040.00
- TVL by chain: Polygon $2,478,040.00

## Project Description

DeNet File Token is a decentralized storage protocol that tokenizes file storage access. Users can store and retrieve files using a native token, which represents storage capacity and access rights.

### Architecture

The DeNetFileToken is the core token contract, while the two unnamed contracts likely serve as supporting infrastructure such as storage management or access control, all deployed by the same deployer cluster.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 41 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeNetFileToken | token | polygon | n/a | [`0x081ec4...a681dc`](./contracts/polygon-137/0x081ec4c0e30159c8259bad8f4887f83010a681dc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeNetNodeNFT | token | polygon | n/a | [`0x9e8e13...cf65c1`](./contracts/polygon-137/0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1/) | ⚠️ Unaudited |
| Payments | unknown | polygon | n/a | [`0xe84dfa...31d6d3`](./contracts/polygon-137/0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3/) | ⚠️ Unaudited |
| ProofOfStorage | unknown | polygon | n/a | [`0x9f09ed...236180`](./contracts/polygon-137/0x9f09ed9968ce5d45bf918492e7cd5faaf4236180/) | ⚠️ Unaudited |
| StakerV2 | core_logic | polygon | n/a | [`0x0f8727...840856`](./contracts/polygon-137/0x0f872713510626ecafa51b8fb4c6c5d969840856/) | ⚠️ Unaudited |
| SubVesting | operational_periphery | polygon | n/a | [`0x05ae1d...2806fa`](./contracts/polygon-137/0x05ae1dc5b4a140eb4218073af432a7c32c2806fa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x1a9b54...e5d2d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d37d3...4c4118` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6261e1...cedda1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeNet Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/a2acb36c7f4b2a61c579a29133bb2eab7e9ad894/DeNet%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x9e8e13...cf65c1`](./contracts/polygon-137/0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1/) | DeNetNodeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe84dfa...31d6d3`](./contracts/polygon-137/0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3/) | Payments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f09ed...236180`](./contracts/polygon-137/0x9f09ed9968ce5d45bf918492e7cd5faaf4236180/) | ProofOfStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f8727...840856`](./contracts/polygon-137/0x0f872713510626ecafa51b8fb4c6c5d969840856/) | StakerV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
