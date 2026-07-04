# Agentic Audit Brief: SashimiSwap

## Project Overview

- Project: SashimiSwap (`sashimiswap`)
- Website: [https://sashimi.cool/home/swap](https://sashimi.cool/home/swap)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:51.838Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum, heco
- Contract surface: 14 unique implementations (34 raw deployments)
- DeFi Llama TVL: $4,149,650.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 33 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 12 common project-authored base contract(s) (sltokeninterface, sltokenstorage, slerc20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 103; live-surface contracts included: 34 (8 live, 26 unknown).
- Excluded by liveness: 69 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 14
- Raw deployments: 34
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dipper | unknown | ethereum | n/a | [`0x786448...eb2368`](./contracts/ethereum-1/0x786448439d9401e0a8427acf7ca66a5114eb2368/) | ⚠️ Unaudited |
| LpBar | unknown | ethereum | n/a | [`0xc8b5b7...4635bd`](./contracts/ethereum-1/0xc8b5b728165f5e59690ba486e4086027f34635bd/) | ⚠️ Unaudited |
| SashimiPlate | unknown | ethereum | n/a | 4 deployments: ethereum [`0x422133...541ca6`](./contracts/ethereum-1/0x4221330f24b26f20457f7c7c925cfc46b1541ca6/); ethereum `0x56bb94...fd6168`; ethereum `0x8e95bc...778648`; ethereum `0xc5d00a...60de7f` | ⚠️ Unaudited |
| SashimiToken | token | ethereum | n/a | [`0xc28e27...b464c2`](./contracts/ethereum-1/0xc28e27870558cf22add83540d2126da2e4b464c2/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0xe4fe6a...db9410`](./contracts/ethereum-1/0xe4fe6a45f354e845f954cddee6084603cedb9410/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x5b8c75...e1a302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7578fd...56de11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a7707...0af831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbacbd1...66c3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34146...5a65c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda26ef...f10b0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1b43f...ae87cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88997...18ac66` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | 18 deployments: heco `0x06068d...47fd31`; heco `0x377dca...15a9a1`; heco `0x389eec...796e1b`; heco `0x3f3aaa...e39a4e`; heco `0x611e93...3272df`; heco `0x6c606f...b44d5a`; heco `0x6cb9d7...5c00fa`; heco `0x6ccbc3...956655`; heco `0x818bbc...890632`; heco `0x891daa...1721e2`; heco `0x937a48...5f076f`; heco `0xae399a...a39431`; heco `0xc28e27...b464c2`; heco `0xc2d36a...e67736`; heco `0xc597f8...ca5d82`; heco `0xe2a246...7f25ba`; heco `0xe9c958...11903f`; heco `0xeaac96...737d8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [sashimi_audit_report.pdf](https://sashimi.cool/files/sashimi_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2521] sashimi_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
