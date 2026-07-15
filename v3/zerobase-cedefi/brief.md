# Agentic Audit Brief: ZEROBASE CeDeFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ZEROBASE CeDeFi (`zerobase-cedefi`)
- Website: [https://app.zerobase.pro/](https://app.zerobase.pro/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 62 unique implementations (111 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $55,728,979.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for ZEROBASE CeDeFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfab99f...777777`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 62 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 62
- Raw deployments: 111
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x1bd704...49157d`; bsc `0x1bd704...49157d`; polygon `0x1bd704...49157d`; base `0x1bd704...49157d`; base `0xa6c17e...53958e`; arbitrum `0x1bd704...49157d`; arbitrum `0xd2c7cb...3eee77`; arbitrum `0xfba9a6...003dfa` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1a5f8f...d7aae8`; arbitrum `0x29da64...d44311`; arbitrum `0x8e99c0...7933d0`; arbitrum `0x982521...093370` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-398190 | `0xfab99f...777777` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa07f34...0661ac`; bsc `0xcc5df5...5228e4` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x8724d1...c9c117`; ethereum `0xa07f34...0661ac`; ethereum `0xa6c17e...53958e`; optimism `0xa07f34...0661ac`; polygon `0xa07f34...0661ac`; base `0xa07f34...0661ac`; arbitrum `0x254bd9...1045dd`; arbitrum `0x887b00...d13f19`; arbitrum `0xa07f34...0661ac` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x9ef52d...093685`; optimism `0xcc5df5...5228e4`; polygon `0xcc5df5...5228e4`; base `0xcc5df5...5228e4`; arbitrum `0x75c6a2...8e0d99`; arbitrum `0xcc5df5...5228e4`; arbitrum `0xd0f3db...40532b` | ⚠️ Unaudited |
| WithdrawVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0xc4a718...1498d4`; ethereum `0xe2c792...3ded45`; optimism `0xe2c792...3ded45`; bsc `0xe2c792...3ded45`; polygon `0xe2c792...3ded45`; base `0xe2c792...3ded45`; arbitrum `0x6562d6...11c21f`; arbitrum `0xa541a6...2b8528`; arbitrum `0xe2c792...3ded45` | ⚠️ Unaudited |
| zkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x1ee6e9...bb917f`; ethereum `0x7336c8...338a16`; ethereum `0xdfdaa3...7c3f2d`; optimism `0xa6c17e...53958e`; optimism `0xdfdaa3...7c3f2d`; bsc `0xa6c17e...53958e`; bsc `0xdfdaa3...7c3f2d`; polygon `0xa6c17e...53958e`; polygon `0xdfdaa3...7c3f2d`; base `0xdfdaa3...7c3f2d`; arbitrum `0x3f80a2...ad2232`; arbitrum `0x443d48...657978`; arbitrum `0x804a5e...2054ae`; arbitrum `0x90d0d2...960d2f`; arbitrum `0xa6c17e...53958e`; arbitrum `0xc683dd...89ffc6`; arbitrum `0xdfdaa3...7c3f2d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd704...49157d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb60b1...a5e543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5df5...5228e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x034049...b4e1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x034721...8eb61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x075a9f...30f1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11587f...550e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x138622...ee39bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19e270...5889e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a33c7...5daf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b9a2a...9da7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d5cbc...de397d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x219a8d...1cf7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21bfa7...efc0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22a190...6d75b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x264927...b4b93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26feec...1729d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a4473...6a99a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38512d...a5117f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c601f...1580f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f4420...e7cabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f9d75...84002e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x500ca1...35ccf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x596b1f...ff1af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ddb3d...a987fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64addc...94c06e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65d616...d03869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c050c...8a8f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6decd5...bf7770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x751af3...75f6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81a33b...46a9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89ced5...779839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a9a07...5b64a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d147c...572c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x902fb4...9bb5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa350be...090795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3f358...6bf67a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7159b...01ed93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaf459...5bd254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf652b...782088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc39e5...0b8a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc28af0...b6b222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3e900...24f829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbc301...24097c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2608...36b490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a6e0...a02ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ca32...612338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7699c...da73e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1f278...461093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf527bd...512da5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf87988...124da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf89343...c3e9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd5f07...94333d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff60b7...58f4fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/zerobase-token-audit](https://www.openzeppelin.com/news/zerobase-token-audit) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ZeroBase_V2_audit_report_2025-09-16.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2025/ZeroBase_V2_audit_report_2025-09-16.pdf) | Salus Security | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [PeckShield-Audit-Report-ZKFI-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZKFI-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ZeroBase_report_2024-12-24.pdf](https://github.com/Salusec/Salus-audit/blob/main/2024/ZeroBase_report_2024-12-24.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4681] www.openzeppelin.com/news/zerobase-token-audit — no match: Extracted 4 contracts from scope section. Audit date from title: September 8, 2025.
- [4682] ZeroBase_V2_audit_report_2025-09-16.pdf — no match: No reason recorded
- [4683] PeckShield-Audit-Report-ZKFI-v1.0.pdf — no match: No reason recorded
- [14359] PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf — no match: No reason recorded
- [14360] ZeroBase_report_2024-12-24.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/zerobase-token-audit | ZEROBASE | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zerobase-token-audit | CrossChainTransfer | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zerobase-token-audit | SetTrustedRemote | unmatched — not counted | — | listed in scope | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | IVault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | IWithdrawVault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | IzkToken | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | Vault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | WithdrawVault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | utils | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | zkToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZKFI-v1.0.pdf | Vault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf | Vault | unmatched — not counted | — | — | no |
| ZeroBase_report_2024-12-24.pdf | Vault | unmatched — not counted | — | — | no |
| ZeroBase_report_2024-12-24.pdf | utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [4681] www.openzeppelin.com/news/zerobase-token-audit
- [4682] ZeroBase_V2_audit_report_2025-09-16.pdf
- [4683] PeckShield-Audit-Report-ZKFI-v1.0.pdf
- [14359] PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf
- [14360] ZeroBase_report_2024-12-24.pdf

Fork inheritance lineage and inherited audits are included when available.
