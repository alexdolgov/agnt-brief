# Agentic Audit Brief: Prime Staking

## Project Overview

- Project: Prime Staking (`prime-staking`)
- Website: [https://primestaking.xyz/](https://primestaking.xyz/)
- Lifecycle: active (Tier 0, 66.4% below peak)
- Generated: 2026-05-23T18:18:37.298Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $5,087,815.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prime Staking is a liquid staking protocol on Base that allows users to stake assets and receive liquid derivative tokens, enabling them to earn staking rewards while maintaining liquidity. It also includes vesting mechanisms for token distribution.

### Architecture

The ONFTDiamond token contract is the primary liquid staking derivative, while PRFI is a related token. The PRFIVestingV2Proxy manages vesting of PRFI tokens, indicating a shared token economy where staking rewards or allocations are distributed through vesting.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ONFTDiamond | token | base | [`0x693a3a...78dcf5`](./contracts/base-8453/0x693a3a45ff596024f844be1cc6845d59f778dcf5/) | ⚠️ Unaudited |
| PRFI | unknown | base | [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | ⚠️ Unaudited |
| Staker | core_logic | base | [`0x63af36...242a2c`](./contracts/base-8453/0x63af36718dc17714805b3a988fced01c16242a2c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x1e8559...b97582` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3d5154...563bca` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x793db5...bad98b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d8f06...c68494` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x86ceb2...936f95` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7f171...000c7a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdf3206...22151a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Read the full report (PDF)](https://github.com/PrimeNumbersLabs/primestaking-gitbook/blob/main/NM_0843_xdc_prime_stake_FINAL_updated_tests.pdf) | yAudit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [**XDC Staking Contract (V1 / liquid staking)**](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-staking-contract) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x693a3a...78dcf5`](./contracts/base-8453/0x693a3a45ff596024f844be1cc6845d59f778dcf5/) | ONFTDiamond | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bbcf1...de3255`](./contracts/base-8453/0x7bbcf1b600565ae023a1806ef637af4739de3255/) | PRFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x63af36...242a2c`](./contracts/base-8453/0x63af36718dc17714805b3a988fced01c16242a2c/) | Staker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2515] Read the full report (PDF)
- [2516] **XDC Staking Contract (V1 / liquid staking)**

Fork inheritance lineage and inherited audits are included when available.
