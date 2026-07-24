# Agentic Audit Brief: Solo Top

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

- Project: Solo Top (`solo-top`)
- Website: [https://solo.top](https://solo.top)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, chain-66, heco, polygon
- Contract surface: 161 unique implementations (161 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $756,208.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Solo Top in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 157 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 158
- Unique implementations: 161
- Raw deployments: 161
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-165874 | `0x098e86a6f1440cf500e965d50bdd0e8dfdc619f8` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-165872 | `0x35850294d6f5961fdc708f1e3d2a21e4c34fdbbb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-165873 | `0x0842744879067dd6b9e7c28b2523184be2566c7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (158)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0079cfaf7713f503b1ba9a57e8c5fec59a25766d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x029b53639cbfd35a414d7c8ab56189f1908e01bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x046a258699f7506ce191540f75f35239b13a9d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07393c3ed6eac87a5ffa4f2c7da7b1a91d2c782c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09cf09e150e170775242db1f9d00a158dc1cd404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a5efc8b6df078a98fcd21361b6842471dd61f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a8c5a154f91784f4491654f161befc364ca916f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13a18d99d313b6f31dba1de0ed330b178091115c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14f8ea06aa3067a01877a7fed91a05613e1b0285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x157a174b8a05281c922db0dbf26f5f0d0bc30432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x163378693022249275f8a777b243ca797b2c4f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19ffda54fc11d24ef331889dd6d6fe465f85f5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b77dbb2eb96d0dfb5591e2ac8058efdfa0caa20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d317ce9e68c082c1b0b27c46907bf35814e2a54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f1c620664548411fe1c9cc709530caff2b6fbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x222cf8cbdac9f880263773e40490aae38f324059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22a7f3c04115b5127cac59f26b3f3d54a5719613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22e7b914cdc2465f81c5ef3c540de9af3a920dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x296a171c117f2d1d8b8ce468b1e7f751744222a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2de029b7f2f8ef8c9ccec44c8176efc642f5d2f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e23c798373e6abac103ed979c03e7b72926f840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f5583c4ba348c00c56a3bf22536271c24005727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33fa19fc2f3b6550b92ad7c855f5964a337150cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x347bd1be193b03141124959e0d9261d1bc94782c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34d6b43f4d8dad91158e722f73078245db54a267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35537e231e9360c0b736cd27872d4416a99f2d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36e2ba69165cf8a3c2b3d0b2a9181aa100309ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a9509dfa011e73b89e3e6c69003972b93407f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bf68213a390bd6486c51dc18e43b9943df408b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3eb9fc2ef8b098b261b361b9c396de43bce87582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x425224d34f617ef47f0f9911eb763240f64b54a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44febe6183a14f4d5a85ec8cad80569d63ffd1ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4782aade233479e3cbb7b6f3c9aaacd42aefb8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4791bafde5d9887635ef89a9ca0d187e4a9593da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b17d1c08a362b4caec0a3b1ef23e7bfd838f2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b68f2a199fdde33f2afd1c624f6a5c7533c0be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fcd9b7a820da66b2055c82c355261f27556c165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5059e6e1ea77a3152a90850ddbbb65924b7c837f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x541b37086eec2f3867dba544d788ae749474c95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x550905c7f6dc9f353ffe82818f73f6b2da4a1063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x570818ab8f54ab0e52b2ec157a2933c6e1b716f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x585be4b0b435ae2abf422d404eb513c35f7812fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a6e62473d14fd9a0f41f416c4ad9fed048215d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b6fe0cac621484dac5f6557c6c78142e8aa1aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d724a432e6c25b635a4742f3305cb66e6312061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fe43cc0f1318e160c54f5dc4936e236554547ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7033a512639119c759a51b250bfa461ae100894b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x780d2c1cb232f1fa11b908635a28e6377a0dcdaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c353b4ba046e86f7853ded000f7cd25f447343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d122651d63f41f4f056b8ec1a662dbb46f67229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8cc843d3f86eb68a0a5ab0ea0739eb81fbe6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eba66f52f839bf77c624b66670d912f54a263da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85d7d755f1f0fd36bf343add33933a850d53eeb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x877c2735abbfef7b70c0d808c28f6e0b300277bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9287e1902dad7807363c1824c30c833ea4d0e6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96a98acff79692826233a5b3d169d105386bbdda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97d3d9ee7a5d2b85518f4ddd1a7b609280cd3037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97f28c7b6f591070a37182b43d5ba7b3f4cd0bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98240fafb3a9a790dedfa73d0e2afb92dc62d91e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ccfb35bb55e125e6b7ec394eec402bb78acfd77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9de7c0dae2ec39d319dab36970577febf14a6b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa322659bb15acca8a7b2f43a119dc5000827b8ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa442edd411ad8b9d30dfe01a825123359796b9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4d2396b820b2c0212ca781ac7e2843897d6e726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9bd8719d6d9fdc04197548c56dd9aedcdef5d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0276953dc726b9666c4f2b9af27d2adfc43dc0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1560fd2b53d9df8cb464462b6cf2d92f505eb22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb34c12b916eb4cacacc8ea4054a24bb4789c4246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb40bda884da78be169487babe59fdee2ac8b4140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdf0903d00314a4cb9bcd2dfe47d11ebbde0cdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe1713bdde242f0fd3110a64399889171153dd78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe1750717dd57c883d6b5d5505f2a5014a270d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8cab325dac7e06fd7519fcbdccf93ecb637164d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9de90238318e5f23220650253917682a8c953d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca0eb2134858a624ab2d274ee3636828e15d38a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd05e83bec3c3d75b44f48f0d95086c31cb20352a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0f72d3435807ea81e0911060aed9eb482bfe24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22278869b21a906651d711fd1d98bbbbdd8c872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd24836b8c94542b564133e6eb8d9d8b733e5513f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd34365b44f36354728cd3daad76c430848ef011e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd424aad8691737bac2ccda54057d8bd62a2b4ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd656b495effcc308856d9cf4cfc60afa28f60edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6cdcbf627b5a2d474c6f3ced794de7e414763f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0188a9c9d78ce2fb6e11242aa83f7feb591748b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe05b17163d075e50342bc338e5d6e27c411e1e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe36d3c5ab800aece51accc53909a74d3129225ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe83ee8460f4789be7ed9ce8750f2fbfdae4d8a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3ded31a751cfc6bd1ba1767f8bf2da553c40b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf716bad9fa9989490ca0bca03fadf7fb859604a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9824b642dbccc1b9823c6ab6138203a616cd2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc181403e84ecc048c09d160cfcf252d25e879c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea6f238af226637799e0b0cbb560974901fd86a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-66 | n/a | `0xa8af3199ace72e47c1deb56e58bea1cd41c37c22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | heco | n/a | `0x1cf73836ae625005897a1af831479237b6d1e4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17e8cb0fe5e559cfda7a87515ce62e59bced1500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20508742026e8ffce795e76d66377694f8dca2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25ad8cef5fe62960b7108e5803da193f8e5ac91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x265d57041193631e40540b04029a7e147d5d4ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x292c4666edb1c3f35886fc6f7682a07d51822e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bf6c4fd33d07c30b883f9c28b572a7304ce82ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f8906d1df3c2e25fbbd617fa725ad63ab1ade3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39d1a19ebb745b4d8677f32abefaf8ed9d186ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c9ba86752d37f0fdf4e98a5eec52a43bb371387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e7ad087bafc5aeff9226394fc0a6e3b7852be0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4144ad61e84fa249d2b1db0ea0494210c704c053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42350f2941ab84dfb56b24b71c31cf1e65f36a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x425a4d8b537a5461bd6864474bd749e3481af7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4298cd4bfce10695d5d3a96e0daa6b0abebd43b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x437ac8e10a464fbb4e79c0e4a180b3e7080bcf46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x488175226b4bc96479df33922295aa51df28cea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b3ed3b6b72c6f07fc1b6a81ad735ae1c1bb68ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a3ad73422712ae2b93c8438de80e0686b7d8bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c13700ddd530b81be1e71195793f3affb587340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x639f2ff06f1789fca9afe10e8704bbd4a90a5ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cd0fa416620d06ab995e13469a2aee1bf1e9c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x742ab6c6d8e682c7316367826a1c78575a1f205a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75344651d6cf9c5b62d5705504195f54a361d18e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c8744dfa04dde6c85bdc21b1cf6d5f0ce571b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80c6957a19fecbc8f776b7d9383e74eebfbde13f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81b5530b875117f0a5ef57dd173f272eaf839f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87b465df0a8dd153704c1ecc02749a0e7d412d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87cce5231ba73b1e9c42656ddfa37a193e154238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88b8ec7d0da4b29b2e9db903bd9f3bbb9f65af6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b1a96875f9affe8bbbcbed2b22de8be994cb29f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ea8ca07f75518b6a2a82892a2f01231d82e05ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fc1b5413e70a2b64fbf11547808ed1e5b95987e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91183d935bc3459cf960b7d2333ca2b6832665de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9165cb25ac32da32942b0abff36061f7836ae92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9551205c82e438d6d4d30068d43d35119b3a2ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98d22c510876eaa229e49e712d0ea110c26fb900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9be33d77c430f6a5306ac8e38f0612b560723057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fffc7d90afed35ce6dbbdfe8a6a61d1da0600d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2ce9ee8f8c3ad49ae62ab7eecb02f71af68e10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5510f0554a5a6dae137af30f0440cab31d0fb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf656a6a834ab0588508dfece8b4dda8b1f63f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0309191b48b6b658fd83f81e47c45ee1b6ba1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb16106b076bfbf29b1fb834b438143576f7d97ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd4093cc27625be82295b73db37d60bd8d07426a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0aa04919a39a854bdf21458a9bbfd02a7713020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2f554ad133790801ff618bb9647aabc4de1585c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc39933c9341ca14071b297bc6c518047f751ed2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc51f6c32d1f55afb1033e36b5d3b9da125ef5d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca90e5085c7e22d1377c3f09293f629040d003b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb362254f30c9a27c21870fc791695a6145bc37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc93f39d56be4ae305e5a5e53d8a158c8cc6c35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce01b79fe7052b5434c0780e4b74e938d16b5fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde03d04dba7bac0e6f4d6dda183d41cae08c24f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe179ae11223b69b22b7cb9e85dec719006421743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8bd85f5b2dda34b6aca4459e526a82066b8dc28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9058dbb8f62be4fa334e1eb97ddeb61aa339283` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xe95876787b055f1b9e4cfd5d3e32bde302bf789d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedbd4572a8ec21f6ca7d048f482bcacf618f7cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee4aea3a8f4ac5de7eb5f7ad79c0e38952ed9846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf09b6818c021eb7c5fdc46e00a053f050f783016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3eb4328591e745819976e5dc5190c7da444f5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3fbb790658b14b282f875a782c9de8b6068530e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbe59d13c3178607a6d0ddaa698192c63e3f7beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc50bce3bf02324fd9591e3db22b5927e37ce992` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 154
- Live contracts: 0
- Unknown liveness contracts: 154
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=154

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x0079cfaf7713f503b1ba9a57e8c5fec59a25766d` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x029b53639cbfd35a414d7c8ab56189f1908e01bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x046a258699f7506ce191540f75f35239b13a9d6f` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x07393c3ed6eac87a5ffa4f2c7da7b1a91d2c782c` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09cf09e150e170775242db1f9d00a158dc1cd404` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0a5efc8b6df078a98fcd21361b6842471dd61f48` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0a8c5a154f91784f4491654f161befc364ca916f` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x13a18d99d313b6f31dba1de0ed330b178091115c` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14f8ea06aa3067a01877a7fed91a05613e1b0285` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x157a174b8a05281c922db0dbf26f5f0d0bc30432` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x163378693022249275f8a777b243ca797b2c4f06` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x19ffda54fc11d24ef331889dd6d6fe465f85f5ce` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1b77dbb2eb96d0dfb5591e2ac8058efdfa0caa20` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d317ce9e68c082c1b0b27c46907bf35814e2a54` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1f1c620664548411fe1c9cc709530caff2b6fbc6` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x222cf8cbdac9f880263773e40490aae38f324059` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22a7f3c04115b5127cac59f26b3f3d54a5719613` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22e7b914cdc2465f81c5ef3c540de9af3a920dfe` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x296a171c117f2d1d8b8ce468b1e7f751744222a1` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2de029b7f2f8ef8c9ccec44c8176efc642f5d2f1` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2e23c798373e6abac103ed979c03e7b72926f840` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2f5583c4ba348c00c56a3bf22536271c24005727` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33fa19fc2f3b6550b92ad7c855f5964a337150cd` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x347bd1be193b03141124959e0d9261d1bc94782c` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34d6b43f4d8dad91158e722f73078245db54a267` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x35537e231e9360c0b736cd27872d4416a99f2d8c` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36e2ba69165cf8a3c2b3d0b2a9181aa100309ded` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3a9509dfa011e73b89e3e6c69003972b93407f29` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3bf68213a390bd6486c51dc18e43b9943df408b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3eb9fc2ef8b098b261b361b9c396de43bce87582` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x425224d34f617ef47f0f9911eb763240f64b54a3` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44febe6183a14f4d5a85ec8cad80569d63ffd1ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4782aade233479e3cbb7b6f3c9aaacd42aefb8bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4791bafde5d9887635ef89a9ca0d187e4a9593da` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b17d1c08a362b4caec0a3b1ef23e7bfd838f2f3` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b68f2a199fdde33f2afd1c624f6a5c7533c0be2` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4fcd9b7a820da66b2055c82c355261f27556c165` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5059e6e1ea77a3152a90850ddbbb65924b7c837f` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x541b37086eec2f3867dba544d788ae749474c95b` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x550905c7f6dc9f353ffe82818f73f6b2da4a1063` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x570818ab8f54ab0e52b2ec157a2933c6e1b716f0` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x585be4b0b435ae2abf422d404eb513c35f7812fa` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5a6e62473d14fd9a0f41f416c4ad9fed048215d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b6fe0cac621484dac5f6557c6c78142e8aa1aaf` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5d724a432e6c25b635a4742f3305cb66e6312061` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6fe43cc0f1318e160c54f5dc4936e236554547ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x780d2c1cb232f1fa11b908635a28e6377a0dcdaa` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c353b4ba046e86f7853ded000f7cd25f447343a` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7d122651d63f41f4f056b8ec1a662dbb46f67229` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7e8cc843d3f86eb68a0a5ab0ea0739eb81fbe6af` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7eba66f52f839bf77c624b66670d912f54a263da` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85d7d755f1f0fd36bf343add33933a850d53eeb6` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x877c2735abbfef7b70c0d808c28f6e0b300277bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9287e1902dad7807363c1824c30c833ea4d0e6b1` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x96a98acff79692826233a5b3d169d105386bbdda` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97d3d9ee7a5d2b85518f4ddd1a7b609280cd3037` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97f28c7b6f591070a37182b43d5ba7b3f4cd0bbc` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98240fafb3a9a790dedfa73d0e2afb92dc62d91e` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ccfb35bb55e125e6b7ec394eec402bb78acfd77` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9de7c0dae2ec39d319dab36970577febf14a6b28` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa322659bb15acca8a7b2f43a119dc5000827b8ee` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa442edd411ad8b9d30dfe01a825123359796b9ac` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa4d2396b820b2c0212ca781ac7e2843897d6e726` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9bd8719d6d9fdc04197548c56dd9aedcdef5d8a` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0276953dc726b9666c4f2b9af27d2adfc43dc0f` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1560fd2b53d9df8cb464462b6cf2d92f505eb22` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb34c12b916eb4cacacc8ea4054a24bb4789c4246` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb40bda884da78be169487babe59fdee2ac8b4140` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdf0903d00314a4cb9bcd2dfe47d11ebbde0cdf7` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe1713bdde242f0fd3110a64399889171153dd78` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe1750717dd57c883d6b5d5505f2a5014a270d44` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc8cab325dac7e06fd7519fcbdccf93ecb637164d` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc9de90238318e5f23220650253917682a8c953d8` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca0eb2134858a624ab2d274ee3636828e15d38a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd05e83bec3c3d75b44f48f0d95086c31cb20352a` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd0f72d3435807ea81e0911060aed9eb482bfe24b` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd22278869b21a906651d711fd1d98bbbbdd8c872` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd24836b8c94542b564133e6eb8d9d8b733e5513f` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd34365b44f36354728cd3daad76c430848ef011e` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd424aad8691737bac2ccda54057d8bd62a2b4ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd656b495effcc308856d9cf4cfc60afa28f60edf` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd6cdcbf627b5a2d474c6f3ced794de7e414763f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe0188a9c9d78ce2fb6e11242aa83f7feb591748b` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe05b17163d075e50342bc338e5d6e27c411e1e90` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe36d3c5ab800aece51accc53909a74d3129225ad` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe83ee8460f4789be7ed9ce8750f2fbfdae4d8a07` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3ded31a751cfc6bd1ba1767f8bf2da553c40b53` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf716bad9fa9989490ca0bca03fadf7fb859604a8` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf9824b642dbccc1b9823c6ab6138203a616cd2fe` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfc181403e84ecc048c09d160cfcf252d25e879c3` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfea6f238af226637799e0b0cbb560974901fd86a` | non_address_book | unknown | unknown | unverified | n/a | `0xa08f4616b8bf1cdb6aa6a82f7b94ca596fe044de` |
| polygon | unverified unclassified | UnnamedContract<br>`0x17e8cb0fe5e559cfda7a87515ce62e59bced1500` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20508742026e8ffce795e76d66377694f8dca2fa` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x25ad8cef5fe62960b7108e5803da193f8e5ac91d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x265d57041193631e40540b04029a7e147d5d4ca1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x292c4666edb1c3f35886fc6f7682a07d51822e2d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2bf6c4fd33d07c30b883f9c28b572a7304ce82ab` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f8906d1df3c2e25fbbd617fa725ad63ab1ade3a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39d1a19ebb745b4d8677f32abefaf8ed9d186ce3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3c9ba86752d37f0fdf4e98a5eec52a43bb371387` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3e7ad087bafc5aeff9226394fc0a6e3b7852be0a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4144ad61e84fa249d2b1db0ea0494210c704c053` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x42350f2941ab84dfb56b24b71c31cf1e65f36a42` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x425a4d8b537a5461bd6864474bd749e3481af7c9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4298cd4bfce10695d5d3a96e0daa6b0abebd43b8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x437ac8e10a464fbb4e79c0e4a180b3e7080bcf46` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x488175226b4bc96479df33922295aa51df28cea7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4b3ed3b6b72c6f07fc1b6a81ad735ae1c1bb68ba` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5a3ad73422712ae2b93c8438de80e0686b7d8bf5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5c13700ddd530b81be1e71195793f3affb587340` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x639f2ff06f1789fca9afe10e8704bbd4a90a5ae9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6cd0fa416620d06ab995e13469a2aee1bf1e9c10` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x742ab6c6d8e682c7316367826a1c78575a1f205a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x75344651d6cf9c5b62d5705504195f54a361d18e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7c8744dfa04dde6c85bdc21b1cf6d5f0ce571b44` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x80c6957a19fecbc8f776b7d9383e74eebfbde13f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x81b5530b875117f0a5ef57dd173f272eaf839f8b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x87b465df0a8dd153704c1ecc02749a0e7d412d4c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x87cce5231ba73b1e9c42656ddfa37a193e154238` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x88b8ec7d0da4b29b2e9db903bd9f3bbb9f65af6d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8b1a96875f9affe8bbbcbed2b22de8be994cb29f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8ea8ca07f75518b6a2a82892a2f01231d82e05ad` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8fc1b5413e70a2b64fbf11547808ed1e5b95987e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x91183d935bc3459cf960b7d2333ca2b6832665de` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9165cb25ac32da32942b0abff36061f7836ae92b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9551205c82e438d6d4d30068d43d35119b3a2ef3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x98d22c510876eaa229e49e712d0ea110c26fb900` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9be33d77c430f6a5306ac8e38f0612b560723057` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9fffc7d90afed35ce6dbbdfe8a6a61d1da0600d6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa2ce9ee8f8c3ad49ae62ab7eecb02f71af68e10b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa5510f0554a5a6dae137af30f0440cab31d0fb9d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xaf656a6a834ab0588508dfece8b4dda8b1f63f9b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb0309191b48b6b658fd83f81e47c45ee1b6ba1a8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb16106b076bfbf29b1fb834b438143576f7d97ed` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbd4093cc27625be82295b73db37d60bd8d07426a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc0aa04919a39a854bdf21458a9bbfd02a7713020` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc2f554ad133790801ff618bb9647aabc4de1585c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc39933c9341ca14071b297bc6c518047f751ed2b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc51f6c32d1f55afb1033e36b5d3b9da125ef5d70` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xca90e5085c7e22d1377c3f09293f629040d003b7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcb362254f30c9a27c21870fc791695a6145bc37d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcc93f39d56be4ae305e5a5e53d8a158c8cc6c35a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xce01b79fe7052b5434c0780e4b74e938d16b5fef` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xde03d04dba7bac0e6f4d6dda183d41cae08c24f9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe179ae11223b69b22b7cb9e85dec719006421743` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe8bd85f5b2dda34b6aca4459e526a82066b8dc28` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe9058dbb8f62be4fa334e1eb97ddeb61aa339283` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xedbd4572a8ec21f6ca7d048f482bcacf618f7cfd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xee4aea3a8f4ac5de7eb5f7ad79c0e38952ed9846` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf09b6818c021eb7c5fdc46e00a053f050f783016` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf3eb4328591e745819976e5dc5190c7da444f5ee` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf3fbb790658b14b282f875a782c9de8b6068530e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfbe59d13c3178607a6d0ddaa698192c63e3f7beb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfc50bce3bf02324fd9591e3db22b5927e37ce992` | non_address_book | unknown | unknown | unverified | n/a | `0xdc0adbe06bceb67cf43d2ad02e36ac2a13d3fddc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/solotop](https://skynet.certik.com/projects/solotop) | CertiK | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21003] skynet.certik.com/projects/solotop — no match: The provided text is a CertiK Skynet project page, not a full audit report. It mentions an audit was completed on 4/16/2021 but does not list any contracts in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 158 |

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

- [21003] skynet.certik.com/projects/solotop

Fork inheritance lineage and inherited audits are included when available.
