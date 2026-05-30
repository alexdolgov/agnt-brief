# Agentic Audit Brief: Nexus Mutual

## Project Overview

- Project: Nexus Mutual (`nexus-mutual`)
- Website: [https://nexusmutual.io/](https://nexusmutual.io/)
- Lifecycle: active (Tier 0, 87.8% below peak)
- Generated: 2026-05-30T11:18:49.851Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: ethereum
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $95,917,887.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Nexus Mutual is a decentralized insurance protocol that allows members to pool funds and share risk. Members can purchase cover against smart contract failures and other risks, and participate in claims assessment and governance.

### Architecture

The protocol consists of a single product family centered around the OwnedUpgradeabilityProxy, which delegates to the NXMaster implementation contract containing all core logic.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 7
- Audits discovered: 85
- Scoreable audits (matched contracts): 14
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/nexusmutual/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Staleness: 2 fresh, 0 aging, 6 stale, 76 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Governance | unknown | ethereum | [`0x289625...9fefe2`](./contracts/ethereum-1/0x2896258b620fdc0c1aab9cb4fd0317f37a9fefe2/) | ✅ Audited |
| NXMaster | unknown | ethereum | 2 deployments: ethereum [`0x01bfd8...0cd07e`](./contracts/ethereum-1/0x01bfd82675dbcc7762c84019ca518e701c0cd07e/); ethereum `0x1cc712...1dbc4f` | ✅ Audited |
| TokenController | governance | ethereum | [`0xb2df6c...ea5e2c`](./contracts/ethereum-1/0xb2df6cc4524d1505a195f38dbe0280450fea5e2c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ClaimsReward | unknown | ethereum | [`0xe80f4d...7d413c`](./contracts/ethereum-1/0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c/) | ⚠️ Unaudited |
| ProposalCategory | unknown | ethereum | [`0x9399a1...13dd6b`](./contracts/ethereum-1/0x9399a16f15e35f0d1cd6001f20566290f113dd6b/) | ⚠️ Unaudited |
| TokenFunctions | token | ethereum | [`0xa94c7e...b8a28f`](./contracts/ethereum-1/0xa94c7e87e212669baee95d5d45305d05e6b8a28f/) | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/nexusmutual/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Assessments.md](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/Assessments.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Claims.md](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/Claims.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Governor.md](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/Governor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IndividualClaims.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/IndividualClaims.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pool.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/Pool.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [Ramm.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/Ramm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StakingPool.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/StakingPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StakingPoolFactory.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/StakingPoolFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StakingProducts.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/StakingProducts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenController.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/contracts/TokenController.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [capital.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/contracts/capital.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [claims-assessments.md](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/contracts/claims-assessments.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cover.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/contracts/cover.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 2 | medium |
| [governor-registry.md](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/contracts/governor-registry.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | medium |
| [staking.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/contracts/staking.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 3 | medium |
| [token.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/contracts/token.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [nexus-mutual.md](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/nexus-mutual.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | low |
| [cover-buyer.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/user-flows/cover-buyer.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 1 | low|medium |
| [staker.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/user-flows/staker.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 1 | low |
| [staking-manager.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/diagrams/user-flows/staking-manager.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | medium |
| [manager.md (also discovered via alternate URL)](https://github.com/NexusMutual/smart-contracts/blob/release-candidate/docs/user-flows/manager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [claims-assessment.md (also discovered via alternate URL)](https://github.com/NexusMutual/docs/blob/master/docs/developers/Diagrams/Contracts%20Diagrams/claims-assessment.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 1 | low |
| [governance-membership.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/Diagrams/Contracts%20Diagrams/governance-membership.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 3 | low |
| [Diagrams.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/Diagrams/Diagrams.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | medium |
| [Symbiotic.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/Restaking/Symbiotic.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Assessment.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/contracts/Assessment.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [contracts.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/contracts/contracts.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [developers.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/developers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pos-integrations.md](https://github.com/NexusMutual/docs/blob/master/docs/developers/pos-integrations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [dao.md](https://github.com/NexusMutual/docs/blob/master/docs/governance/dao.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [governance.md](https://github.com/NexusMutual/docs/blob/master/docs/governance/governance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [intro.md](https://github.com/NexusMutual/docs/blob/master/docs/intro.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [blockfi.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/blockfi.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bzx-2020.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/bzx-2020.md) | unknown | Audit | 2020 | stale | Direct | n/a | 0 | n/a |
| [claims-history.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/claims-history.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cream-2021.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/cream-2021.md) | unknown | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [euler.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/euler.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ftx.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/ftx.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hodlnaut-2022.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/hodlnaut-2022.md) | unknown | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [perpetual-2022.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/perpetual-2022.md) | unknown | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [rari-fuse-2022.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/rari-fuse-2022.md) | unknown | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [yearn-2021.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/claims-history/yearn-2021.md) | unknown | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [bundled-protocol-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/bundled-protocol-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [cover-products.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/cover-products.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [defi-pass-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/defi-pass-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [eth-slashing-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/eth-slashing-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [fund-portfolio-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/fund-portfolio-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [native-protocol-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/native-protocol-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/protocol-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [quota-share-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/quota-share-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [real-world-risk.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/cover-products/real-world-risk.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [membership.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/membership.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [overview.md](https://github.com/NexusMutual/docs/blob/master/docs/overview/overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [capacity.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/capacity.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [capital-pool.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/capital-pool/capital-pool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [investments.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/capital-pool/investments.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [mcr.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/capital-pool/mcr.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [integrations.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/integrations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [history-capitalisation-controls.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/nxm-token/history-capitalisation-controls.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nxm-token.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/nxm-token/nxm-token.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [token-model.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/nxm-token/token-model.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pricing.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/pricing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [protocol.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/protocol.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [staking-pools.md](https://github.com/NexusMutual/docs/blob/master/docs/protocol/staking/staking-pools.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audits-and-security.md](https://github.com/NexusMutual/docs/blob/master/docs/resources/audits-and-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [faq.md](https://github.com/NexusMutual/docs/blob/master/docs/resources/faq.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [resources.md](https://github.com/NexusMutual/docs/blob/master/docs/resources/resources.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [approval.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/approval.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [depositing.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/depositing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [faqs.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/faqs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [insurance-partners.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/insurance-partners.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [risks.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/risks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rwi-vault.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/rwi-vault.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [withdrawals.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/withdrawals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [baseline-yield.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/yield-structure/baseline-yield/baseline-yield.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nexus-mutual-cover.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/yield-structure/baseline-yield/nexus-mutual-cover.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bonuses.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/yield-structure/bonuses/bonuses.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [nav-calculation.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/yield-structure/bonuses/nav-calculation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [yield-structure.md](https://github.com/NexusMutual/docs/blob/master/docs/rwi-vault/yield-structure/yield-structure.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2026-04-01-axios-supply-chain-detection-design.md](https://github.com/NexusMutual/axios-compromise-detector/blob/main/docs/2026-04-01-axios-supply-chain-detection-design.md) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [2026-04-01-axios-supply-chain-detection-plan.md](https://github.com/NexusMutual/axios-compromise-detector/blob/main/docs/2026-04-01-axios-supply-chain-detection-plan.md) | unknown | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe80f4d...7d413c`](./contracts/ethereum-1/0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c/) | ClaimsReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9399a1...13dd6b`](./contracts/ethereum-1/0x9399a16f15e35f0d1cd6001f20566290f113dd6b/) | ProposalCategory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94c7e...b8a28f`](./contracts/ethereum-1/0xa94c7e87e212669baee95d5d45305d05e6b8a28f/) | TokenFunctions | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 70
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=7, medium=7
- Match method counts: extraction_exact=34

Zero-match audit list:

- [10266] Assessments.md
- [10267] Claims.md
- [10269] Governor.md
- [10270] IndividualClaims.md
- [10272] Ramm.md
- [10273] StakingPool.md
- [10274] StakingPoolFactory.md
- [10275] StakingProducts.md
- [10277] capital.md
- [10278] claims-assessments.md
- [10288] manager.md
- [10300] Symbiotic.md
- [10304] Assessment.md
- [10314] developers.md
- [10315] pos-integrations.md
- [10316] dao.md
- [10317] governance.md
- [10318] intro.md
- [10319] blockfi.md
- [10320] bzx-2020.md
- [10321] claims-history.md
- [10322] cream-2021.md
- [10323] euler.md
- [10324] ftx.md
- [10325] hodlnaut-2022.md
- [10326] perpetual-2022.md
- [10327] rari-fuse-2022.md
- [10328] yearn-2021.md
- [10329] bundled-protocol-cover.md
- [10330] cover-products.md
- [10331] defi-pass-cover.md
- [10332] eth-slashing-cover.md
- [10333] fund-portfolio-cover.md
- [10334] native-protocol-cover.md
- [10335] protocol-cover.md
- [10336] quota-share-cover.md
- [10337] real-world-risk.md
- [10338] membership.md
- [10339] overview.md
- [10340] capacity.md
- [10341] capital-pool.md
- [10342] investments.md
- [10343] mcr.md
- [10346] integrations.md
- [10347] history-capitalisation-controls.md
- [10348] nxm-token.md
- [10349] token-model.md
- [10350] pricing.md
- [10351] protocol.md
- [10352] staking-pools.md
- [10354] audits-and-security.md
- [10355] faq.md
- [10356] resources.md
- [10357] approval.md
- [10358] depositing.md
- [10359] faqs.md
- [10360] insurance-partners.md
- [10361] risks.md
- [10362] rwi-vault.md
- [10363] withdrawals.md
- [10364] baseline-yield.md
- [10365] nexus-mutual-cover.md
- [10366] bonuses.md
- [10367] nav-calculation.md
- [10368] yield-structure.md
- [10369] 2026-04-01-axios-supply-chain-detection-design.md
- [10370] 2026-04-01-axios-supply-chain-detection-plan.md
- [10371] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [10372] 0002-metadata-manifest-and-pull-command.md
- [10373] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
