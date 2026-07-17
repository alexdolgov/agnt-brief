# Agentic Audit Brief: PICWE

## Project Overview

- Project: PICWE (`picwe`)
- Website: [https://www.picwe.org/en](https://www.picwe.org/en)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.138Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, base
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $504,539.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 5 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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
| FiatTokenProxy | unknown | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | arbitrum | n/a | [`0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | ⚠️ Unaudited |
| MasterMinter | unknown | arbitrum | n/a | [`0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36`](./contracts/arbitrum-42161/0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36/) | ⚠️ Unaudited |
| PicWe_USD | unknown | base | n/a | [`0xdd73ea766b80417c0607a3f08e34a0c415d89d56`](./contracts/base-8453/0xdd73ea766b80417c0607a3f08e34a0c415d89d56/) | ⚠️ Unaudited |
| WeUSDMintRedeem | unknown | base | n/a | [`0x5d54f1092fd1750a3ab96972dc1867c5b23ef22c`](./contracts/base-8453/0x5d54f1092fd1750a3ab96972dc1867c5b23ef22c/) | ⚠️ Unaudited |

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
| [drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view](https://drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36`](./contracts/arbitrum-42161/0x8aff09e2259cacbf4fc4e3e53f3bf799efeeab36/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdd73ea766b80417c0607a3f08e34a0c415d89d56`](./contracts/base-8453/0xdd73ea766b80417c0607a3f08e34a0c415d89d56/) | PicWe_USD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d54f1092fd1750a3ab96972dc1867c5b23ef22c`](./contracts/base-8453/0x5d54f1092fd1750a3ab96972dc1867c5b23ef22c/) | WeUSDMintRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20938] drive.google.com/file/d/12APmNFf_dy2HBnDof_u0mM03_5vKSPWN/view

Fork inheritance lineage and inherited audits are included when available.
