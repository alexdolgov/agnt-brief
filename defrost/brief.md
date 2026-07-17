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
| defrostFactory | unknown | avalanche | n/a | [`0xbaa97b771260cf74b52e721ffe0d461512199cf1`](./contracts/avalanche-43114/0xbaa97b771260cf74b52e721ffe0d461512199cf1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DefrostToken | token | avalanche | n/a | [`0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d`](./contracts/avalanche-43114/0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d/) | ⚠️ Unaudited |
| lendingQiErc20 | unknown | avalanche | n/a | [`0xd78b188541c95e883b1fae17e1c4221895269b19`](./contracts/avalanche-43114/0xd78b188541c95e883b1fae17e1c4221895269b19/) | ⚠️ Unaudited |
| lendingQiErc20Debug | unknown | avalanche | n/a | 6 deployments: avalanche [`0x18a817f161c3c5fa0272888365771c1eb635df12`](./contracts/avalanche-43114/0x18a817f161c3c5fa0272888365771c1eb635df12/); avalanche `0x313b14db2e9aa4da1d543da412e0824196d8e1db`; avalanche `0x942cdbc0c1675a3cf9129b98d37f5d150d6895fa`; avalanche `0xb2037671e1416bcda2a78bb0fdfd0a39b179fbf6`; avalanche `0xb4d6e9ccd3e7d2d9af49c7d980ee1548a822fba3`; avalanche `0xe48a47f71553cb02f92da43bf0867e9336d97652` | ⚠️ Unaudited |
| lendingSwitchAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0xb23d7b994d84e7ea43633ed94a2f72712bd7c982`](./contracts/avalanche-43114/0xb23d7b994d84e7ea43633ed94a2f72712bd7c982/); avalanche `0xeaf08577952177c13b739475a02fb48eb4a666b4` | ⚠️ Unaudited |
| lendingSwitchAVAXDebug | unknown | avalanche | n/a | 8 deployments: avalanche [`0x0f90e827d961c23350fdda0cbc60bdac7aeca144`](./contracts/avalanche-43114/0x0f90e827d961c23350fdda0cbc60bdac7aeca144/); avalanche `0x106ac9572b28c437147a3bfe4c110522f4ae8f36`; avalanche `0x2252aaba42df35eb8db17fdd512c54c2242e5c62`; avalanche `0x3f2a3e14d181413ae95d14b2464ff220b7ea6d06`; avalanche `0x613991c6e2d7e00c7ae7ce2113c2efd7b6792b5c`; avalanche `0xa423d858098f720cd2a407a17b37ed8481adc4a8`; avalanche `0xcb51134ea199e75b9253987e2443ec4ed98ba705`; avalanche `0xf96ea26f62a2d8144df118006753e4b5f53886a0` | ⚠️ Unaudited |
| superPangolinPairV2 | unknown | avalanche | n/a | [`0x85489a5b2ea0149d31a20c0b482da68023a91751`](./contracts/avalanche-43114/0x85489a5b2ea0149d31a20c0b482da68023a91751/) | ⚠️ Unaudited |
| superQiErc20 | unknown | avalanche | n/a | 7 deployments: avalanche [`0x1cb7fb2eebd5fc90a6a3db195546e6339faee9e0`](./contracts/avalanche-43114/0x1cb7fb2eebd5fc90a6a3db195546e6339faee9e0/); avalanche `0x51009d121595bde06e476c4cfff5cc097253cf0e`; avalanche `0x7aa76fc6946f6106a669f1af396f048a501b307c`; avalanche `0x9ecf784db7ac647255259ed713bb971f9439b3e7`; avalanche `0xa4562ea244a0fa7d08ba2033928745b9beaa49b3`; avalanche `0xb7a5ff28f2eb3af4b095ae9f8399829be2feb3e3`; avalanche `0xfa2c959c082fb7e28c7aab9053950a178d1769c3` | ⚠️ Unaudited |
| superStakeDaoV2 | unknown | avalanche | n/a | [`0xae413e7ea4aefbee3b97be3bd5611b2c709faa61`](./contracts/avalanche-43114/0xae413e7ea4aefbee3b97be3bd5611b2c709faa61/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | avalanche | n/a | `0x08e01e8019407096e3766d565ad3c728889116ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x090fac5536a8f943ca677f7b786b7ad032c54836` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10892185c666356ae2126db323a5568e400b5bb6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e48e885642f78d5fed1f23c967dfc0f2957b1c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2011a7a7d028e63e2f08c198bf459d97529ba388` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2eadd8de8697f6503ca459c3974fa71bdb227373` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3429d80959ab47f920a0861ef1e1b7debd0db968` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34bad0c31e22e47debe8634f93d67e065f534713` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x531de98564df880e282b27997df0ccaa0f0edf3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59b5902e23a690d583209fffb35ec1d393ff88fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61f78b88aeede2eb1628f48f89d61641ab3bcc08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71c9f81792790cf86415a32b68e506883ece05e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x735210feb45b114605ae0236c625a2a0daa1da65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f58a48782970679d1c7dba66f31e7e4e0c0bfdb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87588f40d38f6f04e34ac32d045d1687b317356f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x919e323f638e11f805638f540c1941ba3c469ee6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97ee7bb76ac7d8c42a5f2d3b7f277c2cd067c206` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6fefc527e34b482deb9c430eead64ba9ab1059b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa74c3a5996b17d5205d7a36b277e934d524737ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa783b2209b212937b623ae584b552c95b783572f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf37cc2408d32d3a511ce87098b561802793a6d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xafbf56df3a070956bcd99ae3ca55fbed4388d5c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb36bc926e341b547ee22b39835d58deb12dd8ee7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb789eb71e1f3adf3d10fd21ca2344c6b0d6ab716` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb87dd4d4e335bd3aa0ee034006f5f87077d9f7d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc28260e36938a4cbc150016bb76bdfb5c865576e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5760f2cbcedc162b9008938c9da28dd2e6d769b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd53378de1dd00f1d2d6839e4ff0b6f00b7f00efc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5a1778a09a6117ebf86ba01478b4e44bb3bb126` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7c543f589208bfb3495f6ebaea77195f36c00d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe96efeab8970e6d9e9f12f86d61b3060bfc030df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Defrost-Finance-2021-11-10.pdf](https://github.com/DefrostFinance/Audit-Reports/blob/main/REP-Defrost-Finance-2021-11-10.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d`](./contracts/avalanche-43114/0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d/) | DefrostToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd78b188541c95e883b1fae17e1c4221895269b19`](./contracts/avalanche-43114/0xd78b188541c95e883b1fae17e1c4221895269b19/) | lendingQiErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x18a817f161c3c5fa0272888365771c1eb635df12`](./contracts/avalanche-43114/0x18a817f161c3c5fa0272888365771c1eb635df12/) | lendingQiErc20Debug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb23d7b994d84e7ea43633ed94a2f72712bd7c982`](./contracts/avalanche-43114/0xb23d7b994d84e7ea43633ed94a2f72712bd7c982/) | lendingSwitchAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f90e827d961c23350fdda0cbc60bdac7aeca144`](./contracts/avalanche-43114/0x0f90e827d961c23350fdda0cbc60bdac7aeca144/) | lendingSwitchAVAXDebug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x85489a5b2ea0149d31a20c0b482da68023a91751`](./contracts/avalanche-43114/0x85489a5b2ea0149d31a20c0b482da68023a91751/) | superPangolinPairV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1cb7fb2eebd5fc90a6a3db195546e6339faee9e0`](./contracts/avalanche-43114/0x1cb7fb2eebd5fc90a6a3db195546e6339faee9e0/) | superQiErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae413e7ea4aefbee3b97be3bd5611b2c709faa61`](./contracts/avalanche-43114/0xae413e7ea4aefbee3b97be3bd5611b2c709faa61/) | superStakeDaoV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
