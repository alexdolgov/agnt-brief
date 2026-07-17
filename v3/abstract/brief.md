# Agentic Audit Brief: Abstract

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Abstract (`abstract`)
- Website: [https://www.abs.xyz/](https://www.abs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 109 unique implementations (109 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,025,118.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Abstract. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum, sepolia. Structural roles: 5 supporting, 3 core, 3 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: supporting (5), core (3), infra (3)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (3), ownable (2), ownable2step (2)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc2a36181fb524a6befe639afed37a67e77d62cf1`, chain 1)
- ChainAdmin (`0xa1f75f491f630037c4ccaa2bfa22363cec05a661`, chain 1)
- DefaultUpgrade (`0x4d376798ba8f69ced59642c3ae8687c7457e855d`, chain 1)
- DiamondProxy (`0x2edc71e9991a962c7fe172212d1aa9e50480fbb9`, chain 1)
- Multicall3 (`0xca11bde05977b3631167028862be2a173976ca11`, chain 1)
- Safe (`0x7f3eab9ccf1d8b9705f7ede895d3b4ac1b631063`, chain 1)
- SingletonFactory (`0xce0042b868300000d44a59004da54a005ffdcf9f`, chain 1)
- TransparentUpgradeableProxy (`0x303a465b659cbb0ab36ee643ea362c509eeb5213`, chain 1)
- TransparentUpgradeableProxy (`0xc2ee6b6af7d616f6e27ce7f4a451aedc2b0f5f5c`, chain 1)
- TransparentUpgradeableProxy (`0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb`, chain 1)
- ValidatorTimelock (`0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e`, chain 1)
- Verifier (`0x70f3fbf8a427155185ec90bed8a3434203de9604`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 85 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 12 of 109 unique; 97 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 94
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225443 | `0xa1f75f491f630037c4ccaa2bfa22363cec05a661` | ⚠️ Unaudited |
| DefaultUpgrade | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225438 | `0x4d376798ba8f69ced59642c3ae8687c7457e855d` | ⚠️ Unaudited |
| DiamondProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225436 | `0x2edc71e9991a962c7fe172212d1aa9e50480fbb9` | ⚠️ Unaudited |
| IdentityRegistryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8004a169fb4a3325136eb29fa0ceb6d2e539a432` | ⚠️ Unaudited |
| MailboxFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x32400084c286cf3e17e7b677ea9583e60a000324` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225445 | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49172720a082ed424f48451d90f5d6461ec823c4` | ⚠️ Unaudited |
| ReputationRegistryUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8004baa17c55a88189ae136b182e5fda19de9b63` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225464 | `0x7f3eab9ccf1d8b9705f7ede895d3b4ac1b631063` | ⚠️ Unaudited |
| SingletonFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225446 | `0xce0042b868300000d44a59004da54a005ffdcf9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225467 | `0x303a465b659cbb0ab36ee643ea362c509eeb5213` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225465 | `0xc2ee6b6af7d616f6e27ce7f4a451aedc2b0f5f5c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225466 | `0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb` | ⚠️ Unaudited |
| ValidatorTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225440 | `0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e` | ⚠️ Unaudited |
| Verifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225441 | `0x70f3fbf8a427155185ec90bed8a3434203de9604` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (94)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000000000000000000000000000800a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000000000000000000000000000800b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000000000000000000000000000800c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000000000000000000000000000800d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000000000000000000000000000800e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000000000000000000000000000000000800f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000008011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000010000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000225e31d15943971f47ad3022f714fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0358baca94dcd7931b7ba7aaf8a5ac6090e143a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0408ef011960d02349d50286d20531229bcef773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069f199763c045a294c7913e64ba80e5f362a5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0709f39376deee2a2dfc94a58edeb2eb9df012bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10ef01ff2ccc80bddaf51df91814e747ae61a5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x117fc8def58147016f92bae713533ddb828abb7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d049e3d24fbcd53129bf7781a0c6a506690ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199a9df0224031c20cc27083a4164c9c8f1bcb39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a7f18106281fe53d371958e8bc3f833694d24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb10ac97f2c3daedeab7b72dbaeb681891f51b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e17ff9b877661bdfef8879a4b31665157a960f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec62f97506e0184c423b01c525ab36e1c61f78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309d0b190fecca8e1d5d8309a16f7e3cb133e885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30cf3266240021f101e388d9b80959c42c068c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3203c3f64312af9344e42ef8aa45b97c9dfe4594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3439153eb7af838ad19d56e1571fbd09333c2809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35a54c8c757806eb6820629bc82d90e056394c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397aa1340b514cb3ef8f474db72b7e62c9159c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8b2fe58675126ed30d0d12dea2a9bda72d18ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e39e90746a9ee410a8ce173c7b96d3afed444a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564d33de40b1af31aaa2b726eaf9dafbaf763577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566d7510dee58360a64c9827257cf6d0dc43985e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610fca2e0279fa1f8c00c8c2f71df522ad469380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728bd3ec25d5edbafebb84f3d67367cd9ebc7693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d539e3c8bc2a565d22de95b0671a963667c4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7712fa47387542819d4e35a23f8116c90c18767c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5d1718944bfa246e42c8b95f0a88e37bac5495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d174f25adcd4157ecb5b3448fec909aecb70033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8041c4f03b6ca2ec7b795f33c10805ceb98733db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817756c6c555a94bcee39eb5a102abc1678b09a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8433dea5f658d9003bb6e52c5170126179835dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a71ccd554cc1b02749b35d22f684cc8ec987e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b11838e53f53dbc1fca7a6413cdd2c7ab15db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad52ff836a30f063df51a00c99518880b8b36ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9301e98dd367135f21bdf66f342a249c9d5f9069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ff7d9dbf52fdcae79157d3b249282c7fabd409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c98e979b15ed958d0dfb8f24d8effc2b41f9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7d30f93812f143b6efa673db8448efcb9f747e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca4dcb2505fbf536f6c54aa0a77c79f4fbc35c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9edcde0257f2386ce177c3a7fcdd97787f0d841d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1160e73b63f322ae88cc2d8e700833e71d0b2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26620d1f8f1a2433f0d25027f141aacafb3e590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaa566fe7978bb0fb0b5362b7ba23038f4428d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3a2dc46cea843f0a9d6554f8804aed18ff0795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaca1ec0a1a575cdccf1dc3d5d296202eb6061888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad1eca41e6f772be3cb5a48a6141f9bcc1af9f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d4347d129a83cbc40499cd4ff223de172a70df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f2d038150e296cdacf489813ce2bbe976a4c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225444 | `0xc2a36181fb524a6befe639afed37a67e77d62cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc329d02fd8cb2fc13aa919005af46320794a8629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc35f063962328ac65ced5d4c3fc5def8dec68dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfb71b46bf3f44fc909b5b4eaf4967ec3c5b4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf43bdb3115547833ffe4d33d864d25135012648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3876643180a79d0a56d0900c060528395f34453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd508168db968de1ebc6f288322e6c820137eef79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd35026932273768a3e31f4eff7313b5b7a7199d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde41045eb15c8352413199f35d6d1a32803daae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf3969a315e3fc15b89a2752d0915cc76a5bd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17e6f1518a5185f646eb34ac5a8055792bd3c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b076ea612db28a0d768660e4d81346c02ed75e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c7fbb0a626ed208021ccaba6be1566905e2dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec089e40c40b12dd4577e0c5381d877b613040ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec1e1cfaaf993b3abe9d5e78954f5691e719838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c430af1c9c18d414b5cf890bec08789431b6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa928d3abc512383b8e5e77edd2d5678696084f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225448 | `0x0358baca94dcd7931b7ba7aaf8a5ac6090e143a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225449 | `0x15d049e3d24fbcd53129bf7781a0c6a506690ff2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225450 | `0x27a7f18106281fe53d371958e8bc3f833694d24a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225451 | `0x35a54c8c757806eb6820629bc82d90e056394c92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225453 | `0x3e8b2fe58675126ed30d0d12dea2a9bda72d18ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225454 | `0x4e39e90746a9ee410a8ce173c7b96d3afed444a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225456 | `0x8ad52ff836a30f063df51a00c99518880b8b36ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225457 | `0xac3a2dc46cea843f0a9d6554f8804aed18ff0795` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225458 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225459 | `0xce0042b868300000d44a59004da54a005ffdcf9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225461 | `0xd3876643180a79d0a56d0900c060528395f34453` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225463 | `0xeec1e1cfaaf993b3abe9d5e78954f5691e719838` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-11-02-AGW-Security-Review-Pashov.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-11-02-AGW-Security-Review-Pashov.pdf) | Pashov Audit Group | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [2024-11-11-AGW-Clave-Diff-Review-Trust.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-11-11-AGW-Clave-Diff-Review-Trust.pdf) | Trust | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [2024-12-23-Session-Key-Security-Review-Pashov.pdf](https://github.com/Abstract-Foundation/audits/blob/main/agw/2024-12-23-Session-Key-Security-Review-Pashov.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19448] 2024-11-02-AGW-Security-Review-Pashov.pdf — no match: Scope section explicitly lists 25 smart contracts. Audit date from cover page: November 2nd - November 11th, using end date.
- [19449] 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf — no match: All contracts listed in the Scope section of the report. Audit date from document title and versioning.
- [19450] 2024-12-23-Session-Key-Security-Review-Pashov.pdf — no match: Scope section explicitly lists 9 contracts. Audit date is the end date of the engagement (December 26th 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-11-02-AGW-Security-Review-Pashov.pdf | AccountFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveImplementation | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveProxy | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | EOAValidator | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | PasskeyValidator | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ERC1271Handler | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ValidationHandler | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | BatchCaller | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveStorage | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | SignatureDecoder | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | HookManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ModuleManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | UpgradeManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ValidatorManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | TokenCallbackHandler | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | Auth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | LinkedList | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | VerifierCaller | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ClaveRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | BootloaderAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | SelfAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | HookAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-02-AGW-Security-Review-Pashov.pdf | ModuleAuth | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | AccountFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveImplementation | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveProxy | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveNameService | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | IClaveNameService | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ClaveEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | KoiEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | SyncEarnRouter | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | SyncEarnRouterV2 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ZtaKe | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ZtaKeV2 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ERC1271Handler | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | Base64 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | IClave | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | IUpgradeManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | OwnerManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | UpgradeManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ValidatorManager | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | CloudRecoveryModule | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | SocialRecoveryModule | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | BaseRecovery | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | ERC20Paymaster | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | GaslessPaymaster | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | EOAValidator | unmatched — not counted | — | listed in scope | no |
| 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf | PasskeyValidator | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | ClaveImplementation | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | BatchCaller | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | TimestampAsserter | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | TimestampAsserterLocator | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | ClaveStorage | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | SessionLib | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | ValidatorManager | unmatched — not counted | — | listed in scope | no |
| 2024-12-23-Session-Key-Security-Review-Pashov.pdf | SessionKeyValidator | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa1f75f491f630037c4ccaa2bfa22363cec05a661` | ChainAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d376798ba8f69ced59642c3ae8687c7457e855d` | DefaultUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2edc71e9991a962c7fe172212d1aa9e50480fbb9` | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce0042b868300000d44a59004da54a005ffdcf9f` | SingletonFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e` | ValidatorTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70f3fbf8a427155185ec90bed8a3434203de9604` | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 62 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [19448] 2024-11-02-AGW-Security-Review-Pashov.pdf
- [19449] 2024-11-11-AGW-Clave-Diff-Review-Trust.pdf
- [19450] 2024-12-23-Session-Key-Security-Review-Pashov.pdf

Fork inheritance lineage and inherited audits are included when available.
