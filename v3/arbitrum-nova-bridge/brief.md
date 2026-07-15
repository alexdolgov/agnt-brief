# Agentic Audit Brief: Arbitrum Nova Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 30 (0 matched; 30 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 95 unique implementations (207 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $9,906,466.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Arbitrum Nova Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...000066`, chain 42161)
- UnnamedContract (`0x5288c5...84f933`, chain 42161)
- UnnamedContract (`0x842ec2...c54eb2`, chain 42161)
- UnnamedContract (`0xb90e53...71eb8b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 4 of 95 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 95
- Raw deployments: 207
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 16 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumBridgeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c39bd...fd0b13` | ⚠️ Unaudited |
| ArbOneAIPArbOS31UpgradeChallengeManagerAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b715...e718b5` | ⚠️ Unaudited |
| BOLDUpgradeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd25b25...0f78b5`; ethereum `0xf795ec...25ac1d` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x041752...68fa7a`; ethereum `0x298e5c...caa43d`; ethereum `0x677ecf...a27b89`; ethereum `0xc26bc9...46e29a` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc1ebd0...e276bd` | ⚠️ Unaudited |
| BridgeCreator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xe38f02...bfa04a`; ethereum `0xe98c12...7bec5e`; ethereum `0xf2c8b2...965c1c` | ⚠️ Unaudited |
| ChallengeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x02e05a...c8736b`; ethereum `0x144095...0f156e`; ethereum `0x914b7b...4e2948`; ethereum `0xbd5be9...b1f97a`; ethereum `0xe129b8...dfd566` | ⚠️ Unaudited |
| DeployHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x15b791...4c1f32`; ethereum `0x524c56...d4980b`; ethereum `0x6319ff...cf6ec7` | ⚠️ Unaudited |
| DisableGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d3425...f4188f` | ⚠️ Unaudited |
| EdgeChallengeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x058e1c...d969ea`; ethereum `0x93069f...248524` | ⚠️ Unaudited |
| EnableFastConfirmAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe102b5...a6673d` | ⚠️ Unaudited |
| ERC20Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x81be1b...dad9d6`; ethereum `0x9f6a99...5bcf96`; ethereum `0xd72155...3721c7`; ethereum `0xefa1de...595751` | ⚠️ Unaudited |
| ERC20Inbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xd210b6...6a1f4e`; ethereum `0xd5dcf6...c1880a`; ethereum `0xef56ee...b9bd6d` | ⚠️ Unaudited |
| ERC20Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x103261...cfe7f7`; ethereum `0x17e0c5...5c0386`; ethereum `0xdf7031...bc0e5f` | ⚠️ Unaudited |
| ERC20RollupEventInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d079b...95bdee`; ethereum `0x2ec583...0e49cb`; ethereum `0x60ced0...6908ea` | ⚠️ Unaudited |
| Inbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1b2676...fe3d6a`; ethereum `0x5aed5f...0afe94`; ethereum `0x9c4ce5...091c35`; ethereum `0xa8ad1d...311bf5`; ethereum `0xc23e3f...a3eed4`; ethereum `0xc47ec3...2915d9` | ⚠️ Unaudited |
| Inbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc4448b...153949` | ⚠️ Unaudited |
| L1CustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x23122d...50232f`; ethereum `0xc8d26a...80aa45` | ⚠️ Unaudited |
| L1CustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973674...39db17` | ⚠️ Unaudited |
| L1DaiGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97f633...76a786`; ethereum `0xd3b5b6...ba3011` | ⚠️ Unaudited |
| L1DAITokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e659...a55f2f` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb2535b...ac21bf`; ethereum `0xb4299a...fde900` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf852de...c0ef4b` | ⚠️ Unaudited |
| L1Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x467194...c76c65`; ethereum `0xa10c7c...539400`; ethereum `0xa2e996...97aad3` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x525950...ff423c`; ethereum `0xc84083...63cd48` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d1c57...ccb47b`; ethereum `0xa96105...fd477e` | ⚠️ Unaudited |
| L1GovernanceRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x09b354...09ae2f`; ethereum `0x9ba25c...4a899d`; ethereum `0xb90ab1...621d78` | ⚠️ Unaudited |
| L1Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3dbc4...6688ab` | ⚠️ Unaudited |
| L1WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1986a7...1de0b1`; ethereum `0xcb5e88...4d0728` | ⚠️ Unaudited |
| L1WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x629983...3c4936`; ethereum `0xb63762...ac409c` | ⚠️ Unaudited |
| L1WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4e212...330bae` | ⚠️ Unaudited |
| L2ArbitrumToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x912ce5...9e6548` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8896d2...a38ea3` | ⚠️ Unaudited |
| NitroContracts2Point1Point0UpgradeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0049...442225` | ⚠️ Unaudited |
| NitroContracts2Point1Point2UpgradeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ee30...35542f` | ⚠️ Unaudited |
| NovaAIPArbOS31UpgradeChallengeManagerAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658afc...fbff27` | ⚠️ Unaudited |
| OfficeHoursAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0da0e8...3ee915`; ethereum `0x561ee2...8e2a28` | ⚠️ Unaudited |
| OldOutbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x667e23...63337a` | ⚠️ Unaudited |
| OneStepProofEntry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x4397fe...5a42d6`; ethereum `0x4dc0d3...9b151f`; ethereum `0x83fa8e...48cfeb`; ethereum `0x8f4985...4390f8`; ethereum `0x8faa21...b34dac`; ethereum `0x91cb57...91a64f`; ethereum `0x95b1e6...2e3c7c`; ethereum `0xa328ba...3c6fc7`; ethereum `0xc6e1e6...5c4f7e` | ⚠️ Unaudited |
| OneStepProver0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x273320...aaa7a4`; ethereum `0x2dccab...7222b5`; ethereum `0x3111ba...3f410d`; ethereum `0x35fbc5...bdf731`; ethereum `0x7368f7...c15835`; ethereum `0xa174e1...79a58c`; ethereum `0xa4ac11...921d1e`; ethereum `0xd0465e...73c5b6`; ethereum `0xe0e0f9...ba97bf` | ⚠️ Unaudited |
| OneStepProverHostIo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0003a9...c568c4`; ethereum `0x350608...662b14`; ethereum `0x593ae4...ad3841`; ethereum `0x8d7838...bc2544`; ethereum `0xa07cd1...ca71cf`; ethereum `0xd7f12e...92a63e`; ethereum `0xddad5e...f22d60`; ethereum `0xe427dd...8df76f`; ethereum `0xf2d894...92c81a` | ⚠️ Unaudited |
| OneStepProverMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0a875d...4d261d`; ethereum `0x221ccc...d5dcaa`; ethereum `0x2c785e...30f7c9`; ethereum `0x97af30...2f71bf`; ethereum `0x998e02...a5351f`; ethereum `0xa8de82...fe642b`; ethereum `0xab9596...0bf921`; ethereum `0xcf4b98...79a6ed`; ethereum `0xd1d752...c5f5e4` | ⚠️ Unaudited |
| OneStepProverMemory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1cd76b...9ad7fb`; ethereum `0x29efff...fc2283`; ethereum `0x5c9f86...767a18`; ethereum `0x738a25...b75bda`; ethereum `0x8ff4ae...600af5`; ethereum `0x9ef153...085c96`; ethereum `0xb602d0...bbd3ed`; ethereum `0xe0ba77...2ec48b`; ethereum `0xe77319...58af03` | ⚠️ Unaudited |
| Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x186267...94cb33`; ethereum `0xa7402f...2eb752`; ethereum `0xbc8941...d5f12d` | ⚠️ Unaudited |
| Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd4b80c...95cc58` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f7dd...03e560` | ⚠️ Unaudited |
| RegisterAndSetArbCustomGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1fe2d8...119d37`; ethereum `0x997668...558969` | ⚠️ Unaudited |
| RegisterL2TokenInArbCustomGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5781...7c8843` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x16ad56...cab724`; ethereum `0x2f9491...c5dc44`; ethereum `0x72f193...4f585f`; ethereum `0x7fc126...d8df17`; ethereum `0x9b56a7...7ca17d`; ethereum `0xbaa095...8cd635` | ⚠️ Unaudited |
| RollupCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x436980...d0ab44`; ethereum `0x62b6df...c4119a`; ethereum `0x8c8843...a2f3e1` | ⚠️ Unaudited |
| RollupEventInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1ed421...47ec8e`; ethereum `0x7b6784...447662`; ethereum `0x98f503...a66829` | ⚠️ Unaudited |
| RollupProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x13cf1a...1726bc`; ethereum `0x1ef371...336b17` | ⚠️ Unaudited |
| RollupUserLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4d4237...e12463`; ethereum `0x5607ea...6d1c34`; ethereum `0x5c93ba...633517`; ethereum `0x5e7147...5580ef`; ethereum `0xa4892f...255451` | ⚠️ Unaudited |
| SequencerInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x211e1c...f6c21b` | ⚠️ Unaudited |
| SequencerInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x31da64...792cf7`; ethereum `0x6f2e7f...00c324`; ethereum `0x93dcfc...f5bf76`; ethereum `0x9ed1d7...553c0a`; ethereum `0xbf223a...5427d4`; ethereum `0xcc4e9e...0e9afc`; ethereum `0xe154a8...0e4ef4`; ethereum `0xe4be54...7681e3`; ethereum `0xed3492...8e9480`; ethereum `0xff2a93...a306f4` | ⚠️ Unaudited |
| SetGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f089c...09d562`; ethereum `0x9a10fd...1166c3` | ⚠️ Unaudited |
| SetValidatorsAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf94af...670aba` | ⚠️ Unaudited |
| SetWasmModuleRootAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x569117...3a8e7d`; ethereum `0x93c342...c50fb6` | ⚠️ Unaudited |
| UpgradeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x995f93...f6d47a`; ethereum `0xde505e...ba35da`; ethereum `0xeab067...662d4b` | ⚠️ Unaudited |
| ValidatorUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x166f96...7a1654`; ethereum `0x34f2d5...0152a3` | ⚠️ Unaudited |
| ValidatorWalletCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x085c69...4436f1`; ethereum `0x225ea7...5463ca`; ethereum `0xddd434...b48858` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a4da...eccb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4482d0...135136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826acc...d86a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98b1b...b78113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f1a7...943411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f695...3c5097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbccf96...c44aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58ea0...389639` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379445 | `0x000000...000064` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379446 | `0x000000...000065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379447 | `0x000000...000066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379448 | `0x000000...000068` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379449 | `0x000000...00006b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379450 | `0x000000...00006c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379451 | `0x000000...00006d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379452 | `0x000000...00006e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379453 | `0x000000...00006f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379454 | `0x000000...000070` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379455 | `0x000000...000071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379456 | `0x000000...000072` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379457 | `0x000000...0000c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379458 | `0x096760...ef5562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379459 | `0x09e922...351eee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379466 | `0x2f5624...ac000e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379474 | `0x5288c5...84f933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379483 | `0x6c411a...6c623b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379493 | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379495 | `0x842ec2...c54eb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379496 | `0x8b9d94...708c14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379498 | `0x8f59c7...3e823a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379513 | `0xb90e53...71eb8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379521 | `0xc84083...63cd48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379527 | `0xd570ac...c22a86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379535 | `0xf916bf...5d60f4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 61 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24048] Manual audit seed — no match: The provided text is a table of audit reports with links, not the full audit report content. No specific contract names or scope details are present.
- [24049] view — no match: The audit report does not contain a scope section listing specific smart contracts. The targets are repositories (Nitro, go-ethereum) and PRs, not individual contracts. No contract names are explicitly mentioned as in scope.
- [24051] view — no match: The report is a security assessment of the Arbitrum Sequencer, focusing on Go source code (tx_options.go, tx_pre_checker.go) rather than smart contracts. No smart contracts were in scope.
- [24052] view — no match: Only SecurityCouncilManager.sol is explicitly mentioned as the target in the finding. The report states 'Only the production smart contract changes were in scope' but does not list all files; the finding references SecurityCouncilManager.sol.
- [24053] view — no match: The report does not list specific contract names in scope; it only references a governance action and a PR with a commit hash. No contract names are explicitly mentioned.
- [24054] view — no match: The report does not list specific contract names or file paths in scope; it only mentions 'Nitro contracts' and 'changes made to the Nitro contracts' without naming individual contracts.
- [24055] view — no match: The audit report does not contain any smart contracts; it reviews changes to go-ethereum (Geth) and ArbOS, which are not smart contracts.
- [24056] view — no match: Scope explicitly mentions ERC20Bridge, NitroContracts2Point1Point3UpgradeAction, and EIP-7702 fixes. Additional contracts referenced in findings.
- [24057] view — no match: Extracted contracts from findings targets and project targets section. Audit date from cover page.
- [24058] view — no match: The report scope is the Nitro Contracts repository with BoLD changes. The specific contracts mentioned in findings are Inbox, ERC20Inbox, and AbsInbox. The audit date is October 30, 2024 from the cover page.
- [24059] view — no match: Contracts in scope are governance and emergency action contracts mentioned in Executive Summary. No Solidity file paths provided.
- [24060] view — no match: Audit report for BoLD optimized history commitments. Scope includes Go code in repository https://github.com/OffchainLabs/bold, versions PR#681 and PR#691. Main file identified: history_commitment.go. Contract names extracted from code references.
- [24061] view — no match: Extracted contracts from Project Targets and findings. Audit date from cover page and timeline.
- [24062] view — no match: The audit report lists the scope as the entire stylus-sdk-rs repository at a specific commit, with detailed file listings for stylus-proc, stylus-sdk, examples (erc20, erc721, single_call), and mini-alloc. These are the contracts/modules in scope.
- [24063] view — no match: Extracted from Project Targets section and detailed findings. Only two contracts explicitly named in scope.
- [24064] view — no match: Extracted contract names from findings targets and code snippets. Audit date from cover page.
- [24065] view — no match: Extracted contract names from Project Targets, Project Coverage, Detailed Findings, and Appendix B. Audit date from cover page and delivery date.
- [24066] view — no match: Extracted 3 contracts from the 'Project Targets' section and detailed findings. The audit date is from the cover page.
- [24067] view — no match: Scope defined by PRs, not explicit contract list. Only two Solidity contracts named in findings.
- [24068] view — no match: The report lists many Go files in scope but only one Solidity contract (CacheManager) is explicitly named as a target. The Go files are not smart contracts but part of the Nitro node software.
- [24069] view — no match: The report does not have a dedicated scope section; contract names were extracted from findings and file paths mentioned throughout the report. The audit date is taken from the report title 'Arbitrum BoLD Findings & Analysis Report 2024-06-17'.
- [24071] view — no match: Extracted contract names from scope table and findings targets. Audit date from cover page.
- [24072] view — no match: Scope section explicitly lists three contracts under src/FeeRouter/ directory. Audit date is March 20, 2024 from the cover page.
- [24073] view — no match: Extracted from project targets and detailed findings. The report covers L1Teleporter, L2Forwarder, and IL1Teleporter interfaces.
- [24074] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and delivery date.
- [24075] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page: January 6, 2023.
- [24076] view — no match: Extracted contracts from Project Targets and Project Coverage sections. Audit date from cover page.
- [24077] view — no match: Scope section explicitly lists folders: bridge, challenge, osp, state, rollup, libraries. Contracts extracted from file paths and descriptions.
- [24078] view — no match: Extracted contract names from Project Targets and Project Coverage sections, plus contracts mentioned in findings. Audit date from cover page.
- [24079] view — no match: Extracted contracts from scope section and file paths in the audit report. Date is November 2021, approximated to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| view | SecurityCouncilManager | unmatched — not counted | — | Target in finding TOB-SC-ROT-1 | no |
| view | ERC20Bridge | unmatched — not counted | — | mentioned as patched version in scope description | no |
| view | NitroContracts2Point1Point3UpgradeAction | unmatched — not counted | — | target of finding TOB-ARBFIX-1 | no |
| view | Inbox | unmatched — not counted | — | referenced in finding code snippet | no |
| view | ProxyAdmin | unmatched — not counted | — | used in upgrade function | no |
| view | TransparentUpgradeableProxy | unmatched — not counted | — | used in upgrade function | no |
| view | IInbox | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge_v2 | unmatched — not counted | — | interface used in perform function | no |
| view | ExpressLaneAuction | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | SetValidatorsAction | unmatched — not counted | — | Target in finding 3, described as a smart contract with perform function | no |
| view | Inbox | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | ERC20Inbox | unmatched — not counted | — | Mentioned in finding 1 as having depositERC20 function | no |
| view | AbsInbox | unmatched — not counted | — | Mentioned in finding 1 as having _createRetryableTicket function | no |
| view | L1ModuleRootArbOneAction | unmatched — not counted | — | listed in Executive Summary as governance action | no |
| view | L1ModuleRootNovaAction | unmatched — not counted | — | listed in Executive Summary as governance action | no |
| view | L2ArbOS32Action | unmatched — not counted | — | listed in Executive Summary as governance action | no |
| view | SetInkPriceOneAction | unmatched — not counted | — | listed in Executive Summary as emergency action | no |
| view | SetWasmMaxStackDepthZeroAction | unmatched — not counted | — | listed in Executive Summary as emergency action | no |
| view | HistoryCommitter | unmatched — not counted | — | Target in scope, mentioned in findings and code quality recommendations | no |
| view | Commitment | unmatched — not counted | — | Mentioned in code quality recommendations as optimized implementation | no |
| view | History | unmatched — not counted | — | Mentioned in code quality recommendations as unoptimized implementation | no |
| view | ExpressLaneAuction | unmatched — not counted | — | listed in scope and findings | no |
| view | Balance | unmatched — not counted | — | listed in findings | no |
| view | IExpressLaneAuction | unmatched — not counted | — | referenced in findings | no |
| view | Burner | unmatched — not counted | — | mentioned in fix for TOB-ELA-3 | no |
| view | stylus-proc | unmatched — not counted | — | listed in scope | no |
| view | stylus-sdk | unmatched — not counted | — | listed in scope | no |
| view | mini-alloc | unmatched — not counted | — | listed in scope | no |
| view | erc20 | unmatched — not counted | — | listed in scope | no |
| view | erc721 | unmatched — not counted | — | listed in scope | no |
| view | single_call | unmatched — not counted | — | listed in scope | no |
| view | EnableFastConfirmAction | unmatched — not counted | — | Target in findings TOB-ORBUPG-001 and TOB-ORBUPG-002 | no |
| view | UpgradeAndEnableFastConfirmAction | unmatched — not counted | — | Mentioned in finding TOB-ORBUPG-001 description | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2USDCGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 code snippets | no |
| view | ArbChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | OpChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in Project Coverage and Appendix B | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in Project Coverage and Appendix B | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in Appendix B | no |
| view | EdgeStakingPool | unmatched — not counted | — | listed in Appendix B | no |
| view | RollupCore | unmatched — not counted | — | listed in Appendix B | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in Appendix B | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in Appendix B | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | listed in Appendix B | no |
| view | Rollup | unmatched — not counted | — | listed in Appendix B | no |
| view | ERC20Bridge | unmatched — not counted | — | Target in finding 1 | no |
| view | L1OrbitERC20Gateway | unmatched — not counted | — | Target in finding 2 | no |
| view | L1AtomicTokenBridgeCreator | unmatched — not counted | — | Target in finding 3 | no |
| view | RollupUserLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | RollupAdminLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | CacheManager | unmatched — not counted | — | mentioned in finding TOB-ARBOS30-5 target | no |
| view | DelayBuffer | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | SequencerInbox | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | Bridge | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | RollupUserLogic | unmatched — not counted | — | mentioned in H-02 and L-08 findings | no |
| view | RollupAdminLogic | unmatched — not counted | — | mentioned in L-03 and L-06 findings | no |
| view | RollupCore | unmatched — not counted | — | mentioned in L-09 finding | no |
| view | EdgeChallengeManager | unmatched — not counted | — | mentioned in L-04 finding | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | mentioned in H-02, L-01, L-02, L-05 findings | no |
| view | ArrayUtilsLib | unmatched — not counted | — | mentioned in L-07 finding | no |
| view | IOldRollupAdmin | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | IOldRollup | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | IOutbox | unmatched — not counted | — | mentioned in L-03 finding | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in scope and findings | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope and findings | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | listed in findings | no |
| view | Error | unmatched — not counted | — | listed in findings | no |
| view | DelayBuffer | unmatched — not counted | — | listed in findings (library) | no |
| view | ChildToParentRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | DistributionInterval | unmatched — not counted | — | listed in scope table | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | L1Teleporter | unmatched — not counted | — | listed in scope and findings | no |
| view | L2Forwarder | unmatched — not counted | — | listed in findings | no |
| view | IL1Teleporter | unmatched — not counted | — | listed in findings | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | listed in scope | no |
| view | MerkleTreeLib | unmatched — not counted | — | listed in scope | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupCore | unmatched — not counted | — | listed in scope | no |
| view | prefix_proofs | unmatched — not counted | — | listed in scope | no |
| view | inclusion_proofs | unmatched — not counted | — | listed in scope | no |
| view | commitments | unmatched — not counted | — | listed in scope | no |
| view | edge_tracker | unmatched — not counted | — | listed in scope | no |
| view | edge_tracker_transition_table | unmatched — not counted | — | listed in scope | no |
| view | tree | unmatched — not counted | — | listed in scope | no |
| view | ancestors | unmatched — not counted | — | listed in scope | no |
| view | path_timer | unmatched — not counted | — | listed in scope | no |
| view | watcher | unmatched — not counted | — | listed in scope | no |
| view | assertion_chain | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumToken | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | TokenDistributor | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | FixedDelegateErc20Wallet | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | L1ArbitrumTimelock | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | L2ArbitrumGovernor | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | ArbitrumVestingWallet | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | UpgradeExecutor | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in Project Coverage: Auxiliary code | no |
| view | Util | unmatched — not counted | — | listed in Project Coverage: Auxiliary code | no |
| view | ArbitrumTimelock | unmatched — not counted | — | listed in Project Targets: Arbitrum Governance Repository | no |
| view | L2GovernanceFactory | unmatched — not counted | — | listed in Project Targets: Arbitrum Governance Repository | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1ReverseCustomGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | StandardArbERC20 | unmatched — not counted | — | mentioned in finding 15 | no |
| view | L1ReverseToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | IArbToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage section | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-12 | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage section | no |
| view | HashProofHelper | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | NitroMigrator | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | ArbOS | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| view | RollupAdmin | unmatched — not counted | — | mentioned in finding TOB-ArbOS-14 | no |
| view | Sequencer | unmatched — not counted | — | mentioned in code quality recommendations | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | ChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorUtils | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWallet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | ArbitrumProxy | unmatched — not counted | — | listed in scope | no |
| view | AdminFallbackProxy | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupCore | unmatched — not counted | — | listed in scope | no |
| view | AbsRollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | ERC20RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | SecondaryLogicUUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | DoubleLogicERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| view | UUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | GasRefundEnabled | unmatched — not counted | — | listed in scope | no |
| view | IGasRefunder | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | MerkleProofLib | unmatched — not counted | — | listed in scope | no |
| view | Deserialize | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | ValueLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeLib | unmatched — not counted | — | listed in scope | no |
| view | GlobalStateLib | unmatched — not counted | — | listed in scope | no |
| view | MachineLib | unmatched — not counted | — | listed in scope | no |
| view | NodeLib | unmatched — not counted | — | listed in scope | no |
| view | RollupLib | unmatched — not counted | — | listed in scope | no |
| view | Instructions | unmatched — not counted | — | listed in scope | no |
| view | MerkleProof | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage | no |
| view | OneStepProver | unmatched — not counted | — | listed in Project Coverage | no |
| view | OneStepProver0 | unmatched — not counted | — | mentioned in findings | no |
| view | Rollup | unmatched — not counted | — | listed in Project Coverage | no |
| view | ChallengeManager | unmatched — not counted | — | listed in Project Coverage | no |
| view | AdminFallbackProxy | unmatched — not counted | — | mentioned in finding TOB-NITRO-SC-1 | no |
| view | ArbRetryableTx | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-2 | no |
| view | ArbSys | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-6 | no |
| view | ArbAggregator | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-21 | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | Rollup | unmatched — not counted | — | listed in scope | no |
| view | AdminFacet | unmatched — not counted | — | listed in scope | no |
| view | UserFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | NodeFactory | unmatched — not counted | — | listed in scope | no |
| view | ChallengeFactory | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupUserFacet | unmatched — not counted | — | listed in scope | no |
| view | Challenge | unmatched — not counted | — | listed in scope | no |
| view | L1Router | unmatched — not counted | — | listed in scope | no |
| view | L2Router | unmatched — not counted | — | listed in scope | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | L1WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | StandardArbERC20 | unmatched — not counted | — | listed in scope | no |
| view | aeWETH | unmatched — not counted | — | listed in scope | no |
| view | aeERC20 | unmatched — not counted | — | listed in scope | no |
| view | TransferAndCallToken | unmatched — not counted | — | listed in scope | no |
| view | BeaconProxyFactory | unmatched — not counted | — | listed in scope | no |
| view | ClonableBeaconProxy | unmatched — not counted | — | listed in scope | no |
| view | GasRefunder | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | OutboxEntry | unmatched — not counted | — | listed in scope | no |
| view | OldOutbox | unmatched — not counted | — | listed in scope | no |
| view | Whitelist | unmatched — not counted | — | listed in scope | no |
| view | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeLib | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | ProxySetter | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayToken | unmatched — not counted | — | listed in scope | no |
| view | IArbToken | unmatched — not counted | — | listed in scope | no |
| view | IWETH9 | unmatched — not counted | — | listed in scope | no |
| view | ITokenGateway | unmatched — not counted | — | listed in scope | no |
| view | IGasRefunder | unmatched — not counted | — | listed in scope | no |
| view | IInbox | unmatched — not counted | — | listed in scope | no |
| view | IBridge | unmatched — not counted | — | listed in scope | no |
| view | IOneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof2 | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | RetryableTicketCreator | unmatched — not counted | — | listed in scope | no |
| view | GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | GatewayMessageHandler | unmatched — not counted | — | listed in scope | no |
| view | BytesParserWithDefault | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in scope | no |
| view | ERC20RollupUserFacet | unmatched — not counted | — | listed in scope | no |
| view | EthUserFacet | unmatched — not counted | — | listed in scope | no |
| view | Erc20UserFacet | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 30
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 231 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=21, low=6, medium=3
- Match method counts: n/a

Zero-match audit list:

- [24048] Manual audit seed
- [24049] view
- [24051] view
- [24052] view
- [24053] view
- [24054] view
- [24055] view
- [24056] view
- [24057] view
- [24058] view
- [24059] view
- [24060] view
- [24061] view
- [24062] view
- [24063] view
- [24064] view
- [24065] view
- [24066] view
- [24067] view
- [24068] view
- [24069] view
- [24071] view
- [24072] view
- [24073] view
- [24074] view
- [24075] view
- [24076] view
- [24077] view
- [24078] view
- [24079] view

Fork inheritance lineage and inherited audits are included when available.
