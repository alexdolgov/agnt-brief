# Agentic Audit Brief: LUSD ChickenBonds

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 6 audit(s)
- Eligible audit results: 7 (6 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: LUSD ChickenBonds (`lusd-chickenbonds`)
- Website: [https://www.chickenbonds.org](https://www.chickenbonds.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 332 unique implementations (334 raw deployments)
- Coverage basis: 3/5 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,499,600.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LUSD ChickenBonds. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 2 core, 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (2), unclassified (2), supporting (1)
- Contract kinds: contract (3), unclassified (2)
- Detected standards: ownable (2), erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BLUSDToken (`0xb9d7dddca9a4ac480991865efef82e01273f79c3`, chain 1)
- BondNFT (`0xa8384862219188a8f03c144953cf21fc124029ee`, chain 1)
- ChickenBondManager (`0x57619fe9c539f890b19c61812226f9703ce37137`, chain 1)
- Vyper_contract (`0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c`, chain 1)
- Vyper_contract (`0xda0dd1798be66e17d5ab1dc476302b56689c2db4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 325 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 332 unique; 327 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/7
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 325
- Unique implementations: 332
- Raw deployments: 334
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 3 | 42.9% | 2022-10 |
| Dedaub | Tier 2 | 3 | 42.9% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BLUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245800 | `0xb9d7dddca9a4ac480991865efef82e01273f79c3` | ✅ Audited |
| BondNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-245799 | `0xa8384862219188a8f03c144953cf21fc124029ee` | ✅ Audited |
| ChickenBondManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-245797 | `0x57619fe9c539f890b19c61812226f9703ce37137` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xfeb4acf3df3cdea7399794d0869ef76a6efaff52` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5fa5b62c8af877cb37031e0a3b2f34a78e3c56a6`; ethereum `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7`; ethereum `0xed279fdd11ca84beef15af5d39bb4d4bee23f0ca` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245798 | `0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245801 | `0xda0dd1798be66e17d5ab1dc476302b56689c2db4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (325)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ad96b511f501c1bdab362c5c044ea8279846713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb5727a6a8cb8a01c1b693d7a18119a3542dc42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16240bc4e1e82525c67faf01fa8ffb15e2fc50e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba08cfa34122a1462dfc903ad2219a73ca6ce1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2391a261217c93d09ff3ae9ab1903ea237bda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20658291677a29efddfd0e303f8b23113d837cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c1ae31cbfbb3ca077db4736663c2e1066614bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a1999513b743ad83596ae72edc7cda23fbec314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d31b5be00575a102e96553f9dc97743a8bc2fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c329e6c2a3f1c67b298e1891370544630fc88ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x411949abcaaf0a476d557ad19ae82f4e34142736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430dcc1902920823c12bfe6404e677e1ce53956a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4af9f911d825c2acba58d4e7eb4ae09795710022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d7a5a57a33e9ac924a1a795bfbbfc309804ff95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51faf963880dabe40ee82e79a1af0a90a156b312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x545ae1908b6f12e91e03b1dec4f2e06d0570fe1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55b65dc72db0ddc858adb1dd097eea89546d395d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595c33538215dc4b092f35afc85d904631263f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d49599f6ce3fe92c358055486ab21fdcd8f52f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c0b047133f696334a2b7f68af0b49d2f3d4f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62882b7c0b2931b180b16044bfc5ea3fe8808568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66506b0a93ac7f420ed2fe8f53548142dd390148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea66d267234dc5abfcc9885765a1e2e50073a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x712eda4e2816574e3ca1f123e22f762bdeb40e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x743377926033cad0770e0f2b0d4cd33d7430fd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f7774139bf0097d2882c41af5a37717e3641a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798a3fa03d6f6db94537033d0ab7db4bef54fc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7999939436e5c6b1ae36e47f92d1200df99e506c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bfcc1629fd6a84e8913ea9c767baef46dd31754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b80cb930c33d0abcd94227725ef4bc4905a9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877156b9400807a00c87e21316903552759fac49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89058630b53228adcc77690586cfb3c74f08803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x893e606358205ad994e610ad48e8aef98aeaddbe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x896d8a30c32ead64f2e1195c2c8e0932be7dc20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d849f291979034efcfa38a57cb05ec13e7bf8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x91678e87e220855cb4ec169abdc9e7b5f3dc0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933b774623bf7dd40351b79d2b589f7b09be5fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93aad8d9941b0c034aca21f2a2c5317ec1397ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98b994de6da51c43f1710e92f949854246726122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06b456fb3108a43b305919cd61c03e12bc7864c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb185a192e5e9ce5ea2204dcfee0f4467008d4216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1bc8b14ac9576d34225dbd6c09dd88a28c064ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8643df25b6614ebd9e03144d12f53994e40e770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0da79a6a0f255ed6d31a8ffd719c19a52aa5a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96265c8748c8361d77fe99d42ae78aae63995a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca2f671cd71b31acd60e74a7c148715b053c7f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcba8e52ab11b3209ab55e28622371d9877058d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf4a95e684c8aeb42077a1312dafc98da64e1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d25d2c962ce628820a33118578eb7fe2f03b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2a4ca94f2de6593ec6f68019e313e1518f60560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d4f0ad337fca8d7628bbf4f1a2e1b3970b9d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0070f7a961dcb102e3d904a170613be3f3b37a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3637b3aaf5492c72b911656970339d410e0975e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe420cf281e567cb144838435bb5d6b482c102e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1cfef24f5b9d287f702ac6ebd301e606936b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38ab1e51536cf5e4b0c83f83f1e6026b869188d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf80678718187a9e29e63a1f5af61369ecc8a8a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa27cdd5328979e85b440f1c7d56c8a5372f9ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa4a0f86d13880185e85490410d212c65ea4795a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf1468a6b04307927d83def4106dd64839b353b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 324
- Live contracts: 0
- Unknown liveness contracts: 324
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=1, unverified unclassified=323

Showing first 200 of 324 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | exact address book overlap | UnnamedContract<br>`0x91678e87e220855cb4ec169abdc9e7b5f3dc0187` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ad96b511f501c1bdab362c5c044ea8279846713` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0cb5727a6a8cb8a01c1b693d7a18119a3542dc42` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16240bc4e1e82525c67faf01fa8ffb15e2fc50e6` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ba08cfa34122a1462dfc903ad2219a73ca6ce1f` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e2391a261217c93d09ff3ae9ab1903ea237bda8` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20658291677a29efddfd0e303f8b23113d837cc7` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21c1ae31cbfbb3ca077db4736663c2e1066614bf` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a1999513b743ad83596ae72edc7cda23fbec314` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d31b5be00575a102e96553f9dc97743a8bc2fc2` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c329e6c2a3f1c67b298e1891370544630fc88ac` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x411949abcaaf0a476d557ad19ae82f4e34142736` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x430dcc1902920823c12bfe6404e677e1ce53956a` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4af9f911d825c2acba58d4e7eb4ae09795710022` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d7a5a57a33e9ac924a1a795bfbbfc309804ff95` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51faf963880dabe40ee82e79a1af0a90a156b312` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x545ae1908b6f12e91e03b1dec4f2e06d0570fe1b` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55b65dc72db0ddc858adb1dd097eea89546d395d` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x595c33538215dc4b092f35afc85d904631263f4f` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d49599f6ce3fe92c358055486ab21fdcd8f52f3` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60c0b047133f696334a2b7f68af0b49d2f3d4f72` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62882b7c0b2931b180b16044bfc5ea3fe8808568` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66506b0a93ac7f420ed2fe8f53548142dd390148` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ea66d267234dc5abfcc9885765a1e2e50073a2a` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x712eda4e2816574e3ca1f123e22f762bdeb40e07` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x743377926033cad0770e0f2b0d4cd33d7430fd56` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76f7774139bf0097d2882c41af5a37717e3641a7` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x798a3fa03d6f6db94537033d0ab7db4bef54fc2e` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7999939436e5c6b1ae36e47f92d1200df99e506c` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bfcc1629fd6a84e8913ea9c767baef46dd31754` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86b80cb930c33d0abcd94227725ef4bc4905a9bf` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x877156b9400807a00c87e21316903552759fac49` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89058630b53228adcc77690586cfb3c74f08803c` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x893e606358205ad994e610ad48e8aef98aeaddbe` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d849f291979034efcfa38a57cb05ec13e7bf8de` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x933b774623bf7dd40351b79d2b589f7b09be5fc2` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93aad8d9941b0c034aca21f2a2c5317ec1397ee2` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98b994de6da51c43f1710e92f949854246726122` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb06b456fb3108a43b305919cd61c03e12bc7864c` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb185a192e5e9ce5ea2204dcfee0f4467008d4216` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1bc8b14ac9576d34225dbd6c09dd88a28c064ff` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8643df25b6614ebd9e03144d12f53994e40e770` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0da79a6a0f255ed6d31a8ffd719c19a52aa5a36` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc96265c8748c8361d77fe99d42ae78aae63995a6` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca2f671cd71b31acd60e74a7c148715b053c7f05` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcba8e52ab11b3209ab55e28622371d9877058d30` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcdf4a95e684c8aeb42077a1312dafc98da64e1fd` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1d25d2c962ce628820a33118578eb7fe2f03b98` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2a4ca94f2de6593ec6f68019e313e1518f60560` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5d4f0ad337fca8d7628bbf4f1a2e1b3970b9d94` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0070f7a961dcb102e3d904a170613be3f3b37a9` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3637b3aaf5492c72b911656970339d410e0975e` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe420cf281e567cb144838435bb5d6b482c102e63` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb1cfef24f5b9d287f702ac6ebd301e606936b54` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf38ab1e51536cf5e4b0c83f83f1e6026b869188d` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf80678718187a9e29e63a1f5af61369ecc8a8a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa27cdd5328979e85b440f1c7d56c8a5372f9ae0` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa4a0f86d13880185e85490410d212c65ea4795a` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdf1468a6b04307927d83def4106dd64839b353b` | non_address_book | unknown | unknown | unverified | n/a | `0x9b5715c99d3a9db84caa904f9f442220651436e8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x002688c4296a2c4d800f271fe6f01741111b09be` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01c6808eb242c826d32f03712d66d5e613782363` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06ce8086965234400fdecab190b115c2c0717047` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07374b547cae235227635c13266c69847a3e46fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0901b541beff2cd44859701619e245e82f48e62b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce658f9bc3af831271199578449810023dba703` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18672b1b0c623a30089a280ed9256379fb0e4e62` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x188041ad83145351ef45f4bb91d08886648aeaf8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a783886f03710abf4a6833f50d5e69047123be6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2869e74a15d3c0c797b04feaef93734060a4477c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a28789645776eaa95f6d491ff375781ea5b40dd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ef4b38a128ecc1ac06b43055553f95af59523de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31aa15da826da3311788b208d31cae34074d1dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x326fe113a130c569b44aff93b3637f3ac956ecdf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32facb5a46e02decaf5f939ab12c123eee203a5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x368440b3121f32df336d393834eafd8fa787c4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x387177b33830f48199110f186f47797c66556b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38e7627eb98a40e7528bcce709a80083093ba2f8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3910dce33441360e4c1d2749afa08e1a59af2546` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3993d34e7e99abf6b6f367309975d1360222d446` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a283d9c08e8b55966afb64c515f5143cf907611` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b38ce23799dc56664ff6048892510abffdb7a25` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40745803c2faa8e8402e2ae935933d07ca8f355c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x409893c94aad411030e5a78fd39b015221dfb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4169ef3b885416bd553567e78585a97ee52ba700` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42b9dea10b51a696949715797bdfd69489fc3b32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c5d4f542765b66154b2e789abd8e69ed4504112` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cb152b45e667f86a0470776bed0be93a5f1c534` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50996c7e748b1b83130b4854945d86ba6fc81f06` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50c39ea8f3d72310c8b56a56b333994266e9b477` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50f35f4fd499898801282a415f4c3a689663719f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x528baca578523855a64ee9c276826f934c86a54c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52a430b5b7407fa103c5ae974744e4cc945354e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5bea27d52e36c58dbce2921773396f33f2bd780a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e0198c158276efaebc5a32c8351fb5d679d4288` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60b1b1f20373005030095fbe7cde032625fc96c2` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65a8b215f34df5c30c64523d638ea698065ffa15` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69aafff1218ba086ac782f98cb8399d1226e2af3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b765d07cf966c745b340adca67749fe75b5c345` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70a1151e0bb32484e25c107e3a69886a8361482e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70fc957eb90e37af82acdbd12675699797745f68` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72de985c5af6f96f3be22784b5533218421e6394` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x747459fc40d80a500440f9d650818f7fa5754acc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7624c0dd4f5d06d650ddff25ffec45d032501260` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x783128730280053ef00f675b777288e80565f26a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7af331398dc340bf327904077eb68f27f75a9693` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c868f045a60501a2f4159446545939771dda323` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x818709b85052ddc521fae9c78737b27316337e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x832f436ad2813c76aae756703cacb5c1028d11da` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8484673ca7bff40f82b041916881aea15ee84834` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89086653f185a0431d24043d92772942c141bab0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89ac9a0b48fc66875de710ab7ee53027970064dc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [B.Protocol - Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/B.Protocol%20-%20Chicken%20Bonds%20Audit.pdf) | B.Protocol | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBond.pdf) | Coinspect | Audit | 2022-05 | stale | Direct | n/a | matched | 3 | 0 | 0 | 19 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%202nd%20v220803.pdf) | Coinspect | Audit | 2022-07 | stale | Direct | n/a | matched | 3 | 0 | 0 | 14 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%203rd%20v220929.pdf) | Coinspect | Audit | 2022-09 | stale | Direct | n/a | matched | 3 | 0 | 0 | 21 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%204th%20v221021.pdf) | Coinspect | Audit | 2022-10 | stale | Direct | n/a | matched | 2 | 0 | 0 | 2 | n/a |
| [Dedaub_Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Audit.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | n/a | matched | 3 | 0 | 0 | 2 | n/a |
| [Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Delta%20Audit%20(NFT%20additions).pdf) | Dedaub | Audit | 2022-09 | stale | Direct | n/a | matched | 3 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14520] B.Protocol - Chicken Bonds Audit.pdf — no match: Scope explicitly lists four files: BAMM.sol, GemSeller.sol, GemSellerController.sol, UniV3Twap.sol. PriceFormula.sol excluded. Audit date from title line.
- [14521] Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf — matched: No reason recorded
- [14522] Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf — matched: No reason recorded
- [14523] Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf — matched: No reason recorded
- [14524] Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf — matched: No reason recorded
- [14525] Dedaub_Chicken Bonds Audit.pdf — matched: No reason recorded
- [14526] Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| B.Protocol - Chicken Bonds Audit.pdf | BAMM | unmatched — not counted | — | listed in scope | no |
| B.Protocol - Chicken Bonds Audit.pdf | GemSeller | unmatched — not counted | — | listed in scope | no |
| B.Protocol - Chicken Bonds Audit.pdf | GemSellerController | unmatched — not counted | — | listed in scope | no |
| B.Protocol - Chicken Bonds Audit.pdf | UniV3Twap | unmatched — not counted | — | listed in scope | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | BaseMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ChickenBondOperationsScript | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IBLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IBondNFT | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IChickenBondManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ICurveLiquidityGaugeV4 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ICurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | ILUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | IYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | LUSDSilo | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockCurveLiquidityGaugeV4 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockCurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | MockYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | StrategyAPI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf | console | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | BaseMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ChickenBondOperationsScript | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBAMM | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBondNFT | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IBondNFTArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IChickenBondManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ICurveLiquidityGaugeV4 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ICurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | ILUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | IYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf | StrategyAPI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | BaseMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ChickenBondOperationsScript | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | EggTraitWeights | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | GenerativeEggArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBAMM | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBLUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBondNFT | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IBondNFTArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IChickenBondManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ICurveGaugeController | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ICurveLiquidityGaugeV5 | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ICurvePool | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ILQTYStaking | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ILUSDToken | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IPickleJar | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | ITroveManager | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IYearnRegistry | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | IYearnVault | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | SimpleEggArtwork | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf | StrategyAPI | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | BLUSDLPZAP | unmatched — not counted | — | — | no |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf | ChickenInArtwork | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Audit.pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Audit.pdf | BaseMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Audit.pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Audit.pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Audit.pdf | ChickenMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | BLUSDToken | own contract | BLUSDToken (selected) `0xb9d7dddca9a4ac480991865efef82e01273f79c3` — deployed 2022-10-04 13:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | BaseMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | BondNFT | own contract | BondNFT (selected) `0xa8384862219188a8f03c144953cf21fc124029ee` — deployed 2022-10-04 13:03:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | ChickenBondManager | own contract | ChickenBondManager (selected) `0x57619fe9c539f890b19c61812226f9703ce37137` — deployed 2022-10-04 13:04:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | ChickenMath | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | GenerativeEggArtwork | unmatched — not counted | — | — | no |
| Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf | SimpleEggArtwork | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda0dd1798be66e17d5ab1dc476302b56689c2db4` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 325 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 66 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=17

Zero-match audit list:

- [14520] B.Protocol - Chicken Bonds Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
