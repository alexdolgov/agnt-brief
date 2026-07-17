# Agentic Audit Brief: Beefy

## Project Overview

- Project: Beefy (`beefy`)
- Website: [https://beefy.com](https://beefy.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.405Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $107,664,768.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 4 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/beefyfinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 12 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| DefiYield | Tier 2 | 1 | 25.0% | 2020-12 |
| Zellic | Tier 2 | 1 | 25.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BIFI | unknown | ethereum | n/a | [`0xb1f1ee126e9c96231cc3d3fad7c08b4cf873b1f1`](./contracts/ethereum-1/0xb1f1ee126e9c96231cc3d3fad7c08b4cf873b1f1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeefyVaultV7 | unknown | arbitrum | n/a | [`0x0c0846c5d8194bc327669763ac6af9b788edb409`](./contracts/arbitrum-42161/0x0c0846c5d8194bc327669763ac6af9b788edb409/) | ⚠️ Unaudited |
| CLR | unknown | ethereum | n/a | [`0x11ae2b89175792f57d320a020eaea879e837fe6c`](./contracts/ethereum-1/0x11ae2b89175792f57d320a020eaea879e837fe6c/) | ⚠️ Unaudited |
| DelegateRegistry | unknown | ethereum | n/a | [`0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | ⚠️ Unaudited |

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
| [2020-12-10-Beefy-DefiYield-Vault-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2020-12-10-Beefy-DefiYield-Vault-Audit.pdf) | DefiYield | Audit | 2020-12 | stale | Direct | contract_name | 1 | medium |
| [2021-03-05-Beefy-CertiK-Final-For-Beefy-Contracts.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2021-03-05-Beefy-CertiK-Final-For-Beefy-Contracts.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2021-05-11-Beefy-CertiK-Preeliminary-Comments.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2021-05-11-Beefy-CertiK-Preeliminary-Comments.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [2021-06-24-Beefy-Smart-Contract.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2021-06-24-Beefy-Smart-Contract.pdf) | Unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [2023-08-03-Beefy-Zellic-4626-Wrapper-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2023-08-03-Beefy-Zellic-4626-Wrapper-Audit.pdf) | Zellic | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [2023-08-30-Beefy-Zellic-BIFI-Token-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2023-08-30-Beefy-Zellic-BIFI-Token-Audit.pdf) | Zellic | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [2023-12-15-Beefy-OZ-Zap-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2023-12-15-Beefy-OZ-Zap-Audit.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024-02-28-Beefy-Zellic-CLM-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2024-02-28-Beefy-Zellic-CLM-Audit.pdf) | Zellic | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-04-06-Beefy-Cyfrin-CLM-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2024-04-06-Beefy-Cyfrin-CLM-Audit.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024-06-30-Beefy-Certora-CLM-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2024-06-30-Beefy-Certora-CLM-Audit.pdf) | Certora | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [2024-07-02-Beefy-Sherlock-CLM-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2024-07-02-Beefy-Sherlock-CLM-Audit.pdf) | Sherlock | Contest | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [2025-04-05-Beefy-Electisec-beS-Audit.pdf](https://github.com/beefyfinance/beefy-audits/blob/master/2025-04-05-Beefy-Electisec-beS-Audit.pdf) | Electisec | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Audits & Bounty](https://docs.beefy.finance/safety/bug-bounty-program.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [here](https://jumpshare.com/share/OoX8oJSWRgxyIhoET3cP) | unknown | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [Audit](https://github.com/beefyfinance/beefy-audits) | unknown | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [here](https://jumpshare.com/share/gKbJPgEJxFOVPsZSv47z) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/beefyfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Beefy hosted a [CLM contest]() with Sherlock in May 2024, receiving 134 submissions but finding only 1 medium-severity bug.](https://audits.sherlock.xyz/contests/303) | Sherlock | Contest | 2024-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0c0846c5d8194bc327669763ac6af9b788edb409`](./contracts/arbitrum-42161/0x0c0846c5d8194bc327669763ac6af9b788edb409/) | BeefyVaultV7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11ae2b89175792f57d320a020eaea879e837fe6c`](./contracts/ethereum-1/0x11ae2b89175792f57d320a020eaea879e837fe6c/) | CLR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446`](./contracts/ethereum-1/0x469788fe6e9e9681c6ebf3bf78e7fd26fc015446/) | DelegateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [19521] 2021-03-05-Beefy-CertiK-Final-For-Beefy-Contracts.pdf
- [19522] 2021-05-11-Beefy-CertiK-Preeliminary-Comments.pdf
- [19523] 2021-06-24-Beefy-Smart-Contract.pdf
- [19526] 2023-12-15-Beefy-OZ-Zap-Audit.pdf
- [19527] 2024-02-28-Beefy-Zellic-CLM-Audit.pdf
- [19528] 2024-04-06-Beefy-Cyfrin-CLM-Audit.pdf
- [19529] 2024-06-30-Beefy-Certora-CLM-Audit.pdf
- [19530] 2024-07-02-Beefy-Sherlock-CLM-Audit.pdf
- [19531] 2025-04-05-Beefy-Electisec-beS-Audit.pdf
- [19532] Audits & Bounty
- [19533] here
- [19534] Audit
- [19535] here
- [19537] Beefy hosted a [CLM contest]() with Sherlock in May 2024, receiving 134 submissions but finding only 1 medium-severity bug.

Fork inheritance lineage and inherited audits are included when available.
