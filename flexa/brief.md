# Agentic Audit Brief: Flexa

## Project Overview

- Project: Flexa (`flexa`)
- Website: [https://amp.xyz/](https://amp.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.368Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $751,905.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Payments. Structurally: 12 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (erc1820client, erc1820implementer). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 7 (6 live, 1 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/6 (33.3%)
- Deployed-live implementations: 6 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/6
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 33.3% (ConsenSys Diligence, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 2 | 33.3% | 2020-06 |
| Trail of Bits | Tier 1 | 2 | 33.3% | 2020-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Amp | unknown | ethereum | n/a | [`0xff20817765cb7f73d4bde2e66e067e58d11095c2`](./contracts/ethereum-1/0xff20817765cb7f73d4bde2e66e067e58d11095c2/) | ✅ Audited |
| FlexaCollateralManager | governance | ethereum | n/a | [`0x706d7f8b3445d8dfc790c524e3990ef014e7c578`](./contracts/ethereum-1/0x706d7f8b3445d8dfc790c524e3990ef014e7c578/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnvilGovernorDelegate | governance | ethereum | n/a | 2 deployments: ethereum [`0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9`](./contracts/ethereum-1/0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9/); ethereum `0x123641b8a2063217a96ef88bf608931a43b49f49` | ⚠️ Unaudited |
| CollateralVault | core_logic | ethereum | n/a | [`0x5d2725fde4d7aa3388da4519ac0449cc031d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | ⚠️ Unaudited |
| Flexacoin | unknown | ethereum | n/a | [`0x4a57e687b9126435a9b19e4a802113e266adebde`](./contracts/ethereum-1/0x4a57e687b9126435a9b19e4a802113e266adebde/) | ⚠️ Unaudited |
| Reward | unknown | ethereum | n/a | [`0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x78f5f531a135e21ce2d1913d289595ab240f8483` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [diligence.security/audits/2020/06/amp](https://diligence.security/audits/2020/06/amp) | Consensys Diligence | Audit | 2020-06 | stale | Direct | contract_name | 2 | n/a |
| [amp.pdf](https://github.com/trailofbits/publications/blob/master/reviews/amp.pdf) | Trail of Bits | Audit | 2020-08 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9`](./contracts/ethereum-1/0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9/) | AnvilGovernorDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d2725fde4d7aa3388da4519ac0449cc031d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | CollateralVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a57e687b9126435a9b19e4a802113e266adebde`](./contracts/ethereum-1/0x4a57e687b9126435a9b19e4a802113e266adebde/) | Flexacoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da`](./contracts/ethereum-1/0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da/) | Reward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
