# Agentic Audit Brief: Cozy Finance

## Project Overview

- Project: Cozy Finance (`cozy-finance`)
- Website: [https://www.cozy.finance](https://www.cozy.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.587Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum, optimism
- Contract surface: 58 unique implementations (58 raw deployments)
- DeFi Llama TVL: $1,968,652.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 6 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 Chainlink feed; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (ctokeninterface, ctokenstorage, exponential). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 58 (0 live, 58 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 58 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 58
- Raw deployments: 58
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1b2e4a...5499b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20fd25...dd014f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22893a...27d56d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f3e76...cc7a8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305b91...269ac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x349f0a...01a1e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38b050...9e9922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x399bf6...a7e6bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac58e...148b9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b8b39...9707a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f0555...2d5e4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x415da7...ec3d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x425640...7d28df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f993a...8d7759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x527d9a...e34e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53ab30...2fa6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5533c7...496363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b2547...917ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bfa75...41874d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63f483...9a7cca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640c73...920726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1588...ea14a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5ba3...c3f8eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f4b2b...205bc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70f1d5...dd9b18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7872e2...62e1a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b83a8...d97051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8514...f5836e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f155e...c7c04d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe93d...5e1740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8336fe...91c1c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x895879...664f92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8990b7...4f3098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bef3...66633f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e6b29...74e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ce34...bb7fba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97d251...8c3843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa012c4...08a55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa39197...94567d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa60ffb...071fc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7e75a...3c55fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96e71...102895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa97f85...c96dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdcb13...c2da13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbdf2f...02b57e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc03f8...034436` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc2031...89cb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcb99d...9d86d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e40a...323e08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6ef65...fe3d82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeee96...7a27ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d4cb...5f35c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf146c2...45681f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68406...9c138c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ec0f...3e91ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa5f40...2b4874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbdd85...c26f85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x562460...3d53d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface](https://www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406](https://www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406) | Code4rena | Contest | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6](https://www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6](https://www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6) | yAudit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b](https://www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b) | Zellic | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2849] www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface
- [2850] www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406
- [2851] www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6
- [2852] www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6
- [2853] www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b

Fork inheritance lineage and inherited audits are included when available.
