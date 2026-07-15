# Agentic Audit Brief: Avalaunch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 13 (0 matched; 13 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Avalaunch (`avalaunch`)
- Website: [https://avalaunch.app](https://avalaunch.app)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 41 unique implementations (149 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,161,087.01
- On-chain TVL (included contracts): $28,695,461.29
- TVL by chain: Avalanche $28,695,461.29

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Avalaunch in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 41
- Raw deployments: 149
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| XavaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x1a7931...23fde8`; avalanche `0x897ee1...7ace17`; avalanche `0x90ee87...22e2cc`; avalanche `0xc8d815...8c4433`; avalanche `0xd1c3f9...166fc4`; avalanche `0xfbd59a...b7be2b` | ⚠️ Unaudited |
| Admin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x0ce58b...004a32`; avalanche `0x68c58e...86af56` | ⚠️ Unaudited |
| Airdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 74 deployments: avalanche `0x00d43f...a3daff`; avalanche `0x017f0f...f24718`; avalanche `0x08fc7c...fc3f20`; avalanche `0x0a3db4...5129d3`; avalanche `0x0b8efd...1c23de`; avalanche `0x0c40fd...4b6616`; avalanche `0x16108a...1d43e5`; avalanche `0x20f795...82ea08`; avalanche `0x25f1c5...37f1f0`; avalanche `0x300070...6f2e87`; avalanche `0x306a77...767e89`; avalanche `0x339cf6...130328`; avalanche `0x364e23...96233f`; avalanche `0x393824...c573e2`; avalanche `0x3e1a1f...c3f3d7`; avalanche `0x3f58d9...0ac8a7`; avalanche `0x3ff9ae...7c9b00`; avalanche `0x410c62...9572d4`; avalanche `0x46654f...494525`; avalanche `0x47b89d...7c88be`; avalanche `0x49760d...acc482`; avalanche `0x49ca18...f45b58`; avalanche `0x5318d1...06dfea`; avalanche `0x5c3d31...8ed70c`; avalanche `0x5de5bd...f0b177`; avalanche `0x5e1c8c...0c7d00`; avalanche `0x5e2f14...5077a5`; avalanche `0x65cedf...9d9b86`; avalanche `0x67a776...f5bbe1`; avalanche `0x6818ed...0e9dd3`; avalanche `0x6d1c24...cca450`; avalanche `0x6f1c0d...497c6e`; avalanche `0x76b9e1...3d626e`; avalanche `0x79c174...dea870`; avalanche `0x7b72fc...74fb59`; avalanche `0x7d53d4...176655`; avalanche `0x7f9ec1...b9c294`; avalanche `0x7fb3d0...b0b9bc`; avalanche `0x8016ec...35b394`; avalanche `0x80bbea...225187`; avalanche `0x82fc02...c88286`; avalanche `0x840865...a9a017`; avalanche `0x846d02...b137a7`; avalanche `0x90e996...e3e8a2`; avalanche `0x9218e2...bc3890`; avalanche `0x988736...788c9d`; avalanche `0x9b4cc4...2c0b57`; avalanche `0x9f7640...1d9054`; avalanche `0xa4ff8f...1a1b9e`; avalanche `0xa57e3d...2387a2`; avalanche `0xa664a4...cb59e2`; avalanche `0xacba2f...f9204d`; avalanche `0xaed406...ddb9a9`; avalanche `0xaf4dff...a630e5`; avalanche `0xb4c920...ffa5ff`; avalanche `0xbfb6a1...bef842`; avalanche `0xc21534...027521`; avalanche `0xc56cab...c4ab52`; avalanche `0xc86c61...e04412`; avalanche `0xc8ea6f...1af00e`; avalanche `0xc90d20...f25060`; avalanche `0xcb846b...14440f`; avalanche `0xd520e4...8156f7`; avalanche `0xd98b7e...51d70a`; avalanche `0xde9b91...078892`; avalanche `0xecee8b...b18b39`; avalanche `0xf001d3...28a68f`; avalanche `0xf08434...b25990`; avalanche `0xf3aa6b...a700a4`; avalanche `0xf42111...a6f5fb`; avalanche `0xfa5d23...5303bf`; avalanche `0xfaa5ec...9394d6`; avalanche `0xfb42e8...b9d17e`; avalanche `0xfff19c...ced3f6` | ⚠️ Unaudited |
| AirdropAVAX | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x4f7dd6...935b94`; avalanche `0xa3dddc...b1e7a1`; avalanche `0xb1b6b9...ce65eb`; avalanche `0xb7af8d...9b6c9b` | ⚠️ Unaudited |
| AllocationStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | avalanche | n/a | 9 deployments: avalanche `0x027d6e...df0dd6`; avalanche `0x897e82...d6a8ff`; avalanche `0xa6eb49...065410`; avalanche `0xb0ef1a...4d00de`; avalanche `0xb364d7...c0ae40`; avalanche `0xb38056...d3a403`; avalanche `0xcae948...4b9a81`; avalanche `0xe4e684...c0b116`; avalanche `0xfbcea5...b1a6ea` | ⚠️ Unaudited |
| AllocationStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa6a01f...ecd329`; avalanche `0xcce013...a28c77` | ⚠️ Unaudited |
| AvalaunchCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7e5f6a...77bbda`; avalanche `0x8b1966...9c42b4` | ⚠️ Unaudited |
| AvalaunchCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa95da4...815ca4` | ⚠️ Unaudited |
| AvalaunchMarketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x863c5a...154f08`; avalanche `0xb6d16b...6f223a` | ⚠️ Unaudited |
| AvalaunchNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe29561...0b346a` | ⚠️ Unaudited |
| AvalaunchSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x0a1a9e...1272e3`; avalanche `0x16bc59...38665a`; avalanche `0x6168bb...1871ff`; avalanche `0xea3283...77f75a` | ⚠️ Unaudited |
| AvalaunchSaleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x4e0503...1e7156`; avalanche `0x60d57f...35ec42`; avalanche `0x74bafb...2de47d`; avalanche `0xc354d8...cf35aa`; avalanche `0xeef28e...e8548b` | ⚠️ Unaudited |
| FarmingXava | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6e125b...3cc1ea`; avalanche `0xe82aae...034a68` | ⚠️ Unaudited |
| PangolinPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42152b...5e8b25` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x796ec8...9914c0`; avalanche `0x951aa2...9d29e3`; avalanche `0xc21a52...1916bb` | ⚠️ Unaudited |
| SalesFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x29f351...b7fc7b`; avalanche `0x2d37e5...5b0e2f`; avalanche `0x4c858d...df4542`; avalanche `0x9eb3fe...2fb2c6`; avalanche `0xd124d2...16d172` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x4c7ccd59df34f6f86311c4ad5ce922f9c83c6c3c) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3c629a...09dc11`; avalanche `0x4c7ccd...3c6c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089a3f...b1f539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e5505...ac2fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17fdfd...22173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19f039...96fc05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23a391...d19179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281e91...f5430a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36a5d7...4f95ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f579b...d54332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61214c...cbe9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x635db0...8715a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8498a1...06a967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86f094...e1ee69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87b1be...1c3b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa30a84...d6ae8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3e052...8ffcae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb53e0f...e10d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb65034...9f1430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9db9e...2c3af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd27ec...9ca65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf838f...ae5026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc75077...892b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7bdfa...9086e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf73be8...8284ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfede8c...6ea54b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-11 Avalaunch AllocationStaking.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2021-11%20Avalaunch%20AllocationStaking.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022-01 Avalaunch XAVA Protocol Audit Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/2022-01%20Avalaunch%20XAVA%20Protocol%20Audit%20Final.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [20220225_Paladin_Avalaunch_Final_Report.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220225_Paladin_Avalaunch_Final_Report.pdf) | Paladin | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf) | Paladin | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Avalaunch Audit 2021-08-v2.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Audit%202021-08-v2.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Avalaunch Launchpad Final.pdf](https://github.com/avalaunch-app/xava-protocol/blob/master/audit/Avalaunch%20Launchpad%20Final.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [20230123_Paladin_AvalaunchSalev2_Final_Report.pdf](https://avalaunch.app/assets/audits/20230123_Paladin_AvalaunchSalev2_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022_03_Avalaunch_XAVA_Protocol_Audit.pdf](https://avalaunch.app/assets/audits/2022_03_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [2022_01_Avalaunch_XAVA_Protocol_Audit.pdf](https://avalaunch.app/assets/audits/2022_01_Avalaunch_XAVA_Protocol_Audit.pdf) | CoinFabrik | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2021_11_Avalaunch_AllocationStaking.pdf](https://avalaunch.app/assets/audits/2021_11_Avalaunch_AllocationStaking.pdf) | CoinFabrik | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Avalaunch_Launchpad_Final.pdf](https://avalaunch.app/assets/audits/Avalaunch_Launchpad_Final.pdf) | HashEx | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [Avalaunch_Audit_2021_08_v2.pdf](https://avalaunch.app/assets/audits/Avalaunch_Audit_2021_08_v2.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf](https://avalaunch.app/assets/audits/PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2223] 2021-11 Avalaunch AllocationStaking.pdf — no match: No reason recorded
- [2224] 2022-01 Avalaunch XAVA Protocol Audit Final.pdf — no match: No reason recorded
- [2225] 20220225_Paladin_Avalaunch_Final_Report.pdf — no match: No reason recorded
- [2226] 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf — no match: Two contracts in scope: AvalaunchCollateral and AvalaunchSale. Audit date from cover page.
- [2227] Avalaunch Audit 2021-08-v2.pdf — no match: No reason recorded
- [2228] Avalaunch Launchpad Final.pdf — no match: No reason recorded
- [2229] 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf — no match: No reason recorded
- [2230] 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf — no match: No reason recorded
- [2233] 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf — no match: No reason recorded
- [2234] 2021_11_Avalaunch_AllocationStaking.pdf — no match: No reason recorded
- [2235] Avalaunch_Launchpad_Final.pdf — no match: No reason recorded
- [2236] Avalaunch_Audit_2021_08_v2.pdf — no match: No reason recorded
- [2237] PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-11 Avalaunch AllocationStaking.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2021-11 Avalaunch AllocationStaking.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 2021-11 Avalaunch AllocationStaking.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | Airdrop | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AirdropAVAX | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AvalaunchBadgeFactory | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | AvalaunchSales | unmatched — not counted | — | — | no |
| 2022-01 Avalaunch XAVA Protocol Audit Final.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | Admin | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | Airdrop | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AirdropAvax | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AvalaunchBadgeFactory | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | DevToken | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 20220225_Paladin_Avalaunch_Final_Report.pdf | XavaToken | unmatched — not counted | — | — | no |
| 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf | AvalaunchCollateral | unmatched — not counted | — | listed in scope table | no |
| 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf | AvalaunchSale | unmatched — not counted | — | listed in scope table | no |
| Avalaunch Audit 2021-08-v2.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch Audit 2021-08-v2.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch Audit 2021-08-v2.pdf | SalesFactory | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | DevToken | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | FarminXava | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | KuCoinVestingContract | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | ParticipationVestingPrivate | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | ParticipationVestingSeed | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | SaleFactory | unmatched — not counted | — | — | no |
| Avalaunch Launchpad Final.pdf | XavaToken | unmatched — not counted | — | — | no |
| 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf | AvalaunchMarketplace | unmatched — not counted | — | — | no |
| 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf | AvalaunchSaleV2 | unmatched — not counted | — | — | no |
| 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | Admin | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | Airdrop | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropAVAX | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchColateral | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | Context | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | DevToken | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | FarmingXava | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IAdmin | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IAllocationStaking | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IAvalaunchSale | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | ICollateral | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IDexalotPortfolio | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IERC20 | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | IERC20Metadata | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | ISalesFactory | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf | XavaToken | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | Airdrop | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropAVAX | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AirdropSale | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchBadgeFactory | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | AvalaunchSales | unmatched — not counted | — | — | no |
| 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf | SalesFactory | unmatched — not counted | — | — | no |
| 2021_11_Avalaunch_AllocationStaking.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| 2021_11_Avalaunch_AllocationStaking.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| 2021_11_Avalaunch_AllocationStaking.pdf | SalesFactory | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | DevToken | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | FarminXava | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | KuCoinVestingContract | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | ParticipationVestingPrivate | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | ParticipationVestingSeed | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | SaleFactory | unmatched — not counted | — | — | no |
| Avalaunch_Launchpad_Final.pdf | XavaToken | unmatched — not counted | — | — | no |
| Avalaunch_Audit_2021_08_v2.pdf | AllocationStaking | unmatched — not counted | — | — | no |
| Avalaunch_Audit_2021_08_v2.pdf | AvalaunchSale | unmatched — not counted | — | — | no |
| Avalaunch_Audit_2021_08_v2.pdf | SalesFactory | unmatched — not counted | — | — | no |
| PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf | FarmingXava | unmatched — not counted | — | — | no |
| PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf | XavaToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2223] 2021-11 Avalaunch AllocationStaking.pdf
- [2224] 2022-01 Avalaunch XAVA Protocol Audit Final.pdf
- [2225] 20220225_Paladin_Avalaunch_Final_Report.pdf
- [2226] 20220324_Paladin_AvalaunchScopeExtension_Final_Report.pdf
- [2227] Avalaunch Audit 2021-08-v2.pdf
- [2228] Avalaunch Launchpad Final.pdf
- [2229] 20230123_Paladin_AvalaunchSalev2_Final_Report.pdf
- [2230] 2022_03_Avalaunch_XAVA_Protocol_Audit.pdf
- [2233] 2022_01_Avalaunch_XAVA_Protocol_Audit.pdf
- [2234] 2021_11_Avalaunch_AllocationStaking.pdf
- [2235] Avalaunch_Launchpad_Final.pdf
- [2236] Avalaunch_Audit_2021_08_v2.pdf
- [2237] PRE_Avalaunch_Xava_Protocol_31_05_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
