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
| Stake | unknown | bsc | n/a | 4 deployments: bsc [`0x5dd156d1aead8a8bb69eed466e3ffbcc155f1244`](./contracts/bsc-56/0x5dd156d1aead8a8bb69eed466e3ffbcc155f1244/); bsc `0x9b777e00b4163c2c35c3734f2baf78fbd0a11fb9`; bsc `0xe945e760dbcaac77bcef071290b6082dd8c61846`; bsc `0xee9fcf0eb017af4143a5cd04d70d61a62648b4e1` | ✅ Audited |
| Stake | unknown | bsc | n/a | [`0xab8c9eb287796f075c821ffafbac5fedaa4604d5`](./contracts/bsc-56/0xab8c9eb287796f075c821ffafbac5fedaa4604d5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auction | unknown | bsc | n/a | [`0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e`](./contracts/bsc-56/0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e/) | ⚠️ Unaudited |
| Badge | unknown | bsc | n/a | 3 deployments: bsc [`0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3`](./contracts/bsc-56/0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3/); bsc `0x7df068eabc1c986b6c11839bf850631433977905`; bsc `0xf2f2c3753d36b7eee85973566f6a4f55aaefbd36` | ⚠️ Unaudited |
| OGSpaceship | unknown | bsc | n/a | 3 deployments: bsc [`0xb5efc445547e81e307ccce267704209c2c617727`](./contracts/bsc-56/0xb5efc445547e81e307ccce267704209c2c617727/); bsc `0xdc065cb4de05f99b4a421d6248f86ede781ed9ff`; bsc `0xece777bfd29f1b3f1b624c0ffb2f476a8d2af827` | ⚠️ Unaudited |
| Payment | unknown | bsc | n/a | 2 deployments: bsc [`0x85fe1d3611cf0e35c14af76aad3a725c78af36c6`](./contracts/bsc-56/0x85fe1d3611cf0e35c14af76aad3a725c78af36c6/); bsc `0x9d50947806384f8593fa7b08d7f9f410feef29e7` | ⚠️ Unaudited |
| TestAuction | unknown | bsc | n/a | [`0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130`](./contracts/bsc-56/0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130/) | ⚠️ Unaudited |
| Token | token | bsc | n/a | [`0xd8002d4bd1d50136a731c141e3206d516e6d3b3d`](./contracts/bsc-56/0xd8002d4bd1d50136a731c141e3206d516e6d3b3d/) | ⚠️ Unaudited |
| Vesting | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x302830ebd50c9ec93b2d78234cc56d9339955d6b`](./contracts/bsc-56/0x302830ebd50c9ec93b2d78234cc56d9339955d6b/); bsc `0x6e098fbe183e0f5c50662a361690a1b215e2a68e`; bsc `0x84b63be80115a6392b7e184ec3d17607659429c8`; bsc `0xf813492fbccf898b6b1254eba7cc912e53146a76` | ⚠️ Unaudited |
| VRF | unknown | bsc | n/a | [`0x389033c3c8bae68f9690cbb40119a9901bddf19d`](./contracts/bsc-56/0x389033c3c8bae68f9690cbb40119a9901bddf19d/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x017b7d14fd4bc74715f7d7d80d20b208cad1ea0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x200a1dd1b89f40260decf172c65dc3e9b1625432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f5918202c37b76fe9d0b9c31681e2ad4efd2889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45f34a154a08e62d854c981fb7769951958076d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51814010bf7815a64cef6d658d86c22d63133037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f0a8935df716d5dc81b30076ceceeea2b7540a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73e7cbcc5efacce66ff1abd17374e392674550e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cc38ca02ad239d15ecfe4672db843ccf269977d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91bacdeb2e5c1ab3ae4b7a905b2f54fdf3db6282` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8be34984628320b5dce5af6900a48197953844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacdc8e61cef8d7222a68b69f55a1824e18b06c0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbef047117341c6fb74071a588b3e62b7c5b7c5e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5a3fdb1e3529c87a138caf6ba6890c0b5d60275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7b033c362f9c9f26190f29320e3b4e8141519e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf33ea75b42d32079144d26a90ab9b93b10b7fbe3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [GOMBLE_202402231621.pdf](https://beosin.com/audits/GOMBLE_202402231621.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e`](./contracts/bsc-56/0xb0f5a7b5ec90c34997be1a6b3f54f05a772df97e/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3`](./contracts/bsc-56/0x4fc42aa439be7f685bbddb2959f4abb2e3e7b6b3/) | Badge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5efc445547e81e307ccce267704209c2c617727`](./contracts/bsc-56/0xb5efc445547e81e307ccce267704209c2c617727/) | OGSpaceship | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x85fe1d3611cf0e35c14af76aad3a725c78af36c6`](./contracts/bsc-56/0x85fe1d3611cf0e35c14af76aad3a725c78af36c6/) | Payment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130`](./contracts/bsc-56/0xe619f1df06eeaaf443dfc5c09cc96e2c7c91d130/) | TestAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd8002d4bd1d50136a731c141e3206d516e6d3b3d`](./contracts/bsc-56/0xd8002d4bd1d50136a731c141e3206d516e6d3b3d/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x302830ebd50c9ec93b2d78234cc56d9339955d6b`](./contracts/bsc-56/0x302830ebd50c9ec93b2d78234cc56d9339955d6b/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x389033c3c8bae68f9690cbb40119a9901bddf19d`](./contracts/bsc-56/0x389033c3c8bae68f9690cbb40119a9901bddf19d/) | VRF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
