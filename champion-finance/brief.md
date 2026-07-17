# Agentic Audit Brief: Champion Finance

## Project Overview

- Project: Champion Finance (`champion-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.229Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: avalanche
- Contract surface: 22 unique implementations (25 raw deployments)
- DeFi Llama TVL: $24.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 46 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (contractguard, sharewrapper, operator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 216; live-surface contracts included: 25 (10 live, 15 unknown).
- Excluded by liveness: 191 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
- Deployed-live implementations: 7 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 22
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 28.6% | 2022-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MainToken | token | avalanche | n/a | 2 deployments: avalanche [`0x0fb3e4e84fb78c93e466a2117be7bc8bc063e430`](./contracts/avalanche-43114/0x0fb3e4e84fb78c93e466a2117be7bc8bc063e430/); avalanche `0x59b18817ca9f4ad2dee6fbf30132df6aeb9d763d` | ✅ Audited |
| ShareToken | token | avalanche | n/a | 2 deployments: avalanche [`0x5fa3c882eef3a8d49c4466eeb7fbabb75a88643f`](./contracts/avalanche-43114/0x5fa3c882eef3a8d49c4466eeb7fbabb75a88643f/); avalanche `0xc65bc1e906771e105fbacbd8dfe3862ee7be378e` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AOEAToken | token | avalanche | n/a | [`0xcc0213cb713bed8f89c0225196e1afc38705b85d`](./contracts/avalanche-43114/0xcc0213cb713bed8f89c0225196e1afc38705b85d/) | ⚠️ Unaudited |
| BVICToken | token | avalanche | n/a | [`0x3cd3d19ab5e88a07dbbc683ff0a7ed38e833fd3e`](./contracts/avalanche-43114/0x3cd3d19ab5e88a07dbbc683ff0a7ed38e833fd3e/) | ⚠️ Unaudited |
| EVICToken | token | avalanche | n/a | 2 deployments: avalanche [`0x53b506bb5257d9effc86ff80d6c12e51d722e615`](./contracts/avalanche-43114/0x53b506bb5257d9effc86ff80d6c12e51d722e615/); avalanche `0x74fefa839a96a1632a29e0fcf0907d0f88528658` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0x6197f1b4198296b637b731e9994bc366d29cccaa`](./contracts/avalanche-43114/0x6197f1b4198296b637b731e9994bc366d29cccaa/) | ⚠️ Unaudited |
| UVICToken | token | avalanche | n/a | [`0xad92430a77854d72fcbbc5f4ec1e9f89d7585b90`](./contracts/avalanche-43114/0xad92430a77854d72fcbbc5f4ec1e9f89d7585b90/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x047668101295ed3d0d629f1698cef997a9b7f9e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x053ec30f0c69fd7886ac96b53f00f19892101bd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x133fd3a2de1125a1e8615f020b41c74091be36ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19d5d0fd6c4c87fc08fff8277a78488a7f4f3be9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fc74ae406039f4a3bc2a857616b5e8b7e11b044` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5708d3d92be1b0c44e5c4dac742dacca606f0ebc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f69f25251f30159f76bfaacdfac0870c96fac10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69770043a791e40c421e04aaa8dd6fd322aa3c06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8b7ee484d84f447a3fcdce594252193cfb7b5fec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8be36baf5dc08d1df2b839159b5e58e099f4e3eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d1d2823e9249edbd660673d7c5bda4248c29991` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa978150c0911fc092809ade438988da4953418d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae0d4932ff8387db5ebbe9f33fc05b2316b97bf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcaf0337bcd854fdff62794ce20ad7bf7ba658dee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe851720b46628f30bbb7e34f42015b65cf56259e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Champion Finance.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/Champion%20Finance/Champion%20Finance.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xcc0213cb713bed8f89c0225196e1afc38705b85d`](./contracts/avalanche-43114/0xcc0213cb713bed8f89c0225196e1afc38705b85d/) | AOEAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3cd3d19ab5e88a07dbbc683ff0a7ed38e833fd3e`](./contracts/avalanche-43114/0x3cd3d19ab5e88a07dbbc683ff0a7ed38e833fd3e/) | BVICToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x53b506bb5257d9effc86ff80d6c12e51d722e615`](./contracts/avalanche-43114/0x53b506bb5257d9effc86ff80d6c12e51d722e615/) | EVICToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xad92430a77854d72fcbbc5f4ec1e9f89d7585b90`](./contracts/avalanche-43114/0xad92430a77854d72fcbbc5f4ec1e9f89d7585b90/) | UVICToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
