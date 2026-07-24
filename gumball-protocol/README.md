# Agentic Audit Brief: GumBall Protocol

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

- Project: GumBall Protocol (`gumball-protocol`)
- Website: [https://www.gumball.fi/](https://www.gumball.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 112 unique implementations (112 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $235,512.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for GumBall Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 112 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 105
- Unique implementations: 112
- Raw deployments: 112
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
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
| CollectionContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0031def3a612141ed025a3233366df86b518894b` | ⚠️ Unaudited |
| GBTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x040f6b1b3d80c470daf2e28237b332e22bf24d93` | ⚠️ Unaudited |
| GNFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07b4aa89f1ca11175dd1cd0898d8fa5a53014e9a` | ⚠️ Unaudited |
| GumBallFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x039dda37bed29cd05a02c31f5961056f60ada011` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x09dc9d209964417018fc302038eaf5ef30097c1c` | ⚠️ Unaudited |
| XGBTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00df73be2643e2f57cb81ceb5ca11837c3c4ff3a` | ⚠️ Unaudited |
| Zapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19c921e19fb2ebb479dfccc80eb33745c9ee9ca1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (105)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b8dcd123590fb6380e808be79a00dd5996a4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04d4f28a27683efb2641aa60d7707ee9650e8eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x067cd33e00b7719853447362654d900a68077f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x078f39e6cd73c359a5db6bdfa07a8be223ce7893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ee72412ba6a73d371165d66df45ff7598a5179c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f9f615712d1a0577eff03194d2268866c9271c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x112085f35ae0927dd3119bf6f4203a7abe46396a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x158cb676938b57475da1007e66480e19d99f3c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1764319955d0e57bcb05c2257cae4ba5b8153cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17aad26bed47f11f0dac3042abcdc876caaceae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a0fc7793ace4a0245ad6346626d64af9dc654c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234b117064289c6f6c9da582d52a4af8c4a3343e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2365feaaa38cf59d3c80fe9119ab5db2468cd4e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d55cd4e2537c85577ce9cd6d4a4f6ee2be83d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ec890b010fa4e38c80e929b4762ea043818b197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ecb1a65573e2e36a29f6ffdc048d1d34a52734e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3240f6bfc6fcf4cff31c36c12312ca4c15545102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35fa5848be77b07578cc232370a74a5c4cbdbc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x388ffd4b4f14b74eb38a64335fd0622bb06a8a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39a5c18ef5adbb19c046aff4cbaf0eaba626705c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b76d393455bcee2890785774c773d2e3d37fc89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ebaf3eeb8803f2b179d76de3852a03052a0fbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3efcd57dbcde809ae170e252aa8af35e6d9b6733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40027b3a2413463715e62f5d38a204de8f200749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41e01395d12b046652c8e1930a3d400c4c87a914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43fde9cb7d2bd5f91e920ea6f4206fe3015194b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x486c4b5bf8a4a39c4777e5f0967d6e41e7b15958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48cf7f36efa8053298890c0779033cbf5f7214ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49311eff1026b43381fe3993dd73ed4c6369783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51519d0758dea1f53e5530afc33addd2ce9d7d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x525658470ed6e337277f0fcd67129f50c427d21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5261a38282431b484c8bbcd47fef3d5e6a3a7605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53165d99c4f94a05456a2ce74c7353fbf79d9796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5358752e5e05d649be796b5b1f614f6539331723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x542524c12581bde1d1fff2424376b5835e4adf87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x543620d5b808d6703333647e52170eb2891b2886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5707dc9e4539889677ad780a2b7b314fac30e209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5811fbd4d12f8c7315994392d6fb81362b81e2ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ad441790c3114e0ab27816abdb0c9693cd96399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bd97743685d77c0b5bfe510e5f2d52ba5b1e636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c8fc4a7f4eb42b8ad28c1d64615a15b3601d6a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x655ed5c2d96519c094929345b729ed8c1d1e514e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65a9bc0d9b424111a91c93b37a8a582bd8b3058c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7636a5e284e324b31be8f0f07c489537464c3d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78a9cf253eafc7fbf7fa438f83487f504769db53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7bb0430c583baa6311af0c7a3f0c0cfc64d2c05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cab03bc84d6e4b72fe4123d498bf56ce0bde598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d1bab609805f6ac796166fa6c9a65fb01199015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f52636b42678989a6cdbc4f7cf549455d874c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x840480a9736cd762107d74cd3021500e2c5077dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85eb6224d920d4349c2182d18491d1f282107f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b3b969a309b3af852684959cc81e7f15ce44cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bcb82e96398a9c40723119aea4a3600641a5b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d2e365c219b9ad26cd36b871598a50a5299e4ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fa71d106880549d4ad4f187c8561d630926254a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9101ae22de20c82c4e02c861aee1a8740eb72719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x91b59b206e2884c63455f11435afac70b3bd3f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92ff7dcc75083321f6a78603dd9692435eb40aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94b70f4fdb21e81c62957b4e7b2f1a94fc3f789c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97ea60b22b8dcaf937b4d05d30a2b5a564c9a9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9855f7a216b43dcdbc88ad046ce84d660117fd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bfc8f7db882d57c52ca417a016f8543dc013412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c8366e5fb3b818e7c8c04f080f36f56bff335ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f255165353a02d989d1dd724ec502cf795497f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa10d9cdeeabf434a9bdd9049d25189e32bc4220f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2825fffcfcbfc1a9eee05eec87db8834656d4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa30c8912550e789067edba27feaf0a61857c4b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa423ea9e49fb14f7dd94600bd8daee8adcb63289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa80d6d6f5a9a3dce8c9a41abe2e009a0811643d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8969511e1f5278490ee99231ffcdade3ec15840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab8ec0b41b510fe6dc2ac0a68828bfb1708c188f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb221bf545b9be8affc565103fd349739dbba23ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb31040b7c7008149b8144e7f7693df9840414d1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb45e22521ed833d6dfbda73652a2d805de5a1cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5cc1eb160d5092b97444462786d2037c8fb10aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6366480412b75a2bb9ed00cdb52a72ec22231f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb69edbace5f78cbcd6afbd4058181b9881c236bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7b7b8df8caf2829971329bd71d0b7127d0734be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb903fb333701f6f2f40045a0f5dc0ffcb095db59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb623daaaf28c065cfe501f5b3ecee4499f59a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1d11369eeb593f86625f42577f72394c09e3363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7874cf809440afe975077656681e153560908ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc81c2e2415702179f78b51cbc5f9a16b957f5333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc81e3bd5ca6577ffc1367315790ddd6df63a5f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8cf2785633587db0a3216716e3b25c6630e29f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd58578cd5a3a0dead127182008005dac897b1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd645f4be804b0ac10045bfab265e56c0c0be4b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd227516cb3d3097bc4b1859ff283fbe437ca986a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7cabd38f54180fc5ae20ccde9c1ae43b637b67a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8c6586859ec1a5e143e39bf5abfad6657530b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd96d949ad35e0440f73e72261ad69bbf2c4787d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb7e7224fb588dd52997d683451d40defd2a9967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0b5239cb1e29ca341ae9d0cd576268ebe0047ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe20c917147cf3020fcd37b1235e9d700e32ee5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe242e31046c90a4c47cff218f3c839f66130e401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe38a03f24dc14aebad9633e54c1e9f9f03991f1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7e8388b2a6bb6382bad48f57803ee4039399230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe97f0a4018d2484399344f3966d72cb3ec58c8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeca411ef3603a92691e7119487a39893d99a8f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecb2554daa584b2c65d81cacb0731a4ad3eb4e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeffb8783276479676b6b1458492baea1cedd3e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4548daa03f7127f6ba00cd24b38212b224d1a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5cfbaf55036264b902d9ae55a114d9a22c42750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf90643c8e518c692898b1d2268d8d6f1ff4d8c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa469482108bded1fe3ceb58fc440ef58708ee20` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 105
- Live contracts: 0
- Unknown liveness contracts: 105
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=105

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x03b8dcd123590fb6380e808be79a00dd5996a4f2` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04d4f28a27683efb2641aa60d7707ee9650e8eb4` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x067cd33e00b7719853447362654d900a68077f70` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x078f39e6cd73c359a5db6bdfa07a8be223ce7893` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ee72412ba6a73d371165d66df45ff7598a5179c` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f9f615712d1a0577eff03194d2268866c9271c6` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x112085f35ae0927dd3119bf6f4203a7abe46396a` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x158cb676938b57475da1007e66480e19d99f3c26` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1764319955d0e57bcb05c2257cae4ba5b8153cc6` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17aad26bed47f11f0dac3042abcdc876caaceae9` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a0fc7793ace4a0245ad6346626d64af9dc654c9` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x234b117064289c6f6c9da582d52a4af8c4a3343e` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2365feaaa38cf59d3c80fe9119ab5db2468cd4e1` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d55cd4e2537c85577ce9cd6d4a4f6ee2be83d86` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ec890b010fa4e38c80e929b4762ea043818b197` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ecb1a65573e2e36a29f6ffdc048d1d34a52734e` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3240f6bfc6fcf4cff31c36c12312ca4c15545102` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35fa5848be77b07578cc232370a74a5c4cbdbc47` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x388ffd4b4f14b74eb38a64335fd0622bb06a8a74` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x39a5c18ef5adbb19c046aff4cbaf0eaba626705c` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b76d393455bcee2890785774c773d2e3d37fc89` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3ebaf3eeb8803f2b179d76de3852a03052a0fbf4` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3efcd57dbcde809ae170e252aa8af35e6d9b6733` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x40027b3a2413463715e62f5d38a204de8f200749` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41e01395d12b046652c8e1930a3d400c4c87a914` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43fde9cb7d2bd5f91e920ea6f4206fe3015194b2` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x486c4b5bf8a4a39c4777e5f0967d6e41e7b15958` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48cf7f36efa8053298890c0779033cbf5f7214ed` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49311eff1026b43381fe3993dd73ed4c6369783d` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x51519d0758dea1f53e5530afc33addd2ce9d7d42` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x525658470ed6e337277f0fcd67129f50c427d21e` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5261a38282431b484c8bbcd47fef3d5e6a3a7605` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x53165d99c4f94a05456a2ce74c7353fbf79d9796` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5358752e5e05d649be796b5b1f614f6539331723` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x542524c12581bde1d1fff2424376b5835e4adf87` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x543620d5b808d6703333647e52170eb2891b2886` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5707dc9e4539889677ad780a2b7b314fac30e209` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5811fbd4d12f8c7315994392d6fb81362b81e2ab` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ad441790c3114e0ab27816abdb0c9693cd96399` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5bd97743685d77c0b5bfe510e5f2d52ba5b1e636` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c8fc4a7f4eb42b8ad28c1d64615a15b3601d6a7` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x655ed5c2d96519c094929345b729ed8c1d1e514e` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65a9bc0d9b424111a91c93b37a8a582bd8b3058c` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7636a5e284e324b31be8f0f07c489537464c3d63` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78a9cf253eafc7fbf7fa438f83487f504769db53` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7bb0430c583baa6311af0c7a3f0c0cfc64d2c05b` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7cab03bc84d6e4b72fe4123d498bf56ce0bde598` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d1bab609805f6ac796166fa6c9a65fb01199015` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f52636b42678989a6cdbc4f7cf549455d874c25` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x840480a9736cd762107d74cd3021500e2c5077dc` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85eb6224d920d4349c2182d18491d1f282107f07` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b3b969a309b3af852684959cc81e7f15ce44cf9` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bcb82e96398a9c40723119aea4a3600641a5b3d` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8d2e365c219b9ad26cd36b871598a50a5299e4ab` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8fa71d106880549d4ad4f187c8561d630926254a` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9101ae22de20c82c4e02c861aee1a8740eb72719` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x91b59b206e2884c63455f11435afac70b3bd3f4a` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x92ff7dcc75083321f6a78603dd9692435eb40aca` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x94b70f4fdb21e81c62957b4e7b2f1a94fc3f789c` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97ea60b22b8dcaf937b4d05d30a2b5a564c9a9bc` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9855f7a216b43dcdbc88ad046ce84d660117fd7b` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bfc8f7db882d57c52ca417a016f8543dc013412` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c8366e5fb3b818e7c8c04f080f36f56bff335ee` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f255165353a02d989d1dd724ec502cf795497f5` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa10d9cdeeabf434a9bdd9049d25189e32bc4220f` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2825fffcfcbfc1a9eee05eec87db8834656d4fd` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa30c8912550e789067edba27feaf0a61857c4b2b` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa423ea9e49fb14f7dd94600bd8daee8adcb63289` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa80d6d6f5a9a3dce8c9a41abe2e009a0811643d8` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa8969511e1f5278490ee99231ffcdade3ec15840` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xab8ec0b41b510fe6dc2ac0a68828bfb1708c188f` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb221bf545b9be8affc565103fd349739dbba23ea` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb31040b7c7008149b8144e7f7693df9840414d1f` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb45e22521ed833d6dfbda73652a2d805de5a1cfb` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5cc1eb160d5092b97444462786d2037c8fb10aa` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6366480412b75a2bb9ed00cdb52a72ec22231f4` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb69edbace5f78cbcd6afbd4058181b9881c236bf` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7b7b8df8caf2829971329bd71d0b7127d0734be` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb903fb333701f6f2f40045a0f5dc0ffcb095db59` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb623daaaf28c065cfe501f5b3ecee4499f59a61` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1d11369eeb593f86625f42577f72394c09e3363` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc7874cf809440afe975077656681e153560908ee` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc81c2e2415702179f78b51cbc5f9a16b957f5333` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc81e3bd5ca6577ffc1367315790ddd6df63a5f84` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc8cf2785633587db0a3216716e3b25c6630e29f6` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd58578cd5a3a0dead127182008005dac897b1b1` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd645f4be804b0ac10045bfab265e56c0c0be4b3` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd227516cb3d3097bc4b1859ff283fbe437ca986a` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd7cabd38f54180fc5ae20ccde9c1ae43b637b67a` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd8c6586859ec1a5e143e39bf5abfad6657530b44` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd96d949ad35e0440f73e72261ad69bbf2c4787d9` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb7e7224fb588dd52997d683451d40defd2a9967` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe0b5239cb1e29ca341ae9d0cd576268ebe0047ae` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe20c917147cf3020fcd37b1235e9d700e32ee5fe` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe242e31046c90a4c47cff218f3c839f66130e401` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe38a03f24dc14aebad9633e54c1e9f9f03991f1c` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe7e8388b2a6bb6382bad48f57803ee4039399230` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe97f0a4018d2484399344f3966d72cb3ec58c8c0` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeca411ef3603a92691e7119487a39893d99a8f3f` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xecb2554daa584b2c65d81cacb0731a4ad3eb4e8f` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeffb8783276479676b6b1458492baea1cedd3e55` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf4548daa03f7127f6ba00cd24b38212b224d1a7b` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf5cfbaf55036264b902d9ae55a114d9a22c42750` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf90643c8e518c692898b1d2268d8d6f1ff4d8c87` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfa469482108bded1fe3ceb58fc440ef58708ee20` | non_address_book | unknown | unknown | unverified | n/a | `0x19858f6c29ea886853dc97d1a68abf8d4cb07712` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-GumBallV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-GumBallV2-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20494] PeckShield-Audit-Report-GumBallV2-v1.0.pdf — no match: Scope explicitly lists GumBallFactory.sol, GBTFactory.sol, GNFTFactory.sol, XGBTFactory.sol. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-GumBallV2-v1.0.pdf | GumBallFactory | unmatched — not counted | — | listed in scope section | no |
| PeckShield-Audit-Report-GumBallV2-v1.0.pdf | GBTFactory | unmatched — not counted | — | listed in scope section | no |
| PeckShield-Audit-Report-GumBallV2-v1.0.pdf | GNFTFactory | unmatched — not counted | — | listed in scope section | no |
| PeckShield-Audit-Report-GumBallV2-v1.0.pdf | XGBTFactory | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 105 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20494] PeckShield-Audit-Report-GumBallV2-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
