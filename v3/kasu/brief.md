# Agentic Audit Brief: Kasu

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kasu (`kasu`)
- Website: [https://kasu.finance/](https://kasu.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 34 unique implementations (58 raw deployments)
- Coverage basis: 7/11 confirmed own live verified implementations (63.6%); conservative 63.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,864,465.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kasu. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across base. Structural roles: 15 core, 2 supporting. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (15), supporting (2)
- Contract kinds: contract (17)
- Detected standards: ownable (11), pausable (11), erc1155 (1), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (16)
- Upgradeable-pattern rows: 16

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ClearingCoordinator (`0x2889eafa5732abd724cda4ebc1b9659f90175ed1`, chain 8453)
- KasuPoolExternalTVL (`0xe477a800c428c7ace5ba2b4cef0be55bca2cb191`, chain 8453)
- KSU (`0x7923837dc93d897e12696e0f4fd50b51fbacf693`, chain 8453)
- ManualKsuPrice (`0xb82992c13adee67f43758bce6ff16e32c0ca4dc6`, chain 8453)
- TransparentUpgradeableProxy (`0x193bb02a24f5562b58feb86550e6f09bb6c41f69`, chain 8453)
- TransparentUpgradeableProxy (`0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b`, chain 8453)
- TransparentUpgradeableProxy (`0x2cf12a6d91fa4beb5a4c17589a03e78f88f57de2`, chain 8453)
- TransparentUpgradeableProxy (`0x5d9b878744dbe721a3f33a60a6b102e289ceadba`, chain 8453)
- TransparentUpgradeableProxy (`0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3`, chain 8453)
- TransparentUpgradeableProxy (`0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f`, chain 8453)
- TransparentUpgradeableProxy (`0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb`, chain 8453)
- TransparentUpgradeableProxy (`0xb145c061684c701c2c018a3f322aa14f5a553ce1`, chain 8453)
- TransparentUpgradeableProxy (`0xb4784f69bb1f1076f50907cb0a815908a719d635`, chain 8453)
- TransparentUpgradeableProxy (`0xe1be322323a412579b4a09fb08ff4bfca12096b5`, chain 8453)
- TransparentUpgradeableProxy (`0xeede30acf16caff49c1a48f75185c67be2e20b40`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/11 (63.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 11 of 34 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/32
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 34
- Raw deployments: 58
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 63.6% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 7 | 21.9% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ClearingCoordinator | unknown | project_anchor | own_supporting | 1 | base | unit-266851 | 2 deployments: base `0x2889eafa5732abd724cda4ebc1b9659f90175ed1`; base `0x2cf12a6d91fa4beb5a4c17589a03e78f88f57de2` | ✅ Audited |
| KasuAllowList | unknown | project_anchor | own_supporting | 1 | base | unit-266856 | 2 deployments: base `0x6fd19b47c857640428ba011ff1dc454c5ec479bd`; base `0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb` | ✅ Audited |
| KSULocking | unknown | project_anchor | own_supporting | 1 | base | unit-266860 | `0xb145c061684c701c2c018a3f322aa14f5a553ce1` | ✅ Audited |
| LendingPoolManager | unknown | project_anchor | own_supporting | 1 | base | unit-266854 | `0xe1be322323a412579b4a09fb08ff4bfca12096b5` | ✅ Audited |
| SystemVariables | unknown | project_anchor | own_supporting | 1 | base | unit-266855 | `0x193bb02a24f5562b58feb86550e6f09bb6c41f69` | ✅ Audited |
| UserLoyaltyRewards | unknown | project_anchor | own_supporting | 1 | base | unit-266858 | `0xb4784f69bb1f1076f50907cb0a815908a719d635` | ✅ Audited |
| UserManager | governance | project_anchor | own_supporting | 1 | base | unit-266852 | `0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcceptedRequestsCalculation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a`; base `0x1e69dd53b1224ea012086dda11f9b4a23b58bd0e` | ⚠️ Unaudited |
| ClearingCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x273597f8cc3a0d87f9e57af1144ca02ca20b556c`; base `0x8d38a2b611e5ac72af1a38a67629322b191737b7` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2accc83a41f8d5f4baf57be42e9856091227016` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xef956c2193e032609da84bec5e5251b28939b6b9` | ⚠️ Unaudited |
| FixedTermDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1617b79c57e00c862941eb578fd134c4d1c0f833` | ⚠️ Unaudited |
| FixedTermDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x757ab3139e09beb9ccdf59762ad00825efae5ed3` | ⚠️ Unaudited |
| KasuController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868`; base `0xe768e5d17f338df23983876afdcd42ae7d60b052` | ⚠️ Unaudited |
| KasuPoolExternalTVL | unknown | project_anchor | own_supporting | 1 | base | unit-266861 | 2 deployments: base `0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f`; base `0xe477a800c428c7ace5ba2b4cef0be55bca2cb191` | ⚠️ Unaudited |
| KSU | unknown | project_anchor | own_supporting | 1 | base | unit-266857 | 2 deployments: base `0x5d9b878744dbe721a3f33a60a6b102e289ceadba`; base `0x7923837dc93d897e12696e0f4fd50b51fbacf693` | ⚠️ Unaudited |
| KSULockBonus | unknown | project_anchor | own_supporting | 1 | base | unit-266853 | 2 deployments: base `0x39a4e4df478a792afaa9ff56ca7cd5327a89e41a`; base `0xeede30acf16caff49c1a48f75185c67be2e20b40` | ⚠️ Unaudited |
| KSULocking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0b98f531754c55c2c2a084e0ec1647ccee397931`; base `0x601eab262ba2ced5be905ad200d451de0ac3d1ef` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31`; base `0x9b9ec355b7f11a996b8d483d8608a82785efa621` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8855ec34d148fddcd3d536a2eb9c04943e926e8f`; base `0xcdc9b9b475095cb0dcd9e11c5d1c9463c5a1de99` | ⚠️ Unaudited |
| LendingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x263b5d074584118ff2b65b0125ac8a4529ab05a8` | ⚠️ Unaudited |
| LendingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x617b6e6a4f444bbc5dee08193e9597e20603f9f3`; base `0xd8c77e8882f9bada35804625e8264e51cb905190` | ⚠️ Unaudited |
| LendingPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2cce4a6d835c60ae98aa2914f0153c354d48e955`; base `0xc94216acef9c3b602f653135434031a87267ebff`; base `0xd2812f27ee3d898daef64772e113a13a0f80c229` | ⚠️ Unaudited |
| LendingPoolTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x31b186049085e7bf5b68c27657bd73b5a5bac13f`; base `0x8f2b35004fd5fe1b1d649bf52df8fd6ee4467f12`; base `0xec998071e553742596d9971190f13c3dafd9c899`; base `0xef5d123d26280fc96099abf9c86d7b7e5a3033be` | ⚠️ Unaudited |
| LendingPoolTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x94a699a93519bef708b5be69914436363100f3f9`; base `0xa2e9992b73be340ec7134e751a4e5358374fb1d0` | ⚠️ Unaudited |
| ManualKsuPrice | unknown | project_anchor | own_supporting | 1 | base | unit-266859 | 2 deployments: base `0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b`; base `0xb82992c13adee67f43758bce6ff16e32c0ca4dc6` | ⚠️ Unaudited |
| PendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x08023888ffb36f007679d1ec64a4f22f54e05e1d`; base `0x6ecd74982433ea8f00fbd879485641c507c8e2e0` | ⚠️ Unaudited |
| PendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc`; base `0x3cf8562b0a1ff6d6749071e478177ec2ddc7dbf4`; base `0xc17f46d36de495a866d11e1fc284fa013903e3a9` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1ca11edb8d8a57b239925c46be878dc2c9261cf3`; base `0xe593edf0579cfa8b622c327c05a0070c71baa6d2` | ⚠️ Unaudited |
| SystemVariables | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe91994c546ce95dc4e08b3f9fa44a00271a3cd4a` | ⚠️ Unaudited |
| UserLoyaltyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0e92ad317a315adb21923aefce66aaf55364be9` | ⚠️ Unaudited |
| UserManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xaa81b50dfba54ae5b5a52c6738249148bc7a5436`; base `0xcdb16b0d525ed64ba5f063e3367b934fd648fed0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59c8ea31bd71fa48e0201a88354b1be26dd0eedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafb2966dcc3f20ec4412162a8d203247a93a7765` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Kasu_0xCommit.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_0xCommit.pdf) | 0xCommit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Kasu_ChainSecurity.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_ChainSecurity.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | matched | 7 | 7 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12482] Kasu_0xCommit.pdf — no match: Extracted contract names from findings and code snippets. Audit date from cover page.
- [12483] Kasu_ChainSecurity.pdf — matched: Extracted contract names from scope descriptions, system overview, and findings sections. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Kasu_0xCommit.pdf | Swapper | unmatched — not counted | — | mentioned in findings as 'Swapper Contracts' and 'swapper.sol' | no |
| Kasu_0xCommit.pdf | DepositAndSwap | unmatched — not counted | — | mentioned in finding 2 as 'DepositandSwap.sol' and 'DepositSwap.sol' | no |
| Kasu_ChainSecurity.pdf | LendingPoolTranche | unmatched — not counted | — | mentioned as affected contract in version 4 and version 6 scope descriptions | no |
| Kasu_ChainSecurity.pdf | UserManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3` — deployed 2024-06-07 15:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | KSULocking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb145c061684c701c2c018a3f322aa14f5a553ce1` — deployed 2024-06-07 15:03:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | FixedTermDeposit | unmatched — not counted | — | mentioned as main new contract in version 6 scope | no |
| Kasu_ChainSecurity.pdf | LendingPool | unmatched — not counted | — | mentioned as affected contract in version 6 scope | no |
| Kasu_ChainSecurity.pdf | LendingPoolManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe1be322323a412579b4a09fb08ff4bfca12096b5` — deployed 2024-06-07 15:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | PendingPool | unmatched — not counted | — | mentioned as affected contract in version 6 scope | no |
| Kasu_ChainSecurity.pdf | ClearingCoordinator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2cf12a6d91fa4beb5a4c17589a03e78f88f57de2` — deployed 2024-06-07 15:05:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | LendingPoolTrancheLoss | unmatched — not counted | — | mentioned in finding CS-KASU-Core-016 | no |
| Kasu_ChainSecurity.pdf | FeeManager | unmatched — not counted | — | mentioned in finding CS-KASU-Core-011 | no |
| Kasu_ChainSecurity.pdf | KasuController | unmatched — not counted | — | mentioned in finding CS-KASU-Core-009 | no |
| Kasu_ChainSecurity.pdf | KasuAllowList | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb` — deployed 2024-06-07 15:05:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | SystemVariables | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x193bb02a24f5562b58feb86550e6f09bb6c41f69` — deployed 2024-06-07 15:04:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | UserLoyaltyRewards | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb4784f69bb1f1076f50907cb0a815908a719d635` — deployed 2024-06-07 15:04:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | Swapper | unmatched — not counted | — | mentioned in finding CS-KASU-Core-013 | no |
| Kasu_ChainSecurity.pdf | SwapDepositBag | unmatched — not counted | — | mentioned in finding CS-KASU-Core-012 | no |
| Kasu_ChainSecurity.pdf | KasuAccessControllable | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IPendingPool | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IAcceptedRequestsExecution | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | AcceptedRequestsExecution | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IClearingCoordinator | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IPendingRequestsPriorityCalculation | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | PendingRequestsPriorityCalculation | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | LendingPoolFactory | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | CommonErrors | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | ILendingPoolTranche | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | ILendingPoolManager | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | ILendingPoolErrors | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f` | KasuPoolExternalTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d9b878744dbe721a3f33a60a6b102e289ceadba` | KSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x39a4e4df478a792afaa9ff56ca7cd5327a89e41a` | KSULockBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b` | ManualKsuPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=7

Zero-match audit list:

- [12482] Kasu_0xCommit.pdf

Fork inheritance lineage and inherited audits are included when available.
