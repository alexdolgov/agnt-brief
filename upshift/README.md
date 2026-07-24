# Agentic Audit Brief: Upshift

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Upshift (`upshift`)
- Website: [https://app.upshift.finance](https://app.upshift.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base, bsc, ethereum, ink, plasma
- Contract surface: 81 unique implementations (88 raw deployments)
- Coverage basis: 0/37 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $250,617,780.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Upshift. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across avalanche, base, ethereum. Structural roles: 4 core, 1 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), supporting (1), unclassified (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GainLendingPool (`0xed5c8c80a29e541b8781e0e729d9af597a368589`, chain 1)
- GnosisSafe (`0x17ab7568cd5386df6c8e4552438e32794d057cc1`, chain 1)
- GnosisSafeProxy (`0x416e26e331fc0b77386e9ddb5ed9ade73f1241f4`, chain 1)
- LendingPool (`0x1e367a83699119165cc748bd0714d8c2726973ce`, chain 1)
- LendingPool (`0x3695305ca200858e9981b11b87b2fe3d91488c60`, chain 1)
- LendingPool (`0x43d41393124dfca45567ef005f5c79311c57c65b`, chain 1)
- LendingPool (`0x5b53d5474f4d6a3c5388f597d058eb0962b253b6`, chain 1)
- LendingPoolv2 (`0x4555b1e9668553f11d95588d21d79e348ade6761`, chain 1)
- LendingPoolv2 (`0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a`, chain 8453)
- LendingPoolv2 (`0x237f498c29bb8479a7b7252fcd7df2042f3beb4e`, chain 43114)
- LendingPoolv3 (`0xea19b8f2229b50411e001dca9478fc3eef9fdcc6`, chain 1)
- LendingPoolv3 (`0xaab6fda7c8495530d8eee35812cda32d5f165c38`, chain 43114)
- ProxyAdmin (`0x76398b645ebbe42d8a6e516cde2d955f33c4f585`, chain 1)
- ProxyAdmin (`0xd355daae366220a0282cd5d2687fbc395395fc40`, chain 1)
- ProxyAdmin (`0xfa0713a8248876a9274a4c0ecebcd6d61d603463`, chain 1)
- ProxyAdmin (`0x35a5c2409cfe5fa646bad379b7c575ca26dcee3e`, chain 8453)
- ProxyAdmin (`0x9b2f2677c6ece228708354a7e5d355ab2483293c`, chain 43114)
- ProxyAdmin (`0xcd47da71006017c66b6112af26e12b2aae72166d`, chain 43114)
- RewardDistributor (`0xaeac5f82b140c0f7309f7e9ec43019062a5e5be2`, chain 43114)
- RewardDistributor (`0xd3e653a9f6f3d96b26dd4487a53d151140b697c4`, chain 43114)
- Safe (`0x4107557d726933f0bca591a4218afc92978457f7`, chain 1)
- ScheduledProxyAdmin (`0x20c30c93916fbb7b9f0a25f0de5b656d14511083`, chain 1)
- ScheduledProxyAdmin (`0x7b8db68187122204b0ab837d4bbafc4b719966b8`, chain 1)
- ScheduledProxyAdmin (`0x9e3606aff8fb8f244bce9699224c85fe97a9596d`, chain 1)
- ScheduledProxyAdmin2 (`0x7820209a65a43b6ce2217692fc09fd52d3df21fd`, chain 1)
- TimelockedCall (`0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881`, chain 1)
- TimelockedCall (`0x06eada250b02a3614afce04b8cd7025093312159`, chain 1)
- TimelockedCall (`0x0b570b355abb485e8ae08cddc798733fec047581`, chain 1)
- TimelockedCall (`0x161ad732c76ba95b09728371994a1e69b14b5ad1`, chain 1)
- TimelockedCall (`0xaab6fda7c8495530d8eee35812cda32d5f165c38`, chain 1)
- TimelockedCall (`0xdcaed0c3fea30e3edcb1d48f1380aea167e366e2`, chain 1)
- TimelockedCall (`0x01630191978b6ade4e959054dcd4863a503ecce9`, chain 8453)
- TimelockedCall (`0x2ae11038ac5215cda1af0ec5bb97815af6fc0476`, chain 43114)
- TimelockedCall (`0xb5963e8e17c3c839b5f963df5c88a635f8b38888`, chain 43114)
- TransparentUpgradeableProxy (`0x18a5a3d575f34e5eba92ac99b0976dbe26f9f869`, chain 1)
- TransparentUpgradeableProxy (`0x5fde59415625401278c4d41c6befce3790eb357f`, chain 1)
- TransparentUpgradeableProxy (`0x80e1048ede66ec4c364b4f22c8768fc657ff6a42`, chain 1)
- TransparentUpgradeableProxy (`0xc824a08db624942c5e5f330d56530cd1598859fd`, chain 1)
- TransparentUpgradeableProxy (`0xd684af965b1c17d628ee0d77cae94259c41260f4`, chain 1)
- TransparentUpgradeableProxy (`0xe1b4d34e8754600962cd944b535180bd758e6c2e`, chain 1)
- TransparentUpgradeableProxy (`0xebac5e50003d4b17be422ff9775043cd61002f7f`, chain 1)
- TransparentUpgradeableProxy (`0x4e2d90f0307a93b54aca31dc606f93fe6b9132d2`, chain 8453)
- TransparentUpgradeableProxy (`0x3408b22d8895753c9a3e14e4222e981d4e9a599e`, chain 43114)
- TransparentUpgradeableProxy (`0xb2bfb52cfc40584ac4e9e2b36a5b8d6554a56e0b`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/37 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 37 of 81 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/46
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 81
- Raw deployments: 88
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GainLendingPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395386 | `0xc824a08db624942c5e5f330d56530cd1598859fd` | ⚠️ Unaudited |
| GainLendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395372 | `0xed5c8c80a29e541b8781e0e729d9af597a368589` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 2 | ethereum | unit-395388 (2 proxies) | 2 deployments: ethereum `0x17ab7568cd5386df6c8e4552438e32794d057cc1`; ethereum `0x416e26e331fc0b77386e9ddb5ed9ade73f1241f4` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01630191978b6ade4e959054dcd4863a503ecce9` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395384 | 2 deployments: ethereum `0x1e367a83699119165cc748bd0714d8c2726973ce`; ethereum `0xe1b4d34e8754600962cd944b535180bd758e6c2e` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395357 | `0x3695305ca200858e9981b11b87b2fe3d91488c60` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395359 | `0x43d41393124dfca45567ef005f5c79311c57c65b` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395362 | `0x5b53d5474f4d6a3c5388f597d058eb0962b253b6` | ⚠️ Unaudited |
| LendingPoolUpgradeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee25efbb0102c5340fb40244a25f3bcf374cb0a` | ⚠️ Unaudited |
| LendingPoolV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x795f271eb6b11fb21792290d4c3b6366a58b5063` | ⚠️ Unaudited |
| LendingPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c3329b04c18427ce3bee741aeca603cf1b2b28` | ⚠️ Unaudited |
| LendingPoolv2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395360 | `0x4555b1e9668553f11d95588d21d79e348ade6761` | ⚠️ Unaudited |
| LendingPoolv2 | unknown | project_anchor | own_supporting | 0 | base | unit-395383 | `0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a` | ⚠️ Unaudited |
| LendingPoolv2 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-395389 | 2 deployments: avalanche `0x237f498c29bb8479a7b7252fcd7df2042f3beb4e`; avalanche `0x3408b22d8895753c9a3e14e4222e981d4e9a599e` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 5 | ethereum | unit-395387 (5 proxies) | 5 deployments: ethereum `0x18a5a3d575f34e5eba92ac99b0976dbe26f9f869`; ethereum `0x5fde59415625401278c4d41c6befce3790eb357f`; ethereum `0x80e1048ede66ec4c364b4f22c8768fc657ff6a42`; ethereum `0xd684af965b1c17d628ee0d77cae94259c41260f4`; ethereum `0xebac5e50003d4b17be422ff9775043cd61002f7f` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c85d60e612825e3e7c48db7f68c5b4c67c2eb16` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395371 | `0xea19b8f2229b50411e001dca9478fc3eef9fdcc6` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 1 | base | unit-395391 | `0x4e2d90f0307a93b54aca31dc606f93fe6b9132d2` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395376 | `0xaab6fda7c8495530d8eee35812cda32d5f165c38` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-395390 | `0xb2bfb52cfc40584ac4e9e2b36a5b8d6554a56e0b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395363 | `0x76398b645ebbe42d8a6e516cde2d955f33c4f585` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395369 | `0xd355daae366220a0282cd5d2687fbc395395fc40` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395373 | `0xfa0713a8248876a9274a4c0ecebcd6d61d603463` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-395382 | `0x35a5c2409cfe5fa646bad379b7c575ca26dcee3e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395375 | `0x9b2f2677c6ece228708354a7e5d355ab2483293c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395379 | `0xcd47da71006017c66b6112af26e12b2aae72166d` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395377 | `0xaeac5f82b140c0f7309f7e9ec43019062a5e5be2` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395380 | `0xd3e653a9f6f3d96b26dd4487a53d151140b697c4` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395385 | `0x4107557d726933f0bca591a4218afc92978457f7` | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395356 | `0x20c30c93916fbb7b9f0a25f0de5b656d14511083` | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395365 | `0x7b8db68187122204b0ab837d4bbafc4b719966b8` | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395366 | `0x9e3606aff8fb8f244bce9699224c85fe97a9596d` | ⚠️ Unaudited |
| ScheduledProxyAdmin2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510441930b9799e1ae3851b6732e2a37fecb732f` | ⚠️ Unaudited |
| ScheduledProxyAdmin2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395364 | `0x7820209a65a43b6ce2217692fc09fd52d3df21fd` | ⚠️ Unaudited |
| StandalonePoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0784307d28f413d1bb7a36fd46809a726b5741d6` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395351 | `0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395352 | `0x06eada250b02a3614afce04b8cd7025093312159` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395353 | `0x0b570b355abb485e8ae08cddc798733fec047581` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395355 | `0x161ad732c76ba95b09728371994a1e69b14b5ad1` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395367 | `0xaab6fda7c8495530d8eee35812cda32d5f165c38` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395370 | `0xdcaed0c3fea30e3edcb1d48f1380aea167e366e2` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | base | unit-395381 | `0x01630191978b6ade4e959054dcd4863a503ecce9` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395374 | `0x2ae11038ac5215cda1af0ec5bb97815af6fc0476` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395378 | `0xb5963e8e17c3c839b5f963df5c88a635f8b38888` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe9b725010a9e419412ed67d0fa5f3a5f40159d32` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395354 | `0x12b32070c6b6ed77fc9c6a8063d97a542f14828e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237f498c29bb8479a7b7252fcd7df2042f3beb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252a48bd6ce78c1864e7af4e488bd911962d531e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x394d46cab3c8182d4b608202022eb9ed08cc2b1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395358 | `0x4322a1114e8646bfce82b27f0faf22e0a696a07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469a0df3ed925b2aa104319246fadb1cda31d147` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395361 | `0x478ccb9605448a8995e14743a16dca4eda342ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a7281eb4e44047fd4c52146a5b84bf8f386ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f02588c2ca18f47379d31e5a3edc2c618505f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6803f24ff0bb6e69945330eb3b3d0563b9f2af56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac74cf3c64ae117e2f7eb174cf2f8316c537089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2b0085fa7feee78ff31f44f99e5c787a294c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8f391bafab0a784f7b077e3c0632a43ae2369e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aff18ccda96c0737acb9df2d71326db65c14ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d99cc01a865b444a6f9c9b6dd8c5f43fe7471b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c3d4b06d89a19f560e7da76e3a45b1410ea8634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c7ee87dcffb5579a5494ac8f329b1d31ec1b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556d8d573b6af1725d109c87a5bd2210365c71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5963e8e17c3c839b5f963df5c88a635f8b38888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395368 | `0xb7858b66dfa38b9cb74d00421316116a7851c273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba0a7208c3c3a93e1de145cfc888229274fb1717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba30c1811dd1016649cfebadabb0ddcdc087c2f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe497f5f44174d34a2416b99999f22d66ef18b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0026e559da7f2d4ee573616c09a8f721fa599bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a610c3aee6333101e9108f33eb7fdad39ef555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf49b486084cf4a121ea104804a5dda6318183658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf80d16c14e761281af10a15fc7128228a84d38cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x237f498c29bb8479a7b7252fcd7df2042f3beb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f625bea8aac306af58ad7c9d9eecebc5f45baa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51a7281eb4e44047fd4c52146a5b84bf8f386ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6803f24ff0bb6e69945330eb3b3d0563b9f2af56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf80d16c14e761281af10a15fc7128228a84d38cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01630191978b6ade4e959054dcd4863a503ecce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4322a1114e8646bfce82b27f0faf22e0a696a07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 31
- Live contracts: 0
- Unknown liveness contracts: 31
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=31

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x237f498c29bb8479a7b7252fcd7df2042f3beb4e` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x252a48bd6ce78c1864e7af4e488bd911962d531e` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x394d46cab3c8182d4b608202022eb9ed08cc2b1f` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x469a0df3ed925b2aa104319246fadb1cda31d147` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x51a7281eb4e44047fd4c52146a5b84bf8f386ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x62f02588c2ca18f47379d31e5a3edc2c618505f5` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x6803f24ff0bb6e69945330eb3b3d0563b9f2af56` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x6ac74cf3c64ae117e2f7eb174cf2f8316c537089` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x6e2b0085fa7feee78ff31f44f99e5c787a294c71` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x7a8f391bafab0a784f7b077e3c0632a43ae2369e` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x8aff18ccda96c0737acb9df2d71326db65c14ad7` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x8d99cc01a865b444a6f9c9b6dd8c5f43fe7471b5` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x9c3d4b06d89a19f560e7da76e3a45b1410ea8634` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xa7c7ee87dcffb5579a5494ac8f329b1d31ec1b48` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xb556d8d573b6af1725d109c87a5bd2210365c71d` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xb5963e8e17c3c839b5f963df5c88a635f8b38888` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xba0a7208c3c3a93e1de145cfc888229274fb1717` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xba30c1811dd1016649cfebadabb0ddcdc087c2f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xbe497f5f44174d34a2416b99999f22d66ef18b88` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xc0026e559da7f2d4ee573616c09a8f721fa599bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xe5a610c3aee6333101e9108f33eb7fdad39ef555` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xf49b486084cf4a121ea104804a5dda6318183658` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xf80d16c14e761281af10a15fc7128228a84d38cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x237f498c29bb8479a7b7252fcd7df2042f3beb4e` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x3f625bea8aac306af58ad7c9d9eecebc5f45baa7` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x51a7281eb4e44047fd4c52146a5b84bf8f386ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x6803f24ff0bb6e69945330eb3b3d0563b9f2af56` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0xf80d16c14e761281af10a15fc7128228a84d38cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x01630191978b6ade4e959054dcd4863a503ecce9` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x4322a1114e8646bfce82b27f0faf22e0a696a07e` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |
| unverified unclassified | UnnamedContract<br>`0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a` | non_address_book | unknown | unknown | unverified | n/a | `0xb30f65e1a1455ab919f6baddc783fd4c049f5334` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hacken (January 2026) — AllocationWhitelist](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2FIqnlimIRQFwlYr81fncl%2F26.01.30%20-%20Hacken%20Audit%20-%20AllocationWhitelist.pdf?alt=media) | Hacken | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hacken (March 2026) - Instant Redemption Subaccount](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2F8UO5oxZS7bEcnyNpIbfS%2F25.12.18%20-%20Hacken%20Audit.pdf?alt=media) | Hacken | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [OtterSec (September 2025) - Solana Vault](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2FfcdBVLOhOIQtc9217chS%2FUpshift_solana_erc_audit_final%20(1).pdf?alt=media) | OtterSec | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Hacken (September 2025)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2Fv7bxxnpnDULv2nU6fpoG%2F25.09.22%20-%20Hacken%20Audit.pdf?alt=media) | Hacken | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28330] Hacken (January 2026) — AllocationWhitelist — no match: Three contracts explicitly listed in Appendix 2 Scope table.
- [28331] Hacken (March 2026) - Instant Redemption Subaccount — no match: All contracts listed in Appendix 2 Scope table. Date from cover page: 18/12/2025.
- [28332] OtterSec (September 2025) - Solana Vault — no match: The scope section describes a single program named 'solana-erc4626' (a Solana program, not a traditional smart contract). No individual contract files are listed; the audit covers the entire program repository.
- [28333] Hacken (September 2025) — no match: All contracts listed in Appendix 2 Scope table. Date from cover page: 24/09/2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hacken (January 2026) — AllocationWhitelist | SendersAllocationWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (January 2026) — AllocationWhitelist | OraclizedMultiAssetVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (January 2026) — AllocationWhitelist | TimelockedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BaseLayerZeroErc20 | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BaseReentrancy | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BridgeableGovernanceToken | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BridgeableReceiptToken | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | DateUtils | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | EnableOnlyAssetsWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | GuardedProxyOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | Ownable2StepsGuarded | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | OwnableGuarded | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ProxyAdminOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ProxyFactory | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ProxyFactoryOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ResourceBasedTimelockedCall | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | SendersWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | OperableVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | OraclizedMultiAssetVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | TimelockedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | Parameters | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ITokenizedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | MasterDeployer | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | TokenizedVault | unmatched — not counted | — | listed in scope table | no |
| OtterSec (September 2025) - Solana Vault | solana-erc4626 | unmatched — not counted | — | Scope section: 'Name: solana-erc4626' | no |
| Hacken (September 2025) | BaseLayerZeroErc20 | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | BaseReentrancy | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | BridgeableReceiptToken | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | DateUtils | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | EnableOnlyAssetsWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | GuardedProxyOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | OwnableGuarded | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | ProxyFactory | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | ResourceBasedTimelockedCall | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | SendersWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | OperableVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | OraclizedMultiAssetVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | TimelockedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | TokenizedVault | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x20c30c93916fbb7b9f0a25f0de5b656d14511083` | ScheduledProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881` | TimelockedCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [28330] Hacken (January 2026) — AllocationWhitelist
- [28331] Hacken (March 2026) - Instant Redemption Subaccount
- [28332] OtterSec (September 2025) - Solana Vault
- [28333] Hacken (September 2025)

Fork inheritance lineage and inherited audits are included when available.
