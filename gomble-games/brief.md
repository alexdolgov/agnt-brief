# Agentic Audit Brief: Gomble Games

## Project Overview

- Project: Gomble Games (`gomble-games`)
- Website: [https://gomble.io/](https://gomble.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.875Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc
- Contract surface: 25 unique implementations (36 raw deployments)
- DeFi Llama TVL: $14.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 15 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (baseupgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 36 (21 live, 15 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/10 (20.0%)
- Deployed-live implementations: 10 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/10
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 25
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 20.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Stake | unknown | bsc | n/a | 4 deployments: bsc [`0x5dd156...5f1244`](./contracts/bsc-56/0x5dd156d1aead8a8bb69eed466e3ffbcc155f1244/); bsc `0x9b777e...a11fb9`; bsc `0xe945e7...c61846`; bsc `0xee9fcf...48b4e1` | ✅ Audited |
| Stake | unknown | bsc | n/a | [`0xab8c9e...4604d5`](./contracts/bsc-56/0xab8c9eb287796f075c821ffafbac5fedaa4604d5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auction | unknown | bsc | n/a | [`0xb0f5a7...2df97e`](./contracts/bsc-56/0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e/) | ⚠️ Unaudited |
| Badge | unknown | bsc | n/a | 3 deployments: bsc [`0x4fc42a...e7b6b3`](./contracts/bsc-56/0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3/); bsc `0x7df068...977905`; bsc `0xf2f2c3...efbd36` | ⚠️ Unaudited |
| OGSpaceship | unknown | bsc | n/a | 3 deployments: bsc [`0xb5efc4...617727`](./contracts/bsc-56/0xb5efc445547e81e307ccce267704209c2c617727/); bsc `0xdc065c...1ed9ff`; bsc `0xece777...2af827` | ⚠️ Unaudited |
| Payment | unknown | bsc | n/a | 2 deployments: bsc [`0x85fe1d...af36c6`](./contracts/bsc-56/0x85fe1d3611cf0e35c14af76aad3a725c78af36c6/); bsc `0x9d5094...ef29e7` | ⚠️ Unaudited |
| TestAuction | unknown | bsc | n/a | [`0xe619f1...91d130`](./contracts/bsc-56/0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0xd8002d...6d3b3d`](./contracts/bsc-56/0xd8002d4bd1d50136a731c141e3206d516e6d3b3d/) | ⚠️ Unaudited |
| Vesting | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x302830...955d6b`](./contracts/bsc-56/0x302830ebd50c9ec93b2d78234cc56d9339955d6b/); bsc `0x6e098f...e2a68e`; bsc `0x84b63b...9429c8`; bsc `0xf81349...146a76` | ⚠️ Unaudited |
| VRF | unknown | bsc | n/a | [`0x389033...ddf19d`](./contracts/bsc-56/0x389033c3c8bae68f9690cbb40119a9901bddf19d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x017b7d...d1ea0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x200a1d...625432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f5918...fd2889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45f34a...8076d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x518140...133037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f0a89...7540a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73e7cb...4550e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cc38c...69977d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91bacd...db6282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8be3...953844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacdc8e...b06c0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbef047...b7c5e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5a3fd...d60275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7b033...1519e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf33ea7...b7fbe3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [GOMBLE_202402231621.pdf](https://beosin.com/audits/GOMBLE_202402231621.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xb0f5a7...2df97e`](./contracts/bsc-56/0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4fc42a...e7b6b3`](./contracts/bsc-56/0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3/) | Badge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5efc4...617727`](./contracts/bsc-56/0xb5efc445547e81e307ccce267704209c2c617727/) | OGSpaceship | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85fe1d...af36c6`](./contracts/bsc-56/0x85fe1d3611cf0e35c14af76aad3a725c78af36c6/) | Payment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe619f1...91d130`](./contracts/bsc-56/0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130/) | TestAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd8002d...6d3b3d`](./contracts/bsc-56/0xd8002d4bd1d50136a731c141e3206d516e6d3b3d/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x302830...955d6b`](./contracts/bsc-56/0x302830ebd50c9ec93b2d78234cc56d9339955d6b/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x389033...ddf19d`](./contracts/bsc-56/0x389033c3c8bae68f9690cbb40119a9901bddf19d/) | VRF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
