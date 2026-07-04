# Agentic Audit Brief: Tether Gold

## Project Overview

- Project: Tether Gold (`tether-gold`)
- Website: [https://gold.tether.to/](https://gold.tether.to/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.743Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, celo, ethereum, plasma
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $2,857,217,272.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 13 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (erc20upgradesafe, contextupgradesafe, ownableupgradesafe). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CeloOFTExtension | unknown | celo | n/a | [`0x207059...fd7e4c`](./contracts/celo-42220/0x207059273474e6226a2e68085439015ad5fd7e4c/) | ⚠️ Unaudited |
| DaoModule | unknown | ethereum | n/a | [`0x3de7a4...8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | ⚠️ Unaudited |
| DVFInterface2 | unknown | ethereum | n/a | [`0xbc6197...b684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/) | ⚠️ Unaudited |
| DVFInterface3 | unknown | ethereum | n/a | [`0xa297ec...319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | ⚠️ Unaudited |
| DVFInterface4 | unknown | ethereum | n/a | [`0x7de1f0...645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | ⚠️ Unaudited |
| FeeCurrencyWrapper | unknown | celo | n/a | [`0x0357ee...1880c4`](./contracts/celo-42220/0x0357ee22278c922e1d36cfe6b899269b161880c4/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x1fae7b...b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | ⚠️ Unaudited |
| OUpgradeable | unknown | plasma | n/a | [`0x0200c2...8470c1`](./contracts/plasma-9745/0x0200c29006150606b650577bbe7b6248f58470c1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | celo | n/a | [`0x01bff4...bc1071`](./contracts/celo-42220/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | ⚠️ Unaudited |
| RevokableVester | unknown | ethereum | n/a | [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | ⚠️ Unaudited |
| SignatureChecker | unknown | avalanche | n/a | [`0x6d2053...432c35`](./contracts/avalanche-43114/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/) | ⚠️ Unaudited |
| SupporterVester | unknown | ethereum | n/a | [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x354f86...d9ba87`](./contracts/ethereum-1/0x354f861227fc9b7abf55389e0038163047d9ba87/) | ⚠️ Unaudited |
| TetherTokenEURTV2 | unknown | ethereum | n/a | [`0xde706e...bd5c7d`](./contracts/ethereum-1/0xde706e90f07ffa15b1783379edab3c21fbbd5c7d/) | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | celo | n/a | [`0x07cfc1...e42e1f`](./contracts/celo-42220/0x07cfc1de16f7ba1eb921fe570fc61a791be42e1f/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x05e364...4c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
