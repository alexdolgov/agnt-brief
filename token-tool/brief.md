# Agentic Audit Brief: Token Tool

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

- Project: Token Tool (`token-tool`)
- Website: [https://tokentool.bitbond.com/](https://tokentool.bitbond.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 72 unique implementations (72 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $7,845,964.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Token Tool in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4904ba3148147d2f78b05a8446c01c48a7aba4bd`, chain 1)
- UnnamedContract (`0x486f6aea7d150254273ac7a5ffd872db54120b9a`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 72 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 72
- Raw deployments: 72
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

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0248ee94afb4c1052ff2df2147e371a212600307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb48b5c36e931f688a8db1006eac47413d8ef9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1477465778e152330db9c66d6914e89592900b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3220c85ef19eee910530c7dd1c46e035078157f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5ecdc77b7b66a6325b5d9d1f50146e50b08978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f8c045cfcf8424771a1f30bf437c19f84878c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c6f1dc174958c27736e3faadd45cda181c20f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x486f6aea7d150254273ac7a5ffd872db54120b9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394069 | `0x4904ba3148147d2f78b05a8446c01c48a7aba4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bc68742ca7f5337f91c8ef238105f4f06d74914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d73a4d8842783e884f63181fa968791489dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x511d2dd66719af3d2a9c055ff633e8d4368fe4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee7d9782c941b4fb70ead3346bcdfa1136dac60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a1b63922d99e5720b921ad549d82763e85fafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a2cd640198eeb094e871a7593c83ee7d3a9d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847f735b92a0d736a1e43b10c471378a82815471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881a7df965b12e04baed42fe09342a36ae47fe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2858b430fdf797e1ae1260242d50319ea56b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fd14de3687a6acfd8b76ab7c990fe726d701d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397fdbcf2d19249f6bb56a8cc8bfaff3e18afce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a6c78bfef730a4a89c8ca6e19a9a7d42f6ee6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafb74b0326c2b35fffb996d58c30d696b7af3ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06f493746fe8d6f0b50186a283dd20476917c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a1a673aa6426c6092baf46d558f2bff43cd7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3fa9638e36c3e46975e47c7d9ea66dc9614b9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ff0156f98619a00de62f7d82e0f6b26c5feb2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba18239a371fd5f73b692ead3daa9d315f063ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4fa8e1932be95ba5455e26a868ab972ee21dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3439b045d79ba78e196aca3ccb66729e966f21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd76bbc26e8e4bb8852a0bb3378f4ea99ccf26521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8d8c2d57439d000d7648bcff413e257e1316b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf94df8219f3dbe0df063bc155ef3dced340489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5d14b393b7f185452c0f01f9295d6abc8ccc82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde76af5d8984ee6aa715dc16ccb9bb1d98264070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1928163f29c38f18b20d55ff502fb994049a497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb7db0d57a8f189be2882812ff0b903f6bada97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf85d742f807ab7c9aa77132e5ebc918a74ee588c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf890d108182065614c3e7a3e0b034946b3618dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0248ee94afb4c1052ff2df2147e371a212600307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1477465778e152330db9c66d6914e89592900b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3220c85ef19eee910530c7dd1c46e035078157f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40f8c045cfcf8424771a1f30bf437c19f84878c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44c6f1dc174958c27736e3faadd45cda181c20f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-394070 | `0x486f6aea7d150254273ac7a5ffd872db54120b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x496e7cdb2e2093047324851daafbcce0ca5cfecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c1d73a4d8842783e884f63181fa968791489dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x511d2dd66719af3d2a9c055ff633e8d4368fe4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a1b63922d99e5720b921ad549d82763e85fafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67a2cd640198eeb094e871a7593c83ee7d3a9d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x847f735b92a0d736a1e43b10c471378a82815471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x881a7df965b12e04baed42fe09342a36ae47fe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e2858b430fdf797e1ae1260242d50319ea56b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa397fdbcf2d19249f6bb56a8cc8bfaff3e18afce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9a6c78bfef730a4a89c8ca6e19a9a7d42f6ee6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb06f493746fe8d6f0b50186a283dd20476917c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3a1a673aa6426c6092baf46d558f2bff43cd7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3fa9638e36c3e46975e47c7d9ea66dc9614b9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5ff0156f98619a00de62f7d82e0f6b26c5feb2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba18239a371fd5f73b692ead3daa9d315f063ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe4fa8e1932be95ba5455e26a868ab972ee21dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7cca33fb5f0deed85d7833b666f011d3327f620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3439b045d79ba78e196aca3ccb66729e966f21d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd76bbc26e8e4bb8852a0bb3378f4ea99ccf26521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8d8c2d57439d000d7648bcff413e257e1316b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdaf94df8219f3dbe0df063bc155ef3dced340489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd5d14b393b7f185452c0f01f9295d6abc8ccc82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde76af5d8984ee6aa715dc16ccb9bb1d98264070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1928163f29c38f18b20d55ff502fb994049a497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7cf69d922754053bd27f144b226e1ec6871ae28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb7db0d57a8f189be2882812ff0b903f6bada97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf60c30faeb000d37fcc25cbdb8737f44029538db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf85d742f807ab7c9aa77132e5ebc918a74ee588c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 70
- Live contracts: 0
- Unknown liveness contracts: 70
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=70

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0248ee94afb4c1052ff2df2147e371a212600307` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x0eb48b5c36e931f688a8db1006eac47413d8ef9c` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x1477465778e152330db9c66d6914e89592900b31` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x3220c85ef19eee910530c7dd1c46e035078157f5` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x3d5ecdc77b7b66a6325b5d9d1f50146e50b08978` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x40f8c045cfcf8424771a1f30bf437c19f84878c8` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x44c6f1dc174958c27736e3faadd45cda181c20f2` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x486f6aea7d150254273ac7a5ffd872db54120b9a` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x4bc68742ca7f5337f91c8ef238105f4f06d74914` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x4c1d73a4d8842783e884f63181fa968791489dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x511d2dd66719af3d2a9c055ff633e8d4368fe4bd` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x5ee7d9782c941b4fb70ead3346bcdfa1136dac60` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x64a1b63922d99e5720b921ad549d82763e85fafa` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x67a2cd640198eeb094e871a7593c83ee7d3a9d87` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x847f735b92a0d736a1e43b10c471378a82815471` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x881a7df965b12e04baed42fe09342a36ae47fe90` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x9e2858b430fdf797e1ae1260242d50319ea56b4f` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x9fd14de3687a6acfd8b76ab7c990fe726d701d69` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xa397fdbcf2d19249f6bb56a8cc8bfaff3e18afce` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xa9a6c78bfef730a4a89c8ca6e19a9a7d42f6ee6b` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xafb74b0326c2b35fffb996d58c30d696b7af3ec5` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb06f493746fe8d6f0b50186a283dd20476917c7d` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb3a1a673aa6426c6092baf46d558f2bff43cd7ec` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb3fa9638e36c3e46975e47c7d9ea66dc9614b9f4` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb5ff0156f98619a00de62f7d82e0f6b26c5feb2d` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xba18239a371fd5f73b692ead3daa9d315f063ad7` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xbe4fa8e1932be95ba5455e26a868ab972ee21dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xd3439b045d79ba78e196aca3ccb66729e966f21d` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xd76bbc26e8e4bb8852a0bb3378f4ea99ccf26521` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xd8d8c2d57439d000d7648bcff413e257e1316b77` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xdaf94df8219f3dbe0df063bc155ef3dced340489` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xdd5d14b393b7f185452c0f01f9295d6abc8ccc82` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xde76af5d8984ee6aa715dc16ccb9bb1d98264070` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xe1928163f29c38f18b20d55ff502fb994049a497` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xeb7db0d57a8f189be2882812ff0b903f6bada97c` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xf85d742f807ab7c9aa77132e5ebc918a74ee588c` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xf890d108182065614c3e7a3e0b034946b3618dae` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x0248ee94afb4c1052ff2df2147e371a212600307` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x1477465778e152330db9c66d6914e89592900b31` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x3220c85ef19eee910530c7dd1c46e035078157f5` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x40f8c045cfcf8424771a1f30bf437c19f84878c8` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x44c6f1dc174958c27736e3faadd45cda181c20f2` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x496e7cdb2e2093047324851daafbcce0ca5cfecf` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x4c1d73a4d8842783e884f63181fa968791489dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x511d2dd66719af3d2a9c055ff633e8d4368fe4bd` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x64a1b63922d99e5720b921ad549d82763e85fafa` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x67a2cd640198eeb094e871a7593c83ee7d3a9d87` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x847f735b92a0d736a1e43b10c471378a82815471` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x881a7df965b12e04baed42fe09342a36ae47fe90` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0x9e2858b430fdf797e1ae1260242d50319ea56b4f` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xa397fdbcf2d19249f6bb56a8cc8bfaff3e18afce` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xa9a6c78bfef730a4a89c8ca6e19a9a7d42f6ee6b` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb06f493746fe8d6f0b50186a283dd20476917c7d` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb3a1a673aa6426c6092baf46d558f2bff43cd7ec` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb3fa9638e36c3e46975e47c7d9ea66dc9614b9f4` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xb5ff0156f98619a00de62f7d82e0f6b26c5feb2d` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xba18239a371fd5f73b692ead3daa9d315f063ad7` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xbe4fa8e1932be95ba5455e26a868ab972ee21dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xc7cca33fb5f0deed85d7833b666f011d3327f620` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xd3439b045d79ba78e196aca3ccb66729e966f21d` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xd76bbc26e8e4bb8852a0bb3378f4ea99ccf26521` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xd8d8c2d57439d000d7648bcff413e257e1316b77` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xdaf94df8219f3dbe0df063bc155ef3dced340489` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xdd5d14b393b7f185452c0f01f9295d6abc8ccc82` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xde76af5d8984ee6aa715dc16ccb9bb1d98264070` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xe1928163f29c38f18b20d55ff502fb994049a497` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xe7cf69d922754053bd27f144b226e1ec6871ae28` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xeb7db0d57a8f189be2882812ff0b903f6bada97c` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xf60c30faeb000d37fcc25cbdb8737f44029538db` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |
| unverified unclassified | UnnamedContract<br>`0xf85d742f807ab7c9aa77132e5ebc918a74ee588c` | non_address_book | unknown | unknown | unverified | n/a | `0x09c8b5b26c68544a740184b97eb7f4dc51e852fa` |

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
| needs_review | 72 |

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
