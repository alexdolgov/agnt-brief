# Agentic Audit Brief: KUMA Protocol

## Project Overview

- Project: KUMA Protocol (`kuma-protocol`)
- Website: [https://kuma.bond](https://kuma.bond)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:20.171Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, linea, mantle, polygon
- Contract surface: 28 unique implementations (33 raw deployments)
- DeFi Llama TVL: $3,052,680.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 35 project-authored contract(s) across 4 chain(s); 1 ERC4626 vault, 4 ERC20 tokens, 1 ERC721 NFT, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 172; live-surface contracts included: 33 (14 live, 19 unknown).
- Excluded by liveness: 139 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/9 (22.2%)
- Deployed-live implementations: 9 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 28
- Raw deployments: 33
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 22.2% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 22.2% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KUMAAccessController | governance | ethereum | n/a | 2 deployments: ethereum [`0x5fad6f...1163de`](./contracts/ethereum-1/0x5fad6f80312aee6f19784a7fc359f90d441163de/); linea `0xb9cee0...6a52ae` | ✅ Audited |
| KUMABondToken | token | linea | n/a | 2 deployments: ethereum `0x74e9e8...b79a7b`; linea [`0x3d0a18...3a3a9a`](./contracts/linea-59144/0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeDistributor | operational_periphery | polygon | n/a | [`0x83d8ca...ca1227`](./contracts/polygon-137/0x83d8ca70144d55f74ad3c5eb3336b4163bca1227/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x33da84...e0d1bf`](./contracts/ethereum-1/0x33da84dd937779f3edaccf87e7ddcdc216e0d1bf/); ethereum `0xb55027...33f450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | n/a | 2 deployments: linea [`0x1151d6...642997`](./contracts/linea-59144/0x1151d63eb6154843d4b4898cf4c63af556642997/); linea `0x7cf34a...025432` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | [`0xfef638...3207b6`](./contracts/mantle-5000/0xfef638230495d1b36422f7475c2000d7cb3207b6/) | ⚠️ Unaudited |
| PaUSD | unknown | polygon | n/a | [`0x8054d4...a7486b`](./contracts/polygon-137/0x8054d4d130c3a84852f379424bcac75673a7486b/) | ⚠️ Unaudited |
| RateProvider | unknown | polygon | n/a | [`0x76d8b7...6628e2`](./contracts/polygon-137/0x76d8b79fb9afd4da89913458c90b6c09676628e2/) | ⚠️ Unaudited |
| WrappedRebaseToken | token | linea | n/a | 2 deployments: ethereum `0xaf4ce7...e57e09`; linea [`0x2f0b43...d7297a`](./contracts/linea-59144/0x2f0b4300074afc01726262d4cc9c1d2619d7297a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7a467d...cb1981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e8cdf...f74874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7d90b...dff07a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd407db...6de867` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15c05d...da2c5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x308466...c0ccdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e5660...734f76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f1a2e...d5e05e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba75fc...68546b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1e17d...dd6a82` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1a3445...7317a8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x274b30...2b0bce` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6a9742...d3f24a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6f74f0...a8bbbd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7d9573...1cecb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x83f8eb...15af34` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x888c2b...2826d1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc3b9d4...34dc3e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xda8102...accfeb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2023-02-kuma](https://code4rena.com/reports/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 1 | n/a |
| [www.chainsecurity.com/security-audit/kuma-protocol](https://www.chainsecurity.com/security-audit/kuma-protocol) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2023-02-kuma (GitHub directory)](https://github.com/code-423n4/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [2759] www.chainsecurity.com/security-audit/kuma-protocol

Fork inheritance lineage and inherited audits are included when available.
