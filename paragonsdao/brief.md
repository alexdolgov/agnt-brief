# Agentic Audit Brief: ParagonsDAO

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ParagonsDAO (`paragonsdao`)
- Website: [https://app.paragonsdao.com](https://app.paragonsdao.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-23T12:48:07.778Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $6,227,708.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ParagonsDAO is a yield farming protocol on Base that allows users to stake its native token to earn rewards.

### Architecture

The PDTOFT contract likely serves as the underlying token or a wrapper, while StakedPDT is the staking vault that issues a receipt token. Both contracts are deployed by the same address, indicating a single integrated system.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 8
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 3 aging, 1 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 1 | 50.0% | 2024-07 |
| Zellic | Tier 2 | 1 | 50.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedPDT | token | base | [`0x51e025...29aa3e`](./contracts/base-8453/0x51e025cb3ee0b99a84f7fb80994198281e29aa3e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PDTOFT | unknown | base | [`0xeff2a4...61e07e`](./contracts/base-8453/0xeff2a458e464b07088bdb441c21a42ab4b61e07e/) | ⚠️ Unaudited |

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
| [PDT Staking V2 - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/PDT%20Staking%20V2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [DL audit link](https://hashlock.com/audits/paragonsdao) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [View Report](https://hashlock.com/wp-content/uploads/2024/08/ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf) | Hashlock | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [Our Bridge contract was audited by Hashlock. Review the audit [here]().&#x20;](https://drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view](https://drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view?usp=drive_link) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1FZUl1eqk1dgyMyHfmzYBY90-C6MkRh--/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [docdro.id/WJT7qMD](https://www.docdroid.net/WJT7qMD/6-month-report-jan-jun-2023-pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [The Sleeves smart contract was audited by Quantstamp. You can review the audit[ here]().](https://certificate.quantstamp.com/full/paragons-dao-sleeves/faf66f29-b639-4afe-96c2-0bf88597ea66/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xeff2a4...61e07e`](./contracts/base-8453/0xeff2a458e464b07088bdb441c21a42ab4b61e07e/) | PDTOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2315] DL audit link
- [2317] Our Bridge contract was audited by Hashlock. Review the audit [here]().&#x20;
- [2318] drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view
- [2319] {% embed url="<>" %}
- [2320] docdro.id/WJT7qMD
- [2321] The Sleeves smart contract was audited by Quantstamp. You can review the audit[ here]().

Fork inheritance lineage and inherited audits are included when available.
