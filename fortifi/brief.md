# Agentic Audit Brief: FortiFi

## Project Overview

- Project: FortiFi (`fortifi`)
- Website: [https://www.fortifi.pro](https://www.fortifi.pro)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.443Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: avalanche
- Contract surface: 67 unique implementations (67 raw deployments)
- DeFi Llama TVL: $348,664.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 20 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 7 ERC1155 multi-tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (fortifistrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 107; live-surface contracts included: 67 (2 live, 65 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 67
- Raw deployments: 67
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FortiFiWNativeMASSVaultV2 | core_logic | avalanche | n/a | [`0x853e7a...9d2d73`](./contracts/avalanche-43114/0x853e7a9dcc5037cd624834dc5f33151aa49d2d73/) | ⚠️ Unaudited |
| FortiFiWombatGGAvaxZapper | adapter | avalanche | n/a | [`0xdf4280...558a5d`](./contracts/avalanche-43114/0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x03d813...265414` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x053849...fed27b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09dd7e...d8da39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11f40b...4186d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1306c5...27a54b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x14517a...a718d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a5f90...a91ab0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1acd9e...ea2184` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20a70f...e8945c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x231bf4...7a180f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26585c...4ed414` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2dc798...ea4ce0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3158fc...d56d7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33ab93...c9a11d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37b5b7...21e4e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x404b56...71983e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45c53f...22be3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x461bba...d2a7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x486af6...344386` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a47ef...935971` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x521617...da1a94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x57bbc4...0e9e20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dfee5...132921` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x642fda...895be8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6aa5aa...5646c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f24c8...54ad9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7022ad...eb1cc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70e9c5...69c63a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x714a70...c3affe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x715801...995078` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x747998...2bcaae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75f833...3579bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x78a840...6816d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79b2a0...d5920e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x839b76...e2544e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aaf4...fc4230` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92581e...bffd36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98b57e...1b9904` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9baceb...ca9b0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e103d...1cdd02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f1ee7...ccf575` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2daec...72c032` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4d0b2...6ef63d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac01cd...1bf087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf7665...5bfe74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb70784...02134f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb97afc...435731` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbfba3...fcf8c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3630c...cbeb39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5fbcb...429f86` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd10f91...845e36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd174d9...59a15e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd3ed15...3fef9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd69391...3a5ee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6c70d...6f6b10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdae240...0854cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcb2ea...61600e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe017f5...61d117` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe20792...4be3f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5c4a9...1d6ec2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe64233...3d0550` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee758d...489f3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0f55e...ba4db0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc7427...9d898b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd3196...293b14` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [FortiFi-audit-report-[26-Oct-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/f/fortifi/FortiFi-audit-report-%5B26-Oct-2023%5D.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [blaize.tech/clients/smart-contract-security-audit-for-fortifi](https://blaize.tech/clients/smart-contract-security-audit-for-fortifi) | Blaize | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x853e7a...9d2d73`](./contracts/avalanche-43114/0x853e7a9dcc5037cd624834dc5f33151aa49d2d73/) | FortiFiWNativeMASSVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf4280...558a5d`](./contracts/avalanche-43114/0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d/) | FortiFiWombatGGAvaxZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13131] FortiFi-audit-report-[26-Oct-2023].pdf
- [13132] blaize.tech/clients/smart-contract-security-audit-for-fortifi

Fork inheritance lineage and inherited audits are included when available.
