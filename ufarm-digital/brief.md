# Agentic Audit Brief: UFarm Digital

## Project Overview

- Project: UFarm Digital (`ufarm-digital`)
- Website: [https://ufarm.digital](https://ufarm.digital)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.637Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, ethereum
- Contract surface: 74 unique implementations (74 raw deployments)
- DeFi Llama TVL: $523,352.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 10 project-authored contract(s) across 2 chain(s); 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (peripherypayments, peripheryimmutablestate, peripherypaymentswithfee). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 74 (2 live, 72 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 74 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 74
- Raw deployments: 74
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 1 | 50.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UFarmCore | unknown | arbitrum | n/a | [`0xc666606a0b45b5794b28221694f0b5a0124376fb`](./contracts/arbitrum-42161/0xc666606a0b45b5794b28221694f0b5a0124376fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | governance | arbitrum | n/a | [`0xc36442b4a4522e871399cd717abdd847ab11fe88`](./contracts/arbitrum-42161/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06a7bed622e746f9249f2fb950e97def84faae15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22e4edc85346d979315565d6459cfe6c49d0da97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d5dea9456a8cc2cd25b2bbef292faa24333f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a1f781fa3863984a348fb6344b62b9645615a9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a1efb889b7c437f80daba6b9356920f64334ad7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5154145762c31ea7f6d898aef2fdaa1933f63f67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6738e8f9ca5f60a98eaa4b797eecb43101c33e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83a82aa49084a122f285b789996e21da9bff1540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9896105a38d3c40330cc621b2dc8afa744c6acee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5c392a5109dd43ec3fb5ed885f59030e4fc084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc18171001ef2d5a6175eb4658d00176df8178a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4161fb7aa24b2485c8328116db3165d63a5a3d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd8b64d25f8ecf34c15d8afdf9a97d859d26e384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe281616d1589c5c4284a94b9c589b069e629a15b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec07c3223a2f863cbd737f2df546b6cc4c954a82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0541455b008ed6da18a8c855f7b0432c0113e5d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x084a0865a2371c3ef889d889fc109c3c4dff5733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ec8f2ad3ffd9b4d5da77f5f80d066356d25aaa1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19e96d96c8d0c5581e7ee9d54096e2f5cdb32472` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b31bfd666a80601bbc8e818295ef7cc87363dd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x224e26fccd057521d8793cb7e8ac47ea46ecb9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab9c6ff3ffd3d63c8a0209f57a79348dc46f2be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f509cd0c40a8a99cf1adae2660c95e665ebd9a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30187e5eb6225668feeda716716e53f36794455e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322412786c9afa2d83c09a989cb1da0a64aedad6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32b7070633b6ef31f403485e5b16e5dd049a6995` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3305526090e6b9469e323b1884ab45c2bf9ac6b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33803796cdb9df4873285694c1845411e32235c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33b3f46201e4a218956a5ea817811525646255a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x388cb7eb2681265bda6adccecaeefd95b6b3ceaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bfcb29337cf905dc97d95dfe049e7cf84a8e57d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e6194a368ee7fb4362a1dd10dbc35d11eaf460c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x444cbb02f9ca8803efb3442cc4da2a804531ebac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54d271382487eb86b2843f064d222823c2237d8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b623eb75af425553713c6ca6d84f903fddde10c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bb9f9819150ff73fb61a9aa94b1e83d1b2f52b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d293f3ad649b60c6658ed4097488ee375d7b5ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5eb0950899a0fbcd9d67b6f11ac0e5d940935784` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d8b25448f8c6d0f9f16f2c015bfe27138bf1f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67624f5afe1a1acb8ee13457418889986d8f0fb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6db9d1401602c114b56c8ea79f51afdd2642dad1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70555fef8ba9f912478bb479b2f36c6954359a6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x785a404bb62eeff38065adb204c17dae06db2c8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dd9c4642d8b0413cdf492fddc8b514bb5a29c07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x825b8409ab45a02847ef5eb5ae86234e4a07f404` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x826f6a6f87b3a0b70bf7db06810dc5c2f0f6feef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82898a48780a9e68bbfa85c292e4f41acdff4ec0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x844811fec079c35c80cfcb9cdf4dd4358e5c6664` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97155377f4480d54888ea8c9a84aaed60d71b484` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b0f1cbd17f5658a14edbacd462899a0f6c8cef5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b584b660e003c719ddb1edd7741b244ea089dcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cb7494cde9bd1000174c15120010cbc37843f9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0282dab3bb6379a64c6252e29d8c41747ed5e26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6f3b87abbd814eb926ab225bce96f259c104b34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa89b38bc161047ad215454bf3ad002776b4ed40f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacebc7ddab9c95ca72fa258635a5ee15bfca1052` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadc240fc047c6d65173ae73a45c1a6af917a58d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9fb31aeb1fd2162cd374c1f1ee9c6e82cd9e9df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc02c6f8c56eeb5b1eb328d186a8c74d321744471` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc42bfad237bccfa628d11d1c33ab695557509f3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc66dc80143a2e090a20bd44b8db52b350d713aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca9bbf181da805ee431effa0c8b9792696f12804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcfce6c575062252041b973037a76e804001eebd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4ea95b769fef52549ac4e93f1b0a9b54586a318` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd974d0206e9223150813d7fc9122e506fc388cbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf3a997f2c1faf8eef466f56356930194b0a1e40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfcb4be925eecc03ea69424fa3179c86ebfcc1ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe72fcf5714eb77da9e514a16640109c12eb6499e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec0b8147afeb5dd2bb387f65522ab10bd693cf23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1a9c57f8917c5d8ac22ef51581f585ad0382413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2e60561f77f047af46c19990befe3228427812c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe61440281680b4ffce2c43f8338a771c90dd659` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ufarm-audit-report-2023-1.1.pdf](https://github.com/Decurity/audits/blob/master/UFarm/ufarm-audit-report-2023-1.1.pdf) | Decurity | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [ufarm-may-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/ufarm-may-25(Final).pdf) | Hexens | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc36442b4a4522e871399cd717abdd847ab11fe88`](./contracts/arbitrum-42161/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [14048] ufarm-may-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
