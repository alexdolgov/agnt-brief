# Agentic Audit Brief: Antarctic

## Project Overview

- Project: Antarctic (`antarctic`)
- Website: [https://www.antarctic.exchange/](https://www.antarctic.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:27.901Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: arbitrum
- Contract surface: 13 unique implementations (16 raw deployments)
- DeFi Llama TVL: $9,838,626.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 7 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (mintablebasetoken, basetoken, governable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 14 (10 live, 4 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 16
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AHLP | unknown | arbitrum | n/a | [`0x5fd22d...34c2c4`](./contracts/arbitrum-42161/0x5fd22da8315992dbbd82d5ac1087803ff134c2c4/) | ⚠️ Unaudited |
| AhlpManager | governance | arbitrum | n/a | [`0xc5f9d4...40bd9f`](./contracts/arbitrum-42161/0xc5f9d4b9f68caaa869317baa09a233b22940bd9f/) | ⚠️ Unaudited |
| AhlpStaker | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x1ba274...408d85`](./contracts/arbitrum-42161/0x1ba274ebbb07353657ed8c76a87acf362e408d85/); arbitrum `0x237455...175600` | ⚠️ Unaudited |
| AMLP | unknown | arbitrum | n/a | [`0x152f5e...993a4b`](./contracts/arbitrum-42161/0x152f5e6142db867f905a68617dbb6408d7993a4b/) | ⚠️ Unaudited |
| AmlpManager | governance | arbitrum | n/a | [`0x98a6ae...bcf8dd`](./contracts/arbitrum-42161/0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd/) | ⚠️ Unaudited |
| AmlpStaker | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x3a66b8...a50999`](./contracts/arbitrum-42161/0x3a66b81be26f2d799c5a96a011e1e3fb2ba50999/); arbitrum `0x88ff0b...d52038` | ⚠️ Unaudited |
| FundingVault | core_logic | arbitrum | n/a | [`0x07f169...df043f`](./contracts/arbitrum-42161/0x07f169d388c56cf8517b249e845502a14ddf043f/) | ⚠️ Unaudited |
| sAHLP | unknown | arbitrum | n/a | [`0x50c30f...685ea9`](./contracts/arbitrum-42161/0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9/) | ⚠️ Unaudited |
| sAMLP | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4f2b37...24b6a7`](./contracts/arbitrum-42161/0x4f2b3767616ee3523534910176d61ff35224b6a7/); arbitrum `0xbc08f3...edb9db` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x169dac...30378d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x734ec6...3597b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5ce87...2132fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb323b...13bd68` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/antarctic-exchange](https://skynet.certik.com/projects/antarctic-exchange) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x5fd22d...34c2c4`](./contracts/arbitrum-42161/0x5fd22da8315992dbbd82d5ac1087803ff134c2c4/) | AHLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc5f9d4...40bd9f`](./contracts/arbitrum-42161/0xc5f9d4b9f68caaa869317baa09a233b22940bd9f/) | AhlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x152f5e...993a4b`](./contracts/arbitrum-42161/0x152f5e6142db867f905a68617dbb6408d7993a4b/) | AMLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x98a6ae...bcf8dd`](./contracts/arbitrum-42161/0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd/) | AmlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07f169...df043f`](./contracts/arbitrum-42161/0x07f169d388c56cf8517b249e845502a14ddf043f/) | FundingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50c30f...685ea9`](./contracts/arbitrum-42161/0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9/) | sAHLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f2b37...24b6a7`](./contracts/arbitrum-42161/0x4f2b3767616ee3523534910176d61ff35224b6a7/) | sAMLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20639] skynet.certik.com/projects/antarctic-exchange

Fork inheritance lineage and inherited audits are included when available.
