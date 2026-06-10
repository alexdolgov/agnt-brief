# Agentic Audit Brief: Across

## Project Overview

- Project: Across (`across`)
- Website: [https://across.to](https://across.to)
- Lifecycle: active (Tier 0, 88.8% below peak)
- Generated: 2026-06-10T20:10:09.121Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora
- Contract surface: 142 unique implementations (532 raw deployments)
- DeFi Llama TVL: $26,926,442.18
- On-chain TVL (included contracts): $28,143,485.44
- TVL by chain: Ethereum $27,154,708.39 | Optimism $431,080.26 | Linea $416,646.24 | Base $64,189.73 | Bsc $51,370.01 | Blast $15,958.92 | Unichain $7,905.39 | Hyperliquid $832.96 | Plasma $607.11 | Arbitrum $186.43

## Project Description

Across is an intent-based cross-chain bridge and interoperability protocol. Its core architecture centers on an Ethereum HubPool, chain-specific SpokePools, relayers that fill user transfer intents, and bridge/swap API and periphery contracts. Contract-surface analysis should focus on verified Across-owned deployments and clearly separate external tokens, infrastructure, and inherited dependencies; supported networks may include EVM and non-EVM chains where applicable.

### Architecture

The 'Chains Live on the Swap API' family forms the core bridge infrastructure, with SpokePools on each chain interacting with a central HubPool (from 'Check Bond Requirements') to coordinate cross-chain transfers. The original 'Across' family represents an earlier version of the protocol, while 'Uniswap' and 'Generate a deposit address' provide token and utility support for the bridging mechanism.

## Audit Coverage Summary

- Verified implementations audited: 0/61 (0.0%)
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 3
- Unverified implementations: 81
- Unique implementations: 142
- Raw deployments: 532
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $28,143,485.44
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HubPool | core_logic | ethereum | [`0xc186fa...48beda`](./contracts/ethereum-1/0xc186fa914353c44b2e33ebe05f21846f1048beda/) | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| Linea_SpokePool | core_logic | linea | 17 deployments: linea [`0x038e78...d63730`](./contracts/linea-59144/0x038e789392f8b3f5df8e5974ea25575ba9d63730/); linea `0x09aea4...7bec64`; linea `0x185692...580c7d`; linea `0x39e7ff...f684f2`; linea `0x477f34...a95145`; linea `0x4fba85...213424`; linea `0x57825d...64d1a8`; linea `0x5be04e...98e31a`; linea `0x7e63a5...b2ee75`; linea `0x861e12...07d195`; linea `0x8eaeff...fd5795`; linea `0x9187be...09afcd`; linea `0xad7c55...fe6c48`; linea `0xd6fc66...202f76`; linea `0xe8de4b...a97b84`; linea `0xef4998...bfaeec`; linea `0xfcdfac...179874` | ⚠️ Unaudited |
| Ethereum_SpokePool | core_logic | ethereum | [`0x5c7bcd...ed35c5`](./contracts/ethereum-1/0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5/) | ⚠️ Unaudited |
| OP_SpokePool | core_logic | unichain | 4 deployments: unichain [`0x09aea4...7bec64`](./contracts/unichain-130/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); base [`0x09aea4...7bec64`](./contracts/base-8453/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); mode `0xc7772c...f15d39`; blast `0x4f617c...31133e` | ⚠️ Unaudited |
| Universal_SpokePool | core_logic | plasma | 53 deployments: bsc `0x026ed7...b358b5`; bsc `0x196767...b4ce98`; bsc `0x20e2bf...80636d`; bsc `0x4e8e10...72d505`; bsc `0x554509...d8f022`; bsc `0x64a14b...c885dd`; bsc `0x64f4ae...686fdd`; bsc `0x76f3fe...b7646a`; bsc `0x791762...a147f3`; bsc `0x7e6d96...7e2512`; bsc `0xad285f...4b1059`; bsc `0xc5c047...f9164e`; bsc `0xc5c51b...2af3ca`; bsc `0xcd2346...c4de03`; bsc `0xd85630...b81b86`; bsc `0xde7c02...8c4a38`; bsc `0xe8ff2a...e7afaa`; bsc `0xf962e0...20b6e7`; bsc `0xff0ea0...b11592`; hyperliquid `0x04959c...67917f`; hyperliquid `0x129b61...74527e`; hyperliquid `0x14e97b...5bff95`; hyperliquid `0x2beb23...ff8322`; hyperliquid `0x35e63e...6b0e04`; hyperliquid `0x3b8a0c...5f377b`; hyperliquid `0x45fa0a...b5c0a9`; hyperliquid `0x5658b5...088a08`; hyperliquid `0x5bee43...37ed68`; hyperliquid `0x719f81...4fa2fd`; hyperliquid `0x89cb50...4ebbf0`; hyperliquid `0x9fe378...a3ee67`; hyperliquid `0xb223a3...f61cda`; hyperliquid `0xb4ca43...42342f`; hyperliquid `0xbaca1e...6d0b33`; hyperliquid `0xbbc600...1e0a58`; hyperliquid `0xbeabc2...1d5316`; hyperliquid `0xbf9949...3088ff`; hyperliquid `0xc63e56...e13e9b`; hyperliquid `0xcf78e3...620a1f`; hyperliquid `0xd2aa77...f13941`; hyperliquid `0xefd7ee...a4530f`; hyperliquid `0xf633b7...d35b6d`; plasma [`0x011a76...638478`](./contracts/plasma-9745/0x011a76d5ca7f537b4877d0fb6475065a90638478/); plasma `0x053dc4...cedeb4`; plasma `0x5d8349...07b2ea`; plasma `0x98a970...95a086`; plasma `0xa07470...1c203a`; plasma `0xb0b9f7...1eccd1`; plasma `0xbeabc2...1d5316`; plasma `0xcdb25d...37f2b7`; plasma `0xd29c85...7d7978`; plasma `0xd8866e...c3ca80`; plasma `0xe0fe15...6dd985` | ⚠️ Unaudited |
| Blast_SpokePool | core_logic | blast | [`0x2d5091...5cc6e1`](./contracts/blast-81457/0x2d509190ed0172ba588407d4c2df918f955cc6e1/) | ⚠️ Unaudited |
| Arbitrum_SpokePool | core_logic | arbitrum | [`0xe35e98...7c5f2a`](./contracts/arbitrum-42161/0xe35e9842fceaca96570b734083f4a58e8f7c5f2a/) | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | ethereum | 13 deployments: ethereum [`0x10d8b8...92b610`](./contracts/ethereum-1/0x10d8b8daa26d307489803e10477de69c0492b610/); optimism [`0x10d8b8...92b610`](./contracts/optimism-10/0x10d8b8daa26d307489803e10477de69c0492b610/); bsc [`0x10d8b8...92b610`](./contracts/bsc-56/0x10d8b8daa26d307489803e10477de69c0492b610/); bsc `0x99ec53...191717`; unichain [`0x10d8b8...92b610`](./contracts/unichain-130/0x10d8b8daa26d307489803e10477de69c0492b610/); polygon [`0x10d8b8...92b610`](./contracts/polygon-137/0x10d8b8daa26d307489803e10477de69c0492b610/); hyperliquid [`0x10d8b8...92b610`](./contracts/hyperliquid-999/0x10d8b8daa26d307489803e10477de69c0492b610/); base [`0x10d8b8...92b610`](./contracts/base-8453/0x10d8b8daa26d307489803e10477de69c0492b610/); plasma [`0x10d8b8...92b610`](./contracts/plasma-9745/0x10d8b8daa26d307489803e10477de69c0492b610/); mode [`0x10d8b8...92b610`](./contracts/mode-34443/0x10d8b8daa26d307489803e10477de69c0492b610/); arbitrum [`0x10d8b8...92b610`](./contracts/arbitrum-42161/0x10d8b8daa26d307489803e10477de69c0492b610/); linea [`0x10d8b8...92b610`](./contracts/linea-59144/0x10d8b8daa26d307489803e10477de69c0492b610/); blast [`0x10d8b8...92b610`](./contracts/blast-81457/0x10d8b8daa26d307489803e10477de69c0492b610/) | ⚠️ Unaudited |
| VotingToken | token | ethereum | 3 deployments: ethereum [`0x04fa0d...2ef828`](./contracts/ethereum-1/0x04fa0d235c4abf4bcf4787af4cf447de572ef828/); ethereum `0x33cabd...8cfa3c`; ethereum `0xca13c0...2614cc` | ⚠️ Unaudited |
| AddressWhitelist | unknown | blast | 2 deployments: ethereum `0xdbf904...0758c7`; blast [`0xd85630...b81b86`](./contracts/blast-81457/0xd85630e361cebbc4c7f13e6eed3587050fb81b86/) | ⚠️ Unaudited |
| BOBA | unknown | ethereum | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | ethereum | 7 deployments: ethereum [`0x02fbb6...2f1152`](./contracts/ethereum-1/0x02fbb64517e1c6ed69a6faa3abf37db0482f1152/); ethereum `0x256c89...3017b6`; ethereum `0x43298f...0573d6`; ethereum `0x43f133...49ba5b`; ethereum `0x484157...8c9535`; ethereum `0x7355ef...c1e433`; ethereum `0xdfe0ec...e64e90` | ⚠️ Unaudited |
| CentralizedOracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x086878...ed0146`](./contracts/ethereum-1/0x0868781a6eae026d126516ac5ebca41201ed0146/); ethereum `0x18a9c8...78a7d1`; ethereum `0x70cc33...32b1bd`; ethereum `0x8c9b50...70bb2c`; ethereum `0xcacbe9...f083bf`; ethereum `0xd5bd3d...0ff31b` | ⚠️ Unaudited |
| CoreWithdrawTest | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x4859fa...d10bb3`](./contracts/hyperliquid-999/0x4859fad52183fc75663c7719cc14aa7f2cd10bb3/); hyperliquid `0x4cc2d6...deb3c5` | ⚠️ Unaudited |
| Counter | unknown | linea | 2 deployments: linea [`0xa55956...021a1f`](./contracts/linea-59144/0xa559568e255416df1f216b2f5d4e53b751021a1f/); linea `0xeff4c6...a53649` | ⚠️ Unaudited |
| DesignatedVotingFactory | registry | ethereum | [`0xe81eee...25d592`](./contracts/ethereum-1/0xe81eee5da165fa6863bbc82df66e62d18625d592/) | ⚠️ Unaudited |
| DonationBox | unknown | hyperliquid | 63 deployments: hyperliquid [`0x002e76...f32674`](./contracts/hyperliquid-999/0x002e76dc036a1eff1488ee5435ee66c6abf32674/); hyperliquid `0x038f95...6a3307`; hyperliquid `0x039d62...020583`; hyperliquid `0x1635eb...30a8fe`; hyperliquid `0x170b5b...cf59a3`; hyperliquid `0x1d7c13...9d428e`; hyperliquid `0x213310...e012e4`; hyperliquid `0x243a60...f2dae7`; hyperliquid `0x2e8986...66c385`; hyperliquid `0x3077e1...4472e0`; hyperliquid `0x35b7d6...e17f29`; hyperliquid `0x3ba1de...edd77e`; hyperliquid `0x3c272b...5a4f09`; hyperliquid `0x3d589d...9ca844`; hyperliquid `0x445693...c74b8d`; hyperliquid `0x4682ba...fb32f6`; hyperliquid `0x46fcbf...c80da7`; hyperliquid `0x56d070...5c46ff`; hyperliquid `0x5a973f...d3f9a6`; hyperliquid `0x604f67...f2f433`; hyperliquid `0x64a0a6...c36945`; hyperliquid `0x67de29...be628f`; hyperliquid `0x74da8d...91baa4`; hyperliquid `0x7a6122...035146`; hyperliquid `0x828eda...5972ca`; hyperliquid `0x880d04...a3b02f`; hyperliquid `0x89c001...6cb517`; hyperliquid `0x90e248...423659`; hyperliquid `0x9565b6...6badb1`; hyperliquid `0x963b6e...d472b1`; hyperliquid `0x99ec53...191717`; hyperliquid `0xa04c91...63d73c`; hyperliquid `0xa10648...e77f20`; hyperliquid `0xa58822...cb6318`; hyperliquid `0xafe289...ddc9b2`; hyperliquid `0xb2c00b...0faaa6`; hyperliquid `0xb334dc...57f33e`; hyperliquid `0xb4259f...c64fa4`; hyperliquid `0xb52d4a...43d1e8`; hyperliquid `0xb84894...1ccb40`; hyperliquid `0xbb73dc...297c76`; hyperliquid `0xbbef6b...025590`; hyperliquid `0xbc2170...a4d1f6`; hyperliquid `0xbf71e6...1e1437`; hyperliquid `0xc010f9...ae7e46`; hyperliquid `0xc154fd...3a986f`; hyperliquid `0xc33c9e...f778c3`; hyperliquid `0xc97500...9022c9`; hyperliquid `0xcab3a8...78b715`; hyperliquid `0xd7dc3a...8b1c0b`; hyperliquid `0xdfdcc8...cd57c5`; hyperliquid `0xdffe85...0a3ace`; hyperliquid `0xe02b0e...ffdaab`; hyperliquid `0xe3d0d1...bbfe60`; hyperliquid `0xe58480...29943d`; hyperliquid `0xe9bd82...955fd0`; hyperliquid `0xeb3127...ea731c`; hyperliquid `0xed7422...eb185b`; hyperliquid `0xf42bb7...f9f764`; hyperliquid `0xf6518c...f9bc6e`; hyperliquid `0xf6c557...a46a81`; hyperliquid `0xf945e5...f91250`; hyperliquid `0xf9a0c1...ddb19e` | ⚠️ Unaudited |
| DstOFTHandler | unknown | hyperliquid | 18 deployments: hyperliquid [`0x105864...05752d`](./contracts/hyperliquid-999/0x105864d5c2298e703748358a6171a07c7605752d/); hyperliquid `0x1c8243...a32958`; hyperliquid `0x40ad47...0f6cb0`; hyperliquid `0x532c44...807695`; hyperliquid `0x5701bb...ee8dd9`; hyperliquid `0x653419...a530a8`; hyperliquid `0x7d56da...43b654`; hyperliquid `0x8cc7c6...8ec8ec`; hyperliquid `0x98285d...490167`; hyperliquid `0xa738e3...c0271f`; hyperliquid `0xa9f2ba...288f2c`; hyperliquid `0xb0c6ed...bf5fc0`; hyperliquid `0xb4fcc5...84cf36`; hyperliquid `0xc1373e...63c51f`; hyperliquid `0xcbf361...faf2c5`; hyperliquid `0xdfa6ec...53c67c`; hyperliquid `0xec6e15...b20a1d`; hyperliquid `0xf442a1...3aec38` | ⚠️ Unaudited |
| DummySpokePool | core_logic | hyperliquid | [`0x699952...59a874`](./contracts/hyperliquid-999/0x6999526e507cc3b03b180bbe05e1ff938259a874/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | mode | 10 deployments: bsc `0x3ca117...62c569`; mode [`0x2271a5...2455f0`](./contracts/mode-34443/0x2271a5e74ea8a29764ab10523575b41aa52455f0/); mode `0x3bad7a...6cdd96`; mode `0x3ca117...62c569`; mode `0x699952...59a874`; mode `0x9b4a30...074a84`; mode `0xd29c85...7d7978`; mode `0xd2ecb3...31a449`; mode `0xd85630...b81b86`; mode `0xef684c...fb9dd4` | ⚠️ Unaudited |
| ExpiringMultiPartyCreator | unknown | ethereum | [`0xdebb91...f13124`](./contracts/ethereum-1/0xdebb91ab3e473025bb8ce278c02361a3c4f13124/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | unichain | 4 deployments: unichain [`0x078d78...f57ad6`](./contracts/unichain-130/0x078d782b760474a361dda0af3839290b0ef57ad6/); unichain `0xbe959c...6f0f6e`; base `0x833589...a02913`; arbitrum `0xaf88d0...8e5831` | ⚠️ Unaudited |
| FinancialContractsAdmin | unknown | ethereum | 4 deployments: ethereum [`0x4e6ccb...90317a`](./contracts/ethereum-1/0x4e6ccb1da3c7844887f9a5af4e8450d9fd90317a/); ethereum `0x5dee86...c9d9d7`; ethereum `0x7f4eef...276311`; ethereum `0x84a307...3a9f4f` | ⚠️ Unaudited |
| Finder | unknown | blast | 4 deployments: ethereum `0x40f941...8d77c3`; ethereum `0xc25096...175406`; blast [`0x3bad7a...6cdd96`](./contracts/blast-81457/0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96/); blast `0xef684c...fb9dd4` | ⚠️ Unaudited |
| Governor | governance | ethereum | 2 deployments: ethereum [`0x4ca534...151408`](./contracts/ethereum-1/0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408/); ethereum `0x592349...e507dc` | ⚠️ Unaudited |
| GovernorSpoke | governance | blast | [`0x9b4a30...074a84`](./contracts/blast-81457/0x9b4a302a548c7e313c2b74c461db7b84d3074a84/) | ⚠️ Unaudited |
| HyperCoreDeposit | unknown | hyperliquid | 2 deployments: hyperliquid [`0x6d9cfb...72cd68`](./contracts/hyperliquid-999/0x6d9cfb26eaf9aa5c9d56c8b152e141be7a72cd68/); hyperliquid `0xf26b39...5aab34` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | 23 deployments: hyperliquid [`0x02b873...7d65e7`](./contracts/hyperliquid-999/0x02b8733763dd76f73b8573e668eca3343a7d65e7/); hyperliquid `0x05bc00...89c294`; hyperliquid `0x09500f...37819f`; hyperliquid `0x0ca831...339438`; hyperliquid `0x1c709f...dd879f`; hyperliquid `0x1cfe31...b882d5`; hyperliquid `0x2bef20...2b0888`; hyperliquid `0x3380bf...1098f3`; hyperliquid `0x40153d...c67461`; hyperliquid `0x478d45...8e6140`; hyperliquid `0x52a0c0...513769`; hyperliquid `0x69b5c7...17f920`; hyperliquid `0x74dfb6...a3ae59`; hyperliquid `0x7a64a0...b70c39`; hyperliquid `0x7b1640...3f1c95`; hyperliquid `0x83e245...04eb0c`; hyperliquid `0xa32eb1...85ba95`; hyperliquid `0xae5658...d56636`; hyperliquid `0xb63c02...e07c6d`; hyperliquid `0xb94b3c...d68ede`; hyperliquid `0xc8786d...7354cd`; hyperliquid `0xd9f407...db6e9f`; hyperliquid `0xeb8fee...322284` | ⚠️ Unaudited |
| HyperCoreLib | unknown | hyperliquid | [`0xe56dd9...ad2459`](./contracts/hyperliquid-999/0xe56dd9c3c2477edb4839edbce80fff6f26ad2459/) | ⚠️ Unaudited |
| HyperliquidDepositHandler | unknown | hyperliquid | 23 deployments: hyperliquid [`0x0d137e...8a9859`](./contracts/hyperliquid-999/0x0d137e83e3cc52731014a69ede21ea006a8a9859/); hyperliquid `0x3310c6...a3df3f`; hyperliquid `0x36ce11...d142f3`; hyperliquid `0x3a2a70...e402c3`; hyperliquid `0x41df96...08defc`; hyperliquid `0x420d76...7334f1`; hyperliquid `0x447116...bd1843`; hyperliquid `0x464e81...53d0b0`; hyperliquid `0x73a815...41cf09`; hyperliquid `0x841c3a...638d9e`; hyperliquid `0x861e12...07d195`; hyperliquid `0x8989fb...b76b20`; hyperliquid `0x8e7fa1...c2c781`; hyperliquid `0x9071bb...0d90a2`; hyperliquid `0xa15a90...33e56b`; hyperliquid `0xb06c61...a5a4e9`; hyperliquid `0xb45dca...4a938a`; hyperliquid `0xb4aead...f46376`; hyperliquid `0xbfb53e...5427d5`; hyperliquid `0xe15e8f...3831ac`; hyperliquid `0xe1601d...f5d860`; hyperliquid `0xf0b9c3...d471ed`; hyperliquid `0xf4055c...6c4c69` | ⚠️ Unaudited |
| HyperliquidHelper | periphery | hyperliquid | 2 deployments: hyperliquid [`0x700f45...876bf0`](./contracts/hyperliquid-999/0x700f45e64c4a1ec5fef2114b19f87ad1b9876bf0/); hyperliquid `0xe6596b...0fa4f7` | ⚠️ Unaudited |
| IdentifierWhitelist | unknown | ethereum | 3 deployments: ethereum [`0x0e8085...e63bfa`](./contracts/ethereum-1/0x0e808507e1692876ae6bebc35da3e13801e63bfa/); ethereum `0xcf649d...45e570`; blast `0xd2ecb3...31a449` | ⚠️ Unaudited |
| Lisk_SpokePool | core_logic | mode | [`0x79950a...38fe8e`](./contracts/mode-34443/0x79950a8e152766f2282d315bdad889202c38fe8e/) | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 2 deployments: ethereum [`0x28a5da...b92744`](./contracts/ethereum-1/0x28a5da04a94f0501a6f77df8f8a9529d27b92744/); ethereum `0x43d047...435991` | ⚠️ Unaudited |
| Mode_SpokePool | core_logic | mode | 11 deployments: mode [`0x031a78...31d234`](./contracts/mode-34443/0x031a7882ce3e8b4462b057ebb0c3f23cd731d234/); mode `0x20e2bf...80636d`; mode `0x28077b...d4fa87`; mode `0x2e8986...66c385`; mode `0x7e63a5...b2ee75`; mode `0xc49226...2330d7`; mode `0xcbf361...faf2c5`; mode `0xd62163...084a4a`; mode `0xf2670e...8a3177`; mode `0xf2d561...0cbc19`; mode `0xff4ec0...56f7db` | ⚠️ Unaudited |
| Optimism_ChildMessenger | unknown | blast | [`0x3db06d...73d40e`](./contracts/blast-81457/0x3db06da8f0a24a525f314eec954fc5c6a973d40e/) | ⚠️ Unaudited |
| OptimisticOracle | operational_periphery | blast | [`0x3ca117...62c569`](./contracts/blast-81457/0x3ca11702f7c0f28e0b4e03c31f7492969862c569/) | ⚠️ Unaudited |
| OptimisticOracleV2 | operational_periphery | blast | [`0x4e8e10...72d505`](./contracts/blast-81457/0x4e8e101924ede233c13e2d8622dc8aed2872d505/) | ⚠️ Unaudited |
| OptimisticOracleV3 | operational_periphery | blast | [`0xe8ff2a...e7afaa`](./contracts/blast-81457/0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa/) | ⚠️ Unaudited |
| OracleSpoke | operational_periphery | blast | 3 deployments: blast [`0x09aea4...7bec64`](./contracts/blast-81457/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); blast `0x38fac3...ba2968`; blast `0x64ed7d...908768` | ⚠️ Unaudited |
| PermissionedMulticall3 | periphery | bsc | 2 deployments: bsc [`0x38015d...d4139d`](./contracts/bsc-56/0x38015ddb8b34c84934cff058f571349cc7d4139d/); bsc `0x9367cc...06d5b4` | ⚠️ Unaudited |
| PermissionedMulticallHandler | periphery | hyperliquid | 31 deployments: hyperliquid [`0x007ea3...8e80bc`](./contracts/hyperliquid-999/0x007ea3acb84ad5289a5d80c3f66e52d0f58e80bc/); hyperliquid `0x0980d0...f20502`; hyperliquid `0x1c5cc8...1fe79f`; hyperliquid `0x206f23...bae680`; hyperliquid `0x240c4b...11883a`; hyperliquid `0x2b20df...c4a391`; hyperliquid `0x3227b5...ee347f`; hyperliquid `0x4e1b23...d83c66`; hyperliquid `0x542252...d41430`; hyperliquid `0x5e531b...fbd873`; hyperliquid `0x65e2ca...a1c31d`; hyperliquid `0x6b9620...635c7a`; hyperliquid `0x9493ba...9ea861`; hyperliquid `0x9ee430...242bfb`; hyperliquid `0xa17add...33f36a`; hyperliquid `0xaaf3f2...83a6b2`; hyperliquid `0xab98a9...53dcfd`; hyperliquid `0xaccea2...853cec`; hyperliquid `0xad285f...4b1059`; hyperliquid `0xc49226...2330d7`; hyperliquid `0xca172b...1346dc`; hyperliquid `0xcd2346...c4de03`; hyperliquid `0xd39920...3e7943`; hyperliquid `0xd7b719...7e95c8`; hyperliquid `0xe76ad9...a5837f`; hyperliquid `0xeaa13e...cadd4a`; hyperliquid `0xf1f4ec...ac3a31`; hyperliquid `0xf692e9...493fda`; hyperliquid `0xfd0876...c9bfcc`; hyperliquid `0xfd8729...dfec54`; hyperliquid `0xff0ea0...b11592` | ⚠️ Unaudited |
| Polygon_SpokePool | core_logic | polygon | [`0x9295ee...e7f096`](./contracts/polygon-137/0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096/) | ⚠️ Unaudited |
| Registry | registry | ethereum | 7 deployments: ethereum [`0x07d6a3...79257c`](./contracts/ethereum-1/0x07d6a3b7a345576a22b63470c1cbdf133179257c/); ethereum `0x3e532e...5113ae`; ethereum `0x46209e...6403f1`; ethereum `0x633159...74be02`; ethereum `0x9e3942...586cb8`; blast `0x28077b...d4fa87`; blast `0x7e63a5...b2ee75` | ⚠️ Unaudited |
| Sample | unknown | hyperliquid | [`0x27e3c9...8cf238`](./contracts/hyperliquid-999/0x27e3c9fd88f15b8f512e58e231a45679cd8cf238/) | ⚠️ Unaudited |
| SignatureChecker | unknown | unichain | [`0xd25491...ec3527`](./contracts/unichain-130/0xd254915fc567865730f0516f8933bc0b96ec3527/) | ⚠️ Unaudited |
| SP1MockVerifier | periphery | bsc | 2 deployments: bsc [`0xd29c85...7d7978`](./contracts/bsc-56/0xd29c85f15df544ba632c9e25829fd29d767d7978/); bsc `0xd2ecb3...31a449` | ⚠️ Unaudited |
| SponsoredCCTPDstPeriphery | periphery | hyperliquid | 6 deployments: hyperliquid [`0x1037a2...85d9b8`](./contracts/hyperliquid-999/0x1037a21a30aeff90c269b01c3933eb9a5285d9b8/); hyperliquid `0x222034...a499d0`; hyperliquid `0x22a9aa...2fb95c`; hyperliquid `0x924323...3182e2`; hyperliquid `0xdcdde0...d9c2d6`; hyperliquid `0xf8706d...09c2af` | ⚠️ Unaudited |
| SponsoredCCTPSrcPeriphery | periphery | linea | 5 deployments: hyperliquid `0xc611d7...dc3555`; hyperliquid `0xf4e32c...8ba1b4`; hyperliquid `0xf71cdf...64e95f`; linea [`0x60eb88...a5005c`](./contracts/linea-59144/0x60eb88a83434f13095b0a138cdcbf5078aa5005c/); linea `0xe3e889...d44e8c` | ⚠️ Unaudited |
| SponsoredOFTSrcPeriphery | periphery | hyperliquid | [`0x93e1e5...ca4b06`](./contracts/hyperliquid-999/0x93e1e5e9d840e758cc016f8b13cdf5dbaeca4b06/) | ⚠️ Unaudited |
| Store | unknown | ethereum | 4 deployments: ethereum [`0x54f44e...4057bf`](./contracts/ethereum-1/0x54f44ea3d2e7aa0ac089c4d8f7c93c27844057bf/); ethereum `0xceaefc...e56210`; ethereum `0xe07533...b5d7ef`; blast `0x699952...59a874` | ⚠️ Unaudited |
| TokenizedDerivativeCreator | token | ethereum | [`0x04a734...974cc2`](./contracts/ethereum-1/0x04a734a6c3e415fff3149f0cb5f4719554974cc2/) | ⚠️ Unaudited |
| Umip15Upgrader | unknown | ethereum | [`0xd18e2a...57e707`](./contracts/ethereum-1/0xd18e2a433664f9459cccbd4bee0057a7bc57e707/) | ⚠️ Unaudited |
| Umip3Upgrader | unknown | ethereum | [`0x730674...fc6e39`](./contracts/ethereum-1/0x730674363e2de4e30489dc37f0cd12abdcfc6e39/) | ⚠️ Unaudited |
| UniversalStorageProof_SpokePool | core_logic | blast | [`0xb85155...bfc127`](./contracts/blast-81457/0xb851556fa82e7fd8e2233643ca878a081abfc127/) | ⚠️ Unaudited |
| UniversalSwapAndBridge | operational_periphery | blast | 2 deployments: blast [`0x523130...5be366`](./contracts/blast-81457/0x52313039f1b849b49dce4bdf6a43ac76995be366/); blast `0x57ee47...366204` | ⚠️ Unaudited |
| Voting | unknown | ethereum | 5 deployments: ethereum [`0x1d847f...a52aad`](./contracts/ethereum-1/0x1d847fb6e04437151736a53f09b6e49713a52aad/); ethereum `0x3b9985...2e74ee`; ethereum `0x7492cd...0e95b0`; ethereum `0x992181...37a545`; ethereum `0xfe3c4f...086c5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Universal_SpokePool | core_logic | plasma | 4 deployments: optimism `0x6f26bf...3c0281`; plasma [`0x2271a5...2455f0`](./contracts/plasma-9745/0x2271a5e74ea8a29764ab10523575b41aa52455f0/); plasma `0x50039f...39207a`; plasma `0x9552a0...1f83f8` | ⚠️ Unaudited (bytecode match) |
| MulticallHandler | periphery | ethereum | 13 deployments: ethereum [`0x0f7ae2...c13a0e`](./contracts/ethereum-1/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); optimism [`0x0f7ae2...c13a0e`](./contracts/optimism-10/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); bsc [`0x0f7ae2...c13a0e`](./contracts/bsc-56/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); unichain [`0x0f7ae2...c13a0e`](./contracts/unichain-130/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); polygon [`0x0f7ae2...c13a0e`](./contracts/polygon-137/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); hyperliquid `0x5e7840...829bba`; hyperliquid `0xd2ecb3...31a449`; base [`0x0f7ae2...c13a0e`](./contracts/base-8453/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); plasma `0x5e7840...829bba`; mode `0xd90a27...14181e`; arbitrum [`0x0f7ae2...c13a0e`](./contracts/arbitrum-42161/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); linea `0xa2dbff...dfe95a`; blast [`0x0f7ae2...c13a0e`](./contracts/blast-81457/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/) | ⚠️ Unaudited (bytecode match) |
| SP1Helios | unknown | bsc | 63 deployments: bsc [`0x011a76...638478`](./contracts/bsc-56/0x011a76d5ca7f537b4877d0fb6475065a90638478/); bsc `0x0ad317...d8fa88`; bsc `0x19256d...2d1922`; bsc `0x1c8243...a32958`; bsc `0x1d82bf...94a72a`; bsc `0x2271a5...2455f0`; bsc `0x2cfccc...e98169`; bsc `0x2e3c81...4a33c0`; bsc `0x2e8986...66c385`; bsc `0x3bed21...4bad8b`; bsc `0x3db06d...73d40e`; bsc `0x45951e...17e480`; bsc `0x4eb585...663d48`; bsc `0x50e976...f1635d`; bsc `0x54e38a...511d26`; bsc `0x5d8349...07b2ea`; bsc `0x6185a8...0154a3`; bsc `0x647afb...e69178`; bsc `0x699952...59a874`; bsc `0x7245e9...02400c`; bsc `0x7bc354...223fa6`; bsc `0x858c09...2bfe38`; bsc `0x8ef424...5793e8`; bsc `0x9b4a30...074a84`; bsc `0x9c23ff...8963cc`; bsc `0x9c7cad...3d50bd`; bsc `0x9cd312...d811a9`; bsc `0xa05426...1d01a2`; bsc `0xaaf3f2...83a6b2`; bsc `0xae5658...d56636`; bsc `0xb04926...a58b29`; bsc `0xb0c6ed...bf5fc0`; bsc `0xb217e8...ba947c`; bsc `0xb3a7b9...7ad781`; bsc `0xb4fcc5...84cf36`; bsc `0xb59139...ec560f`; bsc `0xbfa3c3...6237ab`; bsc `0xc49226...2330d7`; bsc `0xcdb25d...37f2b7`; bsc `0xcdf08c...1ce12f`; bsc `0xd84aca...5e7726`; bsc `0xe20fcd...faa0ec`; bsc `0xe58480...29943d`; bsc `0xe77469...716b34`; hyperliquid `0x279e7f...35b527`; hyperliquid `0x587741...ab3fa9`; hyperliquid `0x67bb4a...24df18`; hyperliquid `0x791762...a147f3`; hyperliquid `0x7a4ba1...0bfb7f`; hyperliquid `0x8c12bc...664bfb`; hyperliquid `0x8ef727...03d0e4`; hyperliquid `0xac4d99...8a1481`; hyperliquid `0xb20e14...9239e2`; hyperliquid `0xbe4a70...9a2071`; hyperliquid `0xc19b7e...181ac0`; hyperliquid `0xd08baa...1ce8e5`; hyperliquid `0xe20713...95672f`; hyperliquid `0xef6160...af84e8`; plasma `0x09aea4...7bec64`; plasma `0x6f1cd5...712ccb`; plasma `0x7e63a5...b2ee75`; plasma `0xd62163...084a4a`; plasma `0xef684c...fb9dd4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0c2fd4...278ba7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x104a28...e51e3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1139ba...d765e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1658d5...0cd36e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x252248...fc4dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a739a...121558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f64be...7d987c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x348fbf...b3d3dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39646c...452d8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x484211...470581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53b089...bf6089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53eb14...09c6b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5644df...7bb9ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6051d6...64db72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x628e89...8061d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6523ba...dba478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6bebb6...4ed0b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ebbe6...5e7db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74d367...9f075b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bdd67...74f851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c54bd...18bc35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x815a16...687bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x841416...8e2dd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x878cfe...7628bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b7b50...7ef76e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e1a24...2e689a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91a437...265b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92804c...b78a4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99081b...5a6198` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9df4a8...8dedf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f3d03...66f549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb273f8...526c32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8f489...3b7e27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbfc23c...0443b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc5be39...b39613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfc5f8...4aa814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1bf1f...3e4c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd70be...ab53a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x117060...e314a4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xd000df...bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5a148a...0f01a9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x68d380...605dbf` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe0b015...9335ff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0196d5...bac932` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x026ed7...b358b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0c94c4...1aae0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1425e2...84c1a0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1450c4...901878` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x30d528...7e0294` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4365e1...1fccee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x497aa5...0a7b4c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4ff378...4c9b4b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x622d59...e89a3c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x63a14f...2cc67d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x692929...d1ac74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x700cb4...82dd40` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x78d8cb...d873e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x904a91...a86719` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb9747b...49b902` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb99625...ef00c1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xcd3476...322db5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd57b3b...267ea4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe59283...f714b5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xecfe90...68d77a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xed7847...b5e39c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf697b1...e4cf32` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x1020ae...82cc55` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x38fac3...ba2968` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x3db06d...73d40e` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x4e8e10...72d505` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xef684c...fb9dd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdf1c94...79cda2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x213310...e012e4` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x39e7ff...f684f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x544f99...a9d07f` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x13fdac...6d1d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc186fa...48beda`](./contracts/ethereum-1/0xc186fa914353c44b2e33ebe05f21846f1048beda/) | HubPool | core_logic | $17,820,421.47 | Verified native implementation with $17,820,421.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x2271a5...2455f0`](./contracts/plasma-9745/0x2271a5e74ea8a29764ab10523575b41aa52455f0/) | Universal_SpokePool | core_logic | $431,687.37 | Verified native implementation with $431,687.37 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x011a76...638478`](./contracts/plasma-9745/0x011a76d5ca7f537b4877d0fb6475065a90638478/) | Universal_SpokePool | core_logic | $52,202.87 | Verified native implementation with $52,202.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d8b8...92b610`](./contracts/ethereum-1/0x10d8b8daa26d307489803e10477de69c0492b610/) | SpokePoolPeriphery | core_logic | $3.35 | Verified native implementation with $3.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04fa0d...2ef828`](./contracts/ethereum-1/0x04fa0d235c4abf4bcf4787af4cf447de572ef828/) | VotingToken | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd85630...b81b86`](./contracts/blast-81457/0xd85630e361cebbc4c7f13e6eed3587050fb81b86/) | AddressWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02fbb6...2f1152`](./contracts/ethereum-1/0x02fbb64517e1c6ed69a6faa3abf37db0482f1152/) | BridgePoolProd | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086878...ed0146`](./contracts/ethereum-1/0x0868781a6eae026d126516ac5ebca41201ed0146/) | CentralizedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4859fa...d10bb3`](./contracts/hyperliquid-999/0x4859fad52183fc75663c7719cc14aa7f2cd10bb3/) | CoreWithdrawTest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa55956...021a1f`](./contracts/linea-59144/0xa559568e255416df1f216b2f5d4e53b751021a1f/) | Counter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe81eee...25d592`](./contracts/ethereum-1/0xe81eee5da165fa6863bbc82df66e62d18625d592/) | DesignatedVotingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x002e76...f32674`](./contracts/hyperliquid-999/0x002e76dc036a1eff1488ee5435ee66c6abf32674/) | DonationBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x105864...05752d`](./contracts/hyperliquid-999/0x105864d5c2298e703748358a6171a07c7605752d/) | DstOFTHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x699952...59a874`](./contracts/hyperliquid-999/0x6999526e507cc3b03b180bbe05e1ff938259a874/) | DummySpokePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdebb91...f13124`](./contracts/ethereum-1/0xdebb91ab3e473025bb8ce278c02361a3c4f13124/) | ExpiringMultiPartyCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6ccb...90317a`](./contracts/ethereum-1/0x4e6ccb1da3c7844887f9a5af4e8450d9fd90317a/) | FinancialContractsAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3bad7a...6cdd96`](./contracts/blast-81457/0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96/) | Finder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca534...151408`](./contracts/ethereum-1/0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408/) | Governor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9b4a30...074a84`](./contracts/blast-81457/0x9b4a302a548c7e313c2b74c461db7b84d3074a84/) | GovernorSpoke | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x02b873...7d65e7`](./contracts/hyperliquid-999/0x02b8733763dd76f73b8573e668eca3343a7d65e7/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe56dd9...ad2459`](./contracts/hyperliquid-999/0xe56dd9c3c2477edb4839edbce80fff6f26ad2459/) | HyperCoreLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0d137e...8a9859`](./contracts/hyperliquid-999/0x0d137e83e3cc52731014a69ede21ea006a8a9859/) | HyperliquidDepositHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x700f45...876bf0`](./contracts/hyperliquid-999/0x700f45e64c4a1ec5fef2114b19f87ad1b9876bf0/) | HyperliquidHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e8085...e63bfa`](./contracts/ethereum-1/0x0e808507e1692876ae6bebc35da3e13801e63bfa/) | IdentifierWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x79950a...38fe8e`](./contracts/mode-34443/0x79950a8e152766f2282d315bdad889202c38fe8e/) | Lisk_SpokePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a5da...b92744`](./contracts/ethereum-1/0x28a5da04a94f0501a6f77df8f8a9529d27b92744/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x031a78...31d234`](./contracts/mode-34443/0x031a7882ce3e8b4462b057ebb0c3f23cd731d234/) | Mode_SpokePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f7ae2...c13a0e`](./contracts/ethereum-1/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/) | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3db06d...73d40e`](./contracts/blast-81457/0x3db06da8f0a24a525f314eec954fc5c6a973d40e/) | Optimism_ChildMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3ca117...62c569`](./contracts/blast-81457/0x3ca11702f7c0f28e0b4e03c31f7492969862c569/) | OptimisticOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4e8e10...72d505`](./contracts/blast-81457/0x4e8e101924ede233c13e2d8622dc8aed2872d505/) | OptimisticOracleV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xe8ff2a...e7afaa`](./contracts/blast-81457/0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa/) | OptimisticOracleV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x09aea4...7bec64`](./contracts/blast-81457/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/) | OracleSpoke | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x38015d...d4139d`](./contracts/bsc-56/0x38015ddb8b34c84934cff058f571349cc7d4139d/) | PermissionedMulticall3 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x007ea3...8e80bc`](./contracts/hyperliquid-999/0x007ea3acb84ad5289a5d80c3f66e52d0f58e80bc/) | PermissionedMulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d6a3...79257c`](./contracts/ethereum-1/0x07d6a3b7a345576a22b63470c1cbdf133179257c/) | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1037a2...85d9b8`](./contracts/hyperliquid-999/0x1037a21a30aeff90c269b01c3933eb9a5285d9b8/) | SponsoredCCTPDstPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x60eb88...a5005c`](./contracts/linea-59144/0x60eb88a83434f13095b0a138cdcbf5078aa5005c/) | SponsoredCCTPSrcPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x93e1e5...ca4b06`](./contracts/hyperliquid-999/0x93e1e5e9d840e758cc016f8b13cdf5dbaeca4b06/) | SponsoredOFTSrcPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f44e...4057bf`](./contracts/ethereum-1/0x54f44ea3d2e7aa0ac089c4d8f7c93c27844057bf/) | Store | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04a734...974cc2`](./contracts/ethereum-1/0x04a734a6c3e415fff3149f0cb5f4719554974cc2/) | TokenizedDerivativeCreator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd18e2a...57e707`](./contracts/ethereum-1/0xd18e2a433664f9459cccbd4bee0057a7bc57e707/) | Umip15Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x730674...fc6e39`](./contracts/ethereum-1/0x730674363e2de4e30489dc37f0cd12abdcfc6e39/) | Umip3Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb85155...bfc127`](./contracts/blast-81457/0xb851556fa82e7fd8e2233643ca878a081abfc127/) | UniversalStorageProof_SpokePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x523130...5be366`](./contracts/blast-81457/0x52313039f1b849b49dce4bdf6a43ac76995be366/) | UniversalSwapAndBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d847f...a52aad`](./contracts/ethereum-1/0x1d847fb6e04437151736a53f09b6e49713a52aad/) | Voting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 76 |
| upstream | 3 |
| standard_library | 10 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
