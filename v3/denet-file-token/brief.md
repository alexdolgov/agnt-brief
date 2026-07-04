# Agentic Audit Brief: DeNet File Token

## Project Overview

- Project: DeNet File Token (`denet-file-token`)
- Website: [https://denet.pro](https://denet.pro)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.755Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: polygon
- Contract surface: 28 unique implementations (28 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 16 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (posadmin, stringnumbersconstant, erc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 28 (7 live, 21 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/7 (14.3%)
- Deployed-live implementations: 7 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 28
- Raw deployments: 28
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 14.3% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeNetFileToken | token | polygon | n/a | [`0x081ec4...a681dc`](./contracts/polygon-137/0x081ec4c0e30159c8259bad8f4887f83010a681dc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeNetNodeNFT | token | polygon | n/a | [`0x9e8e13...cf65c1`](./contracts/polygon-137/0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1/) | ⚠️ Unaudited |
| ERC20Vesting | unknown | polygon | n/a | [`0xa71c51...8baba8`](./contracts/polygon-137/0xa71c51c1a1f438e13c72e953907dfd57758baba8/) | ⚠️ Unaudited |
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

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x1234b6...dd2496` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a9b54...e5d2d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c3b52...b4d3bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1dcfa2...520f33` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31b806...07c07d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36ba31...a84a64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4390a5...1bb693` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c6da8...94942c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d37d3...4c4118` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52f0e1...a7bc26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6169e2...7a268c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6261e1...cedda1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ab28d...0946ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92d3ba...accdbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99e1c9...cc50f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6b309...4bc556` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc719da...b8d48d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb19be...b7180d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc4cc2...a506cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2b243...95ec07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf3a493...02f847` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeNet Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/a2acb36c7f4b2a61c579a29133bb2eab7e9ad894/DeNet%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
