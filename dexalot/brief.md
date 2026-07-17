# Agentic Audit Brief: Dexalot

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.059Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: avalanche, bsc
- Contract surface: 13 unique implementations (17 raw deployments)
- DeFi Llama TVL: $8,063,794.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/12 (91.7%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/13
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 17
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 84.6% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexalotToken | token | avalanche | n/a | [`0x093783055f9047c2bff99c4e414501f8a147bc69`](./contracts/avalanche-43114/0x093783055f9047c2bff99c4e414501f8a147bc69/) | ✅ Audited |
| Exchange | unknown | avalanche | n/a | 2 deployments: avalanche [`0x16863a1052362012352f07ff3cd23088414c67e5`](./contracts/avalanche-43114/0x16863a1052362012352f07ff3cd23088414c67e5/); avalanche `0x4dc10a62a904bb7b2acd3b99596895ce0681a09a` | ✅ Audited |
| Exchange | unknown | avalanche | n/a | [`0x80768783d18ad5c9de46d2cde398fb0c193d5885`](./contracts/avalanche-43114/0x80768783d18ad5c9de46d2cde398fb0c193d5885/) | ✅ Audited |
| OrderBooks | unknown | avalanche | n/a | [`0x3ece76f7add934fb8a35c9c371c4d545e299669a`](./contracts/avalanche-43114/0x3ece76f7add934fb8a35c9c371c4d545e299669a/) | ✅ Audited |
| OrderBooks | unknown | avalanche | n/a | [`0x9cf797df135aa671e97d1b713cdaeea9fca9170e`](./contracts/avalanche-43114/0x9cf797df135aa671e97d1b713cdaeea9fca9170e/) | ✅ Audited |
| OrderBooks | unknown | avalanche | n/a | 2 deployments: avalanche [`0xcb1556a61d047523bce9da9f79939faed62c9d19`](./contracts/avalanche-43114/0xcb1556a61d047523bce9da9f79939faed62c9d19/); avalanche `0xd95bcc48579a759919201c8f48359d361c50584e` | ✅ Audited |
| Portfolio | unknown | avalanche | n/a | 2 deployments: avalanche [`0x176e82bf0d30ec55ae3ef98e4be3922931cb4ef2`](./contracts/avalanche-43114/0x176e82bf0d30ec55ae3ef98e4be3922931cb4ef2/); avalanche `0x43de3a895626730c86120873952375e8269cab1a` | ✅ Audited |
| Portfolio | unknown | avalanche | n/a | [`0x6f8205cf222dd4c6615991c7f604f366526b5c6e`](./contracts/avalanche-43114/0x6f8205cf222dd4c6615991c7f604f366526b5c6e/) | ✅ Audited |
| Portfolio | unknown | avalanche | n/a | [`0xac0f301b3f7e1d48553535089bb2c201760de0d4`](./contracts/avalanche-43114/0xac0f301b3f7e1d48553535089bb2c201760de0d4/) | ✅ Audited |
| TradePairs | unknown | avalanche | n/a | 2 deployments: avalanche [`0x16d8a7e5300acaba43418a6e2c68e159c9097bdd`](./contracts/avalanche-43114/0x16d8a7e5300acaba43418a6e2c68e159c9097bdd/); avalanche `0x2c0e189edfb3572ac67063bad7def6739109df10` | ✅ Audited |
| TradePairs | unknown | avalanche | n/a | [`0x625b7d76f69095907fc3b467c0c3be07d1987ba1`](./contracts/avalanche-43114/0x625b7d76f69095907fc3b467c0c3be07d1987ba1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MainnetRFQ | unknown | bsc | n/a | [`0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd`](./contracts/bsc-56/0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0x12e2b3236d338651f7ee2222e9756b4222694323`](./contracts/avalanche-43114/0x12e2b3236d338651f7ee2222e9756b4222694323/) | ⚠️ Unaudited |

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
| [[Dexalot_03092021]SCAudit_Report.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_03092021%5DSCAudit_Report.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 14 | high |
| [[Dexalot_15092021]SCAudit_Report_2.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15092021%5DSCAudit_Report_2.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 14 | high |
| [[Dexalot_15112021]SCAudit_Report_3.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15112021%5DSCAudit_Report_3.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 14 | high |
| [[Dexalot_18022022]SCAudit_Report_4.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_18022022%5DSCAudit_Report_4.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 1 | n/a |
| [[Dexalot_23022022]SCAudit_Report_5.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_23022022%5DSCAudit_Report_5.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 1 | n/a |
| [hacken.io/audits/dexalot](https://hacken.io/audits/dexalot) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd`](./contracts/bsc-56/0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd/) | MainnetRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=2, extraction_exact=42

Zero-match audit list:

- [12285] hacken.io/audits/dexalot

Fork inheritance lineage and inherited audits are included when available.
