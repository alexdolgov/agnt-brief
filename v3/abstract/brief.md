# Agentic Audit Brief: Abstract

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Abstract (`abstract`)
- Website: [https://www.abs.xyz/](https://www.abs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 170 unique implementations (170 raw deployments)
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
- Outside the address book: 146 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 12 of 170 unique; 158 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 155
- Unique implementations: 170
- Raw deployments: 170
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

### ❓ Unverified (155)

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c1d17441074ffb18e9a918db81a17db1752146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c430af1c9c18d414b5cf890bec08789431b6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa928d3abc512383b8e5e77edd2d5678696084f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225448 | `0x0358baca94dcd7931b7ba7aaf8a5ac6090e143a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225449 | `0x15d049e3d24fbcd53129bf7781a0c6a506690ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x165c8c1d9b280119c5de4d9b4dad661a69bed6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17254d324266114afb44ca484e5b456beaf8b276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x19ba8752d8d8561c7c2057fa7b78b698f95c4beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b1d413d6c6ebf070e6b6619001a660b97b081ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1bae1cc21c2fd73ef0cb09d4c434a618faf1ecd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ff04bbe11bf79fbea6bf23054ad059bee0172a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x206a16edd561b143dec5f571bace6d226fdccbbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21349d6e411ecb168ac6aded3ba1479a5b5741a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21b8db992374cc6d565a7c80222fe23d87d66230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x257e17ea20499b00c96354a550d6ce3591d0d6b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26eb09deb89f0efbdac64fc0166ede8d571db789` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225450 | `0x27a7f18106281fe53d371958e8bc3f833694d24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2968598b3efc1311e66dacafad7304c3be0948cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cc62866bee96dd63a35cd61986db30a158a7701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f81fb618fcd71e4eec9ac76ff6edef52cf075dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225451 | `0x35a54c8c757806eb6820629bc82d90e056394c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x388db09e4966196f413bbcfe0c9f966abe4ee2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a8ec78aaf6adfc4e8dde96345fe05f25833a37c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225453 | `0x3e8b2fe58675126ed30d0d12dea2a9bda72d18ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4435718ce61db187cca4d7678282197e6905c995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44a892157e08ee8dfabdcb63a4ffabc4dccdf852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4818436d8e59e2ef9ca911bdc220a8a3ba23e55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d542f9947f814e5b20430d0b343ff9fc342abb7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225454 | `0x4e39e90746a9ee410a8ce173c7b96d3afed444a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5301472e4dfbae72785403788fc37ca87d1cfb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59028e154a23752451b3a57d03915848ae368423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x607da48e6666cf4ff942ed1d2bb1255697051f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62feea069d456e8b4a8626aa3041f7eee8e159e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x656d7e136d7ae14dc59b0a97233fce832bd69e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6843ef1c3b87d1a51f83be6d6985dd9b350349a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75ac76b148a1fd1c25297d6290daf987aac59875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x778a2ccbf5bc56c5c8dfb91e148727432510ed31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78a4d121e222082c2b501ff49021e710f587d072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7baecb359cac4a86f17c3fb78ef84d17d6a63420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84d0f2331ac88de13f962627126eb1c770d15a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8550bc5b4a16f62a86f7bbd2d89412915c9587e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89d9e5adffd6dbd0ffcffa22e53e33fe49929e2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225456 | `0x8ad52ff836a30f063df51a00c99518880b8b36ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b20bdcd2b54df45ea216218cbb4a3c1a2e442a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cdc43fc70af67eb28c96ca8ef7c27f46140d9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93aeee8d98fb0873f8ff595fdd534a1f288786d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9455d2b882e1ee688d6560d28616ae9f448d5637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9590868c631453a96948a6b05e7b32067911a52e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98d4579a0d7a7a47f8abbc14b23c0d9d0bd3ca62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa6101b2fa149267a1b911613856f830b05d86421` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225457 | `0xac3a2dc46cea843f0a9d6554f8804aed18ff0795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad0102fa8d9b880a632b64480b6cccc55f6c0eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xadbf6fb3f44081de735988115f4ddd6ab3dd326e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb64afc158c0af1411758ee32aa6e60b8719e3fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4bbdd05fb5abacd25a3a0fc2f79ce9a15813378` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225458 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb7f8e556ef02771ea32f54e767d6f9742ed31c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc266bde5b3b97c6a83a4155612d05ae9a317dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc4140d1f53f0d856d35ff9a307db84440661382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc560b378209ff72e82c902b4d514d86ab0ae453` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225459 | `0xce0042b868300000d44a59004da54a005ffdcf9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2d3cf9ad889ef94ce90022f9d9489f274766247` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225461 | `0xd3876643180a79d0a56d0900c060528395f34453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda21b454f24a1ad4000ab3f2673279d8c8a200c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe29ca372f9d131cc66bdac8a6574fe1a646f94f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe351f38012ab1f5a89a841da71f0275db06cdf74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5d2199a0b23f98004bcf6adab885de6e4f3c187` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-225463 | `0xeec1e1cfaaf993b3abe9d5e78954f5691e719838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xefad17abc70e501ce3323faf4031139d0c855b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xefc0b34204082c57bde68a1b4f21c3e250b225a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5c6b1aec9d019cc7ec5fc6609d9978617b5e193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6f1354a581a15cc22f3a54d1cfbe3bbb9c079fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfadbf1cff40e7f5c1b9825fc4b81d0b769eb2d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfdeb0e8da5c88485d510d8bda6749d8811494d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff59c0bc188d97b3d64e9c3081e043a4c469681f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 61
- Live contracts: 0
- Unknown liveness contracts: 61
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=61

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0xf2c1d17441074ffb18e9a918db81a17db1752146` | non_address_book | unknown | unknown | unverified | n/a | `0x71d84c3404a6ae258e6471d4934b96a2033f9438` |
| unverified unclassified | UnnamedContract<br>`0x165c8c1d9b280119c5de4d9b4dad661a69bed6ee` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x17254d324266114afb44ca484e5b456beaf8b276` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x19ba8752d8d8561c7c2057fa7b78b698f95c4beb` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x1b1d413d6c6ebf070e6b6619001a660b97b081ef` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x1bae1cc21c2fd73ef0cb09d4c434a618faf1ecd0` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x1ff04bbe11bf79fbea6bf23054ad059bee0172a9` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x206a16edd561b143dec5f571bace6d226fdccbbe` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x21349d6e411ecb168ac6aded3ba1479a5b5741a1` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x21b8db992374cc6d565a7c80222fe23d87d66230` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x257e17ea20499b00c96354a550d6ce3591d0d6b1` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x26eb09deb89f0efbdac64fc0166ede8d571db789` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x2968598b3efc1311e66dacafad7304c3be0948cb` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x2cc62866bee96dd63a35cd61986db30a158a7701` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x2f81fb618fcd71e4eec9ac76ff6edef52cf075dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x388db09e4966196f413bbcfe0c9f966abe4ee2b0` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x3a8ec78aaf6adfc4e8dde96345fe05f25833a37c` | non_address_book | unknown | unknown | unverified | n/a | `0x8f1916dd27c304047b159403795bfde09347251f` |
| unverified unclassified | UnnamedContract<br>`0x4435718ce61db187cca4d7678282197e6905c995` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x44a892157e08ee8dfabdcb63a4ffabc4dccdf852` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x4818436d8e59e2ef9ca911bdc220a8a3ba23e55e` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x4d542f9947f814e5b20430d0b343ff9fc342abb7` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x5301472e4dfbae72785403788fc37ca87d1cfb33` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x59028e154a23752451b3a57d03915848ae368423` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x607da48e6666cf4ff942ed1d2bb1255697051f37` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x62feea069d456e8b4a8626aa3041f7eee8e159e1` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x656d7e136d7ae14dc59b0a97233fce832bd69e59` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x6843ef1c3b87d1a51f83be6d6985dd9b350349a5` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x75ac76b148a1fd1c25297d6290daf987aac59875` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x778a2ccbf5bc56c5c8dfb91e148727432510ed31` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x78a4d121e222082c2b501ff49021e710f587d072` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x7baecb359cac4a86f17c3fb78ef84d17d6a63420` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x84d0f2331ac88de13f962627126eb1c770d15a68` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x8550bc5b4a16f62a86f7bbd2d89412915c9587e6` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x89d9e5adffd6dbd0ffcffa22e53e33fe49929e2b` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x8b20bdcd2b54df45ea216218cbb4a3c1a2e442a8` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x8cdc43fc70af67eb28c96ca8ef7c27f46140d9d1` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x93aeee8d98fb0873f8ff595fdd534a1f288786d2` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0x9455d2b882e1ee688d6560d28616ae9f448d5637` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x9590868c631453a96948a6b05e7b32067911a52e` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0x98d4579a0d7a7a47f8abbc14b23c0d9d0bd3ca62` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xa6101b2fa149267a1b911613856f830b05d86421` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xad0102fa8d9b880a632b64480b6cccc55f6c0eb1` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xadbf6fb3f44081de735988115f4ddd6ab3dd326e` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xb64afc158c0af1411758ee32aa6e60b8719e3fe0` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xc4bbdd05fb5abacd25a3a0fc2f79ce9a15813378` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xcb7f8e556ef02771ea32f54e767d6f9742ed31c2` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xcc266bde5b3b97c6a83a4155612d05ae9a317dee` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xcc4140d1f53f0d856d35ff9a307db84440661382` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xcc560b378209ff72e82c902b4d514d86ab0ae453` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xd2d3cf9ad889ef94ce90022f9d9489f274766247` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xda21b454f24a1ad4000ab3f2673279d8c8a200c3` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xe29ca372f9d131cc66bdac8a6574fe1a646f94f3` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xe351f38012ab1f5a89a841da71f0275db06cdf74` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xe5d2199a0b23f98004bcf6adab885de6e4f3c187` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xefad17abc70e501ce3323faf4031139d0c855b56` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xefc0b34204082c57bde68a1b4f21c3e250b225a6` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |
| unverified unclassified | UnnamedContract<br>`0xf5c6b1aec9d019cc7ec5fc6609d9978617b5e193` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xf6f1354a581a15cc22f3a54d1cfbe3bbb9c079fa` | non_address_book | unknown | unknown | unverified | n/a | `0x8f1916dd27c304047b159403795bfde09347251f` |
| unverified unclassified | UnnamedContract<br>`0xfadbf1cff40e7f5c1b9825fc4b81d0b769eb2d66` | non_address_book | unknown | unknown | unverified | n/a | `0x8f1916dd27c304047b159403795bfde09347251f` |
| unverified unclassified | UnnamedContract<br>`0xfdeb0e8da5c88485d510d8bda6749d8811494d76` | non_address_book | unknown | unknown | unverified | n/a | `0x343ee72ddd8ccd80cd43d6adbc6c463a2de433a7` |
| unverified unclassified | UnnamedContract<br>`0xff59c0bc188d97b3d64e9c3081e043a4c469681f` | non_address_book | unknown | unknown | unverified | n/a | `0xd64e136566a9e04eb05b30184ff577f52682d182` |

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
| needs_review | 155 |

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
