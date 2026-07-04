# Agentic Audit Brief: Swaap

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.157Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mode, optimism, polygon
- Contract surface: 107 unique implementations (150 raw deployments)
- DeFi Llama TVL: $5,574,725.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 12 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (authentication, signaturesafeguard, eoasignaturesvalidator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 168; live-surface contracts included: 150 (30 live, 120 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 107 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 107
- Raw deployments: 150
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 40.0% | 2023-06 |
| Quantstamp | Tier 2 | 1 | 20.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SafeguardFactory | registry | ethereum | n/a | 13 deployments: ethereum [`0x03c01a...153b06`](./contracts/ethereum-1/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); ethereum `0xcc74bd...3369b8`; optimism [`0x03c01a...153b06`](./contracts/optimism-10/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); bsc `0x3f255a...13e3e2`; bsc `0xcc74bd...3369b8`; polygon [`0x03c01a...153b06`](./contracts/polygon-137/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xcc74bd...3369b8`; base `0xcc74bd...3369b8`; mode [`0x03c01a...153b06`](./contracts/mode-34443/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); arbitrum [`0x03c01a...153b06`](./contracts/arbitrum-42161/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); arbitrum `0xcc74bd...3369b8`; linea [`0x03c01a...153b06`](./contracts/linea-59144/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); linea `0xcc74bd...3369b8` | ✅ Audited |
| SafeguardPool | unknown | arbitrum | n/a | 10 deployments: ethereum `0x4342b7...3c755b`; ethereum `0xa71f76...8e0b0b`; ethereum `0xfc57bc...b5e1b2`; base `0x7877b9...25e7da`; arbitrum [`0x309854...4b8b39`](./contracts/arbitrum-42161/0x30985450cb225ec53fffb013171cadf6264b8b39/); arbitrum `0x46d0c6...d32796`; arbitrum `0x55e569...d1ca56`; arbitrum `0x981348...60137a`; arbitrum `0xbc0cb9...599c1d`; arbitrum `0xc54ba9...0084e6` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Authorizer | unknown | mode | n/a | 2 deployments: mode [`0xca19ed...cc123c`](./contracts/mode-34443/0xca19ed3182e6e591207e959de633a14825cc123c/); avalanche [`0xca19ed...cc123c`](./contracts/avalanche-43114/0xca19ed3182e6e591207e959de633a14825cc123c/) | ⚠️ Unaudited |
| ProxyJoinViaAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9574c8...e88067`](./contracts/ethereum-1/0x9574c8a1653717d2da71269c17ac28e891e88067/); mode `0xbc0cb9...599c1d` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 9 deployments: ethereum `0xd315a9...c76293`; optimism `0xd315a9...c76293`; bsc [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xd315a9...c76293`; base [`0x03c01a...153b06`](./contracts/base-8453/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0xd315a9...c76293`; arbitrum `0xd315a9...c76293`; avalanche `0xd315a9...c76293`; linea `0xd315a9...c76293` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2ff3ab5703c229691c609318a4cf8cca06ddba67) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0444d9...e02aee`; ethereum `0x2ff3ab...ddba67` | ❓ Unverified |
| Proxy (impl: 0x46d0c6f1e64664d366b4378a87bccfc61ad32796) | unknown | base | n/a | 2 deployments: base `0x3d1a98...30a4b9`; base `0x46d0c6...d32796` | ❓ Unverified |
| Proxy (impl: 0x6e9359dd27980fb7027c179ae5e701e4bcb2f6b9) | unknown | ethereum | n/a | 2 deployments: ethereum `0x22863c...e6ade6`; ethereum `0x6e9359...b2f6b9` | ❓ Unverified |
| Proxy (impl: 0xcb2e1a46f1d0b7d97a11d5bf62d15120426ea5c2) | unknown | base | n/a | 2 deployments: base `0x0e2e77...9c8d90`; base `0xcb2e1a...6ea5c2` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | unknown | optimism | n/a | 2 deployments: optimism `0x1d063e...142deb`; optimism `0xd52309...f590cd` | ❓ Unverified |
| Proxy (impl: 0xd52309f6e491e44c532dde306f0869ab71f590cd) | unknown | polygon | n/a | 2 deployments: polygon `0x1d063e...142deb`; polygon `0xd52309...f590cd` | ❓ Unverified |
| Proxy (impl: 0xd6ee0f90575c0fabdd0c17ea9b582edf77ff5506) | unknown | optimism | n/a | 2 deployments: optimism `0x825c9b...840f2c`; optimism `0xd6ee0f...ff5506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d063e...142deb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x207063...073ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26ca21...e86c53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2768ba...252752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33ddf3...a86b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x360b09...b2f147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac745...475973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ebe62...674a85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6330fd...3d1ad9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c759a...ca7a44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7646eb...498100` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8338ec...1b4be3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x890dd8...068210` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fca81...5c9943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d1ec0...b838c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb02016...2f0f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4a42e...d50003` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb55c74...b27834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8c67b...3fa5bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9f91f...2cf5e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8fd1b...0e01a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb7eb3...1a5244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd86236...127a72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce4ad...c2b83b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7683a...9e01b9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x081136...3cfbde` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x16e13f...0dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | 2 deployments: optimism `0x46f86d...e38beb`; optimism `0xb53d07...5633b3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x55e569...d1ca56` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7a039a...077e5f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9d1ec0...b838c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08920a...2c7104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c8b5f...9a4442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54985c...9c0afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd640...efdbd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x825c9b...840f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x916f00...cb96e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x943c89...d19d88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962ed2...d69257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4a42e...d50003` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8519b...5e1053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8a5ff...0e8378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ee0f...ff5506` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16e13f...0dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37ae22...5149d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | 2 deployments: polygon `0x8338ec...1b4be3`; polygon `0xfb5e78...55167f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb02415...02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe18072...a4b1ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf383ca...809564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf496fa...b7491a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x022aa4...551132` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142e5f...e4dedb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e6354...30d2e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29fbaf...f8108b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x307d2a...8b0080` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34ab4d...344607` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x372861...1c1e87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48b8ae...eb6180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5258de...6a04ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60abcc...d353ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x943c89...d19d88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x971c6a...777918` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x973105...50186c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3c636...56e548` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb20026...5acffa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb45f9e...8674d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec580d...7ab4cf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbc40a1...83263a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19cd92...f661d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x307d2a...8b0080` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x372995...4d3205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42fff9...4df59b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7162ae...cd068f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78993f...6c4679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x916f00...cb96e6`; arbitrum `0xae091d...969e6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad1051...ae4fc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xb02415...02dbbf`; arbitrum `0xcdc43c...2ec85e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb62286...75cd39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbd561...8df14b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd180b...3cb9b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe331b9...d702dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03c01a...153b06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d791e...da51e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x37d6c8...bfaf11`; avalanche `0x766110...35eb26` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a039a...077e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2d791e...da51e3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x69dbe8...543c4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/swaap-finance-safeguardpool](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 10 | low |
| [ChainSecurity_Swaap_SafeguardPool_Audit.pdf](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [swaap-audit-report.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0xca19ed...cc123c`](./contracts/mode-34443/0xca19ed3182e6e591207e959de633a14825cc123c/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9574c8...e88067`](./contracts/ethereum-1/0x9574c8a1653717d2da71269c17ac28e891e88067/) | ProxyJoinViaAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 102 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: contract_name=2, extraction_exact=10

Zero-match audit list:

- [2591] runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts
- [2592] swaap-audit-report.pdf
- [14916] audit.pdf
- [14917] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
