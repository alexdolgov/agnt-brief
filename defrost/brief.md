# Agentic Audit Brief: Defrost

## Project Overview

- Project: Defrost (`defrost`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.896Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: avalanche
- Contract surface: 40 unique implementations (59 raw deployments)
- DeFi Llama TVL: $81,449.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 48 project-authored contract(s) across 1 chain(s); 26 ERC20 tokens, 2 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 28 common project-authored base contract(s) (importoracle, supertokenv2, superswitchavax). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 171; live-surface contracts included: 59 (28 live, 31 unknown).
- Excluded by liveness: 112 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/9 (11.1%)
- Deployed-live implementations: 9 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 40
- Raw deployments: 59
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 11.1% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| defrostFactory | unknown | avalanche | n/a | [`0xbaa97b...199cf1`](./contracts/avalanche-43114/0xbaa97b771260cf74b52e721ffe0d461512199cf1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DefrostToken | token | avalanche | n/a | [`0x47eb6f...b1241d`](./contracts/avalanche-43114/0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d/) | ⚠️ Unaudited |
| lendingQiErc20 | unknown | avalanche | n/a | [`0xd78b18...269b19`](./contracts/avalanche-43114/0xd78b188541c95e883b1fae17e1c4221895269b19/) | ⚠️ Unaudited |
| lendingQiErc20Debug | unknown | avalanche | n/a | 6 deployments: avalanche [`0x18a817...35df12`](./contracts/avalanche-43114/0x18a817f161c3c5fa0272888365771c1eb635df12/); avalanche `0x313b14...d8e1db`; avalanche `0x942cdb...6895fa`; avalanche `0xb20376...79fbf6`; avalanche `0xb4d6e9...22fba3`; avalanche `0xe48a47...d97652` | ⚠️ Unaudited |
| lendingSwitchAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0xb23d7b...d7c982`](./contracts/avalanche-43114/0xb23d7b994d84e7ea43633ed94a2f72712bd7c982/); avalanche `0xeaf085...a666b4` | ⚠️ Unaudited |
| lendingSwitchAVAXDebug | unknown | avalanche | n/a | 8 deployments: avalanche [`0x0f90e8...eca144`](./contracts/avalanche-43114/0x0f90e827d961c23350fdda0cbc60bdac7aeca144/); avalanche `0x106ac9...ae8f36`; avalanche `0x2252aa...2e5c62`; avalanche `0x3f2a3e...ea6d06`; avalanche `0x613991...792b5c`; avalanche `0xa423d8...adc4a8`; avalanche `0xcb5113...8ba705`; avalanche `0xf96ea2...3886a0` | ⚠️ Unaudited |
| superPangolinPairV2 | unknown | avalanche | n/a | [`0x85489a...a91751`](./contracts/avalanche-43114/0x85489a5b2ea0149d31a20c0b482da68023a91751/) | ⚠️ Unaudited |
| superQiErc20 | unknown | avalanche | n/a | 7 deployments: avalanche [`0x1cb7fb...aee9e0`](./contracts/avalanche-43114/0x1cb7fb2eebd5fc90a6a3db195546e6339faee9e0/); avalanche `0x51009d...53cf0e`; avalanche `0x7aa76f...1b307c`; avalanche `0x9ecf78...39b3e7`; avalanche `0xa4562e...aa49b3`; avalanche `0xb7a5ff...feb3e3`; avalanche `0xfa2c95...1769c3` | ⚠️ Unaudited |
| superStakeDaoV2 | unknown | avalanche | n/a | [`0xae413e...9faa61`](./contracts/avalanche-43114/0xae413e7ea4aefbee3b97be3bd5611b2c709faa61/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x08e01e...9116ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x090fac...c54836` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x108921...0b5bb6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e48e8...57b1c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2011a7...9ba388` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2eadd8...227373` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3429d8...0db968` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34bad0...534713` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x531de9...0edf3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59b590...ff88fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61f78b...3bcc08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71c9f8...ce05e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x735210...a1da65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f58a4...c0bfdb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87588f...17356f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x919e32...469ee6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97ee7b...67c206` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6fefc...b1059b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa74c3a...4737ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa783b2...83572f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf37cc...93a6d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xafbf56...88d5c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb36bc9...dd8ee7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb789eb...6ab716` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb87dd4...d9f7d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc28260...65576e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5760f...6d769b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd53378...f00efc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5a177...3bb126` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7c543...6c00d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe96efe...c030df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Defrost-Finance-2021-11-10.pdf](https://github.com/DefrostFinance/Audit-Reports/blob/main/REP-Defrost-Finance-2021-11-10.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x47eb6f...b1241d`](./contracts/avalanche-43114/0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d/) | DefrostToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd78b18...269b19`](./contracts/avalanche-43114/0xd78b188541c95e883b1fae17e1c4221895269b19/) | lendingQiErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x18a817...35df12`](./contracts/avalanche-43114/0x18a817f161c3c5fa0272888365771c1eb635df12/) | lendingQiErc20Debug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb23d7b...d7c982`](./contracts/avalanche-43114/0xb23d7b994d84e7ea43633ed94a2f72712bd7c982/) | lendingSwitchAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f90e8...eca144`](./contracts/avalanche-43114/0x0f90e827d961c23350fdda0cbc60bdac7aeca144/) | lendingSwitchAVAXDebug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85489a...a91751`](./contracts/avalanche-43114/0x85489a5b2ea0149d31a20c0b482da68023a91751/) | superPangolinPairV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1cb7fb...aee9e0`](./contracts/avalanche-43114/0x1cb7fb2eebd5fc90a6a3db195546e6339faee9e0/) | superQiErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae413e...9faa61`](./contracts/avalanche-43114/0xae413e7ea4aefbee3b97be3bd5611b2c709faa61/) | superStakeDaoV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
