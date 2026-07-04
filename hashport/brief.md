# Agentic Audit Brief: Hashport

## Project Overview

- Project: Hashport (`hashport`)
- Website: [https://www.hashport.network](https://www.hashport.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.327Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, moonbeam, optimism, polygon
- Contract surface: 13 unique implementations (161 raw deployments)
- DeFi Llama TVL: $925,077.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 25 project-authored contract(s) across 7 chain(s); 2 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 292; live-surface contracts included: 161 (151 live, 10 unknown).
- Excluded by liveness: 131 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 4 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 13
- Raw deployments: 161
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 3 | 75.0% | n/a |
| unknown | Tier 2 | 3 | 75.0% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Router | adapter | base | n/a | 3 deployments: optimism `0x6da4e9...7c0c3e`; moonbeam `0x617d29...6d2f6b`; base [`0x0f3414...09f54b`](./contracts/base-8453/0x0f3414b61b902513e04e76ca4d1a7b003d09f54b/) | ✅ Audited |
| RouterFacet | unknown | avalanche | n/a | 11 deployments: ethereum `0xf9fe42...942b34`; optimism `0x3347f1...0e7a6e`; bsc `0xcccaff...3e981b`; polygon `0xa2f8f6...0d4d7f`; moonbeam `0x6bb070...2fa886`; moonbeam `0x7741a1...2f7cee`; base `0xd9cde0...ef42e8`; arbitrum `0x73d0da...2cc899`; avalanche [`0x2e195f...4de6f7`](./contracts/avalanche-43114/0x2e195f12e4d049126f9ffb9a57782d730c4de6f7/); avalanche `0xcccaff...3e981b`; avalanche `0xd050ed...db11cc` | ✅ Audited |
| WrappedToken | unknown | arbitrum | n/a | 135 deployments: ethereum `0x0e9bf2...8e72cf`; ethereum `0x13ceaf...503369`; ethereum `0x16d0b8...b54f0b`; ethereum `0x1f7fd1...b544bb`; ethereum `0x23cce5...520546`; ethereum `0x273d43...051c18`; ethereum `0x2aeabd...f39526`; ethereum `0x2e6fb7...ab422f`; ethereum `0x2f3afd...285ef7`; ethereum `0x3b930b...016ccc`; ethereum `0x45c82a...3b764d`; ethereum `0x7158b8...f1e54a`; ethereum `0xa32419...ddd824`; ethereum `0xa6312d...bdde48`; ethereum `0xb41822...5d70c7`; ethereum `0xbd09be...0c2558`; ethereum `0xcc944c...28af61`; ethereum `0xe2d48a...2726af`; ethereum `0xeebd1e...5ae426`; ethereum `0xf6a72c...592b97`; ethereum `0xff7706...998167`; optimism `0x1d299f...ffd401`; optimism `0x21b829...9114cd`; optimism `0x2cbf04...671dcc`; optimism `0x2ea0a6...4cdc99`; optimism `0x52cfce...f29dac`; optimism `0x73fa28...3b0e1b`; optimism `0x7fa810...f372ff`; optimism `0x92c30a...10d7c6`; optimism `0x9ca4ee...0699a8`; optimism `0xb4e73a...2d5856`; optimism `0xbc41dd...b50a69`; optimism `0xc2c4e4...e833b3`; optimism `0xc3fbd8...7c0128`; optimism `0xd91ff3...244ca6`; optimism `0xe11ec1...a9e956`; optimism `0xe15b63...1ea65e`; optimism `0xf4b6e0...bd2b32`; optimism `0xf6daa6...1f1659`; optimism `0xf792ff...b4245e`; bsc `0x08707e...db456e`; bsc `0x1675b4...4355f9`; bsc `0x1bb219...c878b9`; bsc `0x1f9f0f...3cd2e2`; bsc `0x3881db...f431b3`; bsc `0x4e7ff4...868ff6`; bsc `0x58b459...3bb789`; bsc `0x5b9f05...d8977f`; bsc `0x6a7f89...d25474`; bsc `0x7622c2...2609dd`; bsc `0x7b173d...e9b39b`; bsc `0x8d27bf...5566af`; bsc `0xa2e439...240119`; bsc `0xac41be...b69529`; bsc `0xd8f3cf...c4e5c1`; bsc `0xe0ecf8...566b66`; bsc `0xe932b8...5d4a47`; bsc `0xf839c3...14110a`; polygon `0x28dba9...bd6d34`; polygon `0x2d2101...440ab1`; polygon `0x319413...8bc5db`; polygon `0x3212bf...60042f`; polygon `0x346ba1...19e55e`; polygon `0x59c43e...7e2441`; polygon `0x75771d...1e67e7`; polygon `0x79103b...a972d5`; polygon `0x7998a9...455aac`; polygon `0x7adb62...d71262`; polygon `0x8b4cae...f1753d`; polygon `0x8f3d03...8305a4`; polygon `0xb98ce6...cee369`; polygon `0xc63ec8...0a9e93`; polygon `0xcceadd...8b95fc`; polygon `0xcddc03...114ddf`; polygon `0xd30ed3...ffeb31`; polygon `0xea8586...358c0e`; moonbeam `0x1e02a7...9dcb8e`; moonbeam `0x22c9b5...7a3f60`; moonbeam `0x2ca9f3...bffcc2`; moonbeam `0x49967f...dd7331`; moonbeam `0x4dbbe8...47d8c1`; moonbeam `0x6a1fcc...f4300f`; moonbeam `0x708f96...d18502`; moonbeam `0xad6bc1...693bde`; moonbeam `0xd84eaf...d58963`; moonbeam `0xdab777...fab699`; moonbeam `0xe32c01...1c8ec0`; base `0x22833b...ca5761`; base `0x2a6eb2...635162`; base `0x34598d...2c9d0f`; base `0x841952...671bd5`; base `0x93aefc...c9c333`; base `0xc5e8fe...7febf3`; base `0xd3705d...b7dc9f`; base `0xdc586c...9bfe14`; base `0xde5806...b8fa97`; base `0xfa77ca...7e7167`; arbitrum [`0x029341...2bf85e`](./contracts/arbitrum-42161/0x029341d8772f8f5cca973f788b0dbd3aaf2bf85e/); arbitrum `0x148200...fc48a6`; arbitrum `0x31269b...fa7c89`; arbitrum `0x508096...0bfcfa`; arbitrum `0x53a198...ecfd3a`; arbitrum `0x5a324e...015da5`; arbitrum `0x5c173e...0bb19a`; arbitrum `0x6534f7...5247af`; arbitrum `0x6ce727...7cc171`; arbitrum `0x6fd908...f3946d`; arbitrum `0x84b420...226057`; arbitrum `0x8f005e...80a6cc`; arbitrum `0xaca468...8e0a55`; arbitrum `0xad4ff3...5f393a`; arbitrum `0xc12f1d...0ad58e`; arbitrum `0xe508b0...cdc7f5`; arbitrum `0xe821c0...c89417`; arbitrum `0xeb7278...927d68`; arbitrum `0xed6c7a...684fa5`; arbitrum `0xfa151e...0facce`; avalanche `0x08707e...db456e`; avalanche `0x1bb219...c878b9`; avalanche `0x2e8db7...e15c68`; avalanche `0x2fd644...8fae11`; avalanche `0x30c747...4ca1e0`; avalanche `0x359491...947758`; avalanche `0x430eee...abf4d8`; avalanche `0x6bb7c8...c88444`; avalanche `0x781aaf...b91a9d`; avalanche `0x8b6e25...e3616c`; avalanche `0x8bcf39...8ec479`; avalanche `0x8d27bf...5566af`; avalanche `0x945ca4...3e4f2c`; avalanche `0xb31c96...3c35b6`; avalanche `0xdbaf53...d1c0b5`; avalanche `0xe0ecf8...566b66`; avalanche `0xe932b8...5d4a47`; avalanche `0xf839c3...14110a` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RouterFacet | unknown | bsc | n/a | 2 deployments: bsc [`0x2e195f...4de6f7`](./contracts/bsc-56/0x2e195f12e4d049126f9ffb9a57782d730c4de6f7/); bsc `0x902192...ffafcc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x14ee62...c9b022` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 2 deployments: cronos `0x36daaf...c6413c`; fantom `0x475b21...1f4e0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87f640...db3903` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ee227...46fc5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2aa75...fff50a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaebcae...3e3f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfce733...5322c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a9240...0d8d90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b9f05...d8977f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [omniscia.io/reports/limechain-hashport](https://omniscia.io/reports/limechain-hashport) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [omniscia.io/reports/limechain-hashport-round-2](https://omniscia.io/reports/limechain-hashport-round-2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 3 | n/a |
| [Hashport-Smart-Contract-Review-v1.0-3-1.pdf](https://www.hashport.network/wp-content/uploads/Hashport-Smart-Contract-Review-v1.0-3-1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2e195f...4de6f7`](./contracts/bsc-56/0x2e195f12e4d049126f9ffb9a57782d730c4de6f7/) | RouterFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Fork inheritance lineage and inherited audits are included when available.
