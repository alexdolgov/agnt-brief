# Agentic Audit Brief: Whiteheart

## Project Overview

- Project: Whiteheart (`whiteheart`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:12.024Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $6,188.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 29 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 7 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (hegicoptions, pricecalculator, whassetv2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 42 (6 live, 36 unknown).
- Excluded by liveness: 54 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 16.7% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WHERC20v2 | token | ethereum | n/a | [`0xf19c3f...739dc4`](./contracts/ethereum-1/0xf19c3fafb0171484d2301af1838cb5c6ea739dc4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20PresetFixedSupply | token | ethereum | n/a | [`0x60e46a...fe7ea8`](./contracts/ethereum-1/0x60e46a4dd91d10506d8efa2caa266e7191fe7ea8/) | ⚠️ Unaudited |
| HegicStaking | unknown | ethereum | n/a | [`0xc9ac1f...b897a2`](./contracts/ethereum-1/0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2/) | ⚠️ Unaudited |
| HLTPs | unknown | ethereum | n/a | [`0xbc8942...55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | ⚠️ Unaudited |
| OptionsManager | governance | ethereum | n/a | [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | ⚠️ Unaudited |
| WhiteStakingUSDC | unknown | ethereum | n/a | [`0xc0425f...83be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03d151...c3a3fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x040f5b...7ab916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0493b4...3525a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05ed49...75a680` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d1762...18bb32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f01ae...f5ec9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f3865...4dc58b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22cf9e...53f326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e5e3...c5fe89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363d62...8cd0e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36d41c...c4d99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a76b9...016675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b7a33...ce2b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x432462...0e8e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5321dd...321285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x604dfd...b140a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6209b2...d63526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6342b5...921ef6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74a0b1...56e0fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76dd5e...906e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779b22...33ba8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f8000...c6089a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83a1d4...6fbe3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90cefd...51a112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x940284...524bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4edc6...c87934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae83be...1145f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31ac2...4f8b0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5cf7d...1cd864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce31d3...a0e302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9effc...dbe72d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda1491...a327b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe026bf...254384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7c2a...747dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1f046...0d30e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff3127...275abe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Whiteheart-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Whiteheart-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
