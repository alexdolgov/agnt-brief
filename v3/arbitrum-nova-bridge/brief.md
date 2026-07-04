# Agentic Audit Brief: Arbitrum Nova Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:30.101Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, ethereum
- Contract surface: 46 unique implementations (100 raw deployments)
- DeFi Llama TVL: $9,906,466.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 51 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 10 common project-authored base contract(s) (ionestepprover, delegatecallaware, absbridge). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 181; live-surface contracts included: 97 (89 live, 8 unknown).
- Excluded by liveness: 84 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/38 (0.0%)
- Deployed-live implementations: 38 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 46
- Raw deployments: 100
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 17 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbOneAIPArbOS31UpgradeChallengeManagerAction | unknown | ethereum | n/a | [`0x19b715...e718b5`](./contracts/ethereum-1/0x19b715cf310c28c9020e53aaa11ce9df42e718b5/) | ⚠️ Unaudited |
| BOLDUpgradeAction | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd25b25...0f78b5`](./contracts/ethereum-1/0xd25b258b55765c9fb5567ecabb6114b03b0f78b5/); ethereum `0xf795ec...25ac1d` | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | 4 deployments: ethereum [`0x041752...68fa7a`](./contracts/ethereum-1/0x041752178b4a7b6800cc38260f3d443fc868fa7a/); ethereum `0x298e5c...caa43d`; ethereum `0x677ecf...a27b89`; ethereum `0xc26bc9...46e29a` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | n/a | [`0xc1ebd0...e276bd`](./contracts/ethereum-1/0xc1ebd02f738644983b6c4b2d440b8e77dde276bd/) | ⚠️ Unaudited |
| BridgeCreator | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xe38f02...bfa04a`](./contracts/ethereum-1/0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a/); ethereum `0xe98c12...7bec5e`; ethereum `0xf2c8b2...965c1c` | ⚠️ Unaudited |
| ChallengeManager | unknown | ethereum | n/a | 5 deployments: ethereum [`0x02e05a...c8736b`](./contracts/ethereum-1/0x02e05a9245c5853f895dadcc3a8216c953c8736b/); ethereum `0x144095...0f156e`; ethereum `0x914b7b...4e2948`; ethereum `0xbd5be9...b1f97a`; ethereum `0xe129b8...dfd566` | ⚠️ Unaudited |
| DeployHelper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x15b791...4c1f32`](./contracts/ethereum-1/0x15b7911c2974dfa95ae12192e2a3387b204c1f32/); ethereum `0x524c56...d4980b`; ethereum `0x6319ff...cf6ec7` | ⚠️ Unaudited |
| ERC20Bridge | unknown | ethereum | n/a | 4 deployments: ethereum [`0x81be1b...dad9d6`](./contracts/ethereum-1/0x81be1bf06cb9b23e8eeda3145c3366a912dad9d6/); ethereum `0x9f6a99...5bcf96`; ethereum `0xd72155...3721c7`; ethereum `0xefa1de...595751` | ⚠️ Unaudited |
| ERC20Inbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0xd210b6...6a1f4e`](./contracts/ethereum-1/0xd210b64ed9d47ef8acf1a3284722fcc7fc6a1f4e/); ethereum `0xd5dcf6...c1880a`; ethereum `0xef56ee...b9bd6d` | ⚠️ Unaudited |
| ERC20Outbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x103261...cfe7f7`](./contracts/ethereum-1/0x1032615db60c64b902b8f1255afc97270acfe7f7/); ethereum `0x17e0c5...5c0386`; ethereum `0xdf7031...bc0e5f` | ⚠️ Unaudited |
| ERC20RollupEventInbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0d079b...95bdee`](./contracts/ethereum-1/0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee/); ethereum `0x2ec583...0e49cb`; ethereum `0x60ced0...6908ea` | ⚠️ Unaudited |
| Inbox | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1b2676...fe3d6a`](./contracts/ethereum-1/0x1b2676d32e2f7430a564dd4560641f990dfe3d6a/); ethereum `0x5aed5f...0afe94`; ethereum `0x9c4ce5...091c35`; ethereum `0xa8ad1d...311bf5`; ethereum `0xc23e3f...a3eed4`; ethereum `0xc47ec3...2915d9` | ⚠️ Unaudited |
| Inbox | unknown | ethereum | n/a | [`0xc4448b...153949`](./contracts/ethereum-1/0xc4448b71118c9071bcb9734a0eac55d18a153949/) | ⚠️ Unaudited |
| L1CustomGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23122d...50232f`](./contracts/ethereum-1/0x23122da8c581aa7e0d07a36ff1f16f799650232f/); ethereum `0xc8d26a...80aa45` | ⚠️ Unaudited |
| L1DAITokenBridge | operational_periphery | ethereum | n/a | [`0x10e659...a55f2f`](./contracts/ethereum-1/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb2535b...ac21bf`](./contracts/ethereum-1/0xb2535b988dce19f9d71dfb22db6da744acac21bf/); ethereum `0xb4299a...fde900` | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | [`0xa10c7c...539400`](./contracts/ethereum-1/0xa10c7ce4b876998858b1a9e12b10092229539400/) | ⚠️ Unaudited |
| L1GatewayRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x525950...ff423c`](./contracts/ethereum-1/0x52595021fa01b3e14ec6c88953afc8e35dff423c/); ethereum `0xc84083...63cd48` | ⚠️ Unaudited |
| L1Token | token | ethereum | n/a | [`0xe3dbc4...6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | ⚠️ Unaudited |
| L1WethGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1986a7...1de0b1`](./contracts/ethereum-1/0x1986a7d7a9bb6cdbd87460bc2381d012071de0b1/); ethereum `0xcb5e88...4d0728` | ⚠️ Unaudited |
| L1WethGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x629983...3c4936`](./contracts/ethereum-1/0x6299838c8254b59213eb56d158ebe562d23c4936/); ethereum `0xb63762...ac409c` | ⚠️ Unaudited |
| L1WethGateway | unknown | ethereum | n/a | [`0xe4e212...330bae`](./contracts/ethereum-1/0xe4e2121b479017955be0b175305b35f312330bae/) | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | n/a | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| NitroContracts2Point1Point0UpgradeAction | unknown | ethereum | n/a | [`0x9e0049...442225`](./contracts/ethereum-1/0x9e0049b901531aee041ad0d63faeeeffbf442225/) | ⚠️ Unaudited |
| NitroContracts2Point1Point2UpgradeAction | unknown | ethereum | n/a | [`0x78ee30...35542f`](./contracts/ethereum-1/0x78ee30c74b3ce1aeb38163db3e7d769d9735542f/) | ⚠️ Unaudited |
| NovaAIPArbOS31UpgradeChallengeManagerAction | unknown | ethereum | n/a | [`0x658afc...fbff27`](./contracts/ethereum-1/0x658afc9d5ec4476fa6bb7033ea465f9901fbff27/) | ⚠️ Unaudited |
| OldOutbox | unknown | ethereum | n/a | [`0x667e23...63337a`](./contracts/ethereum-1/0x667e23abd27e623c11d4cc00ca3ec4d0bd63337a/) | ⚠️ Unaudited |
| Outbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x186267...94cb33`](./contracts/ethereum-1/0x186267690cb723d72a7edbc002476e23d694cb33/); ethereum `0xa7402f...2eb752`; ethereum `0xbc8941...d5f12d` | ⚠️ Unaudited |
| Outbox | unknown | ethereum | n/a | [`0xd4b80c...95cc58`](./contracts/ethereum-1/0xd4b80c3d7240325d18e645b49e6535a3bf95cc58/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xa8f7dd...03e560`](./contracts/ethereum-1/0xa8f7dded54a726eb873e98bff2c95abf2d03e560/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | ethereum | n/a | 6 deployments: ethereum [`0x16ad56...cab724`](./contracts/ethereum-1/0x16ad566aaa05fe6977a033de2472c05c84cab724/); ethereum `0x2f9491...c5dc44`; ethereum `0x72f193...4f585f`; ethereum `0x7fc126...d8df17`; ethereum `0x9b56a7...7ca17d`; ethereum `0xbaa095...8cd635` | ⚠️ Unaudited |
| RollupCreator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x436980...d0ab44`](./contracts/ethereum-1/0x43698080f40db54dee6871540037b8ab8fd0ab44/); ethereum `0x62b6df...c4119a`; ethereum `0x8c8843...a2f3e1` | ⚠️ Unaudited |
| RollupEventInbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1ed421...47ec8e`](./contracts/ethereum-1/0x1ed42156d64b52100f005d7e39092d49ed47ec8e/); ethereum `0x7b6784...447662`; ethereum `0x98f503...a66829` | ⚠️ Unaudited |
| RollupProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13cf1a...1726bc`](./contracts/ethereum-1/0x13cf1a771156a8674fc5d4c750546888e21726bc/); ethereum `0x1ef371...336b17` | ⚠️ Unaudited |
| RollupUserLogic | unknown | ethereum | n/a | [`0x5e7147...5580ef`](./contracts/ethereum-1/0x5e7147d34eab8c86b19ded94c00f82181b5580ef/) | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | n/a | [`0x211e1c...f6c21b`](./contracts/ethereum-1/0x211e1c4c7f1bf5351ac850ed10fd68cffcf6c21b/) | ⚠️ Unaudited |
| SequencerInbox | unknown | ethereum | n/a | 10 deployments: ethereum [`0x31da64...792cf7`](./contracts/ethereum-1/0x31da64d19cd31a19cd09f4070366fe2144792cf7/); ethereum `0x6f2e7f...00c324`; ethereum `0x93dcfc...f5bf76`; ethereum `0x9ed1d7...553c0a`; ethereum `0xbf223a...5427d4`; ethereum `0xcc4e9e...0e9afc`; ethereum `0xe154a8...0e4ef4`; ethereum `0xe4be54...7681e3`; ethereum `0xed3492...8e9480`; ethereum `0xff2a93...a306f4` | ⚠️ Unaudited |
| ValidatorWalletCreator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x085c69...4436f1`](./contracts/ethereum-1/0x085c69a44f3df550b6666d052d4621b9b44436f1/); ethereum `0x225ea7...5463ca`; ethereum `0xddd434...b48858` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x42a4da...eccb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4482d0...135136` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x826acc...d86a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa98b1b...b78113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1f1a7...943411` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f695...3c5097` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbccf96...c44aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58ea0...389639` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_04_18_trail_of_bits_reward_distributor_fixes_security_review-95acad5683bf61562ac3cedea313e749.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_10_trail_of_bits_security_audit_stylus-f2f68cbe59f5ac1c085292f6811c8ac9.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe38f02...bfa04a`](./contracts/ethereum-1/0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a/) | BridgeCreator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e659...a55f2f`](./contracts/ethereum-1/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | L1DAITokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa10c7c...539400`](./contracts/ethereum-1/0xa10c7ce4b876998858b1a9e12b10092229539400/) | L1Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3dbc4...6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | L1Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x436980...d0ab44`](./contracts/ethereum-1/0x43698080f40db54dee6871540037b8ab8fd0ab44/) | RollupCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 32
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24048] Manual audit seed
- [24049] view
- [24050] view
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
- [24070] view
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
