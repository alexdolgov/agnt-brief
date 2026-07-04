# Agentic Audit Brief: Amped Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 65.8% over 90 days

## Project Overview

- Project: Amped Finance (`amped-finance`)
- Website: [https://amped.finance/](https://amped.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:00.691Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, berachain, sonic
- Contract surface: 45 unique implementations (149 raw deployments)
- DeFi Llama TVL: $154.26
- On-chain TVL (included contracts): $9.69
- TVL by chain: Sonic $9.69

## Project Description

Derivatives. Structurally: 54 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 13 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (governable, yieldtoken, mintablebasetoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 401; live-surface contracts included: 149 (124 live, 25 unknown).
- Excluded by liveness: 252 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/27 (11.1%)
- Deployed-live implementations: 27 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/28
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 45
- Raw deployments: 149
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $9.69
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9.69 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 7.1% | 2024-05 |
| BlockApex | Tier 2 | 1 | 3.6% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PositionRouter | adapter | sonic | n/a | 4 deployments: sonic [`0x69e445...c34d5b`](./contracts/sonic-146/0x69e44517d74709d552a69046585bef02d8c34d5b/); sonic `0x6d9ae9...732c38`; base `0xff2b29...e47bdb`; berachain `0xdc4a73...733c85` | ✅ Audited |
| Timelock | governance | base | n/a | 3 deployments: sonic `0xe97055...c210b5`; base [`0x69e445...c34d5b`](./contracts/base-8453/0x69e44517d74709d552a69046585bef02d8c34d5b/); berachain `0xfce9fb...7e726e` | ✅ Audited |
| YieldBearingALPVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x9a2a58...c8dd13`](./contracts/sonic-146/0x9a2a5864b906d734dcc2a352ff22046fa5c8dd13/); sonic `0xfa9a3a...8d3a34` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | base | n/a | 11 deployments: sonic `0x4073c6...7da53d`; sonic `0x4cda02...67fce4`; sonic `0x5b8caa...49c7da`; sonic `0xe042d6...48942c`; base [`0x2c21b7...7acbcc`](./contracts/base-8453/0x2c21b7f9ed391111628633f391c122b9357acbcc/); base `0x463211...0923ce`; base `0x46fb53...5cfdc0`; base `0x4f69bd...9aba30`; base `0xaa5f23...90130c`; base `0xed33e4...26a926`; berachain `0xc3727b...bd2f48` | ⚠️ Unaudited |
| AmpedOFT | unknown | sonic | n/a | [`0x4cae73...c04fca`](./contracts/sonic-146/0x4cae73a23078e7a94d1e828fa3baba5080c04fca/) | ⚠️ Unaudited |
| AmpedRewardsRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x0296c7...3cc3bb`](./contracts/sonic-146/0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb/); sonic `0xb2663b...65937f` | ⚠️ Unaudited |
| AmpedStakingRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x19ae11...afb768`](./contracts/sonic-146/0x19ae11ffe762b58f2595b5f7b511a6e748afb768/); sonic `0xd6d873...35a15e` | ⚠️ Unaudited |
| AmpedSwapRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x1d4ab8...acc3bc`](./contracts/sonic-146/0x1d4ab8cc7552f76654cfae4155854e5235acc3bc/); sonic `0xe8b485...2c6a4a` | ⚠️ Unaudited |
| AmpOFT | unknown | sonic | n/a | 3 deployments: sonic [`0xac6114...01c1b4`](./contracts/sonic-146/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/); base [`0xac6114...01c1b4`](./contracts/base-8453/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/); berachain [`0xac6114...01c1b4`](./contracts/berachain-80094/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/) | ⚠️ Unaudited |
| EsGMX | unknown | base | n/a | 9 deployments: sonic `0x1ab023...6e9ed8`; sonic `0x268f58...a5b280`; sonic `0x4a0a58...d26469`; sonic `0xb9bf5e...1efb4c`; base [`0x18f8db...597b9e`](./contracts/base-8453/0x18f8db12fa06524a2b65d8db88c09d18ee597b9e/); base `0x6f90d4...22298c`; base `0x710e3b...2a9b6f`; base `0x98e3f8...6a8793`; berachain `0x9febb2...917297` | ⚠️ Unaudited |
| FastPriceEvents | unknown | sonic | n/a | 3 deployments: sonic [`0x73c041...dd0873`](./contracts/sonic-146/0x73c041adce7f93873f1163dddef2bb1675dd0873/); sonic `0xf14caa...bea539`; berachain `0xb7fb17...2e4d80` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x04417b...32f756`](./contracts/sonic-146/0x04417bb69dd1070d5c95d57534adb1365c32f756/); berachain `0xb0ed71...f7391c` | ⚠️ Unaudited |
| GLP | unknown | base | n/a | 9 deployments: sonic `0x53a29c...d19a7c`; sonic `0x66e484...8470fd`; sonic `0x6fbaee...3f6764`; sonic `0xf66666...13a668`; base [`0x317b79...33ab98`](./contracts/base-8453/0x317b79ac01ed43755f72472b04ad31297e33ab98/); base `0x5b60ce...ca5d19`; base `0xb88fbe...5b053b`; base `0xcc2cea...ed4c0d`; berachain `0x5ce83a...ffc8bd` | ⚠️ Unaudited |
| GlpManager | governance | sonic | n/a | [`0x4de729...64e430`](./contracts/sonic-146/0x4de729b85ddb172f1bb775882f355ba25764e430/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | berachain | n/a | 18 deployments: sonic `0x1aa470...531d96`; sonic `0x26e7f8...fe24fb`; sonic `0x7ca6bb...61081d`; sonic `0x7e1835...42edb9`; sonic `0x8a1fff...4ed895`; sonic `0xc69517...45db58`; sonic `0xcc045f...2e7601`; sonic `0xd24e71...4b30df`; base `0x1d2e9a...d7ad94`; base `0x36b4cf...40ee79`; base `0x407b40...c0fad8`; base `0x49b15e...1c7d84`; base `0x6e2705...9e7efb`; base `0x7595dd...1664cf`; base `0xf1c277...182bb6`; base `0xfa7645...82f98e`; berachain [`0x0115ad...299fd5`](./contracts/berachain-80094/0x0115ade88a4ae0fcdc55377832fe3a2736299fd5/); berachain `0x357a3d...e436cb` | ⚠️ Unaudited |
| OrderBook | unknown | base | n/a | 2 deployments: sonic `0x4abaaa...644689`; base [`0x308b06...5955dc`](./contracts/base-8453/0x308b06b2c91705af88e2f90ab978084eb15955dc/) | ⚠️ Unaudited |
| PositionManager | governance | sonic | n/a | 2 deployments: sonic [`0x68b87d...1c02c4`](./contracts/sonic-146/0x68b87dee9f6e63c41b6b98333beff257e21c02c4/); berachain `0xe50095...19619e` | ⚠️ Unaudited |
| PositionUtils | unknown | sonic | n/a | 7 deployments: sonic [`0x1deebc...8f683b`](./contracts/sonic-146/0x1deebc604de722de4b3375efb8e7b875d08f683b/); sonic `0x6a81dc...cdbdcf`; base `0x4dfb92...27bcee`; base `0x79260b...f93ffe`; base `0x8e7bfb...66fadd`; base `0xe962b2...20ed68`; berachain `0x2ead13...46a710` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x0da1ff...841a4c`](./contracts/sonic-146/0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c/); base `0xd80630...d2aab8` | ⚠️ Unaudited |
| ReferralStorage | token | sonic | n/a | [`0xb9ef21...db26ac`](./contracts/sonic-146/0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | sonic | n/a | 7 deployments: sonic [`0x2a7663...c22a6a`](./contracts/sonic-146/0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a/); sonic `0xb6600b...e5a3e6`; sonic `0xd24c21...db2b27`; sonic `0xfcb51c...3b6172`; base `0x931d55...0dedcc`; base `0xf9e2aa...58935e`; berachain `0x307793...47c54c` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | berachain | n/a | 3 deployments: sonic `0xe72a2d...68e80f`; base `0xa9b2e8...bb2a78`; berachain [`0x2d1a40...a50935`](./contracts/berachain-80094/0x2d1a4048467f84c5cd4f6efb386002a90ba50935/) | ⚠️ Unaudited |
| RewardTracker | unknown | base | n/a | 8 deployments: sonic `0x2e2367...86a5d3`; sonic `0x765d54...36f469`; sonic `0xb895e3...942ff9`; sonic `0xce0a0e...3aa081`; sonic `0xf3d911...9709a7`; base [`0x12905e...3be051`](./contracts/base-8453/0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051/); base `0x1dc520...1a07a3`; berachain `0x99f31e...5695b6` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: sonic [`0x451d21...1c5a2c`](./contracts/sonic-146/0x451d212c080267fef47fd777002c9186e61c5a2c/); base `0x700d16...917af6` | ⚠️ Unaudited |
| ShortsTracker | unknown | berachain | n/a | 9 deployments: sonic `0x463211...0923ce`; sonic `0x9566d2...4aa9d4`; sonic `0xa12a27...4e59ac`; sonic `0xc5e991...ab661b`; base `0xc80b46...c6d99a`; base `0xce0a0e...3aa081`; base `0xe727c1...e98eed`; base `0xead671...ccbea3`; berachain [`0x26e5ae...6beb34`](./contracts/berachain-80094/0x26e5aeda6bd94de1a2088b08a3a4e830cc6beb34/) | ⚠️ Unaudited |
| TokenManager | unknown | sonic | n/a | 8 deployments: sonic [`0x09a29d...f59e25`](./contracts/sonic-146/0x09a29d7a8e2de8516b426dd9cae8ce7d9cf59e25/); sonic `0x9e54a4...81a5e9`; sonic `0xe47518...faafe4`; base `0x320bb0...a1c583`; base `0x606b15...b2d822`; base `0xa90da7...a28c32`; base `0xc69517...45db58`; berachain `0xfd3529...7609ee` | ⚠️ Unaudited |
| USDG | unknown | sonic | n/a | [`0x8846d3...bc04a3`](./contracts/sonic-146/0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3/) | ⚠️ Unaudited |
| Vester | unknown | base | n/a | 8 deployments: base [`0x059580...f992b4`](./contracts/base-8453/0x059580ac18587202fe37aa53d29f44d42df992b4/); base `0x57a83d...d29341`; base `0x78c256...6d32a9`; base `0x85c456...6be190`; base `0xe042d6...48942c`; base `0xee773e...520f36`; base `0xf71525...26bacd`; base `0xff00d5...5c3507` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x232d70...4d8ccd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3cdd8b...37be2f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x41809e...227702` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5e7ef6...24b2ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8c38c6...ca7a32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8fb00e...1803cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbab693...b6571b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcb752d...4bc83c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd467fd...af44c5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc550e...412852` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a86f1...589226` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5384e8...62e3ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x879db5...b90f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96d61e...f1ee12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x993f3b...f05014` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd543f1...f31876` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7d19f...1b6c86` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Amped Finance Final Audit Report.pdf](https://github.com/BlockApex/Audit-Reports/blob/3d1df707bc6df3f761981b33007f8f32057c6654/Amped%20Finance%20Final%20Audit%20Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | n/a |
| [Amped Finance V2 (Staking).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Amped%20Finance%20V2%20(Staking).pdf) | BlockApex | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x2c21b7...7acbcc`](./contracts/base-8453/0x2c21b7f9ed391111628633f391c122b9357acbcc/) | Vault | unknown | $9.69 | Verified native implementation with $9.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4cae73...c04fca`](./contracts/sonic-146/0x4cae73a23078e7a94d1e828fa3baba5080c04fca/) | AmpedOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0296c7...3cc3bb`](./contracts/sonic-146/0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb/) | AmpedRewardsRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19ae11...afb768`](./contracts/sonic-146/0x19ae11ffe762b58f2595b5f7b511a6e748afb768/) | AmpedStakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d4ab8...acc3bc`](./contracts/sonic-146/0x1d4ab8cc7552f76654cfae4155854e5235acc3bc/) | AmpedSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xac6114...01c1b4`](./contracts/sonic-146/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/) | AmpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18f8db...597b9e`](./contracts/base-8453/0x18f8db12fa06524a2b65d8db88c09d18ee597b9e/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x73c041...dd0873`](./contracts/sonic-146/0x73c041adce7f93873f1163dddef2bb1675dd0873/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x04417b...32f756`](./contracts/sonic-146/0x04417bb69dd1070d5c95d57534adb1365c32f756/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x317b79...33ab98`](./contracts/base-8453/0x317b79ac01ed43755f72472b04ad31297e33ab98/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4de729...64e430`](./contracts/sonic-146/0x4de729b85ddb172f1bb775882f355ba25764e430/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0115ad...299fd5`](./contracts/berachain-80094/0x0115ade88a4ae0fcdc55377832fe3a2736299fd5/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x308b06...5955dc`](./contracts/base-8453/0x308b06b2c91705af88e2f90ab978084eb15955dc/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x68b87d...1c02c4`](./contracts/sonic-146/0x68b87dee9f6e63c41b6b98333beff257e21c02c4/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1deebc...8f683b`](./contracts/sonic-146/0x1deebc604de722de4b3375efb8e7b875d08f683b/) | PositionUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0da1ff...841a4c`](./contracts/sonic-146/0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb9ef21...db26ac`](./contracts/sonic-146/0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2a7663...c22a6a`](./contracts/sonic-146/0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2d1a40...a50935`](./contracts/berachain-80094/0x2d1a4048467f84c5cd4f6efb386002a90ba50935/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12905e...3be051`](./contracts/base-8453/0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x451d21...1c5a2c`](./contracts/sonic-146/0x451d212c080267fef47fd777002c9186e61c5a2c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x26e5ae...6beb34`](./contracts/berachain-80094/0x26e5aeda6bd94de1a2088b08a3a4e830cc6beb34/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x09a29d...f59e25`](./contracts/sonic-146/0x09a29d7a8e2de8516b426dd9cae8ce7d9cf59e25/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8846d3...bc04a3`](./contracts/sonic-146/0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x059580...f992b4`](./contracts/base-8453/0x059580ac18587202fe37aa53d29f44d42df992b4/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
