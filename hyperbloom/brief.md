# Agentic Audit Brief: HyperBloom

## Project Overview

- Project: HyperBloom (`hyperbloom`)
- Website: [https://www.hyperbloom.xyz/](https://www.hyperbloom.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.723Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: hyperliquid
- Contract surface: 44 unique implementations (51 raw deployments)
- DeFi Llama TVL: $103,375.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 51 (11 live, 40 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 44
- Raw deployments: 51
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ICHIVaultDeployer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x27404a54d594aa6307c3f9be102646363d6279a1`](./contracts/hyperliquid-999/0x27404a54d594aa6307c3f9be102646363d6279a1/); hyperliquid `0xdc9afd2ada6fbfd7f649b0d7af8fec7bb6ba73bb` | ⚠️ Unaudited |
| ICHIVaultFactory | unknown | hyperliquid | n/a | 4 deployments: hyperliquid [`0x2a3eb890dc0902c7ca6cc71a1e9670463b32a3f0`](./contracts/hyperliquid-999/0x2a3eb890dc0902c7ca6cc71a1e9670463b32a3f0/); hyperliquid `0x8ccd02e769e6a668a447bd15e134c31beccd8182`; hyperliquid `0xcd952718e6ef25ac7dbddd55e501aaa0177dbfa0`; hyperliquid `0xf0974cb26ab861221c16d4a93b1273cd668ed0b3` | ⚠️ Unaudited |
| UV3Math | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3e61b1844af74fe22997c0004c83429ddd6995d3`](./contracts/hyperliquid-999/0x3e61b1844af74fe22997c0004c83429ddd6995d3/); hyperliquid `0xd68b0114db1e3cacb5a334aa8af3d14295c772e7`; hyperliquid `0xe08a228684c03d5a9145a87fbaa78e93599fd4d3` | ⚠️ Unaudited |
| VolatilityCheck | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x06be011f7e56ab84e88536447a6926d1e77fdfc5`](./contracts/hyperliquid-999/0x06be011f7e56ab84e88536447a6926d1e77fdfc5/); hyperliquid `0x7b7fd55e8d11aad27b178c681ebc46c0c11f257f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x05cc3b24311f6916a05e0557c140a28172661c01` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0ad4d2ffbdbd5fdb19cc0bb179285736ffd7389c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0eebbaa800c4a63f5e403c88f94cf75853475d05` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x132a9710530dfe863b7d99c9fc795accc158ffa3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x13985bab1623df6d8ef556d0416c8f3f5f6c1426` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1957035ea8bc8f755f88512f54dc61447bbb091e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1c3eb3c090607b6b1e598b1722b4c91847ee8082` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x24430e837efb64ef87bb32be03437fc6005eef74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28798a2cc5b2b2dbf9c6d719dd024603f0514a21` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2db87239ef39b8d49136e17527031a731424e39c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38e6706860de0b96cd12eff815dedf01e5fe0722` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x50893df23638db2607a3d398eac6c65cdf847bb7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x52a60fa5092f92b96d1a007eedfcd349d6ce2471` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x532ec6b4e859a0e39610ac73707fc655fb33c285` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5453e5388a5db36a4f90ba37d61ddbb8a029948c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x58cad25112b3df13306cf049af6edd22af2b39c3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66717d147b113e257adf007063c06e7f33685653` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x71b470666e1a39531781ff38cafc08d1cfa97b44` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x731d9c25b92fbc41d7e9ca9998b61373ec7cdc4b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74c85ff93d0ff3b5e48c119390ef75a43d78d549` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d125d0766c968353454b7a67bb2d61a97e5665d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89ec5589c030fcef8c29e7eec491d2e73b53a623` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9176b8eb7fdff309be258f2f2edb32a8b79f19b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa1725f060d8732c8cb2057f5ae7a960a084537d9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae2f436fb16d4e612c5315ca78e6b9905b8816cc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb65628b7b5771f338d974602c73f8e9fff2dd94b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xba70f57a1de6d17b267afe3d995e948e3e2ddf9b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc5c1111509bfd9b4b6824c83212d980ce58f5090` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca3e892555bf1ed9be87d72c27d75fed68c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcfea11557bc9cb71bc6916e09fc8493d668b8d53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdbc032cd6b5b7b7f5d3d1950ea8f1e73f19a85d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdd37754ffa26c9ced8a4616eef78612c92b5f2b4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdef802412c31a378ffd808cf2af6a3f54acb5220` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe504f44882018b00c4f8ac57474c6cc3e8cd0b0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea7f9e7e13918e09a874c83cebcfc930733ff768` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb6ea277d7b0a876444dab30eef0f154f406cfb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf13de814761c91a6eddaa749e6464e8d10c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe6050990de7aeab276c83ffc2bf8824bcf0f864` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hyperbloom-security-review_2025-06-24.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Hyperbloom-security-review_2025-06-24.pdf) | Pashov Audit Group | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x27404a54d594aa6307c3f9be102646363d6279a1`](./contracts/hyperliquid-999/0x27404a54d594aa6307c3f9be102646363d6279a1/) | ICHIVaultDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2a3eb890dc0902c7ca6cc71a1e9670463b32a3f0`](./contracts/hyperliquid-999/0x2a3eb890dc0902c7ca6cc71a1e9670463b32a3f0/) | ICHIVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3e61b1844af74fe22997c0004c83429ddd6995d3`](./contracts/hyperliquid-999/0x3e61b1844af74fe22997c0004c83429ddd6995d3/) | UV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x06be011f7e56ab84e88536447a6926d1e77fdfc5`](./contracts/hyperliquid-999/0x06be011f7e56ab84e88536447a6926d1e77fdfc5/) | VolatilityCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13260] Hyperbloom-security-review_2025-06-24.pdf

Fork inheritance lineage and inherited audits are included when available.
