# Agentic Audit Brief: ParagonsDAO

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ParagonsDAO (`paragonsdao`)
- Website: [https://app.paragonsdao.com](https://app.paragonsdao.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-14T06:06:06.378Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-39b4
- Chains: base, ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $6,503,573.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ParagonsDAO is a web3 gaming community/guild with a Base PDT staking/farm component, rather than solely a yield farming protocol.

### Architecture

The PDTOFT contract likely serves as the underlying token or a wrapper, while StakedPDT is the staking vault that issues a receipt token. Both contracts are deployed by the same address, indicating a single integrated system.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
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
| Hashlock | Tier 2 | 1 | 16.7% | 2024-07 |
| Zellic | Tier 2 | 1 | 16.7% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedPDT | token | base | [`0x51e025...29aa3e`](./contracts/base-8453/0x51e025cb3ee0b99a84f7fb80994198281e29aa3e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GnosisSafeL2 | governance | ethereum | [`0x11117f...5bf9c9`](./contracts/ethereum-1/0x11117fa34c8f660b9b804b85ebe891d0c05bf9c9/) | ⚠️ Unaudited |
| ParallelBondingContract | unknown | ethereum | [`0x3fe273...e786fd`](./contracts/ethereum-1/0x3fe2734d6a7a17a9e2e05f0b242c84b40ee786fd/) | ⚠️ Unaudited |
| PDTOFT | unknown | base | [`0xeff2a4...61e07e`](./contracts/base-8453/0xeff2a458e464b07088bdb441c21a42ab4b61e07e/) | ⚠️ Unaudited |
| PDTStaking | unknown | ethereum | [`0xe09c8a...2549d6`](./contracts/ethereum-1/0xe09c8a88982a85c5b76b1756ec6172d4ad2549d6/) | ⚠️ Unaudited |
| VestingPool | unknown | ethereum | [`0xdd4cd0...59cb14`](./contracts/ethereum-1/0xdd4cd02b42c1b67afd49f9b866fa91a88c59cb14/) | ⚠️ Unaudited |

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
| [View Report](https://hashlock.com/wp-content/uploads/2024/08/ParagonsDAO-Smart-Contract-Audit-Report-Final-Report-V1.pdf) | Hashlock | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [Our Bridge contract was audited by Hashlock. Review the audit [here]().&#x20;](https://drive.google.com/file/d/1-SgDmCutMhxyTuZDwOOLPn4b8Fb4YyQ5/view) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view](https://drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view?usp=drive_link) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1FZUl1eqk1dgyMyHfmzYBY90-C6MkRh--/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [docdro.id/WJT7qMD](https://www.docdroid.net/WJT7qMD/6-month-report-jan-jun-2023-pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [The Sleeves smart contract was audited by Quantstamp. You can review the audit[ here]().](https://certificate.quantstamp.com/full/paragons-dao-sleeves/faf66f29-b639-4afe-96c2-0bf88597ea66/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://hashlock.com/audits/paragonsdao) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3fe273...e786fd`](./contracts/ethereum-1/0x3fe2734d6a7a17a9e2e05f0b242c84b40ee786fd/) | ParallelBondingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeff2a4...61e07e`](./contracts/base-8453/0xeff2a458e464b07088bdb441c21a42ab4b61e07e/) | PDTOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe09c8a...2549d6`](./contracts/ethereum-1/0xe09c8a88982a85c5b76b1756ec6172d4ad2549d6/) | PDTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2317] Our Bridge contract was audited by Hashlock. Review the audit [here]().&#x20;
- [2318] drive.google.com/file/d/1tdr8vD0C43lPPbQJ6kQ92mjQdnLH9Ete/view
- [2319] {% embed url="<>" %}
- [2320] docdro.id/WJT7qMD
- [2321] The Sleeves smart contract was audited by Quantstamp. You can review the audit[ here]().
- [14437] DL audit link

Fork inheritance lineage and inherited audits are included when available.
