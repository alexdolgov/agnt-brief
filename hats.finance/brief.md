# Agentic Audit Brief: Hats.Finance

## Project Overview

- Project: Hats.Finance (`hats.finance`)
- Website: [https://hats.finance](https://hats.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.338Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, bsc, ethereum, optimism, polygon
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $194,641.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bug Bounty. Structurally: 24 project-authored contract(s) across 5 chain(s); 3 ERC4626 vaults, 6 ERC20 tokens, 2 ERC1155 multi-tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 24 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (24 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/23 (56.5%)
- Deployed-live implementations: 24 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/25
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| G0 Group | Tier 2 | 13 | 52.0% | 2023-02 |
| Zokyo | Tier 2 | 9 | 36.0% | 2021-05 |
| Hexen | Tier 2 | 8 | 32.0% | 2022-09 |
| Levi | Tier 2 | 6 | 24.0% | 2021-08 |
| Unknown | Tier 2 | 6 | 24.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AutomatedFeeForwarder | unknown | ethereum | n/a | [`0x46bc877a4edc28bfef7dce78500b7970ed97c6e5`](./contracts/ethereum-1/0x46bc877a4edc28bfef7dce78500b7970ed97c6e5/) | ✅ Audited |
| HATClaimsManager | unknown | ethereum | n/a | [`0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101`](./contracts/ethereum-1/0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101/) | ✅ Audited |
| HATGovernanceArbitrator | unknown | polygon | n/a | [`0x1065a9e3ac47f2624293727f4b8319a0a10f6015`](./contracts/polygon-137/0x1065a9e3ac47f2624293727f4b8319a0a10f6015/) | ✅ Audited |
| HATTimelockController | unknown | ethereum | n/a | [`0x07368f6a959ef3096230a258dd0af692699c3a4c`](./contracts/ethereum-1/0x07368f6a959ef3096230a258dd0af692699c3a4c/) | ✅ Audited |
| HATToken | unknown | ethereum | n/a | [`0x042613dadf333766c9815a97e08282ee90e5c5dc`](./contracts/ethereum-1/0x042613dadf333766c9815a97e08282ee90e5c5dc/) | ✅ Audited |
| HATTokenArbitrumBridgeL1 | unknown | ethereum | n/a | [`0x76c4ec0068923da13ee11527d6cf9b7521000049`](./contracts/ethereum-1/0x76c4ec0068923da13ee11527d6cf9b7521000049/) | ✅ Audited |
| HATTokenArbitrumBridgeL2 | unknown | arbitrum | n/a | [`0x02b82d08ef5315b6206d1e946509b6bea175df4f`](./contracts/arbitrum-42161/0x02b82d08ef5315b6206d1e946509b6bea175df4f/) | ✅ Audited |
| HATTokenLock | unknown | arbitrum | n/a | [`0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101`](./contracts/arbitrum-42161/0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101/) | ✅ Audited |
| HATVault | unknown | ethereum | n/a | [`0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e`](./contracts/ethereum-1/0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e/) | ✅ Audited |
| HATVaults | unknown | ethereum | n/a | [`0x571f39d351513146248acafa9d0509319a327c4d`](./contracts/ethereum-1/0x571f39d351513146248acafa9d0509319a327c4d/) | ✅ Audited |
| HATVaultsRegistry | unknown | polygon | n/a | [`0x0aa1464db005857db8fc3e0470d306fb9e54b908`](./contracts/polygon-137/0x0aa1464db005857db8fc3e0470d306fb9e54b908/) | ✅ Audited |
| RewardController | unknown | ethereum | n/a | [`0x0c8eb8475f764e1e5a5a8027ff1fee8adb16057f`](./contracts/ethereum-1/0x0c8eb8475f764e1e5a5a8027ff1fee8adb16057f/) | ✅ Audited |
| TokenLockFactory | unknown | arbitrum | n/a | [`0x0aa1464db005857db8fc3e0470d306fb9e54b908`](./contracts/arbitrum-42161/0x0aa1464db005857db8fc3e0470d306fb9e54b908/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeForwarder | unknown | arbitrum | n/a | [`0x2d4498e2387135a3ed1078d1037a306218a8e41d`](./contracts/arbitrum-42161/0x2d4498e2387135a3ed1078d1037a306218a8e41d/) | ⚠️ Unaudited |
| HATAirdrop | unknown | arbitrum | n/a | [`0x323193b77cda1da3bb4a79f5148e9ed20f6ca233`](./contracts/arbitrum-42161/0x323193b77cda1da3bb4a79f5148e9ed20f6ca233/) | ⚠️ Unaudited |
| HATAirdropFactory | unknown | arbitrum | n/a | [`0xf4153be482582e4cd542e2214745a5d3ce5db128`](./contracts/arbitrum-42161/0xf4153be482582e4cd542e2214745a5d3ce5db128/) | ⚠️ Unaudited |
| HATHackersNFT | unknown | bsc | n/a | [`0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e`](./contracts/bsc-56/0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e/) | ⚠️ Unaudited |
| HATPaymentSplitter | unknown | ethereum | n/a | [`0x199c5835b31a32401bdee9691cfcff1e379a3852`](./contracts/ethereum-1/0x199c5835b31a32401bdee9691cfcff1e379a3852/) | ⚠️ Unaudited |
| HATPaymentSplitterFactory | unknown | optimism | n/a | [`0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e`](./contracts/optimism-10/0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e/) | ⚠️ Unaudited |
| HATVaultsNFT | unknown | ethereum | n/a | [`0x225a2a0dea1357c808b4eb8bc423507dd4bbc401`](./contracts/ethereum-1/0x225a2a0dea1357c808b4eb8bc423507dd4bbc401/) | ⚠️ Unaudited |
| HATVaultsV2Data | unknown | optimism | n/a | [`0x07368f6a959ef3096230a258dd0af692699c3a4c`](./contracts/optimism-10/0x07368f6a959ef3096230a258dd0af692699c3a4c/) | ⚠️ Unaudited |
| MessageDispatcher | unknown | ethereum | n/a | [`0x145b550ac44c3d052e9200937dfab0b163c538de`](./contracts/ethereum-1/0x145b550ac44c3d052e9200937dfab0b163c538de/) | ⚠️ Unaudited |
| PaymentSplitter | unknown | ethereum | n/a | [`0x7690166442e81b473d6eb413e865aa6379490371`](./contracts/ethereum-1/0x7690166442e81b473d6eb413e865aa6379490371/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x773d3ee9c9ba0c85e52ed7bdd960498f668c77df`](./contracts/ethereum-1/0x773d3ee9c9ba0c85e52ed7bdd960498f668c77df/) | ⚠️ Unaudited |
| TokenLockFactoryHelper | unknown | ethereum | n/a | [`0x006b6863370150a0e53a06335a53a9a2bb89d2e1`](./contracts/ethereum-1/0x006b6863370150a0e53a06335a53a9a2bb89d2e1/) | ⚠️ Unaudited |

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
| [202105-zokyo-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202105-zokyo-audit.pdf) | Zokyo | Audit | 2021-05 | stale | Direct | contract_name | 9 | high |
| [202107-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202107-g0-group-audit.pdf) | G0 Group | Audit | 2021-07 | stale | Direct | contract_name | 5 | high |
| [202109-levi-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202109-levi-audit.pdf) | Levi | Audit | 2021-08 | stale | Direct | contract_name | 6 | high |
| [202210-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202210-g0-group-audit.pdf) | G0 Group | Audit | 2022-10 | stale | Direct | contract_name | 4 | high |
| [202301-hexen-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202301-hexen-audit.pdf) | Hexen | Audit | 2022-09 | stale | Direct | contract_name | 8 | high |
| [202302-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202302-g0-group-audit.pdf) | G0 Group | Audit | 2023-02 | stale | Direct | contract_name | 12 | high |
| [Hats - Audit Report.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/Hats%20-%20Audit%20Report.pdf) | Unknown | Audit | 2021-08 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x2d4498e2387135a3ed1078d1037a306218a8e41d`](./contracts/arbitrum-42161/0x2d4498e2387135a3ed1078d1037a306218a8e41d/) | FeeForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x323193b77cda1da3bb4a79f5148e9ed20f6ca233`](./contracts/arbitrum-42161/0x323193b77cda1da3bb4a79f5148e9ed20f6ca233/) | HATAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4153be482582e4cd542e2214745a5d3ce5db128`](./contracts/arbitrum-42161/0xf4153be482582e4cd542e2214745a5d3ce5db128/) | HATAirdropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e`](./contracts/bsc-56/0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e/) | HATHackersNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x199c5835b31a32401bdee9691cfcff1e379a3852`](./contracts/ethereum-1/0x199c5835b31a32401bdee9691cfcff1e379a3852/) | HATPaymentSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e`](./contracts/optimism-10/0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e/) | HATPaymentSplitterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x225a2a0dea1357c808b4eb8bc423507dd4bbc401`](./contracts/ethereum-1/0x225a2a0dea1357c808b4eb8bc423507dd4bbc401/) | HATVaultsNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07368f6a959ef3096230a258dd0af692699c3a4c`](./contracts/optimism-10/0x07368f6a959ef3096230a258dd0af692699c3a4c/) | HATVaultsV2Data | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x145b550ac44c3d052e9200937dfab0b163c538de`](./contracts/ethereum-1/0x145b550ac44c3d052e9200937dfab0b163c538de/) | MessageDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7690166442e81b473d6eb413e865aa6379490371`](./contracts/ethereum-1/0x7690166442e81b473d6eb413e865aa6379490371/) | PaymentSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x006b6863370150a0e53a06335a53a9a2bb89d2e1`](./contracts/ethereum-1/0x006b6863370150a0e53a06335a53a9a2bb89d2e1/) | TokenLockFactoryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=50

Fork inheritance lineage and inherited audits are included when available.
