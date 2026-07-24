# Agentic Audit Brief: Satori Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Satori Finance (`satori-finance`)
- Website: [https://satori.finance](https://satori.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, linea, polygon-zkevm, scroll, zksync-era
- Contract surface: 45 unique implementations (62 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $914,426.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Satori Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 45 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 45
- Raw deployments: 62
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8`; ethereum `0x9fbc367b9bb966a2a537989817a088afcaffdc4c`; ethereum `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x2a3e5383aafe43b05dbb7a63f3c98b29afaf0b3d`; base `0xdcbc727da5fed68daf2708af525b4810469c0982`; arbitrum `0x21ec83d42ae40c6d18c3c1224d1d468eac0ac651`; linea `0xc99148d2298fb0bff4802581e3cc88605beeb63a`; linea `0xfa9b890f61c28a68782b17320201b5b9acdad4b1` | ⚠️ Unaudited |
| RSETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` | ⚠️ Unaudited |
| SatoriIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x10c3fcc7c6e378147c7e1290ed69f89d6d579560`; linea `0x19492a6f686657d07b016e983a4611772eeb44ba`; linea `0x6586201ade078a4aefab700e939c3b9e260a13b0`; linea `0xcdaf869f8c202dd3702625901c58cf99f05c3db7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4b8f585d281eaaeb705f3f8710c30f071a2aafa3`; ethereum `0x9686cc81cebbdd383a996ad96a21ca707d643726` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7d61a7c329d1a23b98471f63d6a8246ca725cbe7`; base `0x9d3ada9e1f3fe79cb51c14211696679d4385a155` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3239678037d38865c25747e364660a0a3c2dc800`; arbitrum `0x7eb51e5e22d8a36a3bde58ae90333d113093b84d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x0282515de1f3ba5953298a72f1357cfda6ef2275`; linea `0xc6a889ecfceda834767e91b7c49a2452b2014b34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x3798699893b3a459e80152b7aab9f4663b4402e9`; linea `0x5940a60866255031830aa1edfdd8b56ab39765b7` | ⚠️ Unaudited |
| ynETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09db87a538bd693e9d08544577d5ccfaa6373a48` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0857f8a6e41e1c71f4065daebfe7ddb825cbffde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa394080628f175472fee9eb316bd104fab63fe40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae754c8d7eb513125d5b6912cd7928a2278ac475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0842b33529516abe86ca8ea771ac4c84fdd0eee0`; polygon-zkevm `0x48756b37fd643bb40f669804730024f02900c476`; polygon-zkevm `0x62e724cb4d6c6c7317e2fade4a03001fe7856940`; polygon-zkevm `0xa59a2365d555b24491b19a5093d3c99b119c2abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0f9144940a3c475617bf8bb084a32a3d4b25a02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10c3fcc7c6e378147c7e1290ed69f89d6d579560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19492a6f686657d07b016e983a4611772eeb44ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c3191793771cad58cc8684f4ed74de5c6420e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4858c605862a91a34d83c19a9704f837f64fa405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ced5d67b13f05ec0d54f1fa14b42223103ac33c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f075a6a11b2e25df664ce7419c274943017b595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6586201ade078a4aefab700e939c3b9e260a13b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x668a9711b8d04362876dc5b6177ed362084d5aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d3163f665a227a0cd5ff6f5b329814ca734f873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcad4a958d171c3ba2c973d05300b70dd33ca0dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdaf869f8c202dd3702625901c58cf99f05c3db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9adb4358c59e584abe24ba43a70b064ee55b478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4038d237c553bf246f7d1a377830601d72f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf906a1e298bf30bc2c6294c74a628019abdcbcbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5acceb99de5cc07168c193396c1fdc3e3abeeed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae9a83510cbb26c58595ba671f131e0a03fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0f9144940a3c475617bf8bb084a32a3d4b25a02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4858c605862a91a34d83c19a9704f837f64fa405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x62f4cf567515f2e1a6a5c9f5af1e2b5345525535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xce0930b46f48c94d4c99be0c8fd7bb5629e932dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe9adb4358c59e584abe24ba43a70b064ee55b478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf96116e124eb3f62ddc6a9cfbdc58d7f8a37c50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb371e70eeb32f4054f40514924e77213ca18425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff5859b60bcb3f153431ca216b1b269eb66a2020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3798699893b3a459e80152b7aab9f4663b4402e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5940a60866255031830aa1edfdd8b56ab39765b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc99148d2298fb0bff4802581e3cc88605beeb63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf96116e124eb3f62ddc6a9cfbdc58d7f8a37c50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfb371e70eeb32f4054f40514924e77213ca18425` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 45
- Live contracts: 0
- Unknown liveness contracts: 45
- Source-verified contracts: 14
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=10, source verified unclassified=4, unverified unclassified=31

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ProxyAdmin<br>`0x2a3e5383aafe43b05dbb7a63f3c98b29afaf0b3d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xe0c18b17f9bbd52116b05318dbbcee7a47d8e7fb` |
| candidate review | TransparentUpgradeableProxy<br>`0x4b8f585d281eaaeb705f3f8710c30f071a2aafa3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0c18b17f9bbd52116b05318dbbcee7a47d8e7fb` |
| candidate review | ProxyAdmin<br>`0xdcbc727da5fed68daf2708af525b4810469c0982` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19faf00ac3abd85b7cc9a6467496f437a2f9c8de` |
| candidate review | TransparentUpgradeableProxy<br>`0x7d61a7c329d1a23b98471f63d6a8246ca725cbe7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x19faf00ac3abd85b7cc9a6467496f437a2f9c8de` |
| candidate review | ProxyAdmin<br>`0x21ec83d42ae40c6d18c3c1224d1d468eac0ac651` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229576e9d9f69c3b9714a37f184314e0cf14a24b` |
| candidate review | TransparentUpgradeableProxy<br>`0x3239678037d38865c25747e364660a0a3c2dc800` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229576e9d9f69c3b9714a37f184314e0cf14a24b` |
| candidate review | ProxyAdmin<br>`0xc99148d2298fb0bff4802581e3cc88605beeb63a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| candidate review | ProxyAdmin<br>`0xfa9b890f61c28a68782b17320201b5b9acdad4b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| candidate review | TransparentUpgradeableProxy<br>`0x0282515de1f3ba5953298a72f1357cfda6ef2275` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| candidate review | TransparentUpgradeableProxy<br>`0x5940a60866255031830aa1edfdd8b56ab39765b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| source verified unclassified | SatoriIdo<br>`0x10c3fcc7c6e378147c7e1290ed69f89d6d579560` | non_address_book | unknown | unknown | verified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| source verified unclassified | SatoriIdo<br>`0x19492a6f686657d07b016e983a4611772eeb44ba` | non_address_book | unknown | unknown | verified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| source verified unclassified | SatoriIdo<br>`0x6586201ade078a4aefab700e939c3b9e260a13b0` | non_address_book | unknown | unknown | verified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| source verified unclassified | SatoriIdo<br>`0xcdaf869f8c202dd3702625901c58cf99f05c3db7` | non_address_book | unknown | unknown | verified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x0857f8a6e41e1c71f4065daebfe7ddb825cbffde` | non_address_book | unknown | unknown | unverified | n/a | `0xe0c18b17f9bbd52116b05318dbbcee7a47d8e7fb` |
| unverified unclassified | UnnamedContract<br>`0x9686cc81cebbdd383a996ad96a21ca707d643726` | non_address_book | unknown | unknown | unverified | n/a | `0xe0c18b17f9bbd52116b05318dbbcee7a47d8e7fb` |
| unverified unclassified | UnnamedContract<br>`0xae754c8d7eb513125d5b6912cd7928a2278ac475` | non_address_book | unknown | unknown | unverified | n/a | `0xe0c18b17f9bbd52116b05318dbbcee7a47d8e7fb` |
| unverified unclassified | UnnamedContract<br>`0x0f9144940a3c475617bf8bb084a32a3d4b25a02e` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x10c3fcc7c6e378147c7e1290ed69f89d6d579560` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x19492a6f686657d07b016e983a4611772eeb44ba` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x3c3191793771cad58cc8684f4ed74de5c6420e38` | non_address_book | unknown | unknown | unverified | n/a | `0x19faf00ac3abd85b7cc9a6467496f437a2f9c8de` |
| unverified unclassified | UnnamedContract<br>`0x4858c605862a91a34d83c19a9704f837f64fa405` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x5ced5d67b13f05ec0d54f1fa14b42223103ac33c` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x6586201ade078a4aefab700e939c3b9e260a13b0` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x668a9711b8d04362876dc5b6177ed362084d5aed` | non_address_book | unknown | unknown | unverified | n/a | `0x19faf00ac3abd85b7cc9a6467496f437a2f9c8de` |
| unverified unclassified | UnnamedContract<br>`0x7d3163f665a227a0cd5ff6f5b329814ca734f873` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x9d3ada9e1f3fe79cb51c14211696679d4385a155` | non_address_book | unknown | unknown | unverified | n/a | `0x19faf00ac3abd85b7cc9a6467496f437a2f9c8de` |
| unverified unclassified | UnnamedContract<br>`0xcad4a958d171c3ba2c973d05300b70dd33ca0dec` | non_address_book | unknown | unknown | unverified | n/a | `0x19faf00ac3abd85b7cc9a6467496f437a2f9c8de` |
| unverified unclassified | UnnamedContract<br>`0xcdaf869f8c202dd3702625901c58cf99f05c3db7` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0xe9adb4358c59e584abe24ba43a70b064ee55b478` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0xf906a1e298bf30bc2c6294c74a628019abdcbcbb` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x5acceb99de5cc07168c193396c1fdc3e3abeeed7` | non_address_book | unknown | unknown | unverified | n/a | `0x229576e9d9f69c3b9714a37f184314e0cf14a24b` |
| unverified unclassified | UnnamedContract<br>`0x7eb51e5e22d8a36a3bde58ae90333d113093b84d` | non_address_book | unknown | unknown | unverified | n/a | `0x229576e9d9f69c3b9714a37f184314e0cf14a24b` |
| unverified unclassified | UnnamedContract<br>`0x0f9144940a3c475617bf8bb084a32a3d4b25a02e` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x3798699893b3a459e80152b7aab9f4663b4402e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| unverified unclassified | UnnamedContract<br>`0x62f4cf567515f2e1a6a5c9f5af1e2b5345525535` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0xc6a889ecfceda834767e91b7c49a2452b2014b34` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0xce0930b46f48c94d4c99be0c8fd7bb5629e932dd` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0xe9adb4358c59e584abe24ba43a70b064ee55b478` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0xfb371e70eeb32f4054f40514924e77213ca18425` | non_address_book | unknown | unknown | unverified | n/a | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| unverified unclassified | UnnamedContract<br>`0xff5859b60bcb3f153431ca216b1b269eb66a2020` | non_address_book | unknown | unknown | unverified | n/a | `0x06f0719b612002eb3dbfdc7a711244084edcc2e7` |
| unverified unclassified | UnnamedContract<br>`0x3798699893b3a459e80152b7aab9f4663b4402e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| unverified unclassified | UnnamedContract<br>`0x5940a60866255031830aa1edfdd8b56ab39765b7` | non_address_book | unknown | unknown | unverified | n/a | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| unverified unclassified | UnnamedContract<br>`0xc99148d2298fb0bff4802581e3cc88605beeb63a` | non_address_book | unknown | unknown | unverified | n/a | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |
| unverified unclassified | UnnamedContract<br>`0xfb371e70eeb32f4054f40514924e77213ca18425` | non_address_book | unknown | unknown | unverified | n/a | `0x8162edde1c53ea829e61ad38790491bbb15c9c21` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3129] Satori_audit_report.pdf — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from Project Dashboard: Apr 13 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Satori_audit_report.pdf | DwBiz | unmatched — not counted | — | listed in scope | no |
| Satori_audit_report.pdf | DwDirectVault | unmatched — not counted | — | listed in scope | no |
| Satori_audit_report.pdf | DwMultiSignVault | unmatched — not counted | — | listed in scope | no |
| Satori_audit_report.pdf | IDwBiz | unmatched — not counted | — | listed in scope | no |
| Satori_audit_report.pdf | IDwDirectVault | unmatched — not counted | — | listed in scope | no |
| Satori_audit_report.pdf | IDwMultiSignVault | unmatched — not counted | — | listed in scope | no |
| Satori_audit_report.pdf | IDwVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3129] Satori_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
