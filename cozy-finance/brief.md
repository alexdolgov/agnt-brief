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
| UnnamedContract | unknown | ethereum | n/a | `0x1b2e4ac452c386877de921dcb30df75d6a5499b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20fd25c19964ace1971682d0ed4e2ad719dd014f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22893ab491bed3827bcbefcf5dcd68492227d56d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f3e76428b1c307ae41bbd270726cee9a3cc7a8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305b915a063766316ce5354cdbdba94ea2269ac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x349f0a62ce40055b70557e1173287469d601a1e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38b050b6f78c66a7dd9b336cd1ff10ff2b9e9922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x399bf635e3bf3881efb22cd9d1e57fcd92a7e6bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ac58ed238d5a897464ebb79321bade496148b9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b8b3977c432ed00045e7c582d1d71c3999707a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f05553e520cc5296f562ce921fcda200a2d5e4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x415da7d703c336aaf82e7d9bd44f17eff9ec3d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x425640a11f1a3f541eb985b89fc45da3a37d28df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f993ab56e71b4bf7f784ce5c4ead11ef08d7759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x527d9a8c6fc52480be66d683011c250331e34e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53ab303ef6f06694580e3351f12b76361e2fa6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5533c7c2c90053da6c6c1b6c46bc1edd26496363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b254706a06519f3b33c0e6f390f6478e6917ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bfa75cc83957fe0a530d90312f2ed1cbe41874d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63f4835359d3cf367493f228a3acedab149a7cca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640c73692320ed0758a9838bb17298ee38920726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d158877f368da51629c2121f6fe6a447dea14a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5ba3b95f0379c7073f06f230277ea50ec3f8eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f4b2b57f7c7bf7e263f8be1b0c5cb85e9205bc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70f1d575562421e52a00ce76fce30a3c93dd9b18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7872e2e759a0c8e9be54873bc74ed405bb62e1a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b83a82681e895dd19075f4adff05339dfd97051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8514219fb7b2b2119b46c1d57ca5bc0bf5836e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f155e6fbbc5c237dbf0181705158b3323c7c04d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe93dc67d4e079fde2d93eb52b778fbfa5e1740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8336fedd0af3f5342017b7317e502c77a091c1c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x895879b2c1fbb6ccfcd101f2d3f3c76363664f92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8990b793f530af73ad2ac721f9db9050c14f3098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89bef3251824feaa6b8c62f7ee05fa275b66633f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e6b294d9e342179c1556612e7a04048ae74e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ce3417da8f3b6fe78a6dd400ba308212bb7fba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97d2510f057d261528dab86e0ef8d5881f8c3843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa012c4ef3e6b0262bbec59a805220c11cf08a55b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3919739bf446e8b873b74f5a4e0fcfd4494567d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa60ffbb5caaca4d26cb4326d82494163b1071fc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7e75a09fd3a2cb88396e10c5e95d247e93c55fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96e7108fc710108bfda9535e8e881face102895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa97f85150693b5dccdb29650bcf78adc75c96dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdcb133b5bc0a58b2eaba219fc0708b1ddc2da13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbdf2fc3af896e18f2a9dc58883d12484202b57e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc03f84b66e6689db2705a47e3c25f0a8e034436` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc203192b2b4d994b39c6f0325a99dba5f89cb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcb99dfbe5368d7c2d671a9ae5c4164ff69d86d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6e40ad4815097ba3d92b6a67ee747750c323e08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6ef65ec40d943c3f675165b0b17e06862fe3d82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeee96017550c817643bb0e85ebebc512e7a27ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d4cb876d2a2e5a4a5063a53004184f565f35c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf146c26136c1f80c9f0967d27bcb7e500d45681f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68406d6cd41a5a3c5c4b9f0add41a3e789c138c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ec0f87036565d6b2b19780a54996c3b03e91ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa5f40f8391aea6e07313d24eb57a5b8822b4874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbdd85a61205436ec52548db4c574c5a34c26f85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x562460d8cfb40ada3ea91d8cf98eaf25d53d53d8` | ❓ Unverified |

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
