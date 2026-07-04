# Agentic Audit Brief: Sperax

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.371Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum
- Contract surface: 118 unique implementations (125 raw deployments)
- DeFi Llama TVL: $1,765,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 24 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 6 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 140; live-surface contracts included: 125 (21 live, 104 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/18 (22.2%)
- Deployed-live implementations: 18 of 118 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/18
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 118
- Raw deployments: 125
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 5.6% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 11.1% | 2022-09 |
| unknown | Tier 2 | 2 | 11.1% | 2024-06 |
| Quantstamp | Tier 2 | 1 | 5.6% | 2023-12 |
| SlowMist | Tier 1 | 1 | 5.6% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Farm | unknown | arbitrum | n/a | [`0x39eb38...a4d8ea`](./contracts/arbitrum-42161/0x39eb38cf2cc8b4ff77817e2ada6ba64e40a4d8ea/) | ✅ Audited |
| SperaxTokenL2 | token | arbitrum | n/a | [`0x557555...40ad4b`](./contracts/arbitrum-42161/0x5575552988a3a80504bbaeb1311674fcfd40ad4b/) | ✅ Audited |
| veSPA_v1 | unknown | arbitrum | n/a | [`0xd16f53...69d165`](./contracts/arbitrum-42161/0xd16f5343fddd2dcf6a8791e302a204c13069d165/) | ✅ Audited |
| YieldReserve | unknown | arbitrum | n/a | [`0xfd14c8...29d861`](./contracts/arbitrum-42161/0xfd14c8ef0993fd9409f7820ba8ba80370529d861/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dynamic_APR_Farm | unknown | arbitrum | n/a | [`0x7775cd...5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x5b12d9...3b1bf1`](./contracts/arbitrum-42161/0x5b12d9846f8612e439730d18e1c12634753b1bf1/); arbitrum `0x6d5240...d51b62` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x00f2a6...96a825`](./contracts/arbitrum-42161/0x00f2a6a5c20152afa76c05627a224af8fc96a825/); arbitrum `0x3e4992...1ddf25` | ⚠️ Unaudited |
| SperaxToken | token | ethereum | n/a | 2 deployments: ethereum [`0x963148...215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/); ethereum `0xb4a3b0...d59008` | ⚠️ Unaudited |
| SperaxTokenL1 | token | ethereum | n/a | [`0x2a95fe...f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0390c6...60f473`](./contracts/arbitrum-42161/0x0390c6c7c320e41fce0e6f0b982d20a88660f473/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x457fa7...9c215b`](./contracts/arbitrum-42161/0x457fa70f53f1e088f768c0c93a389b4c229c215b/); arbitrum `0xf3f980...86bbcd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9b8b92...9850a4`](./contracts/arbitrum-42161/0x9b8b924a2b95f9681a6445c839ff1429159850a4/); arbitrum `0xc93f8a...e4ac42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xbf82a3...e7f403`](./contracts/arbitrum-42161/0xbf82a3212e13b2d407d10f5107b5c8404de7f403/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xdc118f...9d1eb4`](./contracts/arbitrum-42161/0xdc118f2f00812326fe0de5c9c74c1c0c609d1eb4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xf783dd...340e3f`](./contracts/arbitrum-42161/0xf783dd830a4650d2a8594423f123250652340e3f/) | ⚠️ Unaudited |
| USDs | unknown | arbitrum | n/a | [`0xd74f52...2d5748`](./contracts/arbitrum-42161/0xd74f5255d557944cf7dd0e45ff521520002d5748/) | ⚠️ Unaudited |
| veSPA | unknown | arbitrum | n/a | [`0x2e2071...5f6a17`](./contracts/arbitrum-42161/0x2e2071180682ce6c247b1ef93d382d509f5f6a17/) | ⚠️ Unaudited |
| xSPA | unknown | arbitrum | n/a | [`0x0966e7...b9ccc3`](./contracts/arbitrum-42161/0x0966e72256d6055145902f72f9d3b6a194b9ccc3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3703a01804f05a3cf84be69627ce32f8c2b84151) | unknown | arbitrum | n/a | `0x886f2d...198444` | ❓ Unverified |
| Proxy (impl: 0xb172d61f8682b977cf0888ce9337c41b50f94910) | unknown | arbitrum | n/a | `0xbc683d...d75c09` | ❓ Unverified |
| Proxy (impl: 0xed0544dea3300cebc5dff25cd9a189abde1862be) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x61dec2...692fd5`; arbitrum `0xed0544...1862be` | ❓ Unverified |
| SPABuyback | unknown | arbitrum | n/a | `0xfbc0d3...77afe3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81574...888ea9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00b309...a2894d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0247d4...da924b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03b354...cbc663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06910b...506b65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06bba0...8677ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09983f...09bbc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09fcea...5be5f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0addfb...2868d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fb294...87e7d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x116291...38a3fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x128527...51251e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x145ac7...b58e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x176dcf...c5a57e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1820c0...a61af9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a6131...c4ecc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f6803...6aba26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x240db7...adf2fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x295246...1142c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b00ef...2aaa10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d4b8a...27c275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x305026...8760a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322057...8e72a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3333a1...9ecd41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x356d79...236ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x374219...64bd20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x386a29...f83ec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43dccb...291be1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46728c...0071b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bc6be...8e138a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c5884...660cd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fcbfc...dc1da1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x511c1b...d14172` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x524b11...af8899` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x544350...cd4cab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x584643...aef487` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58735e...804c9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a96b1...764848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b2da0...6a8a2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d2a5d...869fb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f6ac8...31185b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x638d76...933a4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x645ebe...eae1af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67a798...982ed9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ada84...6f039d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x754db8...44da9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75ab2d...3b203d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b6e3...159714` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78b2a3...33d5bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b952a...d66047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c8599...9635d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81fb64...3a6d31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83db29...a10224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83fa5f...9c354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dbfa1...edebed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e5562...3e7d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fa1e5...bbba6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9741d4...30aed3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x974bf7...1de4c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97a7e6...962307` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97b3e3...9dc7c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x983fcc...eba210` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x992bcb...8babe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b9080...fc3b43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d8979...6828e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2255e...3fd92d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa4d10...44367e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa7487...be05b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae3232...9eb5be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1056a...df9430` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3647b...24eff0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb38629...b68944` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4a3b0...d59008` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4f9a8...ee3bcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6b989...cb0b28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb74401...b9b4a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe51b6...50307d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0f048...afe0fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc92acb...c3633b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb9b91...9e688c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbac4b...627d75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc12be...e99fa8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf9761...1e8004` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0497f...61c370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd06eca...4e650c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4e33a...492cf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb46bf...6fa9b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe64ced...5f45ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7b284...d423a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8f757...e75c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe91b6d...9169a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecc7fc...79f81b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xf1565d...ab82b2`; arbitrum `0xf2badb...34a898` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf30db0...162bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf403a6...527e7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc074b...d791a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 1 | medium |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: contract_name=5, extraction_exact=2

Zero-match audit list:

- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf

Fork inheritance lineage and inherited audits are included when available.
