# Agentic Audit Brief: Prime Staking

## Project Overview

- Project: Prime Staking (`prime-staking`)
- Website: [https://primestaking.xyz/](https://primestaking.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:43.011Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: base
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $478,348.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 12 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 9 (1 live, 8 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PRFI | unknown | base | n/a | [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x1e8559...b97582` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d5154...563bca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x793db5...bad98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d8f06...c68494` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86ceb2...936f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8da56b...bc9fa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f171...000c7a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf3206...22151a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM_0843_xdc_prime_stake_FINAL_updated_tests.pdf](https://github.com/PrimeNumbersLabs/primestaking-gitbook/blob/main/NM_0843_xdc_prime_stake_FINAL_updated_tests.pdf) | yAudit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-staking-contract](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-staking-contract) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2515] NM_0843_xdc_prime_stake_FINAL_updated_tests.pdf
- [2516] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-staking-contract

Fork inheritance lineage and inherited audits are included when available.
