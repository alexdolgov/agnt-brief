# Agentic Audit Brief: DeNet File Token

## Project Overview

- Project: DeNet File Token (`denet-file-token`)
- Website: [https://denet.pro](https://denet.pro)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.977Z
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
| DeNetFileToken | token | polygon | n/a | [`0x081ec4c0e30159c8259bad8f4887f83010a681dc`](./contracts/polygon-137/0x081ec4c0e30159c8259bad8f4887f83010a681dc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeNetNodeNFT | token | polygon | n/a | [`0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1`](./contracts/polygon-137/0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1/) | ⚠️ Unaudited |
| ERC20Vesting | unknown | polygon | n/a | [`0xa71c51c1a1f438e13c72e953907dfd57758baba8`](./contracts/polygon-137/0xa71c51c1a1f438e13c72e953907dfd57758baba8/) | ⚠️ Unaudited |
| Payments | unknown | polygon | n/a | [`0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3`](./contracts/polygon-137/0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3/) | ⚠️ Unaudited |
| ProofOfStorage | unknown | polygon | n/a | [`0x9f09ed9968ce5d45bf918492e7cd5faaf4236180`](./contracts/polygon-137/0x9f09ed9968ce5d45bf918492e7cd5faaf4236180/) | ⚠️ Unaudited |
| StakerV2 | core_logic | polygon | n/a | [`0x0f872713510626ecafa51b8fb4c6c5d969840856`](./contracts/polygon-137/0x0f872713510626ecafa51b8fb4c6c5d969840856/) | ⚠️ Unaudited |
| SubVesting | operational_periphery | polygon | n/a | [`0x05ae1dc5b4a140eb4218073af432a7c32c2806fa`](./contracts/polygon-137/0x05ae1dc5b4a140eb4218073af432a7c32c2806fa/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x1234b6fcddb128060a0c60873a351797e8dd2496` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a9b54a3075119f1546c52ca0940551a6ce5d2d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c3b529f020fa3ae57d41e65fc9a73f227b4d3bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1dcfa28e3fbce3facdc69ddcf1fd92d355520f33` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31b806d9a2e8e1a528317aca151c975baa07c07d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36ba316610de1d139d175ef1cbcb257c99a84a64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4390a5ae7b75a87c7c154204656199406b1bb693` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c6da8d353025d738c771e4b85e99e991b94942c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d37d386462d16e25079e5c6d24f5176e64c4118` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52f0e1efe2811338d05818c17044631180a7bc26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6169e2bfd5cd851302249869aada79a2297a268c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6261e1aac369cd694093455f9e2b65b31acedda1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ab28d6f399a7f03aed14fbee4cf1f3b710946ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x92d3ba98278415d23bdb0ff795c3ee7cbbaccdbb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99e1c9abcfe6ac023cbc1d3c970bf1a256cc50f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6b309ae66a12d69259566220a2d0e35fe4bc556` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc719da7cec15a8def5488528498315f5a0b8d48d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb19bede3e4f64b6b0085d99127f6d0a25b7180d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc4cc24b94e7247e1ce8762992cc6cf926a506cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2b2439481dfdb97a486fba030eb2dec4195ec07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf3a49301fcc71eef7f981f499d3543250002f847` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeNet Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/a2acb36c7f4b2a61c579a29133bb2eab7e9ad894/DeNet%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1`](./contracts/polygon-137/0x9e8e137dcfd05aec8208d379c5f5792b7acf65c1/) | DeNetNodeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa71c51c1a1f438e13c72e953907dfd57758baba8`](./contracts/polygon-137/0xa71c51c1a1f438e13c72e953907dfd57758baba8/) | ERC20Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3`](./contracts/polygon-137/0xe84dfa1a440dab5a5945f7774b22baf2b431d6d3/) | Payments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f09ed9968ce5d45bf918492e7cd5faaf4236180`](./contracts/polygon-137/0x9f09ed9968ce5d45bf918492e7cd5faaf4236180/) | ProofOfStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f872713510626ecafa51b8fb4c6c5d969840856`](./contracts/polygon-137/0x0f872713510626ecafa51b8fb4c6c5d969840856/) | StakerV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05ae1dc5b4a140eb4218073af432a7c32c2806fa`](./contracts/polygon-137/0x05ae1dc5b4a140eb4218073af432a7c32c2806fa/) | SubVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
