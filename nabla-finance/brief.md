# Agentic Audit Brief: Nabla Finance

## Project Overview

- Project: Nabla Finance (`nabla-finance`)
- Website: [https://nabla.fi](https://nabla.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.534Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, base, berachain, hyperliquid
- Contract surface: 216 unique implementations (218 raw deployments)
- DeFi Llama TVL: $89,239.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 38 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 24 common project-authored base contract(s) (mintcontroller, controller, fiattokenv2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 225; live-surface contracts included: 217 (20 live, 197 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 19 of 216 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 197
- Unique implementations: 216
- Raw deployments: 218
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| CreditMessaging | unknown | berachain | n/a | [`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`](./contracts/berachain-80094/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | ⚠️ Unaudited |
| DegenToken | token | base | n/a | [`0x4ed4e862860bed51a9570b96d89af5e1b0efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | berachain | n/a | 2 deployments: berachain [`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`](./contracts/berachain-80094/0x808d7c71ad2ba3fa531b068a2417c63106bc0949/); berachain `0x9d1b1669c73b033dfe47ae5a0164ab96df25b944` | ⚠️ Unaudited |
| FiatTokenProxy | token | arbitrum | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/arbitrum-42161/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | berachain | n/a | 2 deployments: berachain [`0x549943e04f40284185054145c6e4e9568c1d3241`](./contracts/berachain-80094/0x549943e04f40284185054145c6e4e9568c1d3241/); berachain `0xa272ffe20cffe769cdfc4b63088dcd2c82a2d8f9` | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | n/a | [`0x912ce59144191c1204e64559fe8253a0e49e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| NablaToken | token | base | n/a | [`0x01ed85d73645523b0d62c7a8e35d03601cfd679b`](./contracts/base-8453/0x01ed85d73645523b0d62c7a8e35d03601cfd679b/) | ⚠️ Unaudited |
| OFTTokenERC20 | token | berachain | n/a | [`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`](./contracts/berachain-80094/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x2da56acb9ea78330f947bd57c54119debda7af71`](./contracts/base-8453/0x2da56acb9ea78330f947bd57c54119debda7af71/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| TokenMessaging | token | berachain | n/a | [`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`](./contracts/berachain-80094/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ⚠️ Unaudited |
| WBTCOFT | token | berachain | n/a | [`0x0555e30da8f98308edb960aa94c0db47230d2b9c`](./contracts/berachain-80094/0x0555e30da8f98308edb960aa94c0db47230d2b9c/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x5555555555555555555555555555555555555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (197)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x0d9ce4cf91010d1a2fb244764a9e4cdb68279a2e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1056d102859a57c8aaa4adab2adf5539abddb7ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x11b406e3ee7b17ddf02b6c2ffb7c5eebc156276c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x15dacd840c80aee6628a5ddd3b349b0177a6378e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x194f3463be447d64dc128d455c17fbcbbea3c516` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1f0f3ce139f9ed7d366b8158e0d39c054c109b59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fa1fdb386831ec296127ce0b5fe08a8df296811` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fe0bf853b3a4b387c3fb6a935583adb3ccafc9e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x212376cd5200d2f31e136cbdf47fb49e4248d0ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2341ca23162c9f158539bf858952b17d15ff4b81` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2634ef304be768875f1755fbb2ebcb726c8a207d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28378112545c6c3e7f2cdba7a42a32a9b2eef44c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28901e3db932bb10c2a5d27a91700f9e039b2840` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29403e677b3139de8a1b4a2483d6f494280199a1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29f4af4e2cf5d5feb428154fc899eee51e65022d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2cd52ff130fd8c4cb1f83c9a179c41fbb06d2363` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37470469514f94f0b7693b47d6a2c125b5def97d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3785743e528d3aea2c6df34b74fb5e01275fb560` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37b5249388a5e725afe3dc9fd62b19792bd57d78` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3ab3108b4793ba6ef09c23212fd0372506b2110b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3e3ae8d635c85ae039cfcaa0d1793e055021c8c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x41cb73fa7f222e80da0374a68837bfa9def249aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45a2c9fbc307a13c2737cef9e00c1555c2f8c948` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45f1198f37a48f5de4e84631c6bbde06cfc3aaee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4e9f70b1e71c482f424aa873398a25c2350d457a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4fbe5240d2b2b24afdabc561a27c08cff5d4e2d3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x503b62aec92949daa21a8f890f5beaecf26b4a0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57a90b424d53560e8602b0eb897ec25a4e4fa97e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x59e4c75f68a01a4ff9c175a6fba2735f3398872e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c235275583048bf99c14c1e20de35eeb23aadd7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c542ce2e3dc25b4ef197b79b239261aae27b3dd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e8f295d630bd4025246827c9ddd05d1c7385c97` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4d79fc8f8664791b314a6837f85c9ecee5cec6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x60bd06609198324f7940f4d7b4cc10ec4dc74366` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6288d777364d4c4b70fd5205bfc1550abb075b00` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x64e141d7b5549d498d3fe19c569269de6175ce98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66972793600e76f75fbd6e16887e19025534774e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6a5696a064587e7f4ee46bc734ced4373ca96e7e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6b1b4ad1dc5afb7be6bb7bf43fcf0987111444d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74de33528b927b474d03387694294ec8fa3c186e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7a68527f6a99c7e59a103f17569a786d4da7ae8a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7bad498b9687555c4c846b1a8f75aa73c40f23fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c9afa3eea9134348a0f985c5409edc0f72aea0c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7f5e344eed929e870546e3a4b38ac8b30f7297b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8319ebf0a2b29ad1c57464e5f2eac3a0ca2fa891` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8426d3de775f77c7226f89eed6839b288639ad73` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87e33a7ec44ba8c645d1b9bd1552aae828698f9b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87f4afd649c99f3f95c9a636b3527a9a73d96562` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8c50492e490f8743c860648bade5f606d12b20a6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8cea8053ebfc5943dbd3f6d956a48a4ef25d7f53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x94ef116101fc3f065c12760d6f365ce5c467f759` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x95e4f35d6a8fea879bdb8ed2e4e2ae24d1c97f59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x97d40a879288e02e39d3be633a9e68699b0425ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9cd99f771e4de2dce03d485842c75e9852295057` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa16360e1799295dc85876409b5a77e2943730237` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa25a7258e293db5d1f4e9aa4c1f23cabd77b6620` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa2ab9c57e481dd21cd83260ff43a78a3b81939ff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa69eec6da8718f143836761e560811b1e7722181` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0adcf0970857cb5b982ff5b126765bc3898b832` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0b504d0297817aefb15e19f00c7a9c009cc3b7f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0bb9a129cbf46ec8c0485c93b0a0969e3281477` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb230e6cdce82a03e0b9707338066c50973b29853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb2677fc3321310e365ce95e11f3036ec31c78ea3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb5e4c3ca3d1d804da0c1808cf60dded6ff3b65e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xba97b1df2dc92d9f1cdd8af2cd31edb189990c61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbb534b5bcb68ed54a086d2f6d20c8db2e836b9ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc2490e94145f5dccd957c8fbbeb5b105f7887ce5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc85d882809c1d59400cfdd5fc8a4f079b556705d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc943749ac2dea167efb5cc1a262b1bb0e52d34bc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca450ad7dc390b18556455cc20eb05fbab2a3818` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcb0dea1f8a413c409dc1470c144395ce79c5aea8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd98461a61c9f607b7e43a8fcbfebbac08d9576c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdae61465b8a2a82b854edf571eeb85ce00099b6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc49a90a961bb655a06ada41d46062d23e3bbc38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc557e9e9d48176438e320061a8ebe769012ee49` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc67121374fa14823a64c1e9ee8ddcf2941d9d7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdca0a283fc529614f4504916eeee666043b3d2e9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde73e62887d1e7796b5a3dfa511c639640aa3c55` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc0f76bad51bd3bca979a6332ae1b186e83ce3d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3cb384268de2eae6eaf3ddcec08317a8df52825` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe62b7c96f9b804742d2cbd57613f19bda82d426f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6b08bb0bc198c4ae4389bd645d07e4389c8e3bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6e9b6a134dae24840ac97c4b34b2330cc428b8e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea520607cd1421c8b76cf50ece7424107b2e7fea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1ae7bbdc76f52be9a726321c05eaccf1176ea1f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf341702ef2a13223f95f5e6adc037e28f9cb7606` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf346bcfb7f65c7f6ebe79e6b8af9fee8c7fe352c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf45505fd051a02c1eb8ad16361d27afb21d3338a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfad4f355c196aa3ee50428d1815d7407ab3b506b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfbcb7de34d87ff476eb4ed76078ae3aea59c160f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfc68ee780c02275b493f2618caa979bfacbd152a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe013688f0ee88fb817defff468ca4f1bb36e75f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0706e6e34a1bdadcd5b3fee933fe9262598e8992` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x123456c6c27bb57013f4b943a0f032a0ab9c12eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x232087bda1f556e000e9954f63c4eaece1f4d90b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x276d61f41fed44a9a5fc0aadbf5b328173197fe3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2966dfe547d36ab3e69f1cfff05ac41148c0ff89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e56ce8c5e28d02113974856a2e92b20787674f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44c4b9c0d9e04860360c7ac0afb673beebe7a96a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4835c7a29e60a8b5ab97af1fa05e3fa7160ef012` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ec0c3aa105b7d41249467593dcefff2fe0995b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50841f086891fe57829ee0a809f8b10174892b69` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63c9949acfc7deee3536d85acd86dcf88eb210b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65e85e44b9d91770e565eaa7d2cfbd8031c0fa5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6821f0a4e140d1b5b74db35cc69315b11476f6fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a2f1de07dcfc6850388469fe81eb8029d8fcf3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70f29bde583ebb33103bab5f4f6a44b633eb939f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7312487c5defe0e74d1d9dbc06b460fc5ae11f6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x791fee7b66abef59630943194af17b029c6f487b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d970c59248124290c401c1a3f036c008f1c1983` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831d187ec2a14b8650dc778bf87bf6bb2603f16e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84bec2c11fe71da8af8dafba44f4ddf3769c494d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8661d1a07c95ef0728f90c93604be4738ac42794` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89f57d325661018f8e15c1bc0576aa1bca5eab6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x925d2452185d4fa38c77fec56fac4a136bbe5976` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cae340091c59752acd139bf6a1211a480c38005` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa087f5568a1ad08d19151320cd7fa3a90ca9333b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa35933bc925215954d25c4037b351e075294c905` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa822303d6567642adc152c7cec941da7acc8c9be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa83a20f4dcab1a63a9118e9e432932c8beb39b85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeeca60d3d9262250ad1f1dea0b73f65aea787cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf60721650ff816d54dc82608486d779f9b35e6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb11ad729bcfa66167025e94872faae2ffc4cd457` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbfe5d953401bffc066f599ef0994036128abfa21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb1f2b52edccd157aeb0ab3b5456e3fadafe8813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd24d145f5e351de52934a7e1f8cf55b907e67fff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd739ec3e59ad967299a6f601de8610bc3fd27aa9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8f26dea84b13600039747b59797e615767dab0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec74e14fbe7d473c929399dc9ca532bedb069974` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeef559a37d7e4a5d0208059b3c4a951feab3ef8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7e21fbbd49557049fa0e8eb83993510aed56867` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x058a0875db2168af97bbf01043c3e8f751ccd9a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10733011e9adc4039359daeb7c8854fc7acaa6e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x163ccf95645f0559d3a95cea3c2ff92c5833a973` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e09878713d143b5b35d4b91cee481986a7451eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e577ce9bccc1edbff45306820df5e4a0c005849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x272df896f4d0c97f65e787f861bb6e882776a155` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x305681fecf6264af6205dde712ef64d3a4aaa4d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x337b03c2a7482c6eb29d8047ea073119dc68a29a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3aa4b1a6bd67060399d547ffa94bacb027a0318c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x411ef79fe9df8ba82a09c7e93fde85af5732bf12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44154d39ff43779fc8c951183acfb03214f0971d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44f80569d0fc17173ceabf96fa192b195d82303b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47eecfc425ce72ea8870919a4c203b2c60bbe0c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x485a9102758797e71f50eea85cefe90e47d2b603` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bbc029b09298de95384732d32c596397389bdd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cc48fde2296e49e7da73159c0bf0f89bd8af4aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d044dc45fba99e3f75040061b5b82c0c81dd3c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5045546c2b1c772ef835bb24c106abda4b90b478` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53a87f2017edcdb4c87e13dc2b1328c325d1afbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x563a8aab5012d8b7496df9053f52be2089269859` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5862f4917c12d30d3ff55ca4d80c8d6fcc777408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e6b5c3b33f944df34eee7bc80d5e003c04c7164` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68c395e60cf20c2bfc06a2a0ee9c5b6d8d4b8abb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a482f8570df45d8bea44ee726228ff77b569920` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b6b232720d4c593c13fb1027c5035c5d58fb3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7666a226b7f2291a5a63077b536f3b716a87c35d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bcfc8b8ff61456ad7c5e2be8517d01df006d18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c9afa3eea9134348a0f985c5409edc0f72aea0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898f11b24ce1a46e0419fc82c34c1e64855fc80e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c50492e490f8743c860648bade5f606d12b20a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e74edec44bcde30bbfffbfd583acbf09eb00d39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa124de3617e643678382aed6f2747ee7d69aa561` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2ab9c57e481dd21cd83260ff43a78a3b81939ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5900362310c0f577b6a63ee66552711ee3f8eeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5b14e5b3f41f9f2182361cb05266540529d07a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2677fc3321310e365ce95e11f3036ec31c78ea3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7738818e251ccd5c357a8e18cf09fd6570599b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5bc1600bb4d71d0dc12a6ca545d274cdfe21d0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc85d882809c1d59400cfdd5fc8a4f079b556705d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9752a517873487f9066eb73c07b1a2576422a0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca8b86bbbb840042bd6019ecc81c5fbe1a35b8d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb94eee869a2041f3b44da423f78134afb6b676b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc5544c63392952b6f94a695f8f9e153f4284a87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb68e17af84f0c987a83467b860c2387ac0373da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe70292d6054b753214d555930e0f11cd7206efeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9accdb6a6d4210d6e41646e20283bb81d7bb4d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeccd1d98f0af35bcb777d7b8d37f3d8d969a4584` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1df596077c10d21bfaea029d951a3c5f858264f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf82bfa4a19465b83e447247dfa821cadb4b7f185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeeaa07954c635d6619e9992ab608a3d67412afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffe48fa746e679b6914458b59d997cae809e1b45` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x00ded72c7651526fdf66ded867c3c7421587d85a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1f917fe724f186a1ffa7744a73afed18c335b9ec` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x42989e6ea7b05f40d62ff9a48c3a91dfeeea0c4b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x68f75f635995006d82cb0aa49aa30341dcd24e71` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6d6190da8fd73e0c911929ded2d6b47ce066e441` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6da5327073176670a40d43e0b8081a53530e2440` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x824d8fcdc36e81618377d140bec12c3b7e4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8756fd992569e0389bf357eb087f5827f364d2a4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x896bded4b4a89c1104587dd045c1b441110b8b5f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9b5a425a9f4b4411d42b21caacf86d026dce43ec` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9c155cbf5dccf35613dae41b0e00925e30f8ee2c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9dc06a739dfcaa09660b3ec6ed421fa5bf1f2bb6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xba8cc2ac11cbb65f542ff59a3af5655940fb3282` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe971445787dcb0bb577610126287ded493dddae7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfa158cf7cd83f418ebd1326121810466972447f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Nabla-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Nabla-security-review.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x45a01e4e04f14f7a4a6702c74187c5f6222033cd`](./contracts/berachain-80094/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4ed4e862860bed51a9570b96d89af5e1b0efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | DegenToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x808d7c71ad2ba3fa531b068a2417c63106bc0949`](./contracts/berachain-80094/0x808d7c71ad2ba3fa531b068a2417c63106bc0949/) | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/arbitrum-42161/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x549943e04f40284185054145c6e4e9568c1d3241`](./contracts/berachain-80094/0x549943e04f40284185054145c6e4e9568c1d3241/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x912ce59144191c1204e64559fe8253a0e49e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | L2ArbitrumToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01ed85d73645523b0d62c7a8e35d03601cfd679b`](./contracts/base-8453/0x01ed85d73645523b0d62c7a8e35d03601cfd679b/) | NablaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590`](./contracts/berachain-80094/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2da56acb9ea78330f947bd57c54119debda7af71`](./contracts/base-8453/0x2da56acb9ea78330f947bd57c54119debda7af71/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6`](./contracts/berachain-80094/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0555e30da8f98308edb960aa94c0db47230d2b9c`](./contracts/berachain-80094/0x0555e30da8f98308edb960aa94c0db47230d2b9c/) | WBTCOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5555555555555555555555555555555555555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 197 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13545] Nabla-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
