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
| PositionRouter | adapter | sonic | n/a | 4 deployments: sonic [`0x69e44517d74709d552a69046585bef02d8c34d5b`](./contracts/sonic-146/0x69e44517d74709d552a69046585bef02d8c34d5b/); sonic `0x6d9ae9634c3e73c68189f80914e15139d2732c38`; base `0xff2b2953c11d1b431fa03daa12489124d8e47bdb`; berachain `0xdc4a73232536833a080dfbb16a1c053e8f733c85` | ✅ Audited |
| Timelock | governance | base | n/a | 3 deployments: sonic `0xe97055c9087458434bf95deda69531408cc210b5`; base [`0x69e44517d74709d552a69046585bef02d8c34d5b`](./contracts/base-8453/0x69e44517d74709d552a69046585bef02d8c34d5b/); berachain `0xfce9fb0fd92d6a19b1ee1ccaeb9d0480617e726e` | ✅ Audited |
| YieldBearingALPVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x9a2a5864b906d734dcc2a352ff22046fa5c8dd13`](./contracts/sonic-146/0x9a2a5864b906d734dcc2a352ff22046fa5c8dd13/); sonic `0xfa9a3a721ba614c589dcd6062578123f998d3a34` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | base | n/a | 11 deployments: sonic `0x4073c6f265560e215e366dfa6748efff5b7da53d`; sonic `0x4cda0242b345ba5519d07f9459fb5b8ce967fce4`; sonic `0x5b8caae7cc6ea61fb96fd251c4bc13e48749c7da`; sonic `0xe042d6918769d471519b1d8c6342c5297a48942c`; base [`0x2c21b7f9ed391111628633f391c122b9357acbcc`](./contracts/base-8453/0x2c21b7f9ed391111628633f391c122b9357acbcc/); base `0x463211aaf70b8505efdd344ac99ec744180923ce`; base `0x46fb53cdfa8abc89f689b8e66e6134c6ff5cfdc0`; base `0x4f69bd285224d0965f211b206ce8f9ede69aba30`; base `0xaa5f2390058e841f67e6c4f4ea939b45af90130c`; base `0xed33e4767b8d68bd7f64c429ce4989686426a926`; berachain `0xc3727b7e7f3ff97a111c92d3ee05529da7bd2f48` | ⚠️ Unaudited |
| AmpedOFT | unknown | sonic | n/a | [`0x4cae73a23078e7a94d1e828fa3baba5080c04fca`](./contracts/sonic-146/0x4cae73a23078e7a94d1e828fa3baba5080c04fca/) | ⚠️ Unaudited |
| AmpedRewardsRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb`](./contracts/sonic-146/0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb/); sonic `0xb2663b6c8fa27aa20febdc68441df44d4065937f` | ⚠️ Unaudited |
| AmpedStakingRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x19ae11ffe762b58f2595b5f7b511a6e748afb768`](./contracts/sonic-146/0x19ae11ffe762b58f2595b5f7b511a6e748afb768/); sonic `0xd6d8735492c19bdd70c0b929240129475135a15e` | ⚠️ Unaudited |
| AmpedSwapRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x1d4ab8cc7552f76654cfae4155854e5235acc3bc`](./contracts/sonic-146/0x1d4ab8cc7552f76654cfae4155854e5235acc3bc/); sonic `0xe8b485031343d7f38d59c92fa25805a4e72c6a4a` | ⚠️ Unaudited |
| AmpOFT | unknown | sonic | n/a | 3 deployments: sonic [`0xac611438ae5f3953dedb47c2ea8d6650d601c1b4`](./contracts/sonic-146/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/); base [`0xac611438ae5f3953dedb47c2ea8d6650d601c1b4`](./contracts/base-8453/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/); berachain [`0xac611438ae5f3953dedb47c2ea8d6650d601c1b4`](./contracts/berachain-80094/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/) | ⚠️ Unaudited |
| EsGMX | unknown | base | n/a | 9 deployments: sonic `0x1ab02347d787a144a7fbc934a9b96420d46e9ed8`; sonic `0x268f584ced60a8086ec5fbfc251a3dcfeba5b280`; sonic `0x4a0a58647bd472f96caffbc85f61da0fd6d26469`; sonic `0xb9bf5e6ff815992da064869d1700924cfd1efb4c`; base [`0x18f8db12fa06524a2b65d8db88c09d18ee597b9e`](./contracts/base-8453/0x18f8db12fa06524a2b65d8db88c09d18ee597b9e/); base `0x6f90d47026d0f5d83af793c0dca436154122298c`; base `0x710e3ba3762b092a18de3c986abc7ab6512a9b6f`; base `0x98e3f8d172ecd7e897d4408a5a12d66cb26a8793`; berachain `0x9febb22167b2bf6a60dfd7bd97d8674bfc917297` | ⚠️ Unaudited |
| FastPriceEvents | unknown | sonic | n/a | 3 deployments: sonic [`0x73c041adce7f93873f1163dddef2bb1675dd0873`](./contracts/sonic-146/0x73c041adce7f93873f1163dddef2bb1675dd0873/); sonic `0xf14caa92759191d50dfa9ef895311e3274bea539`; berachain `0xb7fb171d4950f96bde1b025a0b3d7b4e672e4d80` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x04417bb69dd1070d5c95d57534adb1365c32f756`](./contracts/sonic-146/0x04417bb69dd1070d5c95d57534adb1365c32f756/); berachain `0xb0ed71ec87ba03cd42f0771337efde59f4f7391c` | ⚠️ Unaudited |
| GLP | unknown | base | n/a | 9 deployments: sonic `0x53a29cd3f510f433e8a149068cab0cf066d19a7c`; sonic `0x66e484c7cb74f0cf48b97b29129f3985198470fd`; sonic `0x6fbaee8bef2e8f5c34a08bdd4a4ab777bd3f6764`; sonic `0xf6666619cbfcab88478df51e47656dc85b13a668`; base [`0x317b79ac01ed43755f72472b04ad31297e33ab98`](./contracts/base-8453/0x317b79ac01ed43755f72472b04ad31297e33ab98/); base `0x5b60cecb19d39b0f940d8e449501b9a479ca5d19`; base `0xb88fbe82e568ff107c3c87996ccf1c1b425b053b`; base `0xcc2ceac50fa08069352c55199a99f47b6bed4c0d`; berachain `0x5ce83a683196eaea1f120f29ab02e7cee8ffc8bd` | ⚠️ Unaudited |
| GlpManager | governance | sonic | n/a | [`0x4de729b85ddb172f1bb775882f355ba25764e430`](./contracts/sonic-146/0x4de729b85ddb172f1bb775882f355ba25764e430/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | berachain | n/a | 18 deployments: sonic `0x1aa470dcb11065b326989956243b0d7ae2531d96`; sonic `0x26e7f81b20bf04d6b20f7f20f0ddbbba28fe24fb`; sonic `0x7ca6bbbea17e7b1f5a71bf8c55cc1a897b61081d`; sonic `0x7e183579ee2a6540b8e86ff4509444d35142edb9`; sonic `0x8a1fffe2044144093b11786f19976416d94ed895`; sonic `0xc69517c144f3cf770305e12a2ed77604e145db58`; sonic `0xcc045fb520ca88d4ae326107bef62e0b472e7601`; sonic `0xd24e71aa5293c65bf5535cf574c89066134b30df`; base `0x1d2e9aa206f070a87357eec8368fe0f664d7ad94`; base `0x36b4cf6aac883dc75caff2ee4e160b007b40ee79`; base `0x407b4010ec4623bdd7b8cdefbb0283b46ac0fad8`; base `0x49b15e5dbbe851d681ba8b1f4866830b461c7d84`; base `0x6e2705324ebf8bc99b6f03e1c32cf34afd9e7efb`; base `0x7595dd4993b17eecd434ac24d42780213a1664cf`; base `0xf1c2778cb4165ddea8051f95b9c7eeb9de182bb6`; base `0xfa7645734efa7df85e028a1ee1caca9df482f98e`; berachain [`0x0115ade88a4ae0fcdc55377832fe3a2736299fd5`](./contracts/berachain-80094/0x0115ade88a4ae0fcdc55377832fe3a2736299fd5/); berachain `0x357a3d90d3899b68f1ec861ffbeaf4923be436cb` | ⚠️ Unaudited |
| OrderBook | unknown | base | n/a | 2 deployments: sonic `0x4abaaaa32090c745138696d864cb6d68df644689`; base [`0x308b06b2c91705af88e2f90ab978084eb15955dc`](./contracts/base-8453/0x308b06b2c91705af88e2f90ab978084eb15955dc/) | ⚠️ Unaudited |
| PositionManager | governance | sonic | n/a | 2 deployments: sonic [`0x68b87dee9f6e63c41b6b98333beff257e21c02c4`](./contracts/sonic-146/0x68b87dee9f6e63c41b6b98333beff257e21c02c4/); berachain `0xe500955e108c3ff6716c45078187617dfb19619e` | ⚠️ Unaudited |
| PositionUtils | unknown | sonic | n/a | 7 deployments: sonic [`0x1deebc604de722de4b3375efb8e7b875d08f683b`](./contracts/sonic-146/0x1deebc604de722de4b3375efb8e7b875d08f683b/); sonic `0x6a81dc3606bca12573d0ffbb525c253da5cdbdcf`; base `0x4dfb9203e67018cc9f39c2cfca206370a627bcee`; base `0x79260bcc3865ed4fd585d01556dfa1170df93ffe`; base `0x8e7bfba8871d8ae7e3f9451b1c2de98a9466fadd`; base `0xe962b20495645c776bcd53827b94d0776420ed68`; berachain `0x2ead13799cd115189a2cf84340c568569146a710` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c`](./contracts/sonic-146/0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c/); base `0xd806306dc9bf7984a7d5ca997d40d18097d2aab8` | ⚠️ Unaudited |
| ReferralStorage | token | sonic | n/a | [`0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac`](./contracts/sonic-146/0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | sonic | n/a | 7 deployments: sonic [`0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a`](./contracts/sonic-146/0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a/); sonic `0xb6600b4328e417d21a7cfbaa11758f57a0e5a3e6`; sonic `0xd24c217230daf4036e290133861eff4b9adb2b27`; sonic `0xfcb51c49ce6a23d370797a7e3e601046b43b6172`; base `0x931d5560d236e0780fd872331e28d7598e0dedcc`; base `0xf9e2aa1bca944fd78622712f82fd6b1e5358935e`; berachain `0x3077934d15833953bc0fb27f56f45dc56247c54c` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | berachain | n/a | 3 deployments: sonic `0xe72a2d5b3b09c88d4e8cc60e74bd438d7168e80f`; base `0xa9b2e867520ebd705018a4e088057be1cdbb2a78`; berachain [`0x2d1a4048467f84c5cd4f6efb386002a90ba50935`](./contracts/berachain-80094/0x2d1a4048467f84c5cd4f6efb386002a90ba50935/) | ⚠️ Unaudited |
| RewardTracker | unknown | base | n/a | 8 deployments: sonic `0x2e2367f1eb40bfb1553e7503c8011d151286a5d3`; sonic `0x765d548229169e14b397c8c87ff7e8a64f36f469`; sonic `0xb895e3dbfb37a4cc6b4fb50b1cf903608e942ff9`; sonic `0xce0a0e2bba0f2168dd614b1414cfe707c13aa081`; sonic `0xf3d911f81c4a630e755b42c90942e278019709a7`; base [`0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051`](./contracts/base-8453/0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051/); base `0x1dc520f6be4a24691a3fc40470d7c7620d1a07a3`; berachain `0x99f31eb65f8d6d32bbfb99f814c5e83cf75695b6` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: sonic [`0x451d212c080267fef47fd777002c9186e61c5a2c`](./contracts/sonic-146/0x451d212c080267fef47fd777002c9186e61c5a2c/); base `0x700d165ef6e5c79b9bd83d2c328391fe61917af6` | ⚠️ Unaudited |
| ShortsTracker | unknown | berachain | n/a | 9 deployments: sonic `0x463211aaf70b8505efdd344ac99ec744180923ce`; sonic `0x9566d2ef3006781ee81c4ee366598e805a4aa9d4`; sonic `0xa12a2789ef3c84a47ebd87fe570ca597d44e59ac`; sonic `0xc5e99147c4da5a6562ea43bbb8c6aafec7ab661b`; base `0xc80b46d5fcc3832c8193da44c63b9a4817c6d99a`; base `0xce0a0e2bba0f2168dd614b1414cfe707c13aa081`; base `0xe727c1c2d6dbfa1a3dade95caebe2fdc00e98eed`; base `0xead67152e576814179ff71ea1b8f63c68eccbea3`; berachain [`0x26e5aeda6bd94de1a2088b08a3a4e830cc6beb34`](./contracts/berachain-80094/0x26e5aeda6bd94de1a2088b08a3a4e830cc6beb34/) | ⚠️ Unaudited |
| TokenManager | unknown | sonic | n/a | 8 deployments: sonic [`0x09a29d7a8e2de8516b426dd9cae8ce7d9cf59e25`](./contracts/sonic-146/0x09a29d7a8e2de8516b426dd9cae8ce7d9cf59e25/); sonic `0x9e54a4d60533be0e2263f3413c7730412381a5e9`; sonic `0xe475189b92380f3ce7282932b0a7773f66faafe4`; base `0x320bb011fc32b26ca9709753be1c76b6b0a1c583`; base `0x606b1527c9e217483ef82d2df7f4d2c12bb2d822`; base `0xa90da7023cb46d67a7875e462d054713cba28c32`; base `0xc69517c144f3cf770305e12a2ed77604e145db58`; berachain `0xfd35299b27d571a47e1f79aa51bbdcb0e07609ee` | ⚠️ Unaudited |
| USDG | unknown | sonic | n/a | [`0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3`](./contracts/sonic-146/0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3/) | ⚠️ Unaudited |
| Vester | unknown | base | n/a | 8 deployments: base [`0x059580ac18587202fe37aa53d29f44d42df992b4`](./contracts/base-8453/0x059580ac18587202fe37aa53d29f44d42df992b4/); base `0x57a83d7ce1cfab635bc11808c121c250d2d29341`; base `0x78c2569a5f9975098dcf6c249b8f1d88d66d32a9`; base `0x85c456b052dbbfeb43d4fab1d72e077fab6be190`; base `0xe042d6918769d471519b1d8c6342c5297a48942c`; base `0xee773ed72cfcfb2312dda8a72479d045a2520f36`; base `0xf71525effc089a19e80fc38d8f21e1b6ef26bacd`; base `0xff00d54defbd6ba40f6b3ec241e6056d315c3507` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | sonic | n/a | `0x232d70ea7e017d64a96b8bf6f294158ff74d8ccd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3cdd8ba201d713d1b9317395026d3443a237be2f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x41809e04152905fa0239ec31cadf3a4113227702` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5e7ef69e64ed6ae731abd15649c24e721124b2ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8c38c685eb2b8b61e2a4707805b8240cc6ca7a32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8fb00ec153dd5f0f71f40c174e1838c4d21803cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbab693bcae9e05ac907d1d0bab3d852671b6571b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcb752d40a2a46ce9afe2186c161313772f4bc83c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd467fd4657e8b82b70db58f7b1031c4e15af44c5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc550e89cc7cfac17baf891767816dabc0412852` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a86f1a4d1aa438464ac70e51b19cf3851589226` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5384e8bc4d1c235dc479001a23decf4a3662e3ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x879db5cf6b3f7f66e31ac40e546acfc057b90f95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96d61e8811af80576351feb6023cc165b7f1ee12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x993f3bf8e23d69c6f58afe6e0e3cd419bdf05014` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd543f1563a4aa3a189d4011104f2c5d8c0f31876` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd7d19ff25f3bc168e4b0a19c048a4c2e491b6c86` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Amped Finance Final Audit Report.pdf](https://github.com/BlockApex/Audit-Reports/blob/3d1df707bc6df3f761981b33007f8f32057c6654/Amped%20Finance%20Final%20Audit%20Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | n/a |
| [Amped Finance V2 (Staking).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Amped%20Finance%20V2%20(Staking).pdf) | BlockApex | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x2c21b7f9ed391111628633f391c122b9357acbcc`](./contracts/base-8453/0x2c21b7f9ed391111628633f391c122b9357acbcc/) | Vault | unknown | $9.69 | Verified native implementation with $9.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4cae73a23078e7a94d1e828fa3baba5080c04fca`](./contracts/sonic-146/0x4cae73a23078e7a94d1e828fa3baba5080c04fca/) | AmpedOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb`](./contracts/sonic-146/0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb/) | AmpedRewardsRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19ae11ffe762b58f2595b5f7b511a6e748afb768`](./contracts/sonic-146/0x19ae11ffe762b58f2595b5f7b511a6e748afb768/) | AmpedStakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d4ab8cc7552f76654cfae4155854e5235acc3bc`](./contracts/sonic-146/0x1d4ab8cc7552f76654cfae4155854e5235acc3bc/) | AmpedSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xac611438ae5f3953dedb47c2ea8d6650d601c1b4`](./contracts/sonic-146/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/) | AmpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18f8db12fa06524a2b65d8db88c09d18ee597b9e`](./contracts/base-8453/0x18f8db12fa06524a2b65d8db88c09d18ee597b9e/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x73c041adce7f93873f1163dddef2bb1675dd0873`](./contracts/sonic-146/0x73c041adce7f93873f1163dddef2bb1675dd0873/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x04417bb69dd1070d5c95d57534adb1365c32f756`](./contracts/sonic-146/0x04417bb69dd1070d5c95d57534adb1365c32f756/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x317b79ac01ed43755f72472b04ad31297e33ab98`](./contracts/base-8453/0x317b79ac01ed43755f72472b04ad31297e33ab98/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4de729b85ddb172f1bb775882f355ba25764e430`](./contracts/sonic-146/0x4de729b85ddb172f1bb775882f355ba25764e430/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0115ade88a4ae0fcdc55377832fe3a2736299fd5`](./contracts/berachain-80094/0x0115ade88a4ae0fcdc55377832fe3a2736299fd5/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x308b06b2c91705af88e2f90ab978084eb15955dc`](./contracts/base-8453/0x308b06b2c91705af88e2f90ab978084eb15955dc/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x68b87dee9f6e63c41b6b98333beff257e21c02c4`](./contracts/sonic-146/0x68b87dee9f6e63c41b6b98333beff257e21c02c4/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1deebc604de722de4b3375efb8e7b875d08f683b`](./contracts/sonic-146/0x1deebc604de722de4b3375efb8e7b875d08f683b/) | PositionUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c`](./contracts/sonic-146/0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac`](./contracts/sonic-146/0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a`](./contracts/sonic-146/0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2d1a4048467f84c5cd4f6efb386002a90ba50935`](./contracts/berachain-80094/0x2d1a4048467f84c5cd4f6efb386002a90ba50935/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051`](./contracts/base-8453/0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x451d212c080267fef47fd777002c9186e61c5a2c`](./contracts/sonic-146/0x451d212c080267fef47fd777002c9186e61c5a2c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x26e5aeda6bd94de1a2088b08a3a4e830cc6beb34`](./contracts/berachain-80094/0x26e5aeda6bd94de1a2088b08a3a4e830cc6beb34/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x09a29d7a8e2de8516b426dd9cae8ce7d9cf59e25`](./contracts/sonic-146/0x09a29d7a8e2de8516b426dd9cae8ce7d9cf59e25/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3`](./contracts/sonic-146/0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x059580ac18587202fe37aa53d29f44d42df992b4`](./contracts/base-8453/0x059580ac18587202fe37aa53d29f44d42df992b4/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
