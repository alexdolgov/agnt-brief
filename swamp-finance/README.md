# Agentic Audit Brief: Swamp Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Swamp Finance (`swamp-finance`)
- Website: [https://swamp.finance/](https://swamp.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 11 unique implementations (55 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $993,875.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Swamp Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 11
- Raw deployments: 55
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NativeFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33adbf5f1ec364a4ea3a5ca8f310b597b8afdee3` | ⚠️ Unaudited |
| StrategyGoose | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0970aab66c0520b5717240dd8170462ea2449a2f`; bsc `0x1787cc3b25e300b8ce5df083bce121395696df04`; bsc `0x368e59b146f4110c030fe5f7ba38413676454ffc`; bsc `0x577189eeea23f2241deebedc3f8dcf0b04a8a6da`; bsc `0xa275498e3105f27afd726688cdf754d975a004f8`; bsc `0xcebb1316d125258187b8764ceab999fd4bdf9449`; bsc `0xe4f48c0c4dd3c55c18c2b9cc3d9eba3c6b82e22d`; bsc `0xe57e3478d8bcfbb67e2dc1df54cf9ae33fd53c46`; bsc `0xf8c4228b21793b3edb9110fb7b292a427b7065e2` | ⚠️ Unaudited |
| StrategyNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x1251f95a8a42f1095a9245e389523abdf177a76d`; bsc `0x15d2086e30d1bd01e95d2abdf901b4f5ca8aed23`; bsc `0x1b1d769b609b92c8a036ca9e57099e9f1253957c`; bsc `0x65c480303aff5d40c917f3cee4b5794d7a75d04a`; bsc `0x66c0fb89f559fa58e2786c95b2c5e7f701ab2130`; bsc `0xc65d6e612c27b7c9b00de40715015eea81368252`; bsc `0xf4052af7a24b5907c185c3bd195fc965753d5cce` | ⚠️ Unaudited |
| StrategyPancake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x0e7e56ea2046e43442ee3063123f49a51a1db379`; bsc `0x26a934633c5f719ee332aa7c4912076258d0acf2`; bsc `0x29e4688c2c807374391254fbb2f589cea4e73add`; bsc `0x2ba734bcac0aa2bf511c629568c8241615bc04fa`; bsc `0x2e4745cb23131c565546b4e2c746f9cce00cff7f`; bsc `0x2eceddd9c5b97269bc548b4c38d23f53a7b5f5ab`; bsc `0x361825cc31196c43d2017afa1d7820c26c00855b`; bsc `0x4825706bc7459379a42ecc7e71e6186564065700`; bsc `0x4aabf400879dc14234c3ba11c7c40bcb65eafd81`; bsc `0x5f80032c1f11a8fcf25295dd13926cb94a7dcbe0`; bsc `0x66598484fa9df7d0e65b088ca0fb16590f5ba32f`; bsc `0x671b92cb7aa3433132f25a4df6a0f0e515cc2ffa`; bsc `0x7207712971ea788813c70d58f1601dec95ceb10e`; bsc `0x76cf647e33593b7c993921f9c438b8832417c3a6`; bsc `0x7866e91c6492cfac8d7424340db1e0d5ebebeaf0`; bsc `0x84f78e6583d3d099e954aed2d8be0422261a6735`; bsc `0x8e02d21469a208aacbe531ab0ce4bfbaeb102fb4`; bsc `0x99da5ae197dc14545494ace50a043c2f742c02a2`; bsc `0xa48e0aff15490d63958ad85e4e1fdaf6f3c4d582`; bsc `0xa792f9737b19389914cc19ef92c7d6f42f96ae80`; bsc `0xaf923cb6962d89fab2770f998eb2f72ba889a525`; bsc `0xb6b91b90c71fb4640f22424fcfeff0995b0062fb`; bsc `0xd9b78587303c36352db0ba8c10f473cfea431bb7`; bsc `0xdbc15fa17977daf361ea6f845a360a99435b5ac6`; bsc `0xe3f8da3ed04f4f085d5dc45e6ea5bd75821427b2`; bsc `0xeef69ada00020becac9789a7413285cd233ba64c`; bsc `0xef8148fc9dc6e6d3ad655b24873d7ff633ced67f`; bsc `0xfe30fdafff0daca93e9bf675b896bdb278c53141` | ⚠️ Unaudited |
| StrategyPancakeBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x6da40a320f591b37de3d6132b9da0c5e871d9c0e`; bsc `0x72dcfe2e08ad9fdcf1be38bc3c181ab0ec6b9892`; bsc `0xb657e76a4ca10bf142689e5b600624b699b32022`; bsc `0xd8a88bbc24c6e4db4dcd30533a6daa1376aa8151` | ⚠️ Unaudited |
| SWAMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5a49b4cbe004b6fd55b30ba1de6ac360ff9765d` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59cf6391fd805e838f8436edb32a4a08416c2bf7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb82e9dd503452e47a95539320a411e2ced93d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cc0842ff8c2738276a0aec4d3d54c3791111abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42cf504aa845ca9f038029eb359c8bfa09311894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f7f7f6f37882799f674a5eeeb14c16404ad9ece` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 53
- Live contracts: 0
- Unknown liveness contracts: 53
- Source-verified contracts: 49
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=49, unverified unclassified=4

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | source verified unclassified | StrategyGoose<br>`0x0970aab66c0520b5717240dd8170462ea2449a2f` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0x1787cc3b25e300b8ce5df083bce121395696df04` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0x368e59b146f4110c030fe5f7ba38413676454ffc` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0x577189eeea23f2241deebedc3f8dcf0b04a8a6da` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0xa275498e3105f27afd726688cdf754d975a004f8` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0xcebb1316d125258187b8764ceab999fd4bdf9449` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0xe4f48c0c4dd3c55c18c2b9cc3d9eba3c6b82e22d` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0xe57e3478d8bcfbb67e2dc1df54cf9ae33fd53c46` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyGoose<br>`0xf8c4228b21793b3edb9110fb7b292a427b7065e2` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0x1251f95a8a42f1095a9245e389523abdf177a76d` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0x15d2086e30d1bd01e95d2abdf901b4f5ca8aed23` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0x1b1d769b609b92c8a036ca9e57099e9f1253957c` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0x65c480303aff5d40c917f3cee4b5794d7a75d04a` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0x66c0fb89f559fa58e2786c95b2c5e7f701ab2130` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0xc65d6e612c27b7c9b00de40715015eea81368252` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyNative<br>`0xf4052af7a24b5907c185c3bd195fc965753d5cce` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x0e7e56ea2046e43442ee3063123f49a51a1db379` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x26a934633c5f719ee332aa7c4912076258d0acf2` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x29e4688c2c807374391254fbb2f589cea4e73add` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x2ba734bcac0aa2bf511c629568c8241615bc04fa` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x2e4745cb23131c565546b4e2c746f9cce00cff7f` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x2eceddd9c5b97269bc548b4c38d23f53a7b5f5ab` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x361825cc31196c43d2017afa1d7820c26c00855b` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x4825706bc7459379a42ecc7e71e6186564065700` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x4aabf400879dc14234c3ba11c7c40bcb65eafd81` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x5f80032c1f11a8fcf25295dd13926cb94a7dcbe0` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x66598484fa9df7d0e65b088ca0fb16590f5ba32f` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x671b92cb7aa3433132f25a4df6a0f0e515cc2ffa` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x7207712971ea788813c70d58f1601dec95ceb10e` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x76cf647e33593b7c993921f9c438b8832417c3a6` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x7866e91c6492cfac8d7424340db1e0d5ebebeaf0` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x84f78e6583d3d099e954aed2d8be0422261a6735` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x8e02d21469a208aacbe531ab0ce4bfbaeb102fb4` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0x99da5ae197dc14545494ace50a043c2f742c02a2` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xa48e0aff15490d63958ad85e4e1fdaf6f3c4d582` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xa792f9737b19389914cc19ef92c7d6f42f96ae80` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xaf923cb6962d89fab2770f998eb2f72ba889a525` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xb6b91b90c71fb4640f22424fcfeff0995b0062fb` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xd9b78587303c36352db0ba8c10f473cfea431bb7` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xdbc15fa17977daf361ea6f845a360a99435b5ac6` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xe3f8da3ed04f4f085d5dc45e6ea5bd75821427b2` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xeef69ada00020becac9789a7413285cd233ba64c` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xef8148fc9dc6e6d3ad655b24873d7ff633ced67f` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancake<br>`0xfe30fdafff0daca93e9bf675b896bdb278c53141` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancakeBUSD<br>`0x6da40a320f591b37de3d6132b9da0c5e871d9c0e` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancakeBUSD<br>`0x72dcfe2e08ad9fdcf1be38bc3c181ab0ec6b9892` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancakeBUSD<br>`0xb657e76a4ca10bf142689e5b600624b699b32022` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | StrategyPancakeBUSD<br>`0xd8a88bbc24c6e4db4dcd30533a6daa1376aa8151` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | source verified unclassified | TimelockController<br>`0x59cf6391fd805e838f8436edb32a4a08416c2bf7` | non_address_book | unknown | unknown | verified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0eb82e9dd503452e47a95539320a411e2ced93d6` | non_address_book | unknown | unknown | unverified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3cc0842ff8c2738276a0aec4d3d54c3791111abd` | non_address_book | unknown | unknown | unverified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | unverified unclassified | UnnamedContract<br>`0x42cf504aa845ca9f038029eb359c8bfa09311894` | non_address_book | unknown | unknown | unverified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f7f7f6f37882799f674a5eeeb14c16404ad9ece` | non_address_book | unknown | unknown | unverified | n/a | `0xa9eb7ad908107e13757ca837435ec713fb55589b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/swampfinance](https://skynet.certik.com/projects/swampfinance) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20634] skynet.certik.com/projects/swampfinance — no match: The provided text is a CertiK Skynet project page, not an audit report. It mentions an audit completed on 5/25/2021 but does not list any contracts in scope. The only contract address shown is 0xc5a49b4cbe004b6fd55b30ba1de6ac360ff9765d, but no contract name is given.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [20634] skynet.certik.com/projects/swampfinance

Fork inheritance lineage and inherited audits are included when available.
