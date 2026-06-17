# Agentic Audit Brief: Across

## Project Overview

- Project: Across (`across`)
- Website: [https://across.to](https://across.to)
- Lifecycle: active (Tier 0, 88.8% below peak)
- Generated: 2026-06-17T07:00:37.715Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora
- Contract surface: 104 unique implementations (357 raw deployments)
- DeFi Llama TVL: $20,101,835.26
- On-chain TVL (included contracts): $27,674,035.87
- TVL by chain: Ethereum $27,154,708.39 | Optimism $431,080.26 | Base $64,189.73 | Blast $15,958.92 | Unichain $7,905.39 | Arbitrum $186.43 | Hyperliquid $6.65 | Bsc $0.10 | Plasma $0.00

## Project Description

Across is an intent-based cross-chain bridge and interoperability protocol. Its core architecture centers on an Ethereum HubPool, chain-specific SpokePools, relayers that fill user transfer intents, and bridge/swap API and periphery contracts. Contract-surface analysis should focus on verified Across-owned deployments and clearly separate external tokens, infrastructure, and inherited dependencies; supported networks may include EVM and non-EVM chains where applicable.

### Architecture

The 'Chains Live on the Swap API' family forms the core bridge infrastructure, with SpokePools on each chain interacting with a central HubPool (from 'Check Bond Requirements') to coordinate cross-chain transfers. The original 'Across' family represents an earlier version of the protocol, while 'Uniswap' and 'Generate a deposit address' provide token and utility support for the bridging mechanism.

## Contract Surface Quality

- Indexed contracts: 550; live-surface contracts included: 357 (341 live, 16 unknown).
- Excluded by liveness: 157 inactive, 36 singleton, 0 uninitialized.
- Deployment units: 35/53 live.
- Detected codebases: none
- Unverified dependencies: 8/49.

## Audit Coverage Summary

- Verified implementations audited: 9/67 (13.4%)
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 2
- Unverified implementations: 37
- Unique implementations: 104
- Raw deployments: 357
- Audits discovered: 11
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $9,103,379.09
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 9 stale, 1 unknown
- Tier 1 coverage: 13.4% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 9 | 13.4% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HubPool | core_logic | ethereum | n/a | [`0xc186fa...48beda`](./contracts/ethereum-1/0xc186fa914353c44b2e33ebe05f21846f1048beda/) | ✅ Audited |
| Optimism_SpokePool | core_logic | optimism | unit-18158 | [`0x6f26bf...3c0281`](./contracts/optimism-10/0x6f26bf09b1c792e3228e5467807a900a503c0281/) | ✅ Audited |
| Ethereum_SpokePool | core_logic | ethereum | unit-18156 | [`0x5c7bcd...ed35c5`](./contracts/ethereum-1/0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5/) | ✅ Audited |
| Blast_SpokePool | core_logic | blast | unit-18208 | [`0x2d5091...5cc6e1`](./contracts/blast-81457/0x2d509190ed0172ba588407d4c2df918f955cc6e1/) | ✅ Audited |
| Arbitrum_SpokePool | core_logic | arbitrum | unit-18202 | [`0xe35e98...7c5f2a`](./contracts/arbitrum-42161/0xe35e9842fceaca96570b734083f4a58e8f7c5f2a/) | ✅ Audited |
| VotingToken | token | ethereum | n/a | [`0x04fa0d...2ef828`](./contracts/ethereum-1/0x04fa0d235c4abf4bcf4787af4cf447de572ef828/) | ✅ Audited |
| Finder | unknown | blast | n/a | [`0x3bad7a...6cdd96`](./contracts/blast-81457/0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96/) | ✅ Audited |
| Linea_SpokePool | core_logic | linea | n/a | [`0x09aea4...7bec64`](./contracts/linea-59144/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/) | ✅ Audited |
| Polygon_SpokePool | core_logic | polygon | unit-18163 | [`0x9295ee...e7f096`](./contracts/polygon-137/0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096/) | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| OP_SpokePool | core_logic | base | unit-18196 | [`0x09aea4...7bec64`](./contracts/base-8453/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/) | ⚠️ Unaudited |
| OP_SpokePool | core_logic | unichain | unit-18162 | [`0x09aea4...7bec64`](./contracts/unichain-130/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/) | ⚠️ Unaudited |
| Universal_SpokePool | core_logic | plasma | n/a | 24 deployments: bsc `0x026ed7...b358b5`; bsc `0x64a14b...c885dd`; bsc `0x64f4ae...686fdd`; bsc `0xad285f...4b1059`; bsc `0xc5c047...f9164e`; bsc `0xc5c51b...2af3ca`; bsc `0xcd2346...c4de03`; bsc `0xde7c02...8c4a38`; bsc `0xff0ea0...b11592`; hyperliquid `0x129b61...74527e`; hyperliquid `0x5bee43...37ed68`; hyperliquid `0xbaca1e...6d0b33`; hyperliquid `0xbbc600...1e0a58`; hyperliquid `0xbeabc2...1d5316`; hyperliquid `0xd2aa77...f13941`; hyperliquid `0xefd7ee...a4530f`; plasma [`0x011a76...638478`](./contracts/plasma-9745/0x011a76d5ca7f537b4877d0fb6475065a90638478/); plasma `0x053dc4...cedeb4`; plasma `0x98a970...95a086`; plasma `0xa07470...1c203a`; plasma `0xb0b9f7...1eccd1`; plasma `0xbeabc2...1d5316`; plasma `0xd8866e...c3ca80`; plasma `0xe0fe15...6dd985` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x10d8b8...92b610`](./contracts/ethereum-1/0x10d8b8daa26d307489803e10477de69c0492b610/); optimism [`0x10d8b8...92b610`](./contracts/optimism-10/0x10d8b8daa26d307489803e10477de69c0492b610/); bsc [`0x10d8b8...92b610`](./contracts/bsc-56/0x10d8b8daa26d307489803e10477de69c0492b610/); bsc `0x99ec53...191717`; unichain [`0x10d8b8...92b610`](./contracts/unichain-130/0x10d8b8daa26d307489803e10477de69c0492b610/); polygon [`0x10d8b8...92b610`](./contracts/polygon-137/0x10d8b8daa26d307489803e10477de69c0492b610/); hyperliquid [`0x10d8b8...92b610`](./contracts/hyperliquid-999/0x10d8b8daa26d307489803e10477de69c0492b610/); base [`0x10d8b8...92b610`](./contracts/base-8453/0x10d8b8daa26d307489803e10477de69c0492b610/); plasma [`0x10d8b8...92b610`](./contracts/plasma-9745/0x10d8b8daa26d307489803e10477de69c0492b610/); mode [`0x10d8b8...92b610`](./contracts/mode-34443/0x10d8b8daa26d307489803e10477de69c0492b610/); arbitrum [`0x10d8b8...92b610`](./contracts/arbitrum-42161/0x10d8b8daa26d307489803e10477de69c0492b610/); linea [`0x10d8b8...92b610`](./contracts/linea-59144/0x10d8b8daa26d307489803e10477de69c0492b610/); blast [`0x10d8b8...92b610`](./contracts/blast-81457/0x10d8b8daa26d307489803e10477de69c0492b610/) | ⚠️ Unaudited |
| BOBA | unknown | ethereum | n/a | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BondToken | token | ethereum | n/a | [`0xee1dc6...9002ea`](./contracts/ethereum-1/0xee1dc6bcf1ee967a350e9ac6caaaa236109002ea/) | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | ethereum | unit-18157 | [`0x7355ef...c1e433`](./contracts/ethereum-1/0x7355efc63ae731f584380a9838292c7046c1e433/) | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | ethereum | n/a | [`0xdfe0ec...e64e90`](./contracts/ethereum-1/0xdfe0ec39291e3b60aca122908f86809c9ee64e90/) | ⚠️ Unaudited |
| CoreWithdrawTest | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4859fa...d10bb3`](./contracts/hyperliquid-999/0x4859fad52183fc75663c7719cc14aa7f2cd10bb3/); hyperliquid `0x4cc2d6...deb3c5` | ⚠️ Unaudited |
| CounterfactualBeacon | registry | linea | n/a | 6 deployments: hyperliquid `0x8a5f5a...c2daca`; hyperliquid `0xc186fa...48beda`; hyperliquid `0xfcb61e...49ab70`; linea [`0x18a410...17753a`](./contracts/linea-59144/0x18a4101bee53bf0dfda36faecea99b961417753a/); linea `0x5e531b...fbd873`; linea `0xd4b79a...eea270` | ⚠️ Unaudited |
| DonationBox | unknown | hyperliquid | n/a | 65 deployments: hyperliquid [`0x002e76...f32674`](./contracts/hyperliquid-999/0x002e76dc036a1eff1488ee5435ee66c6abf32674/); hyperliquid `0x038f95...6a3307`; hyperliquid `0x039d62...020583`; hyperliquid `0x1635eb...30a8fe`; hyperliquid `0x170b5b...cf59a3`; hyperliquid `0x1d7c13...9d428e`; hyperliquid `0x213310...e012e4`; hyperliquid `0x243a60...f2dae7`; hyperliquid `0x2e8986...66c385`; hyperliquid `0x3077e1...4472e0`; hyperliquid `0x35b7d6...e17f29`; hyperliquid `0x39a038...4c86a7`; hyperliquid `0x3ba1de...edd77e`; hyperliquid `0x3c272b...5a4f09`; hyperliquid `0x3d589d...9ca844`; hyperliquid `0x445693...c74b8d`; hyperliquid `0x4682ba...fb32f6`; hyperliquid `0x46fcbf...c80da7`; hyperliquid `0x56d070...5c46ff`; hyperliquid `0x5a973f...d3f9a6`; hyperliquid `0x604f67...f2f433`; hyperliquid `0x64a0a6...c36945`; hyperliquid `0x67de29...be628f`; hyperliquid `0x74da8d...91baa4`; hyperliquid `0x7a6122...035146`; hyperliquid `0x828eda...5972ca`; hyperliquid `0x880d04...a3b02f`; hyperliquid `0x89c001...6cb517`; hyperliquid `0x90e248...423659`; hyperliquid `0x9565b6...6badb1`; hyperliquid `0x963b6e...d472b1`; hyperliquid `0x99ec53...191717`; hyperliquid `0xa04c91...63d73c`; hyperliquid `0xa10648...e77f20`; hyperliquid `0xa58822...cb6318`; hyperliquid `0xafe289...ddc9b2`; hyperliquid `0xb2c00b...0faaa6`; hyperliquid `0xb334dc...57f33e`; hyperliquid `0xb4259f...c64fa4`; hyperliquid `0xb52d4a...43d1e8`; hyperliquid `0xb84894...1ccb40`; hyperliquid `0xbb73dc...297c76`; hyperliquid `0xbbef6b...025590`; hyperliquid `0xbc2170...a4d1f6`; hyperliquid `0xbf71e6...1e1437`; hyperliquid `0xc010f9...ae7e46`; hyperliquid `0xc154fd...3a986f`; hyperliquid `0xc33c9e...f778c3`; hyperliquid `0xc97500...9022c9`; hyperliquid `0xcab3a8...78b715`; hyperliquid `0xd7dc3a...8b1c0b`; hyperliquid `0xdfdcc8...cd57c5`; hyperliquid `0xdffe85...0a3ace`; hyperliquid `0xe02b0e...ffdaab`; hyperliquid `0xe3d0d1...bbfe60`; hyperliquid `0xe58480...29943d`; hyperliquid `0xe9bd82...955fd0`; hyperliquid `0xeb3127...ea731c`; hyperliquid `0xed7422...eb185b`; hyperliquid `0xf42bb7...f9f764`; hyperliquid `0xf6518c...f9bc6e`; hyperliquid `0xf6c557...a46a81`; hyperliquid `0xf945e5...f91250`; hyperliquid `0xf9a0c1...ddb19e`; linea `0x4060db...96b6b4` | ⚠️ Unaudited |
| DstOFTHandler | unknown | hyperliquid | n/a | 18 deployments: hyperliquid [`0x105864...05752d`](./contracts/hyperliquid-999/0x105864d5c2298e703748358a6171a07c7605752d/); hyperliquid `0x1c8243...a32958`; hyperliquid `0x40ad47...0f6cb0`; hyperliquid `0x532c44...807695`; hyperliquid `0x5701bb...ee8dd9`; hyperliquid `0x653419...a530a8`; hyperliquid `0x7d56da...43b654`; hyperliquid `0x8cc7c6...8ec8ec`; hyperliquid `0x98285d...490167`; hyperliquid `0xa738e3...c0271f`; hyperliquid `0xa9f2ba...288f2c`; hyperliquid `0xb0c6ed...bf5fc0`; hyperliquid `0xb4fcc5...84cf36`; hyperliquid `0xc1373e...63c51f`; hyperliquid `0xcbf361...faf2c5`; hyperliquid `0xdfa6ec...53c67c`; hyperliquid `0xec6e15...b20a1d`; hyperliquid `0xf442a1...3aec38` | ⚠️ Unaudited |
| DummySpokePool | core_logic | hyperliquid | n/a | [`0x699952...59a874`](./contracts/hyperliquid-999/0x6999526e507cc3b03b180bbe05e1ff938259a874/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | n/a | [`0x3bad7a...6cdd96`](./contracts/mode-34443/0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-18197 | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-18201 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| HyperCoreDeposit | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6d9cfb...72cd68`](./contracts/hyperliquid-999/0x6d9cfb26eaf9aa5c9d56c8b152e141be7a72cd68/); hyperliquid `0xf26b39...5aab34` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18164 | [`0x02b873...7d65e7`](./contracts/hyperliquid-999/0x02b8733763dd76f73b8573e668eca3343a7d65e7/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18166 | [`0x05bc00...89c294`](./contracts/hyperliquid-999/0x05bc0022549f302926954ec938b4d0550a89c294/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18167 | [`0x09500f...37819f`](./contracts/hyperliquid-999/0x09500ffd743e01b4146a4ba795231ca7ca37819f/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18168 | [`0x0ca831...339438`](./contracts/hyperliquid-999/0x0ca8316a6fcc15c833a220c40d84550b08339438/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18170 | [`0x1c709f...dd879f`](./contracts/hyperliquid-999/0x1c709fd0db6a6b877ddb19ae3d485b7b4add879f/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18171 | [`0x1cfe31...b882d5`](./contracts/hyperliquid-999/0x1cfe31ed57c2d2b4cb69c0298a1b586965b882d5/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18172 | [`0x1fe11b...6038e5`](./contracts/hyperliquid-999/0x1fe11b217cd3e268d45e402ff7a74d789d6038e5/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18174 | [`0x2bef20...2b0888`](./contracts/hyperliquid-999/0x2bef20d17a17f6903017d27d1a35cc9dc72b0888/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18175 | [`0x3380bf...1098f3`](./contracts/hyperliquid-999/0x3380bfefe47b6c8a396f3b298bfc1838831098f3/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18177 | [`0x40153d...c67461`](./contracts/hyperliquid-999/0x40153ddfad90c49dbe3f5c9f96f2a5b25ec67461/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18178 | [`0x478d45...8e6140`](./contracts/hyperliquid-999/0x478d451e101be484880a14cf3ccc293cd48e6140/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18179 | [`0x52a0c0...513769`](./contracts/hyperliquid-999/0x52a0c0d440bae2e9e5603c752a886f6622513769/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18181 | [`0x69b5c7...17f920`](./contracts/hyperliquid-999/0x69b5c72837769ef1e7c164abc6515dcff217f920/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18182 | [`0x74dfb6...a3ae59`](./contracts/hyperliquid-999/0x74dfb6ab65419fd2022614fa8ba45e9f50a3ae59/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18183 | [`0x7a64a0...b70c39`](./contracts/hyperliquid-999/0x7a64a0b796bdb99409803ee427186942c7b70c39/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18184 | [`0x7b1640...3f1c95`](./contracts/hyperliquid-999/0x7b164050bbc8e7ef3253e7db0d74b713ba3f1c95/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18185 | [`0x83e245...04eb0c`](./contracts/hyperliquid-999/0x83e245941befbde29682df068bcda006a804eb0c/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18186 | [`0xa32eb1...85ba95`](./contracts/hyperliquid-999/0xa32eb1da0129d849bd71bb52989bdaf59385ba95/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18187 | [`0xae5658...d56636`](./contracts/hyperliquid-999/0xae56583ec24102af3d265d3cea6341830ed56636/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18189 | [`0xb63c02...e07c6d`](./contracts/hyperliquid-999/0xb63c02e60c05f05975653edc83f876c334e07c6d/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18190 | [`0xb94b3c...d68ede`](./contracts/hyperliquid-999/0xb94b3c5db9dad3f5b0825465faf302b86ad68ede/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18192 | [`0xc8786d...7354cd`](./contracts/hyperliquid-999/0xc8786d517b4e224bb43985a38dbef8588d7354cd/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18193 | [`0xd9f407...db6e9f`](./contracts/hyperliquid-999/0xd9f40794367a2ecb0b409ca8dbc55345c0db6e9f/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | unit-18194 | [`0xeb8fee...322284`](./contracts/hyperliquid-999/0xeb8fee79b59d048162986b0432a187be46322284/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | linea | unit-18204 | [`0x6bd167...9cc334`](./contracts/linea-59144/0x6bd167bff542ab595f0296333d70202ae09cc334/) | ⚠️ Unaudited |
| HyperCoreLib | unknown | hyperliquid | n/a | [`0xe56dd9...ad2459`](./contracts/hyperliquid-999/0xe56dd9c3c2477edb4839edbce80fff6f26ad2459/) | ⚠️ Unaudited |
| HyperliquidDepositHandler | unknown | hyperliquid | n/a | 23 deployments: hyperliquid [`0x0d137e...8a9859`](./contracts/hyperliquid-999/0x0d137e83e3cc52731014a69ede21ea006a8a9859/); hyperliquid `0x3310c6...a3df3f`; hyperliquid `0x36ce11...d142f3`; hyperliquid `0x3a2a70...e402c3`; hyperliquid `0x41df96...08defc`; hyperliquid `0x420d76...7334f1`; hyperliquid `0x447116...bd1843`; hyperliquid `0x464e81...53d0b0`; hyperliquid `0x73a815...41cf09`; hyperliquid `0x841c3a...638d9e`; hyperliquid `0x861e12...07d195`; hyperliquid `0x8989fb...b76b20`; hyperliquid `0x8e7fa1...c2c781`; hyperliquid `0x9071bb...0d90a2`; hyperliquid `0xa15a90...33e56b`; hyperliquid `0xb06c61...a5a4e9`; hyperliquid `0xb45dca...4a938a`; hyperliquid `0xb4aead...f46376`; hyperliquid `0xbfb53e...5427d5`; hyperliquid `0xe15e8f...3831ac`; hyperliquid `0xe1601d...f5d860`; hyperliquid `0xf0b9c3...d471ed`; hyperliquid `0xf4055c...6c4c69` | ⚠️ Unaudited |
| HyperliquidHelper | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x700f45...876bf0`](./contracts/hyperliquid-999/0x700f45e64c4a1ec5fef2114b19f87ad1b9876bf0/); hyperliquid `0xe6596b...0fa4f7` | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| Mode_SpokePool | core_logic | mode | n/a | 2 deployments: mode [`0x2e8986...66c385`](./contracts/mode-34443/0x2e8986eb686b945a25151273d6bad582d166c385/); mode `0xc49226...2330d7` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | blast | n/a | 2 deployments: mode `0xc7772c...f15d39`; blast [`0x4f617c...31133e`](./contracts/blast-81457/0x4f617cf2812006059bd9162624d3f9403331133e/) | ⚠️ Unaudited |
| OptimisticOracleV2 | operational_periphery | blast | n/a | [`0x4e8e10...72d505`](./contracts/blast-81457/0x4e8e101924ede233c13e2d8622dc8aed2872d505/) | ⚠️ Unaudited |
| OptimisticOracleV3 | operational_periphery | blast | n/a | [`0xe8ff2a...e7afaa`](./contracts/blast-81457/0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa/) | ⚠️ Unaudited |
| PermissionedMulticallHandler | periphery | hyperliquid | n/a | 33 deployments: hyperliquid [`0x007ea3...8e80bc`](./contracts/hyperliquid-999/0x007ea3acb84ad5289a5d80c3f66e52d0f58e80bc/); hyperliquid `0x0980d0...f20502`; hyperliquid `0x1c5cc8...1fe79f`; hyperliquid `0x1e5224...535b1b`; hyperliquid `0x206f23...bae680`; hyperliquid `0x240c4b...11883a`; hyperliquid `0x2b20df...c4a391`; hyperliquid `0x3227b5...ee347f`; hyperliquid `0x4e1b23...d83c66`; hyperliquid `0x542252...d41430`; hyperliquid `0x5e531b...fbd873`; hyperliquid `0x65e2ca...a1c31d`; hyperliquid `0x6b9620...635c7a`; hyperliquid `0x9493ba...9ea861`; hyperliquid `0x9ee430...242bfb`; hyperliquid `0xa17add...33f36a`; hyperliquid `0xaaf3f2...83a6b2`; hyperliquid `0xab98a9...53dcfd`; hyperliquid `0xaccea2...853cec`; hyperliquid `0xad285f...4b1059`; hyperliquid `0xc49226...2330d7`; hyperliquid `0xca172b...1346dc`; hyperliquid `0xcd2346...c4de03`; hyperliquid `0xd39920...3e7943`; hyperliquid `0xd7b719...7e95c8`; hyperliquid `0xe76ad9...a5837f`; hyperliquid `0xeaa13e...cadd4a`; hyperliquid `0xf1f4ec...ac3a31`; hyperliquid `0xf692e9...493fda`; hyperliquid `0xfd0876...c9bfcc`; hyperliquid `0xfd8729...dfec54`; hyperliquid `0xff0ea0...b11592`; linea `0x573223...cba0e6` | ⚠️ Unaudited |
| Sample | unknown | hyperliquid | n/a | [`0x27e3c9...8cf238`](./contracts/hyperliquid-999/0x27e3c9fd88f15b8f512e58e231a45679cd8cf238/) | ⚠️ Unaudited |
| SponsoredCCTPDstPeriphery | periphery | hyperliquid | n/a | 6 deployments: hyperliquid [`0x1037a2...85d9b8`](./contracts/hyperliquid-999/0x1037a21a30aeff90c269b01c3933eb9a5285d9b8/); hyperliquid `0x222034...a499d0`; hyperliquid `0x22a9aa...2fb95c`; hyperliquid `0x924323...3182e2`; hyperliquid `0xdcdde0...d9c2d6`; hyperliquid `0xf8706d...09c2af` | ⚠️ Unaudited |
| SponsoredCCTPSrcPeriphery | periphery | linea | n/a | 6 deployments: hyperliquid `0xc611d7...dc3555`; hyperliquid `0xf4e32c...8ba1b4`; hyperliquid `0xf71cdf...64e95f`; linea [`0x0188ef...079026`](./contracts/linea-59144/0x0188efd7eba935fb6fe452c13bb08b9959079026/); linea `0x60eb88...a5005c`; linea `0xe3e889...d44e8c` | ⚠️ Unaudited |
| SponsoredOFTSrcPeriphery | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x93e1e5...ca4b06`](./contracts/hyperliquid-999/0x93e1e5e9d840e758cc016f8b13cdf5dbaeca4b06/); hyperliquid `0xf74d94...5bca37` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MulticallHandler | periphery | ethereum | n/a | 11 deployments: ethereum [`0x0f7ae2...c13a0e`](./contracts/ethereum-1/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); optimism [`0x0f7ae2...c13a0e`](./contracts/optimism-10/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); bsc [`0x0f7ae2...c13a0e`](./contracts/bsc-56/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); unichain [`0x0f7ae2...c13a0e`](./contracts/unichain-130/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); polygon [`0x0f7ae2...c13a0e`](./contracts/polygon-137/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); hyperliquid `0x5e7840...829bba`; hyperliquid `0xd2ecb3...31a449`; base [`0x0f7ae2...c13a0e`](./contracts/base-8453/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); plasma `0x5e7840...829bba`; arbitrum [`0x0f7ae2...c13a0e`](./contracts/arbitrum-42161/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); blast [`0x0f7ae2...c13a0e`](./contracts/blast-81457/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/) | ⚠️ Unaudited (bytecode match) |
| SP1Helios | unknown | plasma | n/a | 53 deployments: bsc `0x0ad317...d8fa88`; bsc `0x19256d...2d1922`; bsc `0x1c8243...a32958`; bsc `0x1d82bf...94a72a`; bsc `0x2cfccc...e98169`; bsc `0x2e3c81...4a33c0`; bsc `0x2e8986...66c385`; bsc `0x45951e...17e480`; bsc `0x4eb585...663d48`; bsc `0x50e976...f1635d`; bsc `0x6185a8...0154a3`; bsc `0x647afb...e69178`; bsc `0x7245e9...02400c`; bsc `0x7bc354...223fa6`; bsc `0x858c09...2bfe38`; bsc `0x8ef424...5793e8`; bsc `0x9c23ff...8963cc`; bsc `0x9c7cad...3d50bd`; bsc `0x9cd312...d811a9`; bsc `0xa05426...1d01a2`; bsc `0xaaf3f2...83a6b2`; bsc `0xae5658...d56636`; bsc `0xb04926...a58b29`; bsc `0xb0c6ed...bf5fc0`; bsc `0xb217e8...ba947c`; bsc `0xb3a7b9...7ad781`; bsc `0xb4fcc5...84cf36`; bsc `0xb59139...ec560f`; bsc `0xbfa3c3...6237ab`; bsc `0xc49226...2330d7`; bsc `0xd84aca...5e7726`; bsc `0xe20fcd...faa0ec`; bsc `0xe58480...29943d`; bsc `0xe77469...716b34`; hyperliquid `0x279e7f...35b527`; hyperliquid `0x587741...ab3fa9`; hyperliquid `0x67bb4a...24df18`; hyperliquid `0x791762...a147f3`; hyperliquid `0x7a4ba1...0bfb7f`; hyperliquid `0x8c12bc...664bfb`; hyperliquid `0x8ef727...03d0e4`; hyperliquid `0xac4d99...8a1481`; hyperliquid `0xb20e14...9239e2`; hyperliquid `0xbe4a70...9a2071`; hyperliquid `0xc19b7e...181ac0`; hyperliquid `0xd08baa...1ce8e5`; hyperliquid `0xe20713...95672f`; hyperliquid `0xef6160...af84e8`; plasma [`0x09aea4...7bec64`](./contracts/plasma-9745/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); plasma `0x6f1cd5...712ccb`; plasma `0x7e63a5...b2ee75`; plasma `0xd62163...084a4a`; plasma `0xef684c...fb9dd4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x117060...e314a4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd000df...bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5a148a...0f01a9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x68d380...605dbf` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe0b015...9335ff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0196d5...bac932` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x026ed7...b358b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0c94c4...1aae0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1425e2...84c1a0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1450c4...901878` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x30d528...7e0294` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4365e1...1fccee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x497aa5...0a7b4c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4ff378...4c9b4b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x622d59...e89a3c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x63a14f...2cc67d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x692929...d1ac74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x700cb4...82dd40` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x78d8cb...d873e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x904a91...a86719` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb9747b...49b902` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb99625...ef00c1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcd3476...322db5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd57b3b...267ea4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe59283...f714b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xecfe90...68d77a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xed7847...b5e39c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf697b1...e4cf32` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xef684c...fb9dd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdf1c94...79cda2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x39e7ff...f684f2` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | zora | n/a | `0x13fdac...6d1d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blog.openzeppelin.com/uma-audit-l2-bridges](https://www.openzeppelin.com/news/uma-audit-l2-bridges) | OpenZeppelin | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [the decentralized oracle](https://www.openzeppelin.com/news/uma-audit-phase-1) | OpenZeppelin | Audit | 2020-04 | stale | Direct | contract_name | 1 | high |
| [a particular financial contract template](https://www.openzeppelin.com/news/uma-audit-phase-2) | OpenZeppelin | Audit | 2020-05 | stale | Direct | contract_name | 0 | n/a |
| [some ad hoc pull requests](https://www.openzeppelin.com/news/uma-audit-phase-3) | OpenZeppelin | Audit | 2020-09 | stale | Direct | contract_name | 1 | high |
| [the Perpetual Multiparty template](https://www.openzeppelin.com/news/uma-audit-phase-4) | OpenZeppelin | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [various incremental pull requests over a longer engagement](https://www.openzeppelin.com/news/uma-continuous-audit) | OpenZeppelin | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [* [Across V3 Incremental Audit]()](https://www.openzeppelin.com/news/across-v3-and-oval-incremental-audit) | OpenZeppelin | Audit | 2024-07 | aging | Direct | contract_name | 1 | high |
| [* [Across V3 Audit]()](https://blog.openzeppelin.com/across-v3-incremental-audit?hs_preview=lerUtAnm-157915368784) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | 5 | high |
| [* [Across Token and Token Distributor Audit]()](https://www.openzeppelin.com/news/across-token-and-token-distributor-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [* [Across V2 Audit]()](https://www.openzeppelin.com/news/uma-across-v2-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | 5 | high |
| [* [UMA Audit – Phase 6]()](https://www.openzeppelin.com/news/uma-audit-phase-6) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 104 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=77

Zero-match audit list:

- [11500] blog.openzeppelin.com/uma-audit-l2-bridges
- [11502] a particular financial contract template
- [11504] the Perpetual Multiparty template
- [11508] * [Across Token and Token Distributor Audit]()
- [11510] * [UMA Audit – Phase 6]()

Fork inheritance lineage and inherited audits are included when available.
