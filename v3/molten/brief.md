# Agentic Audit Brief: Molten

## Project Overview

- Project: Molten (`molten`)
- Website: [https://molten.finance/](https://molten.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:28.275Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $285,287.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowList | unknown | ethereum | n/a | [`0x9b2383...b99dda`](./contracts/ethereum-1/0x9b23837ea87ad2b2ee201cebc53b03bca2b99dda/) | ⚠️ Unaudited |
| BlockedList | unknown | ethereum | n/a | [`0xf62715...97b015`](./contracts/ethereum-1/0xf62715bddce4b8a6ded9e5251bd99ebb7997b015/) | ⚠️ Unaudited |
| SumerProxy | unknown | ethereum | n/a | [`0x1c2253...7d28e0`](./contracts/ethereum-1/0x1c22531aa9747d76fff8f0a43b37954ca67d28e0/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x2f4aac...e50929`](./contracts/ethereum-1/0x2f4aac198df6351b4827adb0a4e1431b0ce50929/) | ⚠️ Unaudited |

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
| [Halborn](https://github.com/BitFluxFi/audits/blob/main/stable-amm-halborn-audit.pdf) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [OpenZeppelin](https://www.openzeppelin.com/news/saddle-contracts-audit) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24241] Halborn
- [24244] OpenZeppelin

Fork inheritance lineage and inherited audits are included when available.
