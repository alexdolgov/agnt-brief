# Agentic Audit Brief: YFII

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: YFII (`yfii`)
- Website: [https://yfii.finance/](https://yfii.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 59 unique implementations (59 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $371,521.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YFII. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16cac1403377978644e78769daa49d8f6b6cf565`, chain 1)
- UnnamedContract (`0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a`, chain 1)
- UnnamedContract (`0xb81d3cb2708530ea990a287142b82d058725c092`, chain 1)
- UnnamedContract (`0xf1750b770485a5d0589a6ba1270d9fc354884d45`, chain 1)
- YFII (`0xa1d0e215a23d7030842fc67ce582a6afa3ccab83`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 59 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 59
- Raw deployments: 59
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 5.9% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| YFII | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397463 | `0xa1d0e215a23d7030842fc67ce582a6afa3ccab83` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c2a19108d8f6aec72867e9cfb1bf517601b515f` | ⚠️ Unaudited |
| fortube | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37edb4812aa9bb7a05c8b56642041b3a609b752c` | ⚠️ Unaudited |
| getuniout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75055d3292aba5592cc09c61f73397e05db52c58` | ⚠️ Unaudited |
| iLPVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d994471d61d36fe367928cc58102a376089d1f` | ⚠️ Unaudited |
| iVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e0dc67aea5aa74718822590294230162b5f2064` | ⚠️ Unaudited |
| onesplitError | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045644b23e622cb3db24d18e1a77e8124790f214` | ⚠️ Unaudited |
| qianAndWepiggy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b9af583e4188ccc6297d2f0721e8fb1385fecd` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ba312991e76116879b484135d2b86ea27d0a0f` | ⚠️ Unaudited |
| StrategyCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb684ab29371e701cce3ca9e3fd8f5e33042eee` | ⚠️ Unaudited |
| StrategyDForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d89bc6df5777ef762d8b7c841b1a4e179dcc83` | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd4a57c5ee8558370bb661d29a979657d81258e` | ⚠️ Unaudited |
| StrategyFortube | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3e69ef29cbd32e0732409b748ef317a5f4f0a5` | ⚠️ Unaudited |
| Unipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d367c9529f260b0661e1c1e91167c9319ee96ca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf811c062d14fdf9fda95d6a2c54e137afe80de45` | ⚠️ Unaudited |
| YfiiVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266ca21f966d93f5580e20b55ef66c8320e4760e` | ⚠️ Unaudited |
| yVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f2a725f13111c52a972e20d6aa4dcb190a17faa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397462 | `0x16cac1403377978644e78769daa49d8f6b6cf565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d5c3ffe2a7c7a1e4567c7501d166b0532c8826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6ec8eb73bf404112475895d6c8814ad5a7bd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23b4db3a435517fd5f2661a9c5a16f78311201c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26aedd2205ff8a87aef2ec9691d77ce3f40ce6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27cd6c92ef1e5aa5286efa1ede3aebdad623bf3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3db9cc5b540d2794db3861be5a4887cf77e48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410d2248e14fbc11394b731e6107f60381c2191a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4243f5c8683089b65a9f588b1ae578d5d84bfbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580c36d80e8bf099cebdef7944f943f97e4386b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672077cdeac2df427d4dc639e7531d2f3e69c597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68a23248000d5d4c943ee685989998c1b19bd74e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a77c0c917da188fbfa9c380f2e60dd223c0c35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ca21695cb12a251bb19ae73bda6964f1bbc48de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d4e9689ce9fdc156c2b3340b2332f6b30409fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fc7be79036d0d610b252d435177a687eb39c44a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e43210a4c6831d421f57026617fdfc8ed3a0baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed887119bb7122b3e9aab13d1e7da3d0f7463e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x890ec9796ee76433a642a7cdebebe5c516daf31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a61b5f61c8338b86e632c67085a7d80d88fe881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37b0903c2e01c5be17618445dadc3c85fe37a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ea49a9e242fffbdecc4583551c3bcb111456e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397464 | `0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5639130ce84de9684da10b5e6d6ec49828e0987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c7bf515828c1ebf0d5f34930cda0741ed9263f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397465 | `0xb81d3cb2708530ea990a287142b82d058725c092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb918368082655fa223c162266ecd88aa7ae40bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e1f755b7c03d42ac1a1bd3c04c356ac10ae109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbad10c02f26c9e8edbf5f591d8ee6899fc49d5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebfd1994cfc5594b852c9fa8786cb59b684a26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0790a13b03412449fc98c1978eeff55b00aa486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41f2d937503a27c7502617a8ca1bdb228752ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46d2fc00554f1f874f37e6e3e828a0adfeffbcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc670bd2a9ba62f679babc96851d69fc5d439062c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6cf79574a4138855dfc63fbdfabd9669ccb76c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96ea19a7bd3d4f04d6d67e20cde88e88352fd14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdcf1f9ac816fed665b09a00f60c885dd8848b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde8262568f7c6ece84ab680ab9b3d434c3630b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed434a25612b8d64e3257fff5f96b33031729fdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397466 | `0xf1750b770485a5d0589a6ba1270d9fc354884d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82ee3af5fa37e94973ce7831c527eb23872d687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6a5a0efb399e2987bee4d5db89b925583d144b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 38
- Live contracts: 0
- Unknown liveness contracts: 38
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=38

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x17d5c3ffe2a7c7a1e4567c7501d166b0532c8826` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x1a6ec8eb73bf404112475895d6c8814ad5a7bd96` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x23b4db3a435517fd5f2661a9c5a16f78311201c1` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x26aedd2205ff8a87aef2ec9691d77ce3f40ce6e9` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x27cd6c92ef1e5aa5286efa1ede3aebdad623bf3b` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x3e3db9cc5b540d2794db3861be5a4887cf77e48b` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x410d2248e14fbc11394b731e6107f60381c2191a` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x4243f5c8683089b65a9f588b1ae578d5d84bfbc9` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x580c36d80e8bf099cebdef7944f943f97e4386b9` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x672077cdeac2df427d4dc639e7531d2f3e69c597` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x68a23248000d5d4c943ee685989998c1b19bd74e` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x6a77c0c917da188fbfa9c380f2e60dd223c0c35a` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x6ca21695cb12a251bb19ae73bda6964f1bbc48de` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x6d4e9689ce9fdc156c2b3340b2332f6b30409fe5` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x6fc7be79036d0d610b252d435177a687eb39c44a` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x7e43210a4c6831d421f57026617fdfc8ed3a0baf` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x7ed887119bb7122b3e9aab13d1e7da3d0f7463e1` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x890ec9796ee76433a642a7cdebebe5c516daf31e` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0x8a61b5f61c8338b86e632c67085a7d80d88fe881` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xa37b0903c2e01c5be17618445dadc3c85fe37a88` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xa8ea49a9e242fffbdecc4583551c3bcb111456e6` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xb5639130ce84de9684da10b5e6d6ec49828e0987` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xb6c7bf515828c1ebf0d5f34930cda0741ed9263f` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xb918368082655fa223c162266ecd88aa7ae40bc9` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xb9e1f755b7c03d42ac1a1bd3c04c356ac10ae109` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xbad10c02f26c9e8edbf5f591d8ee6899fc49d5bc` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xbebfd1994cfc5594b852c9fa8786cb59b684a26f` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xc0790a13b03412449fc98c1978eeff55b00aa486` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xc41f2d937503a27c7502617a8ca1bdb228752ca7` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xc46d2fc00554f1f874f37e6e3e828a0adfeffbcb` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xc670bd2a9ba62f679babc96851d69fc5d439062c` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xc6cf79574a4138855dfc63fbdfabd9669ccb76c3` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xc96ea19a7bd3d4f04d6d67e20cde88e88352fd14` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xcdcf1f9ac816fed665b09a00f60c885dd8848b02` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xdde8262568f7c6ece84ab680ab9b3d434c3630b6` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xed434a25612b8d64e3257fff5f96b33031729fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xf82ee3af5fa37e94973ce7831c527eb23872d687` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |
| unverified unclassified | UnnamedContract<br>`0xfe6a5a0efb399e2987bee4d5db89b925583d144b` | non_address_book | unknown | unknown | unverified | n/a | `0x000000004fa9e635dbe91c83aee357d01494936d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [200803-YFII-Token-Pool1-Pool2.en.md](https://github.com/yfii/audit/blob/master/200803-YFII-Token-Pool1-Pool2.en.md) | unknown | Audit | 2020-08 | stale | Direct | address | matched | 4 | 0 | 0 | 0 | high |
| [200803-YFII-Token-Pool1-Pool2.md](https://github.com/yfii/audit/blob/master/200803-YFII-Token-Pool1-Pool2.md) | unknown | Audit | 2020-08 | stale | Direct | address | matched | 4 | 0 | 0 | 0 | high |
| [YFII_v2_Smart_Contract_Audit_Report.pdf](https://github.com/yfii/audit/blob/master/YFII_v2_Smart_Contract_Audit_Report.pdf) | unknown | Audit | 2020-09 | stale | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [YFII_v2机枪池智能合约审计报告.pdf](https://github.com/yfii/audit/blob/master/YFII_v2%E6%9C%BA%E6%9E%AA%E6%B1%A0%E6%99%BA%E8%83%BD%E5%90%88%E7%BA%A6%E5%AE%A1%E8%AE%A1%E6%8A%A5%E5%91%8A.pdf) | unknown | Audit | 2020-09 | stale | Direct | address | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28406] 200803-YFII-Token-Pool1-Pool2.en.md — matched: The report explicitly lists four contracts in scope: YFII Pool 1, YFII Pool 2, YFII Token, and BPT Token, with addresses. The audit date is inferred from the analysis period (July 27 to August 2, 2020), so the end date is used.
- [28407] 200803-YFII-Token-Pool1-Pool2.md — matched: Audit report dated 2020-08-02 (end date of audit period 2020-07-27 to 2020-08-02). Scope includes four contracts: YFII Pool 1, YFII Pool 2, YFII Token, BPT Token.
- [28408] YFII_v2_Smart_Contract_Audit_Report.pdf — no match: Extracted 17 contract names from the scope table and file listings. Audit date from document header: 20200924.
- [28409] YFII_v2机枪池智能合约审计报告.pdf — no match: Extracted 17 contract names from the scope table and file listing. Audit date from report header: 20200924.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 200803-YFII-Token-Pool1-Pool2.en.md | YFII Pool 1 | own contract | 0xb81d3c… (selected) `0xb81d3cb2708530ea990a287142b82d058725c092` — deployed 2020-07-26 16:11:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.en.md | YFII Pool 2 | own contract | 0xaffcd3… (selected) `0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a` — deployed 2020-07-27 16:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.en.md | YFII Token | own contract | YFII (selected) `0xa1d0e215a23d7030842fc67ce582a6afa3ccab83` — deployed 2020-07-26 16:05:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.en.md | BPT Token | own contract | 0x16cac1… (selected) `0x16cac1403377978644e78769daa49d8f6b6cf565` — deployed 2020-07-27 12:49:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | YFII Pool 1 | own contract | 0xb81d3c… (selected) `0xb81d3cb2708530ea990a287142b82d058725c092` — deployed 2020-07-26 16:11:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | YFII Pool 2 | own contract | 0xaffcd3… (selected) `0xaffcd3d45cef58b1dfa773463824c6f6bb0dc13a` — deployed 2020-07-27 16:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | YFII Token | own contract | YFII (selected) `0xa1d0e215a23d7030842fc67ce582a6afa3ccab83` — deployed 2020-07-26 16:05:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 200803-YFII-Token-Pool1-Pool2.md | BPT Token | own contract | 0x16cac1… (selected) `0x16cac1403377978644e78769daa49d8f6b6cf565` — deployed 2020-07-27 12:49:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YFII_v2_Smart_Contract_Audit_Report.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyCurveYCRVVoter | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultYCRV | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyDForceDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyTUSDCurve | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultTUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | StrategyFortubeHBTC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2_Smart_Contract_Audit_Report.pdf | iVaultHBTC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | Controller | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultUSDT | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyCurveYCRVVoter | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultYCRV | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyDForceDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultDAI | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyTUSDCurve | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultTUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultUSDC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultETH | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultBUSD | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | StrategyFortubeHBTC | unmatched — not counted | — | listed in scope table | no |
| YFII_v2机枪池智能合约审计报告.pdf | iVaultHBTC | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: address=8

Zero-match audit list:

- [28408] YFII_v2_Smart_Contract_Audit_Report.pdf
- [28409] YFII_v2机枪池智能合约审计报告.pdf

Fork inheritance lineage and inherited audits are included when available.
