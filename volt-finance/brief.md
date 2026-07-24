# Agentic Audit Brief: Volt Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Volt Finance (`volt-finance`)
- Website: [https://voltswap.finance](https://voltswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 166 unique implementations (166 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $250,637.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Volt Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across base. Structural roles: 17 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: unclassified (17)
- Contract kinds: contract (11), abstract (6)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BribeFactory (`0x722ccb55ab1752796cf34c12d1ea7083158ecaf9`, chain 8453)
- ControllerUpgradeable (`0x8170b318b359d85f1c91970a140d756dcd106713`, chain 8453)
- ControllerUpgradeable Impl (`0xdb8e585e8a9a7dd00e201dc288e1f7b08fd34eef`, chain 8453)
- GaugeFactory (`0x5abeaf061f81bf966f7ac9bb2ad16bf9e421cca2`, chain 8453)
- MinterUpgradeable (`0x87ae7d4853febd2c3450e6d85c5233aa9e7186a5`, chain 8453)
- MinterUpgradeable Impl (`0x86fddc06abb5b0a0f2cbcc133880a55f80038cb8`, chain 8453)
- Multicall2 (`0x96ffa1203e4479f6656a21e5f00eec284dad7141`, chain 8453)
- ProxyAdmin (`0x54d5ea62d3745831192ea9c2c03b520edc312b79`, chain 8453)
- SolidlyLibrary (`0xb407883637ef802b6d17fb65c722090933e18f26`, chain 8453)
- veBOLT (`0x61e2c1608b1caa59136bcb7845637858d216c3b9`, chain 8453)
- VeDistUpgradeable (`0xcb793ffd789470ab8da3653a3fcc91aaa55e9114`, chain 8453)
- VeDistUpgradeable Impl (`0x67355688b9ec9ec4a3178f022997f0dc3474d51a`, chain 8453)
- VeUpgradeable Impl (`0x93de053520d42b3f74281852bd56f232a4e643da`, chain 8453)
- VoltFactory (`0x2a5478be24f9e536ccb91dbf650efd6ce6c00398`, chain 8453)
- VoltRouter01 (`0x682521e88cc71a8d49a3635bab4468ad7cd7d208`, chain 8453)
- VoltVoterUpgradeable (`0x6eec5ff9736e619c376bd866ddf5937f3efbd4ca`, chain 8453)
- VoltVoterUpgradeable Impl (`0xb14900cc638f84a3e4f167a2776502c7bcd42cdd`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (16 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 146 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 17 of 166 unique; 149 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 149
- Unique implementations: 166
- Raw deployments: 166
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BOLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-396368 | `0x863656e346d8a42ec7caaad606611b6fd8916f32` | ⚠️ Unaudited |
| BribeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396366 | `0x722ccb55ab1752796cf34c12d1ea7083158ecaf9` | ⚠️ Unaudited |
| ControllerUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396367 | `0x8170b318b359d85f1c91970a140d756dcd106713` | ⚠️ Unaudited |
| ControllerUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396377 | `0xdb8e585e8a9a7dd00e201dc288e1f7b08fd34eef` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396360 | `0x5abeaf061f81bf966f7ac9bb2ad16bf9e421cca2` | ⚠️ Unaudited |
| MinterUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396370 | `0x87ae7d4853febd2c3450e6d85c5233aa9e7186a5` | ⚠️ Unaudited |
| Multicall2 | unknown | project_anchor | own_supporting | 0 | base | unit-396372 | `0x96ffa1203e4479f6656a21e5f00eec284dad7141` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-396359 | `0x54d5ea62d3745831192ea9c2c03b520edc312b79` | ⚠️ Unaudited |
| SolidlyLibrary | unknown | project_anchor | own_supporting | 0 | base | unit-396375 | `0xb407883637ef802b6d17fb65c722090933e18f26` | ⚠️ Unaudited |
| veBOLT | unknown | project_anchor | own_supporting | 0 | base | unit-396361 | `0x61e2c1608b1caa59136bcb7845637858d216c3b9` | ⚠️ Unaudited |
| VeDistUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396376 | `0xcb793ffd789470ab8da3653a3fcc91aaa55e9114` | ⚠️ Unaudited |
| VeDistUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396362 | `0x67355688b9ec9ec4a3178f022997f0dc3474d51a` | ⚠️ Unaudited |
| VeUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396371 | `0x93de053520d42b3f74281852bd56f232a4e643da` | ⚠️ Unaudited |
| VoltFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396358 | `0x2a5478be24f9e536ccb91dbf650efd6ce6c00398` | ⚠️ Unaudited |
| VoltRouter01 | unknown | project_anchor | own_supporting | 0 | base | unit-396363 | `0x682521e88cc71a8d49a3635bab4468ad7cd7d208` | ⚠️ Unaudited |
| VoltVoterUpgradeable | unknown | project_anchor | own_supporting | 0 | base | unit-396364 | `0x6eec5ff9736e619c376bd866ddf5937f3efbd4ca` | ⚠️ Unaudited |
| VoltVoterUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396374 | `0xb14900cc638f84a3e4f167a2776502c7bcd42cdd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (149)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MinterUpgradeable Impl | unknown | project_anchor | own_supporting | 0 | base | unit-396369 | `0x86fddc06abb5b0a0f2cbcc133880a55f80038cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0027a2a24cbda92ae0c03537c62595e9eb9532dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x025f40808b30721b964c1ba9210de05db361a20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0453dcb07fc787e33ad6dade04f0f168c48fd8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04c13c475223caeb3f23f4f4a69707d82c47da50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05e655eb84e4108d94ae0872822d4282de6a5f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0855723cb0e37ad7847e1268d0b0154e0905eed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a273bcbd6324f9bbafbab875476d0753b2de5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bad894e6c094ee78924982b09ee54b6e24af7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d0267e89189d73826aeaa1556ac4428c845e68a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1167e762541374febeea0f6ed2ad4473afa1ccea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12330179cf1168ff6aac765a8beaaf7ed8c0459d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x142017b52c99d3dfe55e49d79df0baf7f4478c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x144acfe24270501819d15dcc4ab8764fe298135f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14ff7d53274e7f4c88a7b5186893b0a2c5b5dc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15ad24216977bab37020195667cc9cc4daac5b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16d6a07ff0ea5d7aef73163599ae5a05b764cb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a604f1eedc34a858cb12e483aea62bf747830b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d49cc7701950dfea9c57f60fbf4e8a37f48f0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1efd729f049b0b0580a7d26767e0b307002e7bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f2ca038d3da31f852d02b6d4741fdca31f99ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fbfcd2010024c752119867a6ba883426e1781a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22f11906915da6c1f9dd5b9e42b9b0e661582a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23811c17bac40500decd5fb92d4feb972ae1e607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x238d804cb1f4c0c7495e7b7773c54d75e4c99cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2509bd3b69440d39238b464d09f9f04a61fd62c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25a12ef14bbd8f12c6bcb4a22d0d15621049ffa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25b4d4c6f869d11ddf67895ab9b8c9878028bd64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29688ddc25ecd3307aa4a83ca3abb18f6ad70738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x29d0d7e239415041924619b75fdcf3685b5a0656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dfa59ce6025fddfc8a44068380b71570f8f88c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ec9a2240f0efa32e8bf8c80817354106eb7c70e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3069b06324aafc0a97fb4186fcad9f5fb22eeb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30e148a79b898efa1ab1285f5eca71972a7e0ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3389ed4dd777b03b95deb2994acaf6807cf24c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x341fdb6532154cec491aca3d3bb404c2d4cc042e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36c379883c9a293e7ddf76031c4a0ad053eb4bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x393f5731d146343060df19a6132e651e401b4d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bc2860f3b0f69dbfbd3c78203451682548e934a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d31ece52d6e0bd803367f1b75ef3e8806744dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d9b5399059d36644b8b67860439af221c67b273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x424503f7a6e60131a912af4911dd1163596386e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4416be681265911a834c2a9b4241ba30374993a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49be9bbff2a5b8a005cfb1c41c01515f7f4ebf82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ad0a417996f6eb3439ae6d956a8e959cc532e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c86ff87a56573dde5786a185857bc0c580b6ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x549d0cdc753601fbe29f9de186868429a8558e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5573fc3650d2a38d1c83fadf682bc379cfaccfa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x56048c88309caf13a942d688bfb9654432910d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x574027c70abd7b25953b2cd060ed7827fd2c7b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b7d17413a238dd05fc036d02a79e67122aaf2a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ea97142b444c6ec5791a5f1c24a1265aa1fa40c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5fcb9f4d2c91cddc57334fc7716d69c8af687dbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a4570be892fb41280edfe9db75e1a62c70456f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60b8067cf3640bcc7c3b2cfbe6eac3c2ca40934e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x611375907733d9576907e125fb29704712f0bafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6345af6da3ebd9df468e37b473128fd3079c4a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64b975ded78b731e91c789571f48fc050aaa61e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x686d8265d57048000923b752c99ba8bc57c274cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ec4d0adba065d4bd775bb928776d15243c53663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f06a771104f22b006037313954ef289a1f26ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fee2c61eb225ac997dc2f8d4fc167d8c9f32665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71bd008bd6088b4e241a014e6f1b5c7d1b3c1ad6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-396365 | `0x71e60281614222354c6078625c73cec13a0dccab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x740e842ddfab6cda39933f72bb6aeaa172ab12b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7465fedb29023d11effe8c74e82a7ecebf15e947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76e479555bccb4a6bd3b97c736e8f805d374658a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x771c03869918f9bc067e86478127b9c6de7eda4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b1d6dda0cb59c0c87a3d07e97a66e23ae3af969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b5969bb51fa3b002579d7ee41a454ac691716dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e0691c6c7075fb99dbbc030bbed92d9a7709c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e7856b1ac3b6d18c941fe6f5e1f75e8c661343b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f1f91811c3b7d9f94c7a546b6b7a7cc82271844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f5a7ae2688a7ba6a9b36141335044c058a08b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f96ae605a74c4fb5f8fb187d58b9f22d9a9f469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7faeb1dd9e35603dfe427149b809271ea845d579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81093c1600488e58a6a6f31b7cd64e123994e61a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83db38aa8d165340012bb734bdd408c46a39d6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8725990c2e36dbc3c3a4bcc2002e0357c46386b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x873449359d2d99691436e724c6c219a39b159b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8aba1edf8e6eb5df3b0987722c83c8baf7ebc409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91942b802439f2169c36441ef3b250af6bac15bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92838d531ca08cfda274f66fd5674655cdc13d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x948af245a576aa02b4f07902ba4ecd76e0b6ce1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94ffeff526becce69bcc0578995aac73983b4c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95fd42ba81843d0030b0c802dce051693fa0a401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96a941bfdb0802404c8c77c764460ce5910710ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97a13d6ca76388489f0b8dbb0dc9d9800b9a6eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99b96511f4f0ebe6254c8f1bae8fac565a54eb7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aa55bcf3e41d0d98fce816c4ec6e791b0f6d154` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-396373 | `0xa023e6f6b4862ea38cbe45e377abd908abab2f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa144a8649619b963c1531e77fa963e39aa30c66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1ad8481e83a5b279d97ab371bccd5ae3b446ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2a8a4c5801dc9f9051b76d8da74c08ecd5d2bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa359c2cdd33d863703672ce4baa9a82fb644a533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4578ab5cda88aae7603afab24b4c0d24a7858d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa58ce5287fcd338bea5160ea2888b3ba80d81a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6d410d46e84249837fc1c44371f299a66dcdcb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9ea90899fa648b4ce49f6ae28174aeada660118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab883ff9ef68f54ccece0249c48ba1dd65265f1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacc69d0cacfb5af2c80a052ba5c53e6dc201a3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae1bb8aa05bd93b8d918d5c36cb088238fc11060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae3136539b32a561bcdc3fd5f847c6a13702956e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb28c8c2abf17243502eb28885455998e8b984b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb325bbf765ff4e65d38ba045d925b80b52f1a37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb330cae9c6207df60c2785b29f775dec0fe20026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb35e7eae725dbf1157f23117138345de334bede2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb376d6b1ceb11f7e7fbd60621132d4c716118be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5d58d32305ce7b955b5926bf6b567cd9fb42520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6caf3e116bc76e0d24e98f31cdbb7f23e0697ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb841b27eb2d80823222546fda5b33ec068ac8057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb995414772d163530086e269eee9aa8acf9f8ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc6590a7b15513e4d649b158393175a839f27ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbcb4f387412686126b19cd58a59075cf102936b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe618d2edd2c5aa262da74b245580f0686e6fa55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc157f665da751b6b60207f2248f000b0a67608da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3d3a755f391b40d94eed8283134c0323db49209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3e4e27b39f3d6d2df98a243e4f54742d1d54d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc538166a773b22c60ed3b3e343e506f3fdae0555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc8366ea06a711d452b22f09c0f850caa32b5847c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb764352c5014bdc02a0ff646fbfde42505b7357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc08a29128c5ecd4a83971019d7cfe609e4c40b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc727419975308db748c950ebcec7bb478a1c771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfa2aaf148cd8bf82a696c7e43610cd46db52592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfda1c9910fc074681f9d6e80b53736719fb91cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd16d4bbe76c873d8a1e499bf2aac91710165e3c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1edb2b521a9c1293ecafdd724af1875dd02d88b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3b36939822fa991925bbb6f1f31d36916947987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5bda72030d9531fb311ddfe09af5502c3492e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5eee630b58095a4655f0fc2b2600c88e9fd0e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd91db408945af2fe52e6d87b5d6d083920cf85b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb2ea284a4ec2c6433fba1e49c1f1334a86e3173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb7fe9c415281e383595c262e49568ddc18e8bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcb79f30d2e21b90c078100b0d0cb9cefe1c9d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xded795a8cf0784265a3a90613ad675879a0660b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf1d98a8a1439d348949c72abf3f678e8b0bf87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf66fb107e8927424603aafd556e6b1b39efce04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe056fab1ad20bf21cb4642b24427f3492c0f1a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5c9f0ee67a5c71678f256dcc349e5d962a3f56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe649fd017356d314e79649fbe5e20a9ec827d286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec2d55f444ed98ba69281c8ca6889bcbb682716f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee07f43d01a1cc28aeaed9bafb154ad897fcc838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf04b152d2e27b5d975a2eb6b7f39ea42a74841ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4db30e806609516d14cdb53d9bc306c99505451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7ed9a787696ca0823d5e0acba919e4039dc67c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9df1e0d8bbec7fcadeadebdba0e673ca4e15164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd6b00a33ba0e07318a6ec6f1e1979275c79d0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfeb721c719b5859760bcd4a497ee5a3ea85f1cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfebab92de1f2bfaadc63c920cdf8f9a5449ed841` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 146
- Live contracts: 0
- Unknown liveness contracts: 146
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=146

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0027a2a24cbda92ae0c03537c62595e9eb9532dc` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x025f40808b30721b964c1ba9210de05db361a20b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x0453dcb07fc787e33ad6dade04f0f168c48fd8b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x04c13c475223caeb3f23f4f4a69707d82c47da50` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x05e655eb84e4108d94ae0872822d4282de6a5f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x0855723cb0e37ad7847e1268d0b0154e0905eed7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x0a273bcbd6324f9bbafbab875476d0753b2de5e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x0bad894e6c094ee78924982b09ee54b6e24af7f1` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x0d0267e89189d73826aeaa1556ac4428c845e68a` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x1167e762541374febeea0f6ed2ad4473afa1ccea` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x12330179cf1168ff6aac765a8beaaf7ed8c0459d` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x142017b52c99d3dfe55e49d79df0baf7f4478c0c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x144acfe24270501819d15dcc4ab8764fe298135f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x14ff7d53274e7f4c88a7b5186893b0a2c5b5dc09` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x15ad24216977bab37020195667cc9cc4daac5b02` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x16d6a07ff0ea5d7aef73163599ae5a05b764cb90` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x1a604f1eedc34a858cb12e483aea62bf747830b5` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x1d49cc7701950dfea9c57f60fbf4e8a37f48f0f0` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x1efd729f049b0b0580a7d26767e0b307002e7bd4` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x1f2ca038d3da31f852d02b6d4741fdca31f99ec8` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x1fbfcd2010024c752119867a6ba883426e1781a1` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x22f11906915da6c1f9dd5b9e42b9b0e661582a26` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x23811c17bac40500decd5fb92d4feb972ae1e607` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x238d804cb1f4c0c7495e7b7773c54d75e4c99cdd` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x2509bd3b69440d39238b464d09f9f04a61fd62c6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x25a12ef14bbd8f12c6bcb4a22d0d15621049ffa9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x25b4d4c6f869d11ddf67895ab9b8c9878028bd64` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x29688ddc25ecd3307aa4a83ca3abb18f6ad70738` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x29d0d7e239415041924619b75fdcf3685b5a0656` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x2dfa59ce6025fddfc8a44068380b71570f8f88c8` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x2ec9a2240f0efa32e8bf8c80817354106eb7c70e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x3069b06324aafc0a97fb4186fcad9f5fb22eeb59` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x30e148a79b898efa1ab1285f5eca71972a7e0ace` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x3389ed4dd777b03b95deb2994acaf6807cf24c2e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x341fdb6532154cec491aca3d3bb404c2d4cc042e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x36c379883c9a293e7ddf76031c4a0ad053eb4bff` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x393f5731d146343060df19a6132e651e401b4d40` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x3bc2860f3b0f69dbfbd3c78203451682548e934a` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x3d31ece52d6e0bd803367f1b75ef3e8806744dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x3d9b5399059d36644b8b67860439af221c67b273` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x424503f7a6e60131a912af4911dd1163596386e9` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x4416be681265911a834c2a9b4241ba30374993a7` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x49be9bbff2a5b8a005cfb1c41c01515f7f4ebf82` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x4ad0a417996f6eb3439ae6d956a8e959cc532e54` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x4c86ff87a56573dde5786a185857bc0c580b6ef7` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x549d0cdc753601fbe29f9de186868429a8558e07` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x5573fc3650d2a38d1c83fadf682bc379cfaccfa1` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x56048c88309caf13a942d688bfb9654432910d6e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x574027c70abd7b25953b2cd060ed7827fd2c7b03` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x5b7d17413a238dd05fc036d02a79e67122aaf2a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x5ea97142b444c6ec5791a5f1c24a1265aa1fa40c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x5fcb9f4d2c91cddc57334fc7716d69c8af687dbb` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x60a4570be892fb41280edfe9db75e1a62c70456f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x60b8067cf3640bcc7c3b2cfbe6eac3c2ca40934e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x611375907733d9576907e125fb29704712f0bafa` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x6345af6da3ebd9df468e37b473128fd3079c4a4b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x64b975ded78b731e91c789571f48fc050aaa61e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x686d8265d57048000923b752c99ba8bc57c274cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x6ec4d0adba065d4bd775bb928776d15243c53663` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x6f06a771104f22b006037313954ef289a1f26ddd` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x6fee2c61eb225ac997dc2f8d4fc167d8c9f32665` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x71bd008bd6088b4e241a014e6f1b5c7d1b3c1ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x740e842ddfab6cda39933f72bb6aeaa172ab12b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7465fedb29023d11effe8c74e82a7ecebf15e947` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x76e479555bccb4a6bd3b97c736e8f805d374658a` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x771c03869918f9bc067e86478127b9c6de7eda4d` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x7b1d6dda0cb59c0c87a3d07e97a66e23ae3af969` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7b5969bb51fa3b002579d7ee41a454ac691716dc` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7e0691c6c7075fb99dbbc030bbed92d9a7709c35` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7e7856b1ac3b6d18c941fe6f5e1f75e8c661343b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7f1f91811c3b7d9f94c7a546b6b7a7cc82271844` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0x7f5a7ae2688a7ba6a9b36141335044c058a08b3e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7f96ae605a74c4fb5f8fb187d58b9f22d9a9f469` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x7faeb1dd9e35603dfe427149b809271ea845d579` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x81093c1600488e58a6a6f31b7cd64e123994e61a` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x83db38aa8d165340012bb734bdd408c46a39d6dd` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x8725990c2e36dbc3c3a4bcc2002e0357c46386b6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x873449359d2d99691436e724c6c219a39b159b4a` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x8aba1edf8e6eb5df3b0987722c83c8baf7ebc409` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x91942b802439f2169c36441ef3b250af6bac15bd` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x92838d531ca08cfda274f66fd5674655cdc13d21` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x948af245a576aa02b4f07902ba4ecd76e0b6ce1f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x94ffeff526becce69bcc0578995aac73983b4c7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x95fd42ba81843d0030b0c802dce051693fa0a401` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x96a941bfdb0802404c8c77c764460ce5910710ce` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x97a13d6ca76388489f0b8dbb0dc9d9800b9a6eae` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x99b96511f4f0ebe6254c8f1bae8fac565a54eb7e` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0x9aa55bcf3e41d0d98fce816c4ec6e791b0f6d154` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa144a8649619b963c1531e77fa963e39aa30c66f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa1ad8481e83a5b279d97ab371bccd5ae3b446ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa2a8a4c5801dc9f9051b76d8da74c08ecd5d2bb6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa359c2cdd33d863703672ce4baa9a82fb644a533` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa4578ab5cda88aae7603afab24b4c0d24a7858d1` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa58ce5287fcd338bea5160ea2888b3ba80d81a7f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xa6d410d46e84249837fc1c44371f299a66dcdcb0` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xa9ea90899fa648b4ce49f6ae28174aeada660118` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xab883ff9ef68f54ccece0249c48ba1dd65265f1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xacc69d0cacfb5af2c80a052ba5c53e6dc201a3da` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xae1bb8aa05bd93b8d918d5c36cb088238fc11060` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xae3136539b32a561bcdc3fd5f847c6a13702956e` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xb28c8c2abf17243502eb28885455998e8b984b58` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xb325bbf765ff4e65d38ba045d925b80b52f1a37c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xb330cae9c6207df60c2785b29f775dec0fe20026` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xb35e7eae725dbf1157f23117138345de334bede2` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xb376d6b1ceb11f7e7fbd60621132d4c716118be7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xb5d58d32305ce7b955b5926bf6b567cd9fb42520` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xb6caf3e116bc76e0d24e98f31cdbb7f23e0697ef` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xb841b27eb2d80823222546fda5b33ec068ac8057` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xb995414772d163530086e269eee9aa8acf9f8ae1` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xbc6590a7b15513e4d649b158393175a839f27ed8` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xbcb4f387412686126b19cd58a59075cf102936b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xbe618d2edd2c5aa262da74b245580f0686e6fa55` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xc157f665da751b6b60207f2248f000b0a67608da` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xc3d3a755f391b40d94eed8283134c0323db49209` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xc3e4e27b39f3d6d2df98a243e4f54742d1d54d30` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xc538166a773b22c60ed3b3e343e506f3fdae0555` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xc8366ea06a711d452b22f09c0f850caa32b5847c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xcb764352c5014bdc02a0ff646fbfde42505b7357` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xcc08a29128c5ecd4a83971019d7cfe609e4c40b7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xcc727419975308db748c950ebcec7bb478a1c771` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xcfa2aaf148cd8bf82a696c7e43610cd46db52592` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xcfda1c9910fc074681f9d6e80b53736719fb91cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xd16d4bbe76c873d8a1e499bf2aac91710165e3c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xd1edb2b521a9c1293ecafdd724af1875dd02d88b` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xd3b36939822fa991925bbb6f1f31d36916947987` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xd5bda72030d9531fb311ddfe09af5502c3492e0c` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xd5eee630b58095a4655f0fc2b2600c88e9fd0e9e` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xd91db408945af2fe52e6d87b5d6d083920cf85b4` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xdb2ea284a4ec2c6433fba1e49c1f1334a86e3173` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xdb7fe9c415281e383595c262e49568ddc18e8bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xdcb79f30d2e21b90c078100b0d0cb9cefe1c9d6e` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xded795a8cf0784265a3a90613ad675879a0660b6` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xdf1d98a8a1439d348949c72abf3f678e8b0bf87b` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xdf66fb107e8927424603aafd556e6b1b39efce04` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xe056fab1ad20bf21cb4642b24427f3492c0f1a38` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xe5c9f0ee67a5c71678f256dcc349e5d962a3f56d` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xe649fd017356d314e79649fbe5e20a9ec827d286` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xec2d55f444ed98ba69281c8ca6889bcbb682716f` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xee07f43d01a1cc28aeaed9bafb154ad897fcc838` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xf04b152d2e27b5d975a2eb6b7f39ea42a74841ac` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xf4db30e806609516d14cdb53d9bc306c99505451` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xf7ed9a787696ca0823d5e0acba919e4039dc67c7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xf9df1e0d8bbec7fcadeadebdba0e673ca4e15164` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xfd6b00a33ba0e07318a6ec6f1e1979275c79d0a0` | non_address_book | unknown | unknown | unverified | n/a | `0xf98993ea9f8603451d7ca231aed91657bed6df75` |
| unverified unclassified | UnnamedContract<br>`0xfeb721c719b5859760bcd4a497ee5a3ea85f1cc1` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |
| unverified unclassified | UnnamedContract<br>`0xfebab92de1f2bfaadc63c920cdf8f9a5449ed841` | non_address_book | unknown | unknown | unverified | n/a | `0x5c85a7ae2b6d29c38cdf360553f8acbc4e684c31` |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 166 |

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
