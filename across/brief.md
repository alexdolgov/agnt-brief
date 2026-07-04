# Agentic Audit Brief: Across

⚠️ Lifecycle status: UNKNOWN - TVL dropped 48.5% over 90 days

## Project Overview

- Project: Across (`across`)
- Website: [https://across.to](https://across.to)
- Lifecycle: unknown (Tier 0, 92.5% below peak)
- Generated: 2026-07-04T14:52:58.002Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora
- Contract surface: 175 unique implementations (509 raw deployments)
- DeFi Llama TVL: $18,739,389.42
- On-chain TVL (included contracts): $63,246,658.78
- TVL by chain: Ethereum $62,852,367.02 | Optimism $154,575.65 | Unichain $142,954.20 | Base $83,968.65 | Blast $12,648.77 | Arbitrum $137.74 | Hyperliquid $6.65 | Bsc $0.10 | Plasma $0.00

## Project Description

Cross Chain Bridge. Structurally: 75 project-authored contract(s) across 12 chain(s); 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 36 common project-authored base contract(s) (bridgepool, multicaller, lockable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 549; live-surface contracts included: 509 (410 live, 99 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/84 (13.1%)
- Deployed-live implementations: 98 of 175 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/100
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 2
- Unverified implementations: 75
- Unique implementations: 175
- Raw deployments: 509
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $7,148,220.11
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 13.1% (OpenZeppelin)
- Note: This protocol is classified as [unknown]. ASD of $7,148,220.11 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 16 | 16.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcrossToken | token | ethereum | n/a | [`0x44108f...bef82f`](./contracts/ethereum-1/0x44108f0223a3c3028f5fe7aec7f9bb2e66bef82f/) | ✅ Audited |
| HubPool | core_logic | ethereum | n/a | [`0xc186fa...48beda`](./contracts/ethereum-1/0xc186fa914353c44b2e33ebe05f21846f1048beda/) | ✅ Audited |
| Optimism_SpokePool | core_logic | optimism | n/a | [`0x6f26bf...3c0281`](./contracts/optimism-10/0x6f26bf09b1c792e3228e5467807a900a503c0281/) | ✅ Audited |
| Ethereum_SpokePool | core_logic | ethereum | n/a | [`0x5c7bcd...ed35c5`](./contracts/ethereum-1/0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5/) | ✅ Audited |
| Blast_SpokePool | core_logic | blast | n/a | [`0x2d5091...5cc6e1`](./contracts/blast-81457/0x2d509190ed0172ba588407d4c2df918f955cc6e1/) | ✅ Audited |
| Arbitrum_SpokePool | core_logic | arbitrum | n/a | [`0xe35e98...7c5f2a`](./contracts/arbitrum-42161/0xe35e9842fceaca96570b734083f4a58e8f7c5f2a/) | ✅ Audited |
| VotingToken | token | ethereum | n/a | 3 deployments: ethereum [`0x04fa0d...2ef828`](./contracts/ethereum-1/0x04fa0d235c4abf4bcf4787af4cf447de572ef828/); ethereum `0x33cabd...8cfa3c`; ethereum `0xca13c0...2614cc` | ✅ Audited |
| ExpiringMultiPartyCreator | unknown | ethereum | n/a | [`0xdebb91...f13124`](./contracts/ethereum-1/0xdebb91ab3e473025bb8ce278c02361a3c4f13124/) | ✅ Audited |
| Finder | unknown | blast | n/a | 4 deployments: ethereum `0x40f941...8d77c3`; ethereum `0xc25096...175406`; blast [`0x3bad7a...6cdd96`](./contracts/blast-81457/0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96/); blast `0xef684c...fb9dd4` | ✅ Audited |
| GovernorSpoke | unknown | blast | n/a | [`0x9b4a30...074a84`](./contracts/blast-81457/0x9b4a302a548c7e313c2b74c461db7b84d3074a84/) | ✅ Audited |
| Linea_SpokePool | core_logic | linea | n/a | 9 deployments: linea [`0x09aea4...7bec64`](./contracts/linea-59144/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); linea `0x185692...580c7d`; linea `0x477f34...a95145`; linea `0x4fba85...213424`; linea `0x57825d...64d1a8`; linea `0x861e12...07d195`; linea `0x8eaeff...fd5795`; linea `0xd6fc66...202f76`; linea `0xef4998...bfaeec` | ✅ Audited |
| Optimism_ChildMessenger | unknown | blast | n/a | [`0x3db06d...73d40e`](./contracts/blast-81457/0x3db06da8f0a24a525f314eec954fc5c6a973d40e/) | ✅ Audited |
| OptimisticOracle | unknown | blast | n/a | [`0x3ca117...62c569`](./contracts/blast-81457/0x3ca11702f7c0f28e0b4e03c31f7492969862c569/) | ✅ Audited |
| OracleSpoke | unknown | blast | n/a | 3 deployments: blast [`0x09aea4...7bec64`](./contracts/blast-81457/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); blast `0x38fac3...ba2968`; blast `0x64ed7d...908768` | ✅ Audited |
| Polygon_SpokePool | core_logic | polygon | n/a | [`0x9295ee...e7f096`](./contracts/polygon-137/0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096/) | ✅ Audited |
| Registry | unknown | ethereum | n/a | 7 deployments: ethereum [`0x07d6a3...79257c`](./contracts/ethereum-1/0x07d6a3b7a345576a22b63470c1cbdf133179257c/); ethereum `0x3e532e...5113ae`; ethereum `0x46209e...6403f1`; ethereum `0x633159...74be02`; ethereum `0x9e3942...586cb8`; blast `0x28077b...d4fa87`; blast `0x7e63a5...b2ee75` | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| OP_SpokePool | core_logic | unichain | n/a | [`0x09aea4...7bec64`](./contracts/unichain-130/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/) | ⚠️ Unaudited |
| OP_SpokePool | core_logic | base | n/a | [`0x09aea4...7bec64`](./contracts/base-8453/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/) | ⚠️ Unaudited |
| Universal_SpokePool | core_logic | plasma | n/a | 30 deployments: bsc `0x026ed7...b358b5`; bsc `0x196767...b4ce98`; bsc `0x20e2bf...80636d`; bsc `0x554509...d8f022`; bsc `0x64a14b...c885dd`; bsc `0x64f4ae...686fdd`; bsc `0x7e6d96...7e2512`; bsc `0xad285f...4b1059`; bsc `0xc5c047...f9164e`; bsc `0xc5c51b...2af3ca`; bsc `0xcd2346...c4de03`; bsc `0xd85630...b81b86`; bsc `0xde7c02...8c4a38`; bsc `0xf962e0...20b6e7`; bsc `0xff0ea0...b11592`; hyperliquid `0x129b61...74527e`; hyperliquid `0x5bee43...37ed68`; hyperliquid `0xbaca1e...6d0b33`; hyperliquid `0xbbc600...1e0a58`; hyperliquid `0xbeabc2...1d5316`; hyperliquid `0xd2aa77...f13941`; hyperliquid `0xefd7ee...a4530f`; plasma [`0x011a76...638478`](./contracts/plasma-9745/0x011a76d5ca7f537b4877d0fb6475065a90638478/); plasma `0x053dc4...cedeb4`; plasma `0x98a970...95a086`; plasma `0xa07470...1c203a`; plasma `0xb0b9f7...1eccd1`; plasma `0xbeabc2...1d5316`; plasma `0xd8866e...c3ca80`; plasma `0xe0fe15...6dd985` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x10d8b8...92b610`](./contracts/ethereum-1/0x10d8b8daa26d307489803e10477de69c0492b610/); optimism [`0x10d8b8...92b610`](./contracts/optimism-10/0x10d8b8daa26d307489803e10477de69c0492b610/); bsc [`0x10d8b8...92b610`](./contracts/bsc-56/0x10d8b8daa26d307489803e10477de69c0492b610/); bsc `0x99ec53...191717`; unichain [`0x10d8b8...92b610`](./contracts/unichain-130/0x10d8b8daa26d307489803e10477de69c0492b610/); polygon [`0x10d8b8...92b610`](./contracts/polygon-137/0x10d8b8daa26d307489803e10477de69c0492b610/); hyperliquid [`0x10d8b8...92b610`](./contracts/hyperliquid-999/0x10d8b8daa26d307489803e10477de69c0492b610/); base [`0x10d8b8...92b610`](./contracts/base-8453/0x10d8b8daa26d307489803e10477de69c0492b610/); plasma [`0x10d8b8...92b610`](./contracts/plasma-9745/0x10d8b8daa26d307489803e10477de69c0492b610/); mode [`0x10d8b8...92b610`](./contracts/mode-34443/0x10d8b8daa26d307489803e10477de69c0492b610/); arbitrum [`0x10d8b8...92b610`](./contracts/arbitrum-42161/0x10d8b8daa26d307489803e10477de69c0492b610/); linea [`0x10d8b8...92b610`](./contracts/linea-59144/0x10d8b8daa26d307489803e10477de69c0492b610/); blast [`0x10d8b8...92b610`](./contracts/blast-81457/0x10d8b8daa26d307489803e10477de69c0492b610/) | ⚠️ Unaudited |
| AddressWhitelist | unknown | blast | n/a | 2 deployments: ethereum `0xdbf904...0758c7`; blast [`0xd85630...b81b86`](./contracts/blast-81457/0xd85630e361cebbc4c7f13e6eed3587050fb81b86/) | ⚠️ Unaudited |
| BOBA | unknown | ethereum | n/a | [`0x42bbfa...53efbc`](./contracts/ethereum-1/0x42bbfa2e77757c645eeaad1655e0911a7553efbc/) | ⚠️ Unaudited |
| BondToken | token | ethereum | n/a | [`0xee1dc6...9002ea`](./contracts/ethereum-1/0xee1dc6bcf1ee967a350e9ac6caaaa236109002ea/) | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x02fbb6...2f1152`](./contracts/ethereum-1/0x02fbb64517e1c6ed69a6faa3abf37db0482f1152/); ethereum `0x256c89...3017b6`; ethereum `0x43298f...0573d6`; ethereum `0x43f133...49ba5b`; ethereum `0x484157...8c9535`; ethereum `0xdfe0ec...e64e90` | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | ethereum | n/a | [`0x7355ef...c1e433`](./contracts/ethereum-1/0x7355efc63ae731f584380a9838292c7046c1e433/) | ⚠️ Unaudited |
| CoreWithdrawTest | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4859fa...d10bb3`](./contracts/hyperliquid-999/0x4859fad52183fc75663c7719cc14aa7f2cd10bb3/); hyperliquid `0x4cc2d6...deb3c5` | ⚠️ Unaudited |
| CounterfactualBeacon | registry | linea | n/a | 6 deployments: hyperliquid `0x8a5f5a...c2daca`; hyperliquid `0xc186fa...48beda`; hyperliquid `0xfcb61e...49ab70`; linea [`0x18a410...17753a`](./contracts/linea-59144/0x18a4101bee53bf0dfda36faecea99b961417753a/); linea `0x5e531b...fbd873`; linea `0xd4b79a...eea270` | ⚠️ Unaudited |
| DonationBox | unknown | hyperliquid | n/a | 65 deployments: hyperliquid [`0x002e76...f32674`](./contracts/hyperliquid-999/0x002e76dc036a1eff1488ee5435ee66c6abf32674/); hyperliquid `0x038f95...6a3307`; hyperliquid `0x039d62...020583`; hyperliquid `0x1635eb...30a8fe`; hyperliquid `0x170b5b...cf59a3`; hyperliquid `0x1d7c13...9d428e`; hyperliquid `0x213310...e012e4`; hyperliquid `0x243a60...f2dae7`; hyperliquid `0x2e8986...66c385`; hyperliquid `0x3077e1...4472e0`; hyperliquid `0x35b7d6...e17f29`; hyperliquid `0x39a038...4c86a7`; hyperliquid `0x3ba1de...edd77e`; hyperliquid `0x3c272b...5a4f09`; hyperliquid `0x3d589d...9ca844`; hyperliquid `0x445693...c74b8d`; hyperliquid `0x4682ba...fb32f6`; hyperliquid `0x46fcbf...c80da7`; hyperliquid `0x56d070...5c46ff`; hyperliquid `0x5a973f...d3f9a6`; hyperliquid `0x604f67...f2f433`; hyperliquid `0x64a0a6...c36945`; hyperliquid `0x67de29...be628f`; hyperliquid `0x74da8d...91baa4`; hyperliquid `0x7a6122...035146`; hyperliquid `0x828eda...5972ca`; hyperliquid `0x880d04...a3b02f`; hyperliquid `0x89c001...6cb517`; hyperliquid `0x90e248...423659`; hyperliquid `0x9565b6...6badb1`; hyperliquid `0x963b6e...d472b1`; hyperliquid `0x99ec53...191717`; hyperliquid `0xa04c91...63d73c`; hyperliquid `0xa10648...e77f20`; hyperliquid `0xa58822...cb6318`; hyperliquid `0xafe289...ddc9b2`; hyperliquid `0xb2c00b...0faaa6`; hyperliquid `0xb334dc...57f33e`; hyperliquid `0xb4259f...c64fa4`; hyperliquid `0xb52d4a...43d1e8`; hyperliquid `0xb84894...1ccb40`; hyperliquid `0xbb73dc...297c76`; hyperliquid `0xbbef6b...025590`; hyperliquid `0xbc2170...a4d1f6`; hyperliquid `0xbf71e6...1e1437`; hyperliquid `0xc010f9...ae7e46`; hyperliquid `0xc154fd...3a986f`; hyperliquid `0xc33c9e...f778c3`; hyperliquid `0xc97500...9022c9`; hyperliquid `0xcab3a8...78b715`; hyperliquid `0xd7dc3a...8b1c0b`; hyperliquid `0xdfdcc8...cd57c5`; hyperliquid `0xdffe85...0a3ace`; hyperliquid `0xe02b0e...ffdaab`; hyperliquid `0xe3d0d1...bbfe60`; hyperliquid `0xe58480...29943d`; hyperliquid `0xe9bd82...955fd0`; hyperliquid `0xeb3127...ea731c`; hyperliquid `0xed7422...eb185b`; hyperliquid `0xf42bb7...f9f764`; hyperliquid `0xf6518c...f9bc6e`; hyperliquid `0xf6c557...a46a81`; hyperliquid `0xf945e5...f91250`; hyperliquid `0xf9a0c1...ddb19e`; linea `0x4060db...96b6b4` | ⚠️ Unaudited |
| DstOFTHandler | unknown | hyperliquid | n/a | 18 deployments: hyperliquid [`0x105864...05752d`](./contracts/hyperliquid-999/0x105864d5c2298e703748358a6171a07c7605752d/); hyperliquid `0x1c8243...a32958`; hyperliquid `0x40ad47...0f6cb0`; hyperliquid `0x532c44...807695`; hyperliquid `0x5701bb...ee8dd9`; hyperliquid `0x653419...a530a8`; hyperliquid `0x7d56da...43b654`; hyperliquid `0x8cc7c6...8ec8ec`; hyperliquid `0x98285d...490167`; hyperliquid `0xa738e3...c0271f`; hyperliquid `0xa9f2ba...288f2c`; hyperliquid `0xb0c6ed...bf5fc0`; hyperliquid `0xb4fcc5...84cf36`; hyperliquid `0xc1373e...63c51f`; hyperliquid `0xcbf361...faf2c5`; hyperliquid `0xdfa6ec...53c67c`; hyperliquid `0xec6e15...b20a1d`; hyperliquid `0xf442a1...3aec38` | ⚠️ Unaudited |
| DummySpokePool | core_logic | hyperliquid | n/a | [`0x699952...59a874`](./contracts/hyperliquid-999/0x6999526e507cc3b03b180bbe05e1ff938259a874/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mode | n/a | 10 deployments: bsc `0x3ca117...62c569`; mode [`0x2271a5...2455f0`](./contracts/mode-34443/0x2271a5e74ea8a29764ab10523575b41aa52455f0/); mode `0x3bad7a...6cdd96`; mode `0x3ca117...62c569`; mode `0x699952...59a874`; mode `0x9b4a30...074a84`; mode `0xd29c85...7d7978`; mode `0xd2ecb3...31a449`; mode `0xd85630...b81b86`; mode `0xef684c...fb9dd4` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | unichain | n/a | [`0xbe959c...6f0f6e`](./contracts/unichain-130/0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Governor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ca534...151408`](./contracts/ethereum-1/0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408/); ethereum `0x592349...e507dc` | ⚠️ Unaudited |
| HyperCoreDeposit | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6d9cfb...72cd68`](./contracts/hyperliquid-999/0x6d9cfb26eaf9aa5c9d56c8b152e141be7a72cd68/); hyperliquid `0xf26b39...5aab34` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x02b873...7d65e7`](./contracts/hyperliquid-999/0x02b8733763dd76f73b8573e668eca3343a7d65e7/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x05bc00...89c294`](./contracts/hyperliquid-999/0x05bc0022549f302926954ec938b4d0550a89c294/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x09500f...37819f`](./contracts/hyperliquid-999/0x09500ffd743e01b4146a4ba795231ca7ca37819f/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x0ca831...339438`](./contracts/hyperliquid-999/0x0ca8316a6fcc15c833a220c40d84550b08339438/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x1c709f...dd879f`](./contracts/hyperliquid-999/0x1c709fd0db6a6b877ddb19ae3d485b7b4add879f/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x1cfe31...b882d5`](./contracts/hyperliquid-999/0x1cfe31ed57c2d2b4cb69c0298a1b586965b882d5/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x1fe11b...6038e5`](./contracts/hyperliquid-999/0x1fe11b217cd3e268d45e402ff7a74d789d6038e5/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x2bef20...2b0888`](./contracts/hyperliquid-999/0x2bef20d17a17f6903017d27d1a35cc9dc72b0888/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x3380bf...1098f3`](./contracts/hyperliquid-999/0x3380bfefe47b6c8a396f3b298bfc1838831098f3/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x40153d...c67461`](./contracts/hyperliquid-999/0x40153ddfad90c49dbe3f5c9f96f2a5b25ec67461/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x478d45...8e6140`](./contracts/hyperliquid-999/0x478d451e101be484880a14cf3ccc293cd48e6140/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x52a0c0...513769`](./contracts/hyperliquid-999/0x52a0c0d440bae2e9e5603c752a886f6622513769/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x69b5c7...17f920`](./contracts/hyperliquid-999/0x69b5c72837769ef1e7c164abc6515dcff217f920/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x74dfb6...a3ae59`](./contracts/hyperliquid-999/0x74dfb6ab65419fd2022614fa8ba45e9f50a3ae59/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x7a64a0...b70c39`](./contracts/hyperliquid-999/0x7a64a0b796bdb99409803ee427186942c7b70c39/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x7b1640...3f1c95`](./contracts/hyperliquid-999/0x7b164050bbc8e7ef3253e7db0d74b713ba3f1c95/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0x83e245...04eb0c`](./contracts/hyperliquid-999/0x83e245941befbde29682df068bcda006a804eb0c/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xa32eb1...85ba95`](./contracts/hyperliquid-999/0xa32eb1da0129d849bd71bb52989bdaf59385ba95/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xae5658...d56636`](./contracts/hyperliquid-999/0xae56583ec24102af3d265d3cea6341830ed56636/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xb63c02...e07c6d`](./contracts/hyperliquid-999/0xb63c02e60c05f05975653edc83f876c334e07c6d/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xb94b3c...d68ede`](./contracts/hyperliquid-999/0xb94b3c5db9dad3f5b0825465faf302b86ad68ede/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xc8786d...7354cd`](./contracts/hyperliquid-999/0xc8786d517b4e224bb43985a38dbef8588d7354cd/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xd9f407...db6e9f`](./contracts/hyperliquid-999/0xd9f40794367a2ecb0b409ca8dbc55345c0db6e9f/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | hyperliquid | n/a | [`0xeb8fee...322284`](./contracts/hyperliquid-999/0xeb8fee79b59d048162986b0432a187be46322284/) | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | linea | n/a | [`0x6bd167...9cc334`](./contracts/linea-59144/0x6bd167bff542ab595f0296333d70202ae09cc334/) | ⚠️ Unaudited |
| HyperCoreLib | unknown | hyperliquid | n/a | [`0xe56dd9...ad2459`](./contracts/hyperliquid-999/0xe56dd9c3c2477edb4839edbce80fff6f26ad2459/) | ⚠️ Unaudited |
| HyperliquidDepositHandler | unknown | hyperliquid | n/a | 23 deployments: hyperliquid [`0x0d137e...8a9859`](./contracts/hyperliquid-999/0x0d137e83e3cc52731014a69ede21ea006a8a9859/); hyperliquid `0x3310c6...a3df3f`; hyperliquid `0x36ce11...d142f3`; hyperliquid `0x3a2a70...e402c3`; hyperliquid `0x41df96...08defc`; hyperliquid `0x420d76...7334f1`; hyperliquid `0x447116...bd1843`; hyperliquid `0x464e81...53d0b0`; hyperliquid `0x73a815...41cf09`; hyperliquid `0x841c3a...638d9e`; hyperliquid `0x861e12...07d195`; hyperliquid `0x8989fb...b76b20`; hyperliquid `0x8e7fa1...c2c781`; hyperliquid `0x9071bb...0d90a2`; hyperliquid `0xa15a90...33e56b`; hyperliquid `0xb06c61...a5a4e9`; hyperliquid `0xb45dca...4a938a`; hyperliquid `0xb4aead...f46376`; hyperliquid `0xbfb53e...5427d5`; hyperliquid `0xe15e8f...3831ac`; hyperliquid `0xe1601d...f5d860`; hyperliquid `0xf0b9c3...d471ed`; hyperliquid `0xf4055c...6c4c69` | ⚠️ Unaudited |
| HyperliquidHelper | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x700f45...876bf0`](./contracts/hyperliquid-999/0x700f45e64c4a1ec5fef2114b19f87ad1b9876bf0/); hyperliquid `0xe6596b...0fa4f7` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | linea | n/a | 2 deployments: linea [`0x038e78...d63730`](./contracts/linea-59144/0x038e789392f8b3f5df8e5974ea25575ba9d63730/); linea `0xfcdfac...179874` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | linea | n/a | 2 deployments: linea [`0x39e7ff...f684f2`](./contracts/linea-59144/0x39e7ffa77a4ac4d34021c6bbe4c8778d47f684f2/); linea `0xe8de4b...a97b84` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | linea | n/a | 2 deployments: linea [`0x5be04e...98e31a`](./contracts/linea-59144/0x5be04e53b465c6fd89ecff3d36ddf666d198e31a/); linea `0xad7c55...fe6c48` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | linea | n/a | 2 deployments: linea [`0x7e63a5...b2ee75`](./contracts/linea-59144/0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75/); linea `0x9187be...09afcd` | ⚠️ Unaudited |
| Lisk_SpokePool | unknown | mode | n/a | [`0x79950a...38fe8e`](./contracts/mode-34443/0x79950a8e152766f2282d315bdad889202c38fe8e/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| Mode_SpokePool | unknown | mode | n/a | 11 deployments: mode [`0x031a78...31d234`](./contracts/mode-34443/0x031a7882ce3e8b4462b057ebb0c3f23cd731d234/); mode `0x20e2bf...80636d`; mode `0x28077b...d4fa87`; mode `0x2e8986...66c385`; mode `0x7e63a5...b2ee75`; mode `0xc49226...2330d7`; mode `0xcbf361...faf2c5`; mode `0xd62163...084a4a`; mode `0xf2670e...8a3177`; mode `0xf2d561...0cbc19`; mode `0xff4ec0...56f7db` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | blast | n/a | 2 deployments: mode `0xc7772c...f15d39`; blast [`0x4f617c...31133e`](./contracts/blast-81457/0x4f617cf2812006059bd9162624d3f9403331133e/) | ⚠️ Unaudited |
| OptimisticOracleV2 | operational_periphery | blast | n/a | [`0x4e8e10...72d505`](./contracts/blast-81457/0x4e8e101924ede233c13e2d8622dc8aed2872d505/) | ⚠️ Unaudited |
| OptimisticOracleV3 | operational_periphery | blast | n/a | [`0xe8ff2a...e7afaa`](./contracts/blast-81457/0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa/) | ⚠️ Unaudited |
| PermissionedMulticallHandler | periphery | hyperliquid | n/a | 33 deployments: hyperliquid [`0x007ea3...8e80bc`](./contracts/hyperliquid-999/0x007ea3acb84ad5289a5d80c3f66e52d0f58e80bc/); hyperliquid `0x0980d0...f20502`; hyperliquid `0x1c5cc8...1fe79f`; hyperliquid `0x1e5224...535b1b`; hyperliquid `0x206f23...bae680`; hyperliquid `0x240c4b...11883a`; hyperliquid `0x2b20df...c4a391`; hyperliquid `0x3227b5...ee347f`; hyperliquid `0x4e1b23...d83c66`; hyperliquid `0x542252...d41430`; hyperliquid `0x5e531b...fbd873`; hyperliquid `0x65e2ca...a1c31d`; hyperliquid `0x6b9620...635c7a`; hyperliquid `0x9493ba...9ea861`; hyperliquid `0x9ee430...242bfb`; hyperliquid `0xa17add...33f36a`; hyperliquid `0xaaf3f2...83a6b2`; hyperliquid `0xab98a9...53dcfd`; hyperliquid `0xaccea2...853cec`; hyperliquid `0xad285f...4b1059`; hyperliquid `0xc49226...2330d7`; hyperliquid `0xca172b...1346dc`; hyperliquid `0xcd2346...c4de03`; hyperliquid `0xd39920...3e7943`; hyperliquid `0xd7b719...7e95c8`; hyperliquid `0xe76ad9...a5837f`; hyperliquid `0xeaa13e...cadd4a`; hyperliquid `0xf1f4ec...ac3a31`; hyperliquid `0xf692e9...493fda`; hyperliquid `0xfd0876...c9bfcc`; hyperliquid `0xfd8729...dfec54`; hyperliquid `0xff0ea0...b11592`; linea `0x573223...cba0e6` | ⚠️ Unaudited |
| Sample | unknown | hyperliquid | n/a | [`0x27e3c9...8cf238`](./contracts/hyperliquid-999/0x27e3c9fd88f15b8f512e58e231a45679cd8cf238/) | ⚠️ Unaudited |
| SignatureChecker | unknown | unichain | n/a | [`0xd25491...ec3527`](./contracts/unichain-130/0xd254915fc567865730f0516f8933bc0b96ec3527/) | ⚠️ Unaudited |
| SponsoredCCTPDstPeriphery | periphery | hyperliquid | n/a | 6 deployments: hyperliquid [`0x1037a2...85d9b8`](./contracts/hyperliquid-999/0x1037a21a30aeff90c269b01c3933eb9a5285d9b8/); hyperliquid `0x222034...a499d0`; hyperliquid `0x22a9aa...2fb95c`; hyperliquid `0x924323...3182e2`; hyperliquid `0xdcdde0...d9c2d6`; hyperliquid `0xf8706d...09c2af` | ⚠️ Unaudited |
| SponsoredCCTPSrcPeriphery | periphery | linea | n/a | 6 deployments: hyperliquid `0xc611d7...dc3555`; hyperliquid `0xf4e32c...8ba1b4`; hyperliquid `0xf71cdf...64e95f`; linea [`0x0188ef...079026`](./contracts/linea-59144/0x0188efd7eba935fb6fe452c13bb08b9959079026/); linea `0x60eb88...a5005c`; linea `0xe3e889...d44e8c` | ⚠️ Unaudited |
| SponsoredOFTSrcPeriphery | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x93e1e5...ca4b06`](./contracts/hyperliquid-999/0x93e1e5e9d840e758cc016f8b13cdf5dbaeca4b06/); hyperliquid `0xf74d94...5bca37` | ⚠️ Unaudited |
| Umip15Upgrader | unknown | ethereum | n/a | [`0xd18e2a...57e707`](./contracts/ethereum-1/0xd18e2a433664f9459cccbd4bee0057a7bc57e707/) | ⚠️ Unaudited |
| Umip3Upgrader | unknown | ethereum | n/a | [`0x730674...fc6e39`](./contracts/ethereum-1/0x730674363e2de4e30489dc37f0cd12abdcfc6e39/) | ⚠️ Unaudited |
| Universal_SpokePool | unknown | bsc | n/a | 2 deployments: bsc [`0x4e8e10...72d505`](./contracts/bsc-56/0x4e8e101924ede233c13e2d8622dc8aed2872d505/); bsc `0xe8ff2a...e7afaa` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | bsc | n/a | 2 deployments: bsc [`0x76f3fe...b7646a`](./contracts/bsc-56/0x76f3fe966f91602129cb278043239afbb7b7646a/); bsc `0x791762...a147f3` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x04959c...67917f`](./contracts/hyperliquid-999/0x04959c99222450a7fbb8fd7b9f69e6e7ce67917f/); hyperliquid `0x9fe378...a3ee67` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x14e97b...5bff95`](./contracts/hyperliquid-999/0x14e97badf63bdcd669874656d32bf511345bff95/); hyperliquid `0x3b8a0c...5f377b` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2beb23...ff8322`](./contracts/hyperliquid-999/0x2beb236d67ae544f48efa55960e06bde8aff8322/); hyperliquid `0x89cb50...4ebbf0` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x35e63e...6b0e04`](./contracts/hyperliquid-999/0x35e63ea3eb0fb7a3bc543c71fb66412e1f6b0e04/); hyperliquid `0x719f81...4fa2fd` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x45fa0a...b5c0a9`](./contracts/hyperliquid-999/0x45fa0a76d08725c59936dfcf64ded56f82b5c0a9/); hyperliquid `0xc63e56...e13e9b` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5658b5...088a08`](./contracts/hyperliquid-999/0x5658b50c2f6426f490ec44355b94b8abe6088a08/); hyperliquid `0xb223a3...f61cda` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb4ca43...42342f`](./contracts/hyperliquid-999/0xb4ca4312311fb2902cd27870c9dfc499d142342f/); hyperliquid `0xbf9949...3088ff` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xcf78e3...620a1f`](./contracts/hyperliquid-999/0xcf78e38a7309fbecf3d670e8091c4e7e51620a1f/); hyperliquid `0xf633b7...d35b6d` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | plasma | n/a | 2 deployments: plasma [`0x2271a5...2455f0`](./contracts/plasma-9745/0x2271a5e74ea8a29764ab10523575b41aa52455f0/); plasma `0xd29c85...7d7978` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | plasma | n/a | 2 deployments: plasma [`0x50039f...39207a`](./contracts/plasma-9745/0x50039faefebef707cfd94d6d462fe6d10b39207a/); plasma `0xcdb25d...37f2b7` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | plasma | n/a | 2 deployments: plasma [`0x5d8349...07b2ea`](./contracts/plasma-9745/0x5d834948e9aed31d9955346269a346baa007b2ea/); plasma `0x9552a0...1f83f8` | ⚠️ Unaudited |
| UniversalStorageProof_SpokePool | unknown | blast | n/a | [`0xb85155...bfc127`](./contracts/blast-81457/0xb851556fa82e7fd8e2233643ca878a081abfc127/) | ⚠️ Unaudited |
| Voting | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1d847f...a52aad`](./contracts/ethereum-1/0x1d847fb6e04437151736a53f09b6e49713a52aad/); ethereum `0x3b9985...2e74ee`; ethereum `0x7492cd...0e95b0`; ethereum `0x992181...37a545`; ethereum `0xfe3c4f...086c5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MulticallHandler | periphery | ethereum | n/a | 14 deployments: ethereum [`0x0f7ae2...c13a0e`](./contracts/ethereum-1/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); optimism [`0x0f7ae2...c13a0e`](./contracts/optimism-10/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); bsc [`0x0f7ae2...c13a0e`](./contracts/bsc-56/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); unichain [`0x0f7ae2...c13a0e`](./contracts/unichain-130/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); polygon [`0x0f7ae2...c13a0e`](./contracts/polygon-137/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); hyperliquid `0x5e7840...829bba`; hyperliquid `0xd2ecb3...31a449`; base [`0x0f7ae2...c13a0e`](./contracts/base-8453/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); plasma `0x5e7840...829bba`; mode [`0x0f7ae2...c13a0e`](./contracts/mode-34443/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); mode `0xd90a27...14181e`; arbitrum [`0x0f7ae2...c13a0e`](./contracts/arbitrum-42161/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/); linea `0xa2dbff...dfe95a`; blast [`0x0f7ae2...c13a0e`](./contracts/blast-81457/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/) | ⚠️ Unaudited (bytecode match) |
| SP1Helios | unknown | plasma | n/a | 53 deployments: bsc `0x0ad317...d8fa88`; bsc `0x19256d...2d1922`; bsc `0x1c8243...a32958`; bsc `0x1d82bf...94a72a`; bsc `0x2cfccc...e98169`; bsc `0x2e3c81...4a33c0`; bsc `0x2e8986...66c385`; bsc `0x45951e...17e480`; bsc `0x4eb585...663d48`; bsc `0x50e976...f1635d`; bsc `0x6185a8...0154a3`; bsc `0x647afb...e69178`; bsc `0x7245e9...02400c`; bsc `0x7bc354...223fa6`; bsc `0x858c09...2bfe38`; bsc `0x8ef424...5793e8`; bsc `0x9c23ff...8963cc`; bsc `0x9c7cad...3d50bd`; bsc `0x9cd312...d811a9`; bsc `0xa05426...1d01a2`; bsc `0xaaf3f2...83a6b2`; bsc `0xae5658...d56636`; bsc `0xb04926...a58b29`; bsc `0xb0c6ed...bf5fc0`; bsc `0xb217e8...ba947c`; bsc `0xb3a7b9...7ad781`; bsc `0xb4fcc5...84cf36`; bsc `0xb59139...ec560f`; bsc `0xbfa3c3...6237ab`; bsc `0xc49226...2330d7`; bsc `0xd84aca...5e7726`; bsc `0xe20fcd...faa0ec`; bsc `0xe58480...29943d`; bsc `0xe77469...716b34`; hyperliquid `0x279e7f...35b527`; hyperliquid `0x587741...ab3fa9`; hyperliquid `0x67bb4a...24df18`; hyperliquid `0x791762...a147f3`; hyperliquid `0x7a4ba1...0bfb7f`; hyperliquid `0x8c12bc...664bfb`; hyperliquid `0x8ef727...03d0e4`; hyperliquid `0xac4d99...8a1481`; hyperliquid `0xb20e14...9239e2`; hyperliquid `0xbe4a70...9a2071`; hyperliquid `0xc19b7e...181ac0`; hyperliquid `0xd08baa...1ce8e5`; hyperliquid `0xe20713...95672f`; hyperliquid `0xef6160...af84e8`; plasma [`0x09aea4...7bec64`](./contracts/plasma-9745/0x09aea4b2242abc8bb4bb78d537a67a245a7bec64/); plasma `0x6f1cd5...712ccb`; plasma `0x7e63a5...b2ee75`; plasma `0xd62163...084a4a`; plasma `0xef684c...fb9dd4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0c2fd4...278ba7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x104a28...e51e3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1139ba...d765e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1658d5...0cd36e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x252248...fc4dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a739a...121558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f64be...7d987c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x348fbf...b3d3dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39646c...452d8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x484211...470581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53b089...bf6089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53eb14...09c6b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5644df...7bb9ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6051d6...64db72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x628e89...8061d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6523ba...dba478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bebb6...4ed0b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ebbe6...5e7db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74d367...9f075b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bdd67...74f851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c54bd...18bc35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815a16...687bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x841416...8e2dd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x878cfe...7628bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b7b50...7ef76e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e1a24...2e689a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a437...265b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92804c...b78a4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99081b...5a6198` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9df4a8...8dedf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f3d03...66f549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb273f8...526c32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8f489...3b7e27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc23c...0443b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5be39...b39613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfc5f8...4aa814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1bf1f...3e4c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd70be...ab53a1` | ❓ Unverified |
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
| UnnamedContract | unknown | mode | n/a | `0x1020ae...82cc55` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x38fac3...ba2968` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3db06d...73d40e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4e8e10...72d505` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 6 deployments: ink `0x0f7ae2...c13a0e`; ink `0x10d8b8...92b610`; ink `0xef684c...fb9dd4`; zora `0x0f7ae2...c13a0e`; zora `0x10d8b8...92b610`; zora `0x13fdac...6d1d97` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdf1c94...79cda2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x213310...e012e4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x39e7ff...f684f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x544f99...a9d07f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/uma-audit-l2-bridges](https://www.openzeppelin.com/news/uma-audit-l2-bridges) | OpenZeppelin | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [www.openzeppelin.com/news/uma-audit-phase-1](https://www.openzeppelin.com/news/uma-audit-phase-1) | OpenZeppelin | Audit | 2020-04 | stale | Direct | contract_name | 1 | n/a |
| [www.openzeppelin.com/news/uma-audit-phase-2](https://www.openzeppelin.com/news/uma-audit-phase-2) | OpenZeppelin | Audit | 2020-05 | stale | Direct | contract_name | 8 | high |
| [www.openzeppelin.com/news/uma-audit-phase-3](https://www.openzeppelin.com/news/uma-audit-phase-3) | OpenZeppelin | Audit | 2020-09 | stale | Direct | contract_name | 1 | n/a |
| [www.openzeppelin.com/news/uma-audit-phase-4](https://www.openzeppelin.com/news/uma-audit-phase-4) | OpenZeppelin | Audit | 2021-02 | stale | Direct | contract_name | 1 | high |
| [www.openzeppelin.com/news/uma-continuous-audit](https://www.openzeppelin.com/news/uma-continuous-audit) | OpenZeppelin | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [www.openzeppelin.com/news/across-v3-and-oval-incremental-audit](https://www.openzeppelin.com/news/across-v3-and-oval-incremental-audit) | OpenZeppelin | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [blog.openzeppelin.com/across-v3-incremental-audit](https://blog.openzeppelin.com/across-v3-incremental-audit?hs_preview=lerUtAnm-157915368784) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | 5 | n/a |
| [www.openzeppelin.com/news/across-token-and-token-distributor-audit](https://www.openzeppelin.com/news/across-token-and-token-distributor-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [www.openzeppelin.com/news/uma-across-v2-audit](https://www.openzeppelin.com/news/uma-across-v2-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | 5 | n/a |
| [www.openzeppelin.com/news/uma-audit-phase-6](https://www.openzeppelin.com/news/uma-audit-phase-6) | OpenZeppelin | Audit | 2022-01 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x011a76...638478`](./contracts/plasma-9745/0x011a76d5ca7f537b4877d0fb6475065a90638478/) | Universal_SpokePool | core_logic | $6.65 | Verified native implementation with $6.65 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d8b8...92b610`](./contracts/ethereum-1/0x10d8b8daa26d307489803e10477de69c0492b610/) | SpokePoolPeriphery | core_logic | $0.10 | Verified native implementation with $0.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xd85630...b81b86`](./contracts/blast-81457/0xd85630e361cebbc4c7f13e6eed3587050fb81b86/) | AddressWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee1dc6...9002ea`](./contracts/ethereum-1/0xee1dc6bcf1ee967a350e9ac6caaaa236109002ea/) | BondToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02fbb6...2f1152`](./contracts/ethereum-1/0x02fbb64517e1c6ed69a6faa3abf37db0482f1152/) | BridgePoolProd | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7355ef...c1e433`](./contracts/ethereum-1/0x7355efc63ae731f584380a9838292c7046c1e433/) | BridgePoolProd | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4859fa...d10bb3`](./contracts/hyperliquid-999/0x4859fad52183fc75663c7719cc14aa7f2cd10bb3/) | CoreWithdrawTest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18a410...17753a`](./contracts/linea-59144/0x18a4101bee53bf0dfda36faecea99b961417753a/) | CounterfactualBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x002e76...f32674`](./contracts/hyperliquid-999/0x002e76dc036a1eff1488ee5435ee66c6abf32674/) | DonationBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x105864...05752d`](./contracts/hyperliquid-999/0x105864d5c2298e703748358a6171a07c7605752d/) | DstOFTHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x699952...59a874`](./contracts/hyperliquid-999/0x6999526e507cc3b03b180bbe05e1ff938259a874/) | DummySpokePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xbe959c...6f0f6e`](./contracts/unichain-130/0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca534...151408`](./contracts/ethereum-1/0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408/) | Governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x02b873...7d65e7`](./contracts/hyperliquid-999/0x02b8733763dd76f73b8573e668eca3343a7d65e7/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x05bc00...89c294`](./contracts/hyperliquid-999/0x05bc0022549f302926954ec938b4d0550a89c294/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x09500f...37819f`](./contracts/hyperliquid-999/0x09500ffd743e01b4146a4ba795231ca7ca37819f/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0ca831...339438`](./contracts/hyperliquid-999/0x0ca8316a6fcc15c833a220c40d84550b08339438/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1c709f...dd879f`](./contracts/hyperliquid-999/0x1c709fd0db6a6b877ddb19ae3d485b7b4add879f/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1cfe31...b882d5`](./contracts/hyperliquid-999/0x1cfe31ed57c2d2b4cb69c0298a1b586965b882d5/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1fe11b...6038e5`](./contracts/hyperliquid-999/0x1fe11b217cd3e268d45e402ff7a74d789d6038e5/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2bef20...2b0888`](./contracts/hyperliquid-999/0x2bef20d17a17f6903017d27d1a35cc9dc72b0888/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3380bf...1098f3`](./contracts/hyperliquid-999/0x3380bfefe47b6c8a396f3b298bfc1838831098f3/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x40153d...c67461`](./contracts/hyperliquid-999/0x40153ddfad90c49dbe3f5c9f96f2a5b25ec67461/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x478d45...8e6140`](./contracts/hyperliquid-999/0x478d451e101be484880a14cf3ccc293cd48e6140/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x52a0c0...513769`](./contracts/hyperliquid-999/0x52a0c0d440bae2e9e5603c752a886f6622513769/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x69b5c7...17f920`](./contracts/hyperliquid-999/0x69b5c72837769ef1e7c164abc6515dcff217f920/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x74dfb6...a3ae59`](./contracts/hyperliquid-999/0x74dfb6ab65419fd2022614fa8ba45e9f50a3ae59/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7a64a0...b70c39`](./contracts/hyperliquid-999/0x7a64a0b796bdb99409803ee427186942c7b70c39/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b1640...3f1c95`](./contracts/hyperliquid-999/0x7b164050bbc8e7ef3253e7db0d74b713ba3f1c95/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x83e245...04eb0c`](./contracts/hyperliquid-999/0x83e245941befbde29682df068bcda006a804eb0c/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa32eb1...85ba95`](./contracts/hyperliquid-999/0xa32eb1da0129d849bd71bb52989bdaf59385ba95/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xae5658...d56636`](./contracts/hyperliquid-999/0xae56583ec24102af3d265d3cea6341830ed56636/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb63c02...e07c6d`](./contracts/hyperliquid-999/0xb63c02e60c05f05975653edc83f876c334e07c6d/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb94b3c...d68ede`](./contracts/hyperliquid-999/0xb94b3c5db9dad3f5b0825465faf302b86ad68ede/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc8786d...7354cd`](./contracts/hyperliquid-999/0xc8786d517b4e224bb43985a38dbef8588d7354cd/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd9f407...db6e9f`](./contracts/hyperliquid-999/0xd9f40794367a2ecb0b409ca8dbc55345c0db6e9f/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xeb8fee...322284`](./contracts/hyperliquid-999/0xeb8fee79b59d048162986b0432a187be46322284/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6bd167...9cc334`](./contracts/linea-59144/0x6bd167bff542ab595f0296333d70202ae09cc334/) | HyperCoreFlowExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe56dd9...ad2459`](./contracts/hyperliquid-999/0xe56dd9c3c2477edb4839edbce80fff6f26ad2459/) | HyperCoreLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0d137e...8a9859`](./contracts/hyperliquid-999/0x0d137e83e3cc52731014a69ede21ea006a8a9859/) | HyperliquidDepositHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x700f45...876bf0`](./contracts/hyperliquid-999/0x700f45e64c4a1ec5fef2114b19f87ad1b9876bf0/) | HyperliquidHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x038e78...d63730`](./contracts/linea-59144/0x038e789392f8b3f5df8e5974ea25575ba9d63730/) | Linea_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x39e7ff...f684f2`](./contracts/linea-59144/0x39e7ffa77a4ac4d34021c6bbe4c8778d47f684f2/) | Linea_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5be04e...98e31a`](./contracts/linea-59144/0x5be04e53b465c6fd89ecff3d36ddf666d198e31a/) | Linea_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7e63a5...b2ee75`](./contracts/linea-59144/0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75/) | Linea_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x79950a...38fe8e`](./contracts/mode-34443/0x79950a8e152766f2282d315bdad889202c38fe8e/) | Lisk_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x031a78...31d234`](./contracts/mode-34443/0x031a7882ce3e8b4462b057ebb0c3f23cd731d234/) | Mode_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f7ae2...c13a0e`](./contracts/ethereum-1/0x0f7ae28de1c8532170ad4ee566b5801485c13a0e/) | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4f617c...31133e`](./contracts/blast-81457/0x4f617cf2812006059bd9162624d3f9403331133e/) | OP_SpokePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x007ea3...8e80bc`](./contracts/hyperliquid-999/0x007ea3acb84ad5289a5d80c3f66e52d0f58e80bc/) | PermissionedMulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x27e3c9...8cf238`](./contracts/hyperliquid-999/0x27e3c9fd88f15b8f512e58e231a45679cd8cf238/) | Sample | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xd25491...ec3527`](./contracts/unichain-130/0xd254915fc567865730f0516f8933bc0b96ec3527/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1037a2...85d9b8`](./contracts/hyperliquid-999/0x1037a21a30aeff90c269b01c3933eb9a5285d9b8/) | SponsoredCCTPDstPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0188ef...079026`](./contracts/linea-59144/0x0188efd7eba935fb6fe452c13bb08b9959079026/) | SponsoredCCTPSrcPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x93e1e5...ca4b06`](./contracts/hyperliquid-999/0x93e1e5e9d840e758cc016f8b13cdf5dbaeca4b06/) | SponsoredOFTSrcPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd18e2a...57e707`](./contracts/ethereum-1/0xd18e2a433664f9459cccbd4bee0057a7bc57e707/) | Umip15Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x730674...fc6e39`](./contracts/ethereum-1/0x730674363e2de4e30489dc37f0cd12abdcfc6e39/) | Umip3Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e8e10...72d505`](./contracts/bsc-56/0x4e8e101924ede233c13e2d8622dc8aed2872d505/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x76f3fe...b7646a`](./contracts/bsc-56/0x76f3fe966f91602129cb278043239afbb7b7646a/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04959c...67917f`](./contracts/hyperliquid-999/0x04959c99222450a7fbb8fd7b9f69e6e7ce67917f/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x14e97b...5bff95`](./contracts/hyperliquid-999/0x14e97badf63bdcd669874656d32bf511345bff95/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2beb23...ff8322`](./contracts/hyperliquid-999/0x2beb236d67ae544f48efa55960e06bde8aff8322/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x35e63e...6b0e04`](./contracts/hyperliquid-999/0x35e63ea3eb0fb7a3bc543c71fb66412e1f6b0e04/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x45fa0a...b5c0a9`](./contracts/hyperliquid-999/0x45fa0a76d08725c59936dfcf64ded56f82b5c0a9/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5658b5...088a08`](./contracts/hyperliquid-999/0x5658b50c2f6426f490ec44355b94b8abe6088a08/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb4ca43...42342f`](./contracts/hyperliquid-999/0xb4ca4312311fb2902cd27870c9dfc499d142342f/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xcf78e3...620a1f`](./contracts/hyperliquid-999/0xcf78e38a7309fbecf3d670e8091c4e7e51620a1f/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x5d8349...07b2ea`](./contracts/plasma-9745/0x5d834948e9aed31d9955346269a346baa007b2ea/) | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb85155...bfc127`](./contracts/blast-81457/0xb851556fa82e7fd8e2233643ca878a081abfc127/) | UniversalStorageProof_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d847f...a52aad`](./contracts/ethereum-1/0x1d847fb6e04437151736a53f09b6e49713a52aad/) | Voting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 6 |
| standard_library | 9 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: contract_name=14, extraction_exact=15

Zero-match audit list:

- [11500] www.openzeppelin.com/news/uma-audit-l2-bridges

Fork inheritance lineage and inherited audits are included when available.
