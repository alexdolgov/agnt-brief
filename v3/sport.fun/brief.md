# Agentic Audit Brief: Sport.fun

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sport.fun (`sport.fun`)
- Website: [https://pro.sport.fun](https://pro.sport.fun)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 40 unique implementations (73 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,942,863.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Sport.fun in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16ee7ecac70d1028e7712751e2ee6ba808a7dd92`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 1 of 40 unique; 39 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/36
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 40
- Raw deployments: 73
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DevelopmentPlayers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x292fad07e2fc5089ec4625dcb17e4e36109f6bac`; base `0x60209166e540773b66397be796bf6a3c741d6ba9` | ⚠️ Unaudited |
| DevelopmentPlayersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x216491d59b200873829084b7b16419445e8464f1`; base `0xc98bf3fc49a8a7ad162098ad0bb62268d46dacf9` | ⚠️ Unaudited |
| DevelopmentPlayersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x48d29efe75e7e1403184e07005170bf72e1185a5`; base `0xc21c2d586f1db92eedb67a2fc348f21ed7541965` | ⚠️ Unaudited |
| FDFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1637f08e395db4085f6f9b6d246606201c8de115`; base `0xc5e617c261edc1a8cf6cb0b7dedabd4da3e5bc79` | ⚠️ Unaudited |
| FDFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1757990c3e8ddb549487368bb29d1abf45e4bfce`; base `0xfa664e168fe1cf5b740bee8d973fb04f7a1633c4` | ⚠️ Unaudited |
| FDFPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4f91bc61dee825de72023b63c1c09cefd6d5e388`; base `0x920cb915ed9f082f959f2c1106263c69f5981bd0` | ⚠️ Unaudited |
| FDFPairV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1071d46ab76b12b7345b16b6e4f627a2ab449d4e`; base `0x95d691b3d6c078ec1c182b857e8cbb8e1cd95b4c` | ⚠️ Unaudited |
| FDFPairV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0a1b8a8dcd25ce607ebd1ccabb67c37621f5599f`; base `0x3433e74b3f70b9ea43e85713a3a609470ff57a72` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcbf41efd1fa2a2879b837b0bbeccae04a85f8497`; base `0xf69ef8d02e277a32f48afb4a08d4ef35c864ea87` | ⚠️ Unaudited |
| FeeManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2fcb5ea217e32e281ffa186acbbba5330fe71cf9`; base `0xc7d627fd9238b6a402292d09fb7eab2d2185302c` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x079793b75eb0841f3ddb62466c9182ecaf0f3757` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5a0e0bb48c7f1fcb2d6dcebb565764eef1459830`; base `0xbac4a9428ea707c51f171ed9890c3c2fa436305d` | ⚠️ Unaudited |
| Fun | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2ce3452e57edd79829d484a80ad3f533ee25bb9a`; base `0x8a25305628243d76a6a01308b355a67b387cedcb` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a7e010db9214d202b1da595fad1f673b37f9640`; base `0x3efddebc17f79cf88544c022fdc7fffc6595a961` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x104bf5c62bf8cd1b6c4e13c7d0a32dc3fd872ae2`; base `0x68042f89433c68001d15114ff0df41864830a466` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1f77620224ba13f6ebfd1fdedbabcc9c334a4dad`; base `0x5422eceb88148e8efa318f400d0eb6c890921e45` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3dac7d3a05ad0d05ee23ca625a76999d49d7e15f`; base `0xfa15ead53af7aaead27681847f96558b2881d255` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x448599be961eb204d1b4db9c7f04ce050fe127b3` | ⚠️ Unaudited |
| PackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7a3a8a59f2f0a74aa0cddbc6fc7939b3f4786e6a`; base `0xe807e3299691f0d8286dc44927f3251b6778f591` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354`; base `0x4fb35d907efcd6c0233ed0abeb978889abbe09e4` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2bf90936e3803bb824ec335e139496a6e32c1b66`; base `0xa15910873144d42c5c5e80ff3e37ef5216d49d5c` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3b14ac32e10594e7ff22d2688bcc873e4bb9ea11`; base `0x8e015e51178121b5a73e9c99d4c2cb198436d122` | ⚠️ Unaudited |
| PackSaleReveal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x77c7ff5e22d03e937b8efb2bc32aaa055cb728d0`; base `0x7f7b8a982e408527a0ba318f15f33cdc134d47f2` | ⚠️ Unaudited |
| Player | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31b0786a4d435d513708df7a2d9839c0b80e2a59`; base `0xfa2e6d2f9df84cecb8e507ce973e153cc4131648` | ⚠️ Unaudited |
| PlayerContracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5792f6166efc753fd67505a96e7c668a76dd1b45`; base `0x63f3f8b3671d0459d3bfb78289c8bfa1bd9209a5` | ⚠️ Unaudited |
| PlayerContractsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x28232491479039d39c5d92ad405db71d3e5230f2`; base `0xe7a8dd20154f18fe895c50cc62c81937cf20b1f7` | ⚠️ Unaudited |
| PlayerContractsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6f0bdfb013443c3ff40e6ba11ecc543f302dd470`; base `0xa983c20822671025abd3e04dd0844845cf062778` | ⚠️ Unaudited |
| PlayerPack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a23041ab5c6a5ae73a0195e8aa57fdd00cf62eb`; base `0x882148c0b54849dd23ab66a151fbf50d1b1b6635` | ⚠️ Unaudited |
| PlayerPackV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x57700392b0cd59dcccb98b872e517fe04ef2c507`; base `0x70dd114fb0f22d72de41e97e8a2123dc7bc50085` | ⚠️ Unaudited |
| PlayerPackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1f69192818c019de8c52c6cca99f263e950cf405`; base `0xe7cfd9c833f7943e7aef9a1b4a5ca1390c12a58c` | ⚠️ Unaudited |
| PlayerPackV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb0a1004b9a14176783c31b4c56e4254f3d072b32`; base `0xc2df9440afd674293a6f7a55a53e14a6302d3e8d` | ⚠️ Unaudited |
| PlayerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1b30c1260828aeba87d7da1fd929f6e6bc25b7e0`; base `0x7f17c01f8099c0816650d6d5c43ebd403ef1ac64` | ⚠️ Unaudited |
| PlayerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2eef466e802ab2835ab81be63eebc55167d35b56`; base `0xf0da459f306a1a23ccbf2737c04116563849d746` | ⚠️ Unaudited |
| PlayerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x71c8b0c5148edb0399d1edf9bf0c8c81dea16918`; base `0xcc647f306482f13ff0a20c99aec29baddd043208` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e8e74fe875b6813f8260ff6e95265d10e1b8ed7`; base `0xfd4c2707d796e60151591deb4a8c9fe4e3dae866` | ⚠️ Unaudited |
| SimpleMultisender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x40cdf1b6b87773eb5bd52bc112bdd466320139d3` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14ad363a292a2d837dff864556663ec9fa958cb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-392953 | `0x16ee7ecac70d1028e7712751e2ee6ba808a7dd92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb9c635d51dec51fc4aa30c3610931f82bdd66f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf701cf578ce52777c97dee1c10a9aee3aa2dc1df` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 67
- Live contracts: 0
- Unknown liveness contracts: 67
- Source-verified contracts: 64
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=24, contamination review=1, source verified unclassified=39, unverified unclassified=3

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | candidate review | ERC1967Proxy<br>`0x1637f08e395db4085f6f9b6d246606201c8de115` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | ERC1967Proxy<br>`0x68042f89433c68001d15114ff0df41864830a466` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | ERC1967Proxy<br>`0x6f0bdfb013443c3ff40e6ba11ecc543f302dd470` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | ERC1967Proxy<br>`0x71c8b0c5148edb0399d1edf9bf0c8c81dea16918` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | ERC1967Proxy<br>`0xc2df9440afd674293a6f7a55a53e14a6302d3e8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | FDFFactory<br>`0xc5e617c261edc1a8cf6cb0b7dedabd4da3e5bc79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | FDFPair<br>`0x920cb915ed9f082f959f2c1106263c69f5981bd0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | candidate review | FeeManager<br>`0xcbf41efd1fa2a2879b837b0bbeccae04a85f8497` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | source verified unclassified | DevelopmentPlayers<br>`0x60209166e540773b66397be796bf6a3c741d6ba9` | non_address_book | unknown | unknown | verified | n/a | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | source verified unclassified | PackSale<br>`0x104bf5c62bf8cd1b6c4e13c7d0a32dc3fd872ae2` | non_address_book | unknown | unknown | verified | n/a | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | source verified unclassified | PackSaleReveal<br>`0x4fb35d907efcd6c0233ed0abeb978889abbe09e4` | non_address_book | unknown | unknown | verified | n/a | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | source verified unclassified | Player<br>`0xfa2e6d2f9df84cecb8e507ce973e153cc4131648` | non_address_book | unknown | unknown | verified | n/a | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | source verified unclassified | PlayerContracts<br>`0x5792f6166efc753fd67505a96e7c668a76dd1b45` | non_address_book | unknown | unknown | verified | n/a | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | source verified unclassified | PlayerPack<br>`0x882148c0b54849dd23ab66a151fbf50d1b1b6635` | non_address_book | unknown | unknown | verified | n/a | `0x121111554634d0389ed8d7315bd4262ba57c9cae` |
| base | unverified unclassified | UnnamedContract<br>`0x14ad363a292a2d837dff864556663ec9fa958cb6` | non_address_book | unknown | unknown | unverified | n/a | `0x1c588bbe2c7865c155d431f6ef66f170c69030ae` |
| base | candidate review | ERC1967Proxy<br>`0x1f69192818c019de8c52c6cca99f263e950cf405` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x28232491479039d39c5d92ad405db71d3e5230f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x2bf90936e3803bb824ec335e139496a6e32c1b66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x2ce3452e57edd79829d484a80ad3f533ee25bb9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x2e8e74fe875b6813f8260ff6e95265d10e1b8ed7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x2eef466e802ab2835ab81be63eebc55167d35b56` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x3dac7d3a05ad0d05ee23ca625a76999d49d7e15f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x3efddebc17f79cf88544c022fdc7fffc6595a961` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x5422eceb88148e8efa318f400d0eb6c890921e45` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x77c7ff5e22d03e937b8efb2bc32aaa055cb728d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0x8e015e51178121b5a73e9c99d4c2cb198436d122` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0xe807e3299691f0d8286dc44927f3251b6778f591` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | ERC1967Proxy<br>`0xfa664e168fe1cf5b740bee8d973fb04f7a1633c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | FDFFactory<br>`0x1757990c3e8ddb549487368bb29d1abf45e4bfce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | FDFPair<br>`0x4f91bc61dee825de72023b63c1c09cefd6d5e388` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | candidate review | FeeManager<br>`0xf69ef8d02e277a32f48afb4a08d4ef35c864ea87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | contamination review | SimpleMultisender<br>`0x40cdf1b6b87773eb5bd52bc112bdd466320139d3` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | DevelopmentPlayers<br>`0x292fad07e2fc5089ec4625dcb17e4e36109f6bac` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | DevelopmentPlayersV2<br>`0x216491d59b200873829084b7b16419445e8464f1` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | DevelopmentPlayersV2<br>`0x48d29efe75e7e1403184e07005170bf72e1185a5` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FDFPairV2<br>`0x1071d46ab76b12b7345b16b6e4f627a2ab449d4e` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FDFPairV2<br>`0x95d691b3d6c078ec1c182b857e8cbb8e1cd95b4c` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FDFPairV3<br>`0x0a1b8a8dcd25ce607ebd1ccabb67c37621f5599f` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FDFPairV3<br>`0x3433e74b3f70b9ea43e85713a3a609470ff57a72` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FeeManagerV2<br>`0x2fcb5ea217e32e281ffa186acbbba5330fe71cf9` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FeeManagerV2<br>`0xc7d627fd9238b6a402292d09fb7eab2d2185302c` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FeeManagerV3<br>`0x079793b75eb0841f3ddb62466c9182ecaf0f3757` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | FeeManagerV3<br>`0x5a0e0bb48c7f1fcb2d6dcebb565764eef1459830` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | Fun<br>`0x8a25305628243d76a6a01308b355a67b387cedcb` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSale<br>`0x0a7e010db9214d202b1da595fad1f673b37f9640` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSale<br>`0x1f77620224ba13f6ebfd1fdedbabcc9c334a4dad` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSale<br>`0x448599be961eb204d1b4db9c7f04ce050fe127b3` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSale<br>`0x7a3a8a59f2f0a74aa0cddbc6fc7939b3f4786e6a` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSale<br>`0xfa15ead53af7aaead27681847f96558b2881d255` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSaleReveal<br>`0x3b14ac32e10594e7ff22d2688bcc873e4bb9ea11` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSaleReveal<br>`0x7f7b8a982e408527a0ba318f15f33cdc134d47f2` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PackSaleReveal<br>`0xa15910873144d42c5c5e80ff3e37ef5216d49d5c` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | Player<br>`0x31b0786a4d435d513708df7a2d9839c0b80e2a59` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerContracts<br>`0x63f3f8b3671d0459d3bfb78289c8bfa1bd9209a5` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerContractsV2<br>`0xa983c20822671025abd3e04dd0844845cf062778` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerContractsV2<br>`0xe7a8dd20154f18fe895c50cc62c81937cf20b1f7` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerPack<br>`0x1a23041ab5c6a5ae73a0195e8aa57fdd00cf62eb` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerPackV2<br>`0x57700392b0cd59dcccb98b872e517fe04ef2c507` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerPackV2<br>`0x70dd114fb0f22d72de41e97e8a2123dc7bc50085` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerPackV3<br>`0xb0a1004b9a14176783c31b4c56e4254f3d072b32` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerPackV3<br>`0xe7cfd9c833f7943e7aef9a1b4a5ca1390c12a58c` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerV2<br>`0x1b30c1260828aeba87d7da1fd929f6e6bc25b7e0` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerV2<br>`0x7f17c01f8099c0816650d6d5c43ebd403ef1ac64` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | PlayerV3<br>`0xf0da459f306a1a23ccbf2737c04116563849d746` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | source verified unclassified | RewardsManager<br>`0xfd4c2707d796e60151591deb4a8c9fe4e3dae866` | non_address_book | unknown | unknown | verified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | unverified unclassified | UnnamedContract<br>`0xeb9c635d51dec51fc4aa30c3610931f82bdd66f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |
| base | unverified unclassified | UnnamedContract<br>`0xf701cf578ce52777c97dee1c10a9aee3aa2dc1df` | non_address_book | unknown | unknown | unverified | n/a | `0xa8d04ae897bd4a469edc8ece50ad96fc0857a7ac` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
