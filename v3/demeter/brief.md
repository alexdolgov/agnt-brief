# Agentic Audit Brief: Demeter

## Project Overview

- Project: Demeter (`demeter`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.749Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, heco
- Contract surface: 73 unique implementations (103 raw deployments)
- DeFi Llama TVL: $285,338.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 20 project-authored contract(s) across 1 chain(s); 16 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (managerproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 116; live-surface contracts included: 103 (16 live, 87 unknown).
- Excluded by liveness: 13 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 73 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 62
- Unique implementations: 73
- Raw deployments: 103
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x8ff795...444adf`](./contracts/bsc-56/0x8ff795a6f4d97e7887c79bea79aba5cc76444adf/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | [`0x0d8ce2...9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| DemeterLens | periphery | bsc | n/a | 2 deployments: bsc [`0x4909b1...37d1c4`](./contracts/bsc-56/0x4909b138e67530b2059fb08c6bbabe4a9637d1c4/); bsc `0xa23339...636179` | ⚠️ Unaudited |
| DMT | unknown | bsc | n/a | [`0x3eb05a...40b4b7`](./contracts/bsc-56/0x3eb05a201817f87c198930b86f40c6829340b4b7/) | ⚠️ Unaudited |
| DUSD | unknown | bsc | n/a | [`0x22fda2...1c8b6b`](./contracts/bsc-56/0x22fda23aed456f2de139c6240f0776ef031c8b6b/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | bsc | n/a | 5 deployments: bsc [`0x476908...195ec2`](./contracts/bsc-56/0x476908a087deb6d06596ad8ac349357f7f195ec2/); bsc `0x57a7bc...cfae12`; bsc `0x754328...4ee60c`; bsc `0xd1f971...2eb324`; bsc `0xe88e60...8452fc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x77991006d41349c15319517dbfd19034d2919c34) | proxy | bsc | n/a | 5 deployments: bsc `0x5c4e2b...3bd10b`; bsc `0x606bb7...49d680`; bsc `0x779910...919c34`; bsc `0x89bb17...2027cf`; bsc `0xb275b6...7bc6e2` | ❓ Unverified |
| Proxy (impl: 0xc3f12c6f4db9da9f3505e6c89e2337819137e64f) | unknown | bsc | n/a | 2 deployments: bsc `0x3632e7...c94379`; bsc `0xc3f12c...37e64f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00df2b...dc566d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0237a9...b2a801` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04ac79...466b82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a2382...23941e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c4df0...3410f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d2811...133cf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x127ff5...5361fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15fd1e...670625` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170918...8be13a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x181ea0...6baa46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19a636...02fbea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ce0aa...89cb35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x217d2c...2368df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x234c71...350e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x250a0b...8671f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x303673...d8883e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x336dd5...3c5478` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x363a98...776ab8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4016f8...45fcb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x408cdf...3e9efb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40f2ca...e32dd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48fa67...a058f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a3451...c18216` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b6b58...787924` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e0a7b...dbb4b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eef79...ee20ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5040c0...7981d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x511069...de68f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x542c2b...c2c1ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54abc8...247984` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5891bc...aa279d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c2ef2...5b39e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6113fd...b9143a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x612618...b2418f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x61a2b1...29edfd`; bsc `0x95de27...382816` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x687bbf...6fa02b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69084f...8c9ac3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b5cfc...6df823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c9fcb...764606` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d8341...535b54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x796d5f...2787d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79adcd...a9ab1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x852015...76c1eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x896741...7991ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c2856...65a226` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8de34e...5c5d31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9291c0...7109f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98053f...2a0869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f55af...032c97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f5c80...13b015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac108d...177f32` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7fe5...8cc1c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0568d...7d1ccb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc17f0c...b09126` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4f32b...78c49f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd687dd...971fa3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0546f...49268c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe47bec...cc76d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb0980...2721fa` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | 20 deployments: heco `0x0298c2...3da047`; heco `0x103fc4...45ddf6`; heco `0x22c54c...5c46e6`; heco `0x25d2e8...be033c`; heco `0x31f7c5...f1c1dc`; heco `0x59a626...592e24`; heco `0x62ac81...97abca`; heco `0x63fb23...1ffb11`; heco `0x64ff63...28a1fd`; heco `0x66a79d...3f0bea`; heco `0x8d8fd8...c83d9c`; heco `0x9e0045...717b42`; heco `0xa2c49c...7773e3`; heco `0xae3a76...5d1810`; heco `0xc790ff...9d8474`; heco `0xda77b5...465b14`; heco `0xe2ce3b...07cf71`; heco `0xe867f6...39808f`; heco `0xef3ceb...aca375`; heco `0xf67710...9fc75a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Demeter-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Demeter-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13014] PeckShield-Audit-Report-Demeter-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
