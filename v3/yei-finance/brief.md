# Agentic Audit Brief: Yei Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Yei Finance (`yei-finance`)
- Website: [https://www.yei.finance/](https://www.yei.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sei
- Contract surface: 47 unique implementations (147 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $17,240,281.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Yei Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 47
- Raw deployments: 147
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x60c82a...07f0d6` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x241995...4d47f2`; sei `0x932b0d...f7c435`; sei `0xb948e8...745a77`; sei `0xc6f728...90eea6` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x36ac8c...479c0f`; sei `0x51c5fd...fad73b`; sei `0xd7bd61...0ba7ed`; sei `0xdbebd1...0108a7` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x635901...348a41`; sei `0x99c952...a95d86`; sei `0x9c8a9f...a1279d`; sei `0xf7dd04...79b54e` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x3b28c1...505643`; sei `0x6ddbd4...8c73a8`; sei `0xca7352...f41e00`; sei `0xdf9d79...609a95` | ⚠️ Unaudited |
| Clovis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x8154d3...628555`; sei `0x81d3a2...bf89d2` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x1c6448...8f4ab1`; sei `0xa3c23d...7b8a0f` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x800f3e...6d532c`; sei `0xbf63c9...4d1d05` | ⚠️ Unaudited |
| CollectorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x04c3d1...001b61`; sei `0x4ec5e3...5f39c7`; sei `0x88a899...433894` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0xbed702...f3cabf`; sei `0xc0e305...694266`; sei `0xc42743...1a9476` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 21 deployments: sei `0x0df802...2d0b4b`; sei `0x33afe4...e96eac`; sei `0x571591...d2dfb9`; sei `0x58f864...5e3a20`; sei `0x58f9da...8d0575`; sei `0x5d3872...49829c`; sei `0x5ee1bc...28678b`; sei `0x660a1f...0bb61d`; sei `0x704d96...1987c8`; sei `0x78b5de...d3a852`; sei `0x807878...6680b8`; sei `0x80c1af...c8af2a`; sei `0x8c857e...6d72e5`; sei `0x9bd159...6f2700`; sei `0xa3322e...b6b628`; sei `0xa753cb...d8cfbb`; sei `0xaeb509...90e3f1`; sei `0xaeca84...c14447`; sei `0xc1901f...340a3c`; sei `0xf4be50...c1ee06`; sei `0xfff1c1...83b8a2` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x5143e6...40ec9b`; sei `0x812b8e...be7f04`; sei `0xc6388f...83b74a`; sei `0xea54e3...c856c2` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x32bf49...f2a359`; sei `0x36757f...ac5c3f`; sei `0x69ea2c...91dafd`; sei `0x960200...46b2f1` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x365549...3c3bef`; sei `0x81deec...46c038`; sei `0x859f69...b381ff` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x767148...a2cfd3`; sei `0xa4bfc8...f2bb19`; sei `0xdd66f9...41c857` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x13206f...a80461`; sei `0x6e410a...8d9af8`; sei `0xdbc8d6...5b8dd4` | ⚠️ Unaudited |
| LiquidateLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x30bbfe...4be4cf` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x5d1c6e...189c6b`; sei `0x6cfc88...ee0c5b`; sei `0xd4cf1d...abf8fa` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x18b07b...1c3bcd`; sei `0x6724ed...7c4886` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x68a91e...a72255`; sei `0xf846d7...9233c6` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x002081...17a1f2`; sei `0x84b7c6...f85645`; sei `0xd078c4...c8f305` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x5c5726...227642`; sei `0x74c69a...fa9149`; sei `0x7da484...f0e153`; sei `0xff33a7...8f2a1e` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 6 deployments: sei `0x8138da...75b6cb`; sei `0xa0f196...8d73b2`; sei `0xcb0ac1...3ea721`; sei `0xd7a8b0...7c9adf`; sei `0xe949f1...6f64f6`; sei `0xff5dae...a76474` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x1f22c3...6c7f61`; sei `0x80c4cd...91669d`; sei `0xf43fb6...285781` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x2d245f...4f2775`; sei `0x8301b0...64254d`; sei `0xe3d1cb...4b0dd7` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x169863...f5a88c`; sei `0x6061fb...9595c7`; sei `0x67b440...fcc608`; sei `0xbb8a61...cf1627` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x103169...8a5789`; sei `0x3132fe...c3d5c6`; sei `0x361873...01e9c6`; sei `0x62901c...b40ceb` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x034921...0b3843`; sei `0x117ab7...06b1c4`; sei `0x374865...826304`; sei `0x4cab4b...e43a8f` | ⚠️ Unaudited |
| RewardsControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0xb1b2b6...ea9a12`; sei `0xc89104...6d6ee6`; sei `0xe8094b...2f8608` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x4f7fc2...05b5ce`; sei `0xd13fcb...cb99a1`; sei `0xe30023...8f861f`; sei `0xee2aaa...a0a4f3` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x0f8286...573421`; sei `0x1b94ed...043d8b`; sei `0x26355c...204718` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x19162c...719cee`; sei `0xbef6c6...f3fb2a`; sei `0xbfb3d5...0d56c5`; sei `0xd25ce1...359c55` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x186b51...b5f549`; sei `0x411958...e5c3e8`; sei `0xeb0cc2...f727da`; sei `0xfbc3db...5eaa1f` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x0910ba...f91fd1`; sei `0x0a4feb...6bcf00`; sei `0x78b3dc...4d05b1`; sei `0xc7aea6...ac26f9` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x6c9648...18ea89`; sei `0x81fcee...2a57ae`; sei `0xd33ce3...f961d6`; sei `0xf43c32...f8a8f2` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0x67a0a8...f86ed3` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0xefe505...aab91a` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 4 deployments: sei `0x44a8aa...93bf3c`; sei `0x5d20a2...3cdd75`; sei `0xbc096b...eec8aa`; sei `0xd2a000...2c069f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x05696a...bec7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7cee89...ca9288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x82d1ae...09d81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xaf448e...405307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb2b323...60be79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xc84490...e96bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xccefc4...f87b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe721a9...f85578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf83c76...4180c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FWXhpES7EjLtpGpkH241h%2FYei%20Finance%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2Fprx2e8i2NZ1apjDj20to%2FYei%20Finance%20-%20Zellic%20Audit%20Report%20-%20Oracle.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FdWGR2kDcaGsDkYGV1SOs%2FYei%20Finance%20-%20PeckShield%20Audit%20Report%20-%20Yei%20Swap.pdf) | PeckShield | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2F5VaVd8HkMLq4gPN3m2Wv%2FYei%20Finance%20-%20billh%20Security%20Review%20-%20Yei%20Swap.pdf) | billh | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2F4lKFvt4Xg1KLvyEGZkre%2FYei%20Finance%20-%20billh%20Security%20Review%20-%20YeiBridge.pdf) | billh | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FViAUJoj7zLwiCd8aCFgz%2FYei%20Finance%20-%20billh%20Security%20Report%20-%20TGE.pdf) | billh | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Yei Finance Oracle - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Yei%20Finance%20Oracle%20-%20Zellic%20Audit%20Report.pdf) | zellic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12427] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf — no match: Only one contract, Oracle.sol, is in scope. Audit date is June 4, 2024 from cover page.
- [12428] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf — no match: Only one contract (Oracle.sol) is in scope. Audit date is July 9, 2024 from cover page.
- [12429] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf — no match: Scope table lists 'Name: Yei Finance' but contracts in scope are YeiSwap and NonfungiblePositionManager based on findings targets.
- [12430] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf — no match: Only YeiSwap.sol is explicitly referenced in findings; no formal scope table provided.
- [12431] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf — no match: Only one contract (YeiCctpV2Bridge) is explicitly referenced in the scope and findings. The scope section lists a GitHub repository and commit but no individual contract files; the contract name is extracted from the findings context.
- [12432] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf — no match: Scope section lists two GitHub repos but no specific contract files. Only YeiDistributor.sol is referenced in findings. Other contracts (feeDistributor, votingEscrow) are dependencies, not in scope.
- [14969] Yei Finance Oracle - Zellic Audit Report.pdf — no match: Only one contract (Oracle.sol) is in scope. The audit date is June 4, 2024 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope table and findings target | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf | Oracle | unmatched — not counted | — | listed in scope section as 'Programs Oracle.sol' | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf | YeiSwap | unmatched — not counted | — | Listed in scope table and findings target | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf | NonfungiblePositionManager | unmatched — not counted | — | Mentioned as target in finding PVE-003 | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf | YeiSwap | unmatched — not counted | — | mentioned in findings context | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf | YeiCctpV2Bridge | unmatched — not counted | — | mentioned in findings context | no |
| spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf | YeiDistributor | unmatched — not counted | — | mentioned in findings context | no |
| Yei Finance Oracle - Zellic Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope section as 'Program Oracle.sol' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=2
- Match method counts: n/a

Zero-match audit list:

- [12427] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf
- [12428] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf
- [12429] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf
- [12430] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf
- [12431] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf
- [12432] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf
- [14969] Yei Finance Oracle - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
