# Agentic Audit Brief: MoneyFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: MoneyFi (`moneyfi`)
- Website: [https://app.moneyfi.fund/](https://app.moneyfi.fund/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum, optimism
- Contract surface: 367 unique implementations (367 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $357,150.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for MoneyFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 367 discovered implementations shown in the inventory but excluded from coverage (9 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 346
- Unique implementations: 367
- Raw deployments: 367
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154057 | `0x3e5248390072df19b4a292e8ce6fe65c0fc300fd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-154056 | `0xc5224ba06a932b65909b6fa53b263d5b84ba1c07` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-154063 | `0x0f93ea942eff599298c75e941e068badb7f131db` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-154047 | `0x1efa94587d929f61ae5c2c21adcbe853b6c71832` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-154067 | `0x0ccbcd220d94344f0ae7346d2a6276c404cc9f6e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-154065 | `0x16fe43a853883842bfc13bf8c96596a287e916a2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-154066 | `0xd9ec31efcdb4d98e6578ecb70b970ec60a064fc2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-154059 | `0x0f92f50532c6c4d7d7d95cda3474177794f1e1e4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | arbitrum | unit-154058 | `0x322d521a9319bf9388419dd53a73ea4605d20d4d` | ⚠️ Unaudited |
| MoneyFiAerodromeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-154055 | `0x85affe800e3d5098cf9aed4749e765a4a137293d` | ⚠️ Unaudited |
| MoneyFiCCTPV1CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154044 | `0x103f2454a7941f07d5661669bd6eed0d1e0ebcdb` | ⚠️ Unaudited |
| MoneyFiCCTPV1Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154043 | `0x0cda33f268e4456cd5d8b6b212c912bacdf4c8df` | ⚠️ Unaudited |
| MoneyFiController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-154045 | `0x1b37b54d38421e7bdbd3d886a395a87167cb3164` | ⚠️ Unaudited |
| MoneyFiCrossChainRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154042 | `0x067430eca3e7a947afc99345552627e4b46bad05` | ⚠️ Unaudited |
| MoneyFiFundVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-154061 | `0x0228a82cdae89fe94d6ba7c5e1c8404d68c197b7` | ⚠️ Unaudited |
| MoneyFiPancakeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-154049 | `0xf5d4650902cb5df6cee4f21e3763bc6a0a5dbed1` | ⚠️ Unaudited |
| MoneyFiReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-154052 | `0x39a18374b0357572e23c17f3057a2b0d8ed684a5` | ⚠️ Unaudited |
| MoneyFiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-154041 | `0x034c02b3f961258b743af776f72a53b6976da85f` | ⚠️ Unaudited |
| MoneyFiStartegyUpgradeableAllBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-154054 | `0x477101fd75df7f58d04d71144f56e38ab637b1cc` | ⚠️ Unaudited |
| MoneyFiStrategyUpgradeableAllBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-154039 | `0x03afbc04c44d648dd59fc9cafb2b00730bf42593` | ⚠️ Unaudited |
| MoneyFiTokenLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | unit-154040 | `0x0f33473b45df316aa410d7060faf2ace2b7b7181` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (346)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3448263b315e73bcafc28296a41fe80e4ae49ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ca0cff2d2715cfdb77f3f894e5d22f91dc533df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x477101fd75df7f58d04d71144f56e38ab637b1cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487549dbf6035ba7bcf864ef01f28e184d27a54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5adb96e1728eb6493c2e0033ec70f829cad83b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa100f5d23cc261c155728b008aaded68a48992cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaabefe3110587f27814ca802e223a1fda9402e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb17ed50d2d5c3cacaf5b81e89c15b95b7ce2cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc131e9daf52920588c6c3058daeae26cbd54c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9139312e668ee8011f6c594ba24271ee5c913d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03afbc04c44d648dd59fc9cafb2b00730bf42593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f18b8289a702f26625e0cb91dcacc48273f8526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2007f0786633c71802ffe9cad3e98259bb0a753e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2840f364e1cb5f83b6158618e7aafb0a0aeb6736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3448263b315e73bcafc28296a41fe80e4ae49ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39a18374b0357572e23c17f3057a2b0d8ed684a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7dd73b72c4f260e51b376d678f93effe8387ffad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x815361bf1f8fd0ffb51f09e8a304497e7cf4c8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x85affe800e3d5098cf9aed4749e765a4a137293d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x948e4b1f0a199d6c27cd1118483a45843222f60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x952969bf806f6b8c2fcf4fb375c60e8d4ea7209e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaabefe3110587f27814ca802e223a1fda9402e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb17ed50d2d5c3cacaf5b81e89c15b95b7ce2cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2d0866ac779b13a756b5b25d5a5a4a656fb059f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4e0c6a1542197f06514c111b6f3dce7b250897f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5224ba06a932b65909b6fa53b263d5b84ba1c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd79683499f50a9e8d1aa3f9980b9bcdddd553e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd4279f8dcfd9a42e34334cf6c9457134e288e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9139312e668ee8011f6c594ba24271ee5c913d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03afbc04c44d648dd59fc9cafb2b00730bf42593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0678934e201f671cafdcb60cfecfa46c4f31b1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f33473b45df316aa410d7060faf2ace2b7b7181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f92f50532c6c4d7d7d95cda3474177794f1e1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20e432ae9cd5ba3f3d09352967bfa223be652ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24e76ae3ecefb2477fec63752f1060a52a116c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29aaceebbb98847582fb8e6748a689ce6a7f3a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bf830714c117338a7f82ed9e68eaa12ab8cb0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d363a4ed846fa0eaa3884c25922a6552aae96d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f78131afff964e93d488ef3343d46ed62682cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3448263b315e73bcafc28296a41fe80e4ae49ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x356a77bbcdf2508ec66680a014bed84ff0137ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ed67bddf8c34f947dcff966ea5eb44f9492ff60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6fb859cdae29ebd55b468922a9b865b888cedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fb7c2e5c1021a0b77e5bf302692fb3a8d232ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x531fdc85267838690d66443847a9fb759d2813c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57e04ab2ca2cc69e69766cbe7eac3a2db44c531b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5887d31170179644df47d1c5066ff3e38b51b86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5adb96e1728eb6493c2e0033ec70f829cad83b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f5b10ab4c9131d62dc6ee6a58aac578d7e4531c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6038f893511df22030cb69575eb41a46803389a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x606799356dd5dbb3cec1afb1b7f8718aa398d678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x615a1f9a10400b972551af5f377ab43933c15462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6243880bbc74a966a1c123c9c61b0f67d0bbb959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x639314b69091d863581a3596a972acc3c1910a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67edd9dd81e2975cc8cea93dbe9e1ece3b62afed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ddf9d0ee78dc91b0e0029c6aff4d75c595a2d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75f7b2965d8dd95c9ca7f0bba5656e6701d0cdf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bb42db6d86132fcc4af8fa7f10ea8c77d60bbe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bd37e40273c5315fa6c26f8eaffc9ccf0fdc9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8be37856993a4758e07f59cd26651942dd948310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dfd18da0460b045a041992f459abc846c3fcd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e027392cbceb2cfb45391116a71ce14e7b9bbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x900a135b46e4b856cbd24cc9db6892251948e958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91ae256170a5b569faf008ebb1e2b141aec37812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x948e4b1f0a199d6c27cd1118483a45843222f60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9905f7ade1cf836d15536a06cc6ec936a4b71172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a48fbae7ea2fcff94bd17193a3d763501c776f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3e0688036d4c8d301f5a1e0b162fa157dfd0814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa628861a4bfb3be4004476a52f311232a4fe6662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8affb858d60163af4c98f0a870ee8f9e6b299b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a06d14e839c74001a04a47fcc4676b8fcb9ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaabefe3110587f27814ca802e223a1fda9402e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0b80ce061de860eb7fc074b9713bdccf6ec544a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb17a12febcfc3a22086e50d4bec480540fb2a30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb17ed50d2d5c3cacaf5b81e89c15b95b7ce2cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb56a2d5679095814dfec709caee0e56ed7df8dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc3d89ff49cf1c7940a35421aca010d40dc6e81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2440c1e28dfca042b2fe637fa8c127e062a1fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9aba5026bea6d89bb8ed1931d989b70a3785619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb51dd5db78be005e7823ebb6116b4c74f64db6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd22b67d354feb02bab5c2875a90a5672617d7bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2605c3758c61da9544cf6dff43f5d2576a3b4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd395ad7a584d71bf2ab096b45684ed1d1551d45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7c42d1507debdfe44f9403d085437c5a28282d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb8e607156398b0ed714da6674d640dd5be49170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbcb8316074cbb3e853077566feaedbbe5c55365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc131e9daf52920588c6c3058daeae26cbd54c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde20cfa6b44767767703569ca70505db51611d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0ca7ac5625c89b3778ac69f823ae1edaf6a0cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3ca1099ebc030fd918ba0a2eff081204b081400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe88190e72e1680d81dd9b052b8a399539c0cab66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea15d956f9eb96122ec6fe52bca615adea14573e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7786dc4f4a278e47593653890c805d91f8c9d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9139312e668ee8011f6c594ba24271ee5c913d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e1bb2a458db603ec57279126e6b1362433569c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12599daf2b3960dd49b3102fb6719440900c3801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b37b54d38421e7bdbd3d886a395a87167cb3164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1caa707a30e6b844e917fd544e6e7b8b25b286db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d984bba8ad7b790a4ea479015d9b722588377e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e3209ca0eea83f59da55a9d15f9596800889116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x201e3c8bccbb6e23710fedab9a28e806ef3240eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21d5b4352878415846785b923622b504d65cd5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x291521205f8deaf167118efc03279c8cf80db684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b10166f90ca57dc96d4c55535cee336600dca5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c61448f25ce976f7d41e523fcb038de25eec61a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2df1200660fbb6ae1b3d64bcb88988ceaccb0fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2eff45555dd9c7694ac61b10d35d0cd88f4a9738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f78131afff964e93d488ef3343d46ed62682cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32ebe3aeaf6bec92a84c7b323160fc81a0150fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x356a77bbcdf2508ec66680a014bed84ff0137ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38937bf34cbcd47365fad021127010f07e7e742b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43407431359bc41c98f6ee2f3b4f697c29fadccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x448d6c7dea14ace296a99548b46b90555a165eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4754ded4243af1ee22f06d54a03b82a245e944ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a99e378aba5b3636d44dae0f8e8d5db542566ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cb9289b27faf51d1fc9e434d5384b376dbb48c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f5d08b5f64204ea456674b8e3600cdad65fbd9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ce39dcef3c9fa0dc40f6489c9c954aa5701f7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x606799356dd5dbb3cec1afb1b7f8718aa398d678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a4bfd69e12f99522d7c3d4c58b6e7a7ee8a309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61413c73f428cabd7cdc1232b4b34f5e0ac5870e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614d70794f1bcb2674a3686a646e7c59b2b51eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64b7e07d9361a4f9d038f589dd98fd4d260c9b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x66de700bb7f6448059b36ae2295c8dbd6591d1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6886ace376e39fabe58a4406cb535a72efe48e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f5305a1557b1b01e1750833f2a9c82ed7c3f7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x705809c1596c0274f02a4d72d9abadad2fcaac7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70a055194cc83f83528604aa77b29623bec01c5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70fb774b3263d16f2bc70503436c8c7934fb3c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75e12c3f3eaad56bf68b28206d42bbd014db1db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b888a1820da51d97796326254bb15715d7e4262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d165149bdc4a15891f5f0fbc527e7be430da3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eb3f25188d74142dfc261e51674e2dfe8c2efbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86191d128db7406dd679219bb594caececcaebe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ba76eddf6a3f3f3654de3840a1d5a4161216a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d71ff831bf0f4b9363a437f4ba6938e41bd930f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a816dbb1ff161f59a6fe0b84faddd23400e2b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fb017e0545ea582300a6697c2f2eb27f04b7300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa29c3a026860dfbd086cfa30556a9bb52611b43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3e0688036d4c8d301f5a1e0b162fa157dfd0814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5db5360ed6e61ab2119d5dfad6b13f00d20bab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9a06d14e839c74001a04a47fcc4676b8fcb9ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaabefe3110587f27814ca802e223a1fda9402e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab91282bcd375318dfc5ba486a731a8081ed8e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0a0501e2a781b706e0b6639cfaf3e9e9811323f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb15321d1bf20ab38c23a476e9e4a3b4ea28fb639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb17a12febcfc3a22086e50d4bec480540fb2a30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb17ed50d2d5c3cacaf5b81e89c15b95b7ce2cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2a4b9430f991ed4d4eddf2878778b7de87b06b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb65c0a9b38c40ac79e71bf1184de49293708fdfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd8deb4f5ea8e954be7c96bf9608493a1c8fa3bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe4f997907d8663ed39176f6ee922aaefbdac6a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc43aeed6fbe99bf0afbbfb0d0fc1523a8c81e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc46db5d4d38c657dc05aba89521021090a1c8847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc51b977018b4be50e4f30b8ea161e140d6e85db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc61f0f0a752e0c04f6efb0f0465a0b74a54185c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc8abb120e7fd49790bd5a821daa2f78236f2b7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf6f204e9e49cb8c8ab92043f67dc60f489c5144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0d726dbf87267288e0c4aadc957174db412223c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd25cd3f6370101671f6ec1c587d7f72f75f5ab00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd35c2d5dd0a72aae2bc50b249e85cb1247a79f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9535326edcf9ce794394cf4718d5bf364579539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda10f3ec5b434265a70e05fc1652139e5432297b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf7b2a4b3af01acb9200cbfb5eb2a016af8579f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0ca7ac5625c89b3778ac69f823ae1edaf6a0cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2e326496dc7a7bc75a10e3fb29e52adafcb342c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7c33cb97428c258e9637b2449368f13a5b6bacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7e04ed65489335016ee07861ba36ea465d577b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8fc83303f4cd0a37b91cc5f9ea55c8e681557a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed91007e54875ac5a0d22b85822e9864a1ce2589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf42a979649e4195600a5ad6c91ac6a3bd4f90580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4d1f7ddcf449b255619f62313f37f2ae335222b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6ef0e3bf074c76976be0cc294132339dcdf2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf8ff1f6dd407352205936b31cbff2cadb56573af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03afbc04c44d648dd59fc9cafb2b00730bf42593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d13f57f94f58b69e9cd1335fb60fea834dcb38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f860271ba074392e896a67a23cdb488b27e2b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11e4f9a91ee33c5bb789e250148717c0a23f1312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1785d388b690018b14a7f3adb0de1f58524130f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d984bba8ad7b790a4ea479015d9b722588377e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1da6991b27637bf4e78ea5d12e5c12f4bd7dfbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1de51f83f2042b6dbb5e7601801dd6e5d4f4944a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e1977a9af4f36173073ea32117601d7d9cce4c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e60f80c151e8e726d2ab72f77d01e08896b8680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2007f0786633c71802ffe9cad3e98259bb0a753e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x201e3c8bccbb6e23710fedab9a28e806ef3240eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2836f2544b5bd270c5f78ccf961befe12646819a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x291521205f8deaf167118efc03279c8cf80db684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2daa2dc0651f9e019f1860f0bf04b77c3fad6110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dc50bb5d133c3403d8c57f4bdd8401e099b7c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dcb6d225cfef8fa47dfa5e876b8bdbe646324d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e783368d0ff74c142ea41e9f339ba925d6ce975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2eff45555dd9c7694ac61b10d35d0cd88f4a9738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe32c69f454af7ce306c6f4d1499933ed4decb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff22e6faf09c5b6a6a298f4fe50e0d5d4829c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x307dd3c535afc185d6d2a482ddb093b6fe203382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32eb86ad4fc9207dcdf3ee18ab1f674b169dfd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32ebe3aeaf6bec92a84c7b323160fc81a0150fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x340691dead6508deef370fb85896e27b5d2e711d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3448263b315e73bcafc28296a41fe80e4ae49ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x354e079cf4a4cba5c5e2f3599e271fe52f8582b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35ca54e46d2949f86b7928559e2f82c6887d7d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3973cea08111bd10952c14d6ef9bb9efb1eab624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x397840e23b9467c9acd584ae9d14743a545ef4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39bf78b4cc46f3f2f8961a85b1d0fa11cc39eb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e311192474784de132c88073fdb64bb94984607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e3bf9c464c38a1a330aa160a69e9980931a6ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ef46edf66fec8bac5af02109ee13bde85cc80b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44fddd7f982b4c5cb2b13fc8d3843607cb1a833d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47b882755896b0f091a5c685bbb5f5c8f689be72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x498f7bd9029ca60537c4f5ce60ee5537460f67c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a425730f09444f3c48166de76f03d1ef1d13f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ab3e19bd46387e70e8997a6e2aeadb5e682af13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b12d392868835ec165912c130bc407736e8015f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c9cf94a69dea98bd412ff6173a61f7934cabb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cb9289b27faf51d1fc9e434d5384b376dbb48c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505c78ba9f9f0312c4009198ff653d97a84532ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5211cfecc56599a470c45f1efa5bbed2bc57a3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54f138c93790a26514bcb551a4fa1e23f130d19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58b637a5c994c2e822e5d4949d1a90b1778ead5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5adb96e1728eb6493c2e0033ec70f829cad83b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b6add4ef31e54a54fb4ab0c49b173f660bff353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5dccf94da59aa0bce7eb99a91f995907453da684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e132b88b6380ab383c646a66b3b09d8c0cb978b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f816b667f99cf232826f2fd7ee5b7f58309f33a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x614d70794f1bcb2674a3686a646e7c59b2b51eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6243880bbc74a966a1c123c9c61b0f67d0bbb959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6258272d564b2e10605014e3a45f2adcf6d312a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62f8adce22088b4a1880ae500cc631e4850ae46b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63ac354e2feb176940755eaba9edb1e8b0c69a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x643205affd613ae21dc01aa9106e345c65e6d847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ddf9d0ee78dc91b0e0029c6aff4d75c595a2d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70a055194cc83f83528604aa77b29623bec01c5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72cfdb07976d76a1e0030ad143c7ab54617e397d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x763e96d98c87e5b838bbf2c557802788e5fc831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x786e39974e6e0ffe96981a6b8f5af2608a0d8dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b6e745f7214a4accf5b61f2e0067b2a5946eb39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c273d65204db6e660cf764a54ca7b68e936aee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d7638756f27e1b51ed592eedab9adaca4b3d6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e168ecc040a4287dc78099d9bc85e46adfea00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f383c5c368e55e2826b495ade139743b1f6e1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fb5dc022e060ba04f1939cadb602b92fa0db76a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fb79bda14b61e2ae72767ef19fb6bc01b732c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ff3de80c3c94c8db64d555adf7573b3ab8cfeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8078e46cb27d6c445363a332c2089356f7af12d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x830739140d2fb18ab1776adb1fb863961f63cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8562afd9660c59d7d00fcef49e59975845d8e641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x884495f231671d782c53f4a9ec5292b11a97995d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bb42db6d86132fcc4af8fa7f10ea8c77d60bbe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ca9f25973c735b9b4532a5fb66df9f46e68a2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d71ff831bf0f4b9363a437f4ba6938e41bd930f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dfd18da0460b045a041992f459abc846c3fcd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e6115078615d5f2d6f0d47c48796774797a3666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ef6af9a88f3c1cf677a5a73e1dcf44f5eaa28c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9175cabbd4e7224d6a2cace996a7d0f556a338ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93e466c267887754f235daa95761c87902ad3fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x948d45a88efc1a6811c4a1a1435e738575c9c717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x950ecc60d1f97f2d1df9358cb1d5cdcc1fdb3185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97212cbf2d1f64f7acb2ff72372da070e3c3ba40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97f2489ca5ce747c0d4343e09e2202bc82c565a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98a1e19822dadc56cf10ca20114fa3d5bf1c1447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a48fbae7ea2fcff94bd17193a3d763501c776f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c24a00673badc4469cc05a85c4c1ceb1edc9363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c7c88718e168342bf357d3db16ab654e183ef69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d1808ca9f22e08c17db60c0f8e3542d9b4eba11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d86198a7355c23220abf557f430c7a3d2b2ea55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa100f5d23cc261c155728b008aaded68a48992cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1df20fd492d20dd8c1edb539dfaf5aae3db4335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa369f9d6654664ac5ff988a853fa429778081211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa416f7b2e563e4106a222eec78a9ae511cc8dfee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa628861a4bfb3be4004476a52f311232a4fe6662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6bc999049090800460cbb7dde19dab1bf40a218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa87894e4da791788ed11c85e356ed6a66bb66356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaabefe3110587f27814ca802e223a1fda9402e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacf6b2bb6e66124fb56f97943f0eb070075aaaf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad8e4d9cf1898b6dc6988bf704f331341654bed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafc9beb9f0153ac376b54d23c1a6eea88c7dac33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb17ed50d2d5c3cacaf5b81e89c15b95b7ce2cfb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1e0aa98fb7844fa384f032bba3d60355b94bfcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb65c0a9b38c40ac79e71bf1184de49293708fdfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbaa4001aaeec3f18ffd95a29c4605ce2b63589e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc21fe1ad7fd77e782669751e486a3e5ab141eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc2be60668b0ed00d3e4fddd8f2794bfda566661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbea2ce3a63ae2778173eedc38f6c9f27a6e55ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc127c47e07c88d51027cdead29593d24c0335983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3599b12bf137cd4252a0434cb7658b995180856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc39d0cf67a7f7ee6cfdc9fc823c2598c6532ff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3d837754df389d4a419298a643b6afbd1edf21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc51b977018b4be50e4f30b8ea161e140d6e85db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8ba6e1ddd5827fafde4967ebf82b89a4055ba05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9757e7aa6806b8b31d532e768eab6630732b872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca280b8eaa92ddf0ced97f31987df0449300748f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb51dd5db78be005e7823ebb6116b4c74f64db6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3987c7c2ea8fe7fb087934a192c39c4177f316b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd79a9eb521b871f80cd29e7223206eab74832f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb98a5fea017ddd572fd2c8b17e02a9dbdaaae3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd0c1bc1ddad76cfbaf2666d02c3e7b3e61d323c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddc131e9daf52920588c6c3058daeae26cbd54c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdde8cd947665c4827a274ff00125aa908e8d5b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde20cfa6b44767767703569ca70505db51611d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe066f0fd1706ceeac6ee10a4c141ce45f6560947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe13fdad37480502028987b70f104490efe7ac176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe150e2a4b71e61abf249132e82e9bc8f53105fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe40028a15a3133658b22e0efac0cd5df8c83f1be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8ac6328cece17771d968d5b6ccff21f967bf8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe94722dc1562ab194000ff3a54639149369d61f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9afd22b66d5d80eb6c9bd4362cb71cfa1eb7885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea2b9090b209f0836912c6cde2192341513f5c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae88713d0d8f7446bc250689ff337f4de840995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1a3e29020b34622c8a79ecc2a7b0bf0159c8377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6ec8ac691fa2cba646de58148427e7a8ca9a618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9139312e668ee8011f6c594ba24271ee5c913d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfae0adea40a69c027c9ea51e618fbc7b8ba76c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb7133858c04c00922b70ed8da73964861f8b89f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcc74f31a3b830876489671bcffe4181b5c93600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfed2c615dfb0237b57f96279ecdceca4af89f0e6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 346
- Live contracts: 0
- Unknown liveness contracts: 346
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=346

Showing first 200 of 346 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x03afbc04c44d648dd59fc9cafb2b00730bf42593` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d13f57f94f58b69e9cd1335fb60fea834dcb38f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f860271ba074392e896a67a23cdb488b27e2b31` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x11e4f9a91ee33c5bb789e250148717c0a23f1312` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1785d388b690018b14a7f3adb0de1f58524130f6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d984bba8ad7b790a4ea479015d9b722588377e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1da6991b27637bf4e78ea5d12e5c12f4bd7dfbaa` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1de51f83f2042b6dbb5e7601801dd6e5d4f4944a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e1977a9af4f36173073ea32117601d7d9cce4c6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e60f80c151e8e726d2ab72f77d01e08896b8680` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2007f0786633c71802ffe9cad3e98259bb0a753e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x201e3c8bccbb6e23710fedab9a28e806ef3240eb` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2836f2544b5bd270c5f78ccf961befe12646819a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x291521205f8deaf167118efc03279c8cf80db684` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2daa2dc0651f9e019f1860f0bf04b77c3fad6110` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2dc50bb5d133c3403d8c57f4bdd8401e099b7c75` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2dcb6d225cfef8fa47dfa5e876b8bdbe646324d6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2e783368d0ff74c142ea41e9f339ba925d6ce975` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2eff45555dd9c7694ac61b10d35d0cd88f4a9738` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2fe32c69f454af7ce306c6f4d1499933ed4decb8` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ff22e6faf09c5b6a6a298f4fe50e0d5d4829c75` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x307dd3c535afc185d6d2a482ddb093b6fe203382` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32eb86ad4fc9207dcdf3ee18ab1f674b169dfd63` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32ebe3aeaf6bec92a84c7b323160fc81a0150fbf` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x340691dead6508deef370fb85896e27b5d2e711d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3448263b315e73bcafc28296a41fe80e4ae49ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x354e079cf4a4cba5c5e2f3599e271fe52f8582b2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35ca54e46d2949f86b7928559e2f82c6887d7d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3973cea08111bd10952c14d6ef9bb9efb1eab624` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x397840e23b9467c9acd584ae9d14743a545ef4c1` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x39bf78b4cc46f3f2f8961a85b1d0fa11cc39eb4c` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e311192474784de132c88073fdb64bb94984607` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e3bf9c464c38a1a330aa160a69e9980931a6ef2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3ef46edf66fec8bac5af02109ee13bde85cc80b9` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44fddd7f982b4c5cb2b13fc8d3843607cb1a833d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47b882755896b0f091a5c685bbb5f5c8f689be72` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x498f7bd9029ca60537c4f5ce60ee5537460f67c1` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a425730f09444f3c48166de76f03d1ef1d13f29` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ab3e19bd46387e70e8997a6e2aeadb5e682af13` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b12d392868835ec165912c130bc407736e8015f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c9cf94a69dea98bd412ff6173a61f7934cabb6a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4cb9289b27faf51d1fc9e434d5384b376dbb48c0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x505c78ba9f9f0312c4009198ff653d97a84532ee` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5211cfecc56599a470c45f1efa5bbed2bc57a3bd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x54f138c93790a26514bcb551a4fa1e23f130d19f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58b637a5c994c2e822e5d4949d1a90b1778ead5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5adb96e1728eb6493c2e0033ec70f829cad83b1b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b6add4ef31e54a54fb4ab0c49b173f660bff353` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5dccf94da59aa0bce7eb99a91f995907453da684` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5e132b88b6380ab383c646a66b3b09d8c0cb978b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f816b667f99cf232826f2fd7ee5b7f58309f33a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x614d70794f1bcb2674a3686a646e7c59b2b51eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6243880bbc74a966a1c123c9c61b0f67d0bbb959` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6258272d564b2e10605014e3a45f2adcf6d312a7` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62f8adce22088b4a1880ae500cc631e4850ae46b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63ac354e2feb176940755eaba9edb1e8b0c69a7e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x643205affd613ae21dc01aa9106e345c65e6d847` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ddf9d0ee78dc91b0e0029c6aff4d75c595a2d57` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70a055194cc83f83528604aa77b29623bec01c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x72cfdb07976d76a1e0030ad143c7ab54617e397d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x763e96d98c87e5b838bbf2c557802788e5fc831d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x786e39974e6e0ffe96981a6b8f5af2608a0d8dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b6e745f7214a4accf5b61f2e0067b2a5946eb39` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c273d65204db6e660cf764a54ca7b68e936aee5` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d7638756f27e1b51ed592eedab9adaca4b3d6f0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7e168ecc040a4287dc78099d9bc85e46adfea00f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f383c5c368e55e2826b495ade139743b1f6e1b8` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7fb5dc022e060ba04f1939cadb602b92fa0db76a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7fb79bda14b61e2ae72767ef19fb6bc01b732c8f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ff3de80c3c94c8db64d555adf7573b3ab8cfeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8078e46cb27d6c445363a332c2089356f7af12d0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x830739140d2fb18ab1776adb1fb863961f63cdd6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8562afd9660c59d7d00fcef49e59975845d8e641` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x884495f231671d782c53f4a9ec5292b11a97995d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bb42db6d86132fcc4af8fa7f10ea8c77d60bbe2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8ca9f25973c735b9b4532a5fb66df9f46e68a2ea` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8d71ff831bf0f4b9363a437f4ba6938e41bd930f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8dfd18da0460b045a041992f459abc846c3fcd7a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e6115078615d5f2d6f0d47c48796774797a3666` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8ef6af9a88f3c1cf677a5a73e1dcf44f5eaa28c0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9175cabbd4e7224d6a2cace996a7d0f556a338ac` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93e466c267887754f235daa95761c87902ad3fc0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x948d45a88efc1a6811c4a1a1435e738575c9c717` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x950ecc60d1f97f2d1df9358cb1d5cdcc1fdb3185` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97212cbf2d1f64f7acb2ff72372da070e3c3ba40` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97f2489ca5ce747c0d4343e09e2202bc82c565a1` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x98a1e19822dadc56cf10ca20114fa3d5bf1c1447` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a48fbae7ea2fcff94bd17193a3d763501c776f5` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c24a00673badc4469cc05a85c4c1ceb1edc9363` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c7c88718e168342bf357d3db16ab654e183ef69` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d1808ca9f22e08c17db60c0f8e3542d9b4eba11` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d86198a7355c23220abf557f430c7a3d2b2ea55` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa100f5d23cc261c155728b008aaded68a48992cf` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1df20fd492d20dd8c1edb539dfaf5aae3db4335` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa369f9d6654664ac5ff988a853fa429778081211` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa416f7b2e563e4106a222eec78a9ae511cc8dfee` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa628861a4bfb3be4004476a52f311232a4fe6662` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6bc999049090800460cbb7dde19dab1bf40a218` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa87894e4da791788ed11c85e356ed6a66bb66356` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaabefe3110587f27814ca802e223a1fda9402e63` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xacf6b2bb6e66124fb56f97943f0eb070075aaaf6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xad8e4d9cf1898b6dc6988bf704f331341654bed8` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xafc9beb9f0153ac376b54d23c1a6eea88c7dac33` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb17ed50d2d5c3cacaf5b81e89c15b95b7ce2cfb5` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb1e0aa98fb7844fa384f032bba3d60355b94bfcd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb65c0a9b38c40ac79e71bf1184de49293708fdfd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbaa4001aaeec3f18ffd95a29c4605ce2b63589e2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbc21fe1ad7fd77e782669751e486a3e5ab141eea` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbc2be60668b0ed00d3e4fddd8f2794bfda566661` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbea2ce3a63ae2778173eedc38f6c9f27a6e55ea8` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc127c47e07c88d51027cdead29593d24c0335983` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc3599b12bf137cd4252a0434cb7658b995180856` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc39d0cf67a7f7ee6cfdc9fc823c2598c6532ff4d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc3d837754df389d4a419298a643b6afbd1edf21c` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc51b977018b4be50e4f30b8ea161e140d6e85db8` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc8ba6e1ddd5827fafde4967ebf82b89a4055ba05` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc9757e7aa6806b8b31d532e768eab6630732b872` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xca280b8eaa92ddf0ced97f31987df0449300748f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcb51dd5db78be005e7823ebb6116b4c74f64db6b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd3987c7c2ea8fe7fb087934a192c39c4177f316b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd79a9eb521b871f80cd29e7223206eab74832f72` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb98a5fea017ddd572fd2c8b17e02a9dbdaaae3a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd0c1bc1ddad76cfbaf2666d02c3e7b3e61d323c` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xddc131e9daf52920588c6c3058daeae26cbd54c5` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdde8cd947665c4827a274ff00125aa908e8d5b0d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde20cfa6b44767767703569ca70505db51611d61` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe066f0fd1706ceeac6ee10a4c141ce45f6560947` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe13fdad37480502028987b70f104490efe7ac176` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe150e2a4b71e61abf249132e82e9bc8f53105fc2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe40028a15a3133658b22e0efac0cd5df8c83f1be` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8ac6328cece17771d968d5b6ccff21f967bf8a2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe94722dc1562ab194000ff3a54639149369d61f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe9afd22b66d5d80eb6c9bd4362cb71cfa1eb7885` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xea2b9090b209f0836912c6cde2192341513f5c43` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeae88713d0d8f7446bc250689ff337f4de840995` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf1a3e29020b34622c8a79ecc2a7b0bf0159c8377` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf6ec8ac691fa2cba646de58148427e7a8ca9a618` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9139312e668ee8011f6c594ba24271ee5c913d5` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfae0adea40a69c027c9ea51e618fbc7b8ba76c75` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfb7133858c04c00922b70ed8da73964861f8b89f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfcc74f31a3b830876489671bcffe4181b5c93600` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfed2c615dfb0237b57f96279ecdceca4af89f0e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x0e1bb2a458db603ec57279126e6b1362433569c5` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x12599daf2b3960dd49b3102fb6719440900c3801` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x1a842a4f6c9fada6230581cafbe6619d4b3aba7d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x1b37b54d38421e7bdbd3d886a395a87167cb3164` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x1caa707a30e6b844e917fd544e6e7b8b25b286db` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x1d984bba8ad7b790a4ea479015d9b722588377e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x1d9aafd68c9f8b5f6deb25c8243e86c31ea9f102` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x1e3209ca0eea83f59da55a9d15f9596800889116` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x201e3c8bccbb6e23710fedab9a28e806ef3240eb` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x21d5b4352878415846785b923622b504d65cd5df` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x291521205f8deaf167118efc03279c8cf80db684` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x2b10166f90ca57dc96d4c55535cee336600dca5b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x2c61448f25ce976f7d41e523fcb038de25eec61a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x2df1200660fbb6ae1b3d64bcb88988ceaccb0fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x2eff45555dd9c7694ac61b10d35d0cd88f4a9738` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x2f78131afff964e93d488ef3343d46ed62682cbd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x32ebe3aeaf6bec92a84c7b323160fc81a0150fbf` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x356a77bbcdf2508ec66680a014bed84ff0137ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x38937bf34cbcd47365fad021127010f07e7e742b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x43407431359bc41c98f6ee2f3b4f697c29fadccb` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x448d6c7dea14ace296a99548b46b90555a165eb7` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x45ee32b1aebb027c0aa9a77be90434eb34c1f020` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x4754ded4243af1ee22f06d54a03b82a245e944ef` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x4a99e378aba5b3636d44dae0f8e8d5db542566ae` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x4cb9289b27faf51d1fc9e434d5384b376dbb48c0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x4f5d08b5f64204ea456674b8e3600cdad65fbd9e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x5ce39dcef3c9fa0dc40f6489c9c954aa5701f7e2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x5e672af2d78daabbe8a8bf52d4d921a5c2dd41a4` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x5fd182547bdabd26e2e2465c5602b0ec99180cdd` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x606799356dd5dbb3cec1afb1b7f8718aa398d678` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x60a4bfd69e12f99522d7c3d4c58b6e7a7ee8a309` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x61413c73f428cabd7cdc1232b4b34f5e0ac5870e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x614d70794f1bcb2674a3686a646e7c59b2b51eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x64b7e07d9361a4f9d038f589dd98fd4d260c9b5e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x66de700bb7f6448059b36ae2295c8dbd6591d1db` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x6886ace376e39fabe58a4406cb535a72efe48e4a` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x6df81526f93cd5c66b2b509baeb91bdb832c9a85` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x6f5305a1557b1b01e1750833f2a9c82ed7c3f7cc` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x705809c1596c0274f02a4d72d9abadad2fcaac7b` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x70a055194cc83f83528604aa77b29623bec01c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x70fb774b3263d16f2bc70503436c8c7934fb3c9e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x75e12c3f3eaad56bf68b28206d42bbd014db1db7` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x7b888a1820da51d97796326254bb15715d7e4262` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x7d165149bdc4a15891f5f0fbc527e7be430da3d2` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x7eb3f25188d74142dfc261e51674e2dfe8c2efbf` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x86191d128db7406dd679219bb594caececcaebe4` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x8ba76eddf6a3f3f3654de3840a1d5a4161216a64` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x8d71ff831bf0f4b9363a437f4ba6938e41bd930f` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x9a816dbb1ff161f59a6fe0b84faddd23400e2b5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0x9fb017e0545ea582300a6697c2f2eb27f04b7300` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0xa29c3a026860dfbd086cfa30556a9bb52611b43e` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |
| base | unverified unclassified | UnnamedContract<br>`0xa3e0688036d4c8d301f5a1e0b162fa157dfd0814` | non_address_book | unknown | unknown | unverified | n/a | `0x0d3e7faacf6e3ead3121afc8f9c6f8f4245c1627` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf (also discovered via alternate URL)](https://2898747492-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fam6xzGQtSU5N7yZGyGed%2Fuploads%2FLA452vR32YgoDQOejJWc%2F20250919-MoneyFI-Final-Audit-Report.pdf?alt=media&token=70d0fa74-85a7-44d7-bd9f-b5a33786c766) | MoveBit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf (also discovered via alternate URL)](https://2898747492-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fam6xzGQtSU5N7yZGyGed%2Fuploads%2FqRjyhPQBZHT9D7TXDcAt%2F202507111748-MoneyFI-Final-Audit-Report.pdf?alt=media&token=b84e2cde-9577-4725-a354-64209d034455) | Beosin | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MoneyFi Aptos](https://moneyfi-1.gitbook.io/docs/security-and-risks/security-audits/moneyfi-aptos.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MoneyFi Universal (EVM)](https://moneyfi-1.gitbook.io/docs/security-and-risks/security-audits/moneyfi-universal-evm.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21400] spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf — no match: Extracted 9 contract names from the 'Files in Scope' table. Audit date is the report date: Thu Sep 18 2025.
- [21401] spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf — no match: Only one contract, MoneyFiFundVault, is in scope. The Router contract is mentioned as an external dependency, not audited.
- [24246] MoneyFi Aptos — no match: The provided text is a documentation index page with a link to an audit report, but the actual report content is not included. No contract names or audit date could be extracted.
- [24247] MoneyFi Universal (EVM) — no match: The provided text is a documentation index page with a link to an audit report, but the actual audit report content is not included. No contract names or scope information can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_tapp | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_thala | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_aries | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | storage | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | vault | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | access_control | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | strategy_hyperion | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf | wallet_account | unmatched — not counted | — | listed in scope table | no |
| spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf | MoneyFiFundVault | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 346 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [21400] spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf
- [21401] spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf
- [24246] MoneyFi Aptos
- [24247] MoneyFi Universal (EVM)

Fork inheritance lineage and inherited audits are included when available.
