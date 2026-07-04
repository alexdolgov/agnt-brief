# Agentic Audit Brief: BondAppetit

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: BondAppetit (`bondappetit`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-07-04T14:53:07.684Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-0293
- Chains: ethereum
- Contract surface: 22 unique implementations (28 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 21 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (ownablepausable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/21 (90.5%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/22
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 28
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 19 | 86.4% | 2021-03 |
| unknown | Tier 2 | 4 | 18.2% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BuybackDepositaryBalanceView | unknown | ethereum | n/a | [`0x38fdc8...40d9fc`](./contracts/ethereum-1/0x38fdc8c3e8409527f960df83cf0be5274040d9fc/) | ✅ Audited |
| CollateralMarket | unknown | ethereum | n/a | [`0xb00762...b9684f`](./contracts/ethereum-1/0xb00762d3a451d481b750e9a255f2fee0eab9684f/) | ✅ Audited |
| DepositorCollateral | unknown | ethereum | n/a | [`0xf6ddfd...c39789`](./contracts/ethereum-1/0xf6ddfd8ed8c16bd43f10b69c4dede25099c39789/) | ✅ Audited |
| GovernanceToken | token | ethereum | n/a | [`0x28a06c...3814b0`](./contracts/ethereum-1/0x28a06c02287e657ec3f8e151a13c36a1d43814b0/) | ✅ Audited |
| GovernorAlpha | governance | ethereum | n/a | [`0x593b44...621340`](./contracts/ethereum-1/0x593b443da1ef8be060c4b7e793998ed743621340/) | ✅ Audited |
| Investment | operational_periphery | ethereum | n/a | [`0xaa1018...6300bd`](./contracts/ethereum-1/0xaa1018f90ff82f058b1ec7aa3d72a243f66300bd/) | ✅ Audited |
| Issuer | unknown | ethereum | n/a | [`0x679962...241d5e`](./contracts/ethereum-1/0x679962cb53af1418f14991efc3c482bf6f241d5e/) | ✅ Audited |
| Market | unknown | ethereum | n/a | [`0x66a936...d03a94`](./contracts/ethereum-1/0x66a93680460607fcc308520e4733cf2c31d03a94/) | ✅ Audited |
| RealAssetDepositaryBalanceView | unknown | ethereum | n/a | [`0xaa6945...7d96e8`](./contracts/ethereum-1/0xaa6945212acfceec06ae29d67efd21d4cb7d96e8/) | ✅ Audited |
| StableToken | token | ethereum | n/a | [`0x9a1997...5134c2`](./contracts/ethereum-1/0x9a1997c130f4b2997166975d9aff92797d5134c2/) | ✅ Audited |
| StableTokenDepositaryBalanceView | token | ethereum | n/a | [`0xc6e36f...708451`](./contracts/ethereum-1/0xc6e36fc68c717ddd7499dbff67c0426564708451/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1c6601...63fcb7`](./contracts/ethereum-1/0x1c66017aad551ddbaee6085a8619a5063963fcb7/); ethereum `0x4e5e8c...ffdecc`; ethereum `0x4e995d...cfa0b7`; ethereum `0x969c70...a85751`; ethereum `0xd1f8e9...c2f259` | ✅ Audited |
| Timelock | governance | ethereum | n/a | [`0x6b62c5...813803`](./contracts/ethereum-1/0x6b62c5c2432da0399dd8f1e5da92bc81c9813803/) | ✅ Audited |
| Treasury | operational_periphery | ethereum | n/a | [`0x37d3fa...064056`](./contracts/ethereum-1/0x37d3faca3177d7136701aeb946a5a62104064056/) | ✅ Audited |
| UniV2BuybackDepositaryBalanceView | unknown | ethereum | n/a | [`0x17c665...7a6c28`](./contracts/ethereum-1/0x17c665c20693ead6d5d233ecaf48d37ed87a6c28/) | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | [`0xba9395...dbca8d`](./contracts/ethereum-1/0xba9395a374ffa8a3a1517bdb02df81dbafdbca8d/) | ✅ Audited |
| VestingSplitter | operational_periphery | ethereum | n/a | [`0x8f09ac...978c60`](./contracts/ethereum-1/0x8f09acb202aed5bd22715585422d75a2b0978c60/) | ✅ Audited |
| VoteDelegator | unknown | ethereum | n/a | [`0x377f59...cda72f`](./contracts/ethereum-1/0x377f59eb8abd0efc1f33f45696a0a4bb51cda72f/) | ✅ Audited |
| YieldEscrow | operational_periphery | ethereum | n/a | [`0xdf0020...930257`](./contracts/ethereum-1/0xdf00204a61df6f1d241b6751bd34b9a3e4930257/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProfitDistributor | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x3c9fee...2cf2b1`](./contracts/ethereum-1/0x3c9feea39ef1d4847813e380bb424677142cf2b1/); ethereum `0xd4e861...e0e944`; ethereum `0xda47f1...fa2057` | ⚠️ Unaudited |
| ProtocolValidator | unknown | ethereum | n/a | [`0x3259ef...fc09c8`](./contracts/ethereum-1/0x3259ef482768493d54939febdb0fa1897efc09c8/) | ⚠️ Unaudited |
| SafeMath | unknown | ethereum | n/a | [`0xfbaa31...f9ea24`](./contracts/ethereum-1/0xfbaa31434dabb3981c031955704e18c2a9f9ea24/) | ⚠️ Unaudited |

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
| [BondAppetit Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/4fc7d333e3df57586e0f96cc551819e2c93f3ae9/BondAppetit/BondAppetit%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | 23 | high |
| [BondAppetit report.pdf](https://github.com/HashEx/public_audits/blob/32a680c5b8f3a784ef3273c324e0841341f3abc2/BondApp%C3%A9tit/BondAppetit%20report.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3c9fee...2cf2b1`](./contracts/ethereum-1/0x3c9feea39ef1d4847813e380bb424677142cf2b1/) | ProfitDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3259ef...fc09c8`](./contracts/ethereum-1/0x3259ef482768493d54939febdb0fa1897efc09c8/) | ProtocolValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=27

Fork inheritance lineage and inherited audits are included when available.
