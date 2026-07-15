# Agentic Audit Brief: Across

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 48.5% over 90 days

## Project Overview

- Project: Across (`across`)
- Website: [https://across.to](https://across.to)
- Lifecycle: unknown (Tier 0, 92.5% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora
- Contract surface: 217 unique implementations (559 raw deployments)
- Coverage basis: 6/27 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,739,389.42
- On-chain TVL (included contracts): $63,246,658.78
- TVL by chain: Ethereum $62,852,367.02 | Optimism $154,575.65 | Unichain $142,954.20 | Base $83,968.65 | Blast $12,648.77 | Arbitrum $137.74 | Hyperliquid $6.65 | Bsc $0.10 | Plasma $0.00

## Project Description

This brief describes the observed EVM deployment and audit surface for Across. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora. Structural roles: 28 unclassified, 7 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: unclassified (28), core (7), supporting (2)
- Contract kinds: contract (37)
- Detected standards: erc1967proxy (7), multicall (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (6), permit2 (1)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 42 contracts are derived from known codebases. 42 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f7ae2...c13a0e`, chain 130)
- UnnamedContract (`0x5a148a...0f01a9`, chain 324)
- UnnamedContract (`0x68d380...605dbf`, chain 324)
- UnnamedContract (`0xe0b015...9335ff`, chain 324)
- UnnamedContract (`0x50039f...39207a`, chain 9745)
- UnnamedContract (`0xdf1c94...79cda2`, chain 59144)
- ERC1967Proxy (`0x5c7bcd...ed35c5`, chain 1)
- ERC1967Proxy (`0x6f26bf...3c0281`, chain 10)
- ERC1967Proxy (`0x09aea4...7bec64`, chain 130)
- ERC1967Proxy (`0x9295ee...e7f096`, chain 137)
- ERC1967Proxy (`0x09aea4...7bec64`, chain 8453)
- ERC1967Proxy (`0x3bad7a...6cdd96`, chain 34443)
- ERC1967Proxy (`0xe35e98...7c5f2a`, chain 42161)
- ERC1967Proxy (`0x2d5091...5cc6e1`, chain 81457)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 1)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 10)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 56)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 137)
- MulticallHandler (`0x5e7840...829bba`, chain 999)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 8453)
- MulticallHandler (`0x5e7840...829bba`, chain 9745)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 34443)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 42161)
- MulticallHandler (`0x0f7ae2...c13a0e`, chain 81457)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 1)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 10)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 56)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 130)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 137)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 999)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 8453)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 9745)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 34443)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 42161)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 59144)
- SpokePoolPeriphery (`0x10d8b8...92b610`, chain 81457)
- UnnamedContract (`0x0f7ae2...c13a0e`, chain 57073)
- UnnamedContract (`0x10d8b8...92b610`, chain 57073)
- UnnamedContract (`0xef684c...fb9dd4`, chain 57073)
- UnnamedContract (`0x0f7ae2...c13a0e`, chain 7777777)
- UnnamedContract (`0x10d8b8...92b610`, chain 7777777)
- UnnamedContract (`0x13fdac...6d1d97`, chain 7777777)

## Contract Surface Quality

- Logic-topography rows: 37; live-surface rows included: 37 (37 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/27 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 180 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 53
- Confirmed-live implementations: 37 of 217 unique; 180 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/127
- Verified + Unaudited implementations: 119
- Verified by bytecode match: 2
- Unverified implementations: 90
- Unique implementations: 217
- Raw deployments: 559
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $226,922.95
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 22.2% (OpenZeppelin)
- Note: This protocol is classified as [unknown]. ASD of $226,922.95 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 6 | 4.7% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Optimism_SpokePool | core_logic | project_anchor | own_supporting | 1 | optimism | unit-225911 | `0x6f26bf...3c0281` | ✅ Audited |
| Ethereum_SpokePool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-225910 | `0x5c7bcd...ed35c5` | ✅ Audited |
| Blast_SpokePool | core_logic | project_anchor | own_supporting | 1 | blast | unit-225917 | `0x2d5091...5cc6e1` | ✅ Audited |
| Arbitrum_SpokePool | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-225914 | `0xe35e98...7c5f2a` | ✅ Audited |
| Linea_SpokePool | unknown | project_anchor | own_supporting | 1 | linea | unit-225916 | 2 deployments: linea `0x7e63a5...b2ee75`; linea `0x9187be...09afcd` | ✅ Audited |
| Polygon_SpokePool | core_logic | project_anchor | own_supporting | 1 | polygon | unit-225913 | `0x9295ee...e7f096` | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcrossToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44108f...bef82f` | ⚠️ Unaudited |
| HubPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc186fa...48beda` | ⚠️ Unaudited |
| MiniMeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472a5...c6e53d` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | project_anchor | own_supporting | 1 | unichain | unit-225912 | `0x09aea4...7bec64` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | project_anchor | own_supporting | 1 | base | unit-225918 | `0x09aea4...7bec64` | ⚠️ Unaudited |
| Universal_SpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 30 deployments: bsc `0x026ed7...b358b5`; bsc `0x196767...b4ce98`; bsc `0x20e2bf...80636d`; bsc `0x554509...d8f022`; bsc `0x64a14b...c885dd`; bsc `0x64f4ae...686fdd`; bsc `0x7e6d96...7e2512`; bsc `0xad285f...4b1059`; bsc `0xc5c047...f9164e`; bsc `0xc5c51b...2af3ca`; bsc `0xcd2346...c4de03`; bsc `0xd85630...b81b86`; bsc `0xde7c02...8c4a38`; bsc `0xf962e0...20b6e7`; bsc `0xff0ea0...b11592`; hyperliquid `0x129b61...74527e`; hyperliquid `0x5bee43...37ed68`; hyperliquid `0xbaca1e...6d0b33`; hyperliquid `0xbbc600...1e0a58`; hyperliquid `0xbeabc2...1d5316`; hyperliquid `0xd2aa77...f13941`; hyperliquid `0xefd7ee...a4530f`; plasma `0x011a76...638478`; plasma `0x053dc4...cedeb4`; plasma `0x98a970...95a086`; plasma `0xa07470...1c203a`; plasma `0xb0b9f7...1eccd1`; plasma `0xbeabc2...1d5316`; plasma `0xd8866e...c3ca80`; plasma `0xe0fe15...6dd985` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | bsc | unit-225891 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-225875 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | plasma | unit-225906 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| VotingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04fa0d...2ef828`; ethereum `0x33cabd...8cfa3c`; ethereum `0xca13c0...2614cc` | ⚠️ Unaudited |
| AddressWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: ethereum `0xdbf904...0758c7`; blast `0xd85630...b81b86` | ⚠️ Unaudited |
| BOBA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bbfa...53efbc` | ⚠️ Unaudited |
| BondToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1dc6...9002ea` | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x02fbb6...2f1152`; ethereum `0x256c89...3017b6`; ethereum `0x43298f...0573d6`; ethereum `0x43f133...49ba5b`; ethereum `0x484157...8c9535`; ethereum `0xdfe0ec...e64e90` | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7355ef...c1e433` | ⚠️ Unaudited |
| CentralizedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x086878...ed0146`; ethereum `0x18a9c8...78a7d1`; ethereum `0x70cc33...32b1bd`; ethereum `0x8c9b50...70bb2c`; ethereum `0xcacbe9...f083bf`; ethereum `0xd5bd3d...0ff31b` | ⚠️ Unaudited |
| CoreWithdrawTest | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4859fa...d10bb3`; hyperliquid `0x4cc2d6...deb3c5` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xa55956...021a1f`; linea `0xeff4c6...a53649` | ⚠️ Unaudited |
| CounterfactualBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: hyperliquid `0x8a5f5a...c2daca`; hyperliquid `0xc186fa...48beda`; hyperliquid `0xfcb61e...49ab70`; linea `0x18a410...17753a`; linea `0x5e531b...fbd873`; linea `0xd4b79a...eea270` | ⚠️ Unaudited |
| DesignatedVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81eee...25d592` | ⚠️ Unaudited |
| DonationBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 65 deployments: hyperliquid `0x002e76...f32674`; hyperliquid `0x038f95...6a3307`; hyperliquid `0x039d62...020583`; hyperliquid `0x1635eb...30a8fe`; hyperliquid `0x170b5b...cf59a3`; hyperliquid `0x1d7c13...9d428e`; hyperliquid `0x213310...e012e4`; hyperliquid `0x243a60...f2dae7`; hyperliquid `0x2e8986...66c385`; hyperliquid `0x3077e1...4472e0`; hyperliquid `0x35b7d6...e17f29`; hyperliquid `0x39a038...4c86a7`; hyperliquid `0x3ba1de...edd77e`; hyperliquid `0x3c272b...5a4f09`; hyperliquid `0x3d589d...9ca844`; hyperliquid `0x445693...c74b8d`; hyperliquid `0x4682ba...fb32f6`; hyperliquid `0x46fcbf...c80da7`; hyperliquid `0x56d070...5c46ff`; hyperliquid `0x5a973f...d3f9a6`; hyperliquid `0x604f67...f2f433`; hyperliquid `0x64a0a6...c36945`; hyperliquid `0x67de29...be628f`; hyperliquid `0x74da8d...91baa4`; hyperliquid `0x7a6122...035146`; hyperliquid `0x828eda...5972ca`; hyperliquid `0x880d04...a3b02f`; hyperliquid `0x89c001...6cb517`; hyperliquid `0x90e248...423659`; hyperliquid `0x9565b6...6badb1`; hyperliquid `0x963b6e...d472b1`; hyperliquid `0x99ec53...191717`; hyperliquid `0xa04c91...63d73c`; hyperliquid `0xa10648...e77f20`; hyperliquid `0xa58822...cb6318`; hyperliquid `0xafe289...ddc9b2`; hyperliquid `0xb2c00b...0faaa6`; hyperliquid `0xb334dc...57f33e`; hyperliquid `0xb4259f...c64fa4`; hyperliquid `0xb52d4a...43d1e8`; hyperliquid `0xb84894...1ccb40`; hyperliquid `0xbb73dc...297c76`; hyperliquid `0xbbef6b...025590`; hyperliquid `0xbc2170...a4d1f6`; hyperliquid `0xbf71e6...1e1437`; hyperliquid `0xc010f9...ae7e46`; hyperliquid `0xc154fd...3a986f`; hyperliquid `0xc33c9e...f778c3`; hyperliquid `0xc97500...9022c9`; hyperliquid `0xcab3a8...78b715`; hyperliquid `0xd7dc3a...8b1c0b`; hyperliquid `0xdfdcc8...cd57c5`; hyperliquid `0xdffe85...0a3ace`; hyperliquid `0xe02b0e...ffdaab`; hyperliquid `0xe3d0d1...bbfe60`; hyperliquid `0xe58480...29943d`; hyperliquid `0xe9bd82...955fd0`; hyperliquid `0xeb3127...ea731c`; hyperliquid `0xed7422...eb185b`; hyperliquid `0xf42bb7...f9f764`; hyperliquid `0xf6518c...f9bc6e`; hyperliquid `0xf6c557...a46a81`; hyperliquid `0xf945e5...f91250`; hyperliquid `0xf9a0c1...ddb19e`; linea `0x4060db...96b6b4` | ⚠️ Unaudited |
| DstOFTHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 18 deployments: hyperliquid `0x105864...05752d`; hyperliquid `0x1c8243...a32958`; hyperliquid `0x40ad47...0f6cb0`; hyperliquid `0x532c44...807695`; hyperliquid `0x5701bb...ee8dd9`; hyperliquid `0x653419...a530a8`; hyperliquid `0x7d56da...43b654`; hyperliquid `0x8cc7c6...8ec8ec`; hyperliquid `0x98285d...490167`; hyperliquid `0xa738e3...c0271f`; hyperliquid `0xa9f2ba...288f2c`; hyperliquid `0xb0c6ed...bf5fc0`; hyperliquid `0xb4fcc5...84cf36`; hyperliquid `0xc1373e...63c51f`; hyperliquid `0xcbf361...faf2c5`; hyperliquid `0xdfa6ec...53c67c`; hyperliquid `0xec6e15...b20a1d`; hyperliquid `0xf442a1...3aec38` | ⚠️ Unaudited |
| DummySpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x699952...59a874` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 9 deployments: bsc `0x3ca117...62c569`; mode `0x2271a5...2455f0`; mode `0x3ca117...62c569`; mode `0x699952...59a874`; mode `0x9b4a30...074a84`; mode `0xd29c85...7d7978`; mode `0xd2ecb3...31a449`; mode `0xd85630...b81b86`; mode `0xef684c...fb9dd4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-225887 | `0x3bad7a...6cdd96` | ⚠️ Unaudited |
| ExpiringMultiPartyCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebb91...f13124` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | 2 deployments: unichain `0x078d78...f57ad6`; unichain `0xbe959c...6f0f6e` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| FinancialContractsAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4e6ccb...90317a`; ethereum `0x5dee86...c9d9d7`; ethereum `0x7f4eef...276311`; ethereum `0x84a307...3a9f4f` | ⚠️ Unaudited |
| Finder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: ethereum `0x40f941...8d77c3`; ethereum `0xc25096...175406`; blast `0x3bad7a...6cdd96`; blast `0xef684c...fb9dd4` | ⚠️ Unaudited |
| Governor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ca534...151408`; ethereum `0x592349...e507dc` | ⚠️ Unaudited |
| GovernorSpoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9b4a30...074a84` | ⚠️ Unaudited |
| HyperCoreDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6d9cfb...72cd68`; hyperliquid `0xf26b39...5aab34` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x02b873...7d65e7` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x05bc00...89c294` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x09500f...37819f` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x0ca831...339438` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x1c709f...dd879f` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x1cfe31...b882d5` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x1fe11b...6038e5` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x2bef20...2b0888` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x3380bf...1098f3` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x40153d...c67461` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x478d45...8e6140` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x52a0c0...513769` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x69b5c7...17f920` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x74dfb6...a3ae59` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x7a64a0...b70c39` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x7b1640...3f1c95` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x83e245...04eb0c` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xa32eb1...85ba95` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xae5658...d56636` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb63c02...e07c6d` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb94b3c...d68ede` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xc8786d...7354cd` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xd9f407...db6e9f` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xeb8fee...322284` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x6bd167...9cc334` | ⚠️ Unaudited |
| HyperCoreLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe56dd9...ad2459` | ⚠️ Unaudited |
| HyperliquidDepositHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 23 deployments: hyperliquid `0x0d137e...8a9859`; hyperliquid `0x3310c6...a3df3f`; hyperliquid `0x36ce11...d142f3`; hyperliquid `0x3a2a70...e402c3`; hyperliquid `0x41df96...08defc`; hyperliquid `0x420d76...7334f1`; hyperliquid `0x447116...bd1843`; hyperliquid `0x464e81...53d0b0`; hyperliquid `0x73a815...41cf09`; hyperliquid `0x841c3a...638d9e`; hyperliquid `0x861e12...07d195`; hyperliquid `0x8989fb...b76b20`; hyperliquid `0x8e7fa1...c2c781`; hyperliquid `0x9071bb...0d90a2`; hyperliquid `0xa15a90...33e56b`; hyperliquid `0xb06c61...a5a4e9`; hyperliquid `0xb45dca...4a938a`; hyperliquid `0xb4aead...f46376`; hyperliquid `0xbfb53e...5427d5`; hyperliquid `0xe15e8f...3831ac`; hyperliquid `0xe1601d...f5d860`; hyperliquid `0xf0b9c3...d471ed`; hyperliquid `0xf4055c...6c4c69` | ⚠️ Unaudited |
| HyperliquidHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x700f45...876bf0`; hyperliquid `0xe6596b...0fa4f7` | ⚠️ Unaudited |
| IdentifierWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e8085...e63bfa`; ethereum `0xcf649d...45e570`; blast `0xd2ecb3...31a449` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x038e78...d63730`; linea `0xfcdfac...179874` | ⚠️ Unaudited |
| Linea_SpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 9 deployments: linea `0x09aea4...7bec64`; linea `0x185692...580c7d`; linea `0x477f34...a95145`; linea `0x4fba85...213424`; linea `0x57825d...64d1a8`; linea `0x861e12...07d195`; linea `0x8eaeff...fd5795`; linea `0xd6fc66...202f76`; linea `0xef4998...bfaeec` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x39e7ff...f684f2`; linea `0xe8de4b...a97b84` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x5be04e...98e31a`; linea `0xad7c55...fe6c48` | ⚠️ Unaudited |
| Lisk_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x79950a...38fe8e` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x223039...ed52e1` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x28a5da...b92744`; ethereum `0x43d047...435991` | ⚠️ Unaudited |
| Mode_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 11 deployments: mode `0x031a78...31d234`; mode `0x20e2bf...80636d`; mode `0x28077b...d4fa87`; mode `0x2e8986...66c385`; mode `0x7e63a5...b2ee75`; mode `0xc49226...2330d7`; mode `0xcbf361...faf2c5`; mode `0xd62163...084a4a`; mode `0xf2670e...8a3177`; mode `0xf2d561...0cbc19`; mode `0xff4ec0...56f7db` | ⚠️ Unaudited |
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-225909 | 2 deployments: hyperliquid `0x5e7840...829bba`; plasma `0x5e7840...829bba` | ⚠️ Unaudited |
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | mode | unit-225885 | `0x0f7ae2...c13a0e` | ⚠️ Unaudited |
| MulticallHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: hyperliquid `0xd2ecb3...31a449`; mode `0xd90a27...14181e`; linea `0xa2dbff...dfe95a` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: mode `0xc7772c...f15d39`; blast `0x4f617c...31133e` | ⚠️ Unaudited |
| Optimism_ChildMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3db06d...73d40e` | ⚠️ Unaudited |
| OptimisticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ca117...62c569` | ⚠️ Unaudited |
| OptimisticOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e8e10...72d505` | ⚠️ Unaudited |
| OptimisticOracleV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe8ff2a...e7afaa` | ⚠️ Unaudited |
| OracleSpoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 3 deployments: blast `0x09aea4...7bec64`; blast `0x38fac3...ba2968`; blast `0x64ed7d...908768` | ⚠️ Unaudited |
| PermissionedMulticall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x38015d...d4139d`; bsc `0x9367cc...06d5b4` | ⚠️ Unaudited |
| PermissionedMulticallHandler | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 33 deployments: hyperliquid `0x007ea3...8e80bc`; hyperliquid `0x0980d0...f20502`; hyperliquid `0x1c5cc8...1fe79f`; hyperliquid `0x1e5224...535b1b`; hyperliquid `0x206f23...bae680`; hyperliquid `0x240c4b...11883a`; hyperliquid `0x2b20df...c4a391`; hyperliquid `0x3227b5...ee347f`; hyperliquid `0x4e1b23...d83c66`; hyperliquid `0x542252...d41430`; hyperliquid `0x5e531b...fbd873`; hyperliquid `0x65e2ca...a1c31d`; hyperliquid `0x6b9620...635c7a`; hyperliquid `0x9493ba...9ea861`; hyperliquid `0x9ee430...242bfb`; hyperliquid `0xa17add...33f36a`; hyperliquid `0xaaf3f2...83a6b2`; hyperliquid `0xab98a9...53dcfd`; hyperliquid `0xaccea2...853cec`; hyperliquid `0xad285f...4b1059`; hyperliquid `0xc49226...2330d7`; hyperliquid `0xca172b...1346dc`; hyperliquid `0xcd2346...c4de03`; hyperliquid `0xd39920...3e7943`; hyperliquid `0xd7b719...7e95c8`; hyperliquid `0xe76ad9...a5837f`; hyperliquid `0xeaa13e...cadd4a`; hyperliquid `0xf1f4ec...ac3a31`; hyperliquid `0xf692e9...493fda`; hyperliquid `0xfd0876...c9bfcc`; hyperliquid `0xfd8729...dfec54`; hyperliquid `0xff0ea0...b11592`; linea `0x573223...cba0e6` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x07d6a3...79257c`; ethereum `0x3e532e...5113ae`; ethereum `0x46209e...6403f1`; ethereum `0x633159...74be02`; ethereum `0x9e3942...586cb8`; blast `0x28077b...d4fa87`; blast `0x7e63a5...b2ee75` | ⚠️ Unaudited |
| Sample | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x27e3c9...8cf238` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd25491...ec3527` | ⚠️ Unaudited |
| SP1MockVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd29c85...7d7978`; bsc `0xd2ecb3...31a449` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | optimism | unit-225877 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99ec53...191717` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | unichain | unit-225879 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | polygon | unit-225881 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | hyperliquid | unit-225908 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | base | unit-225905 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | mode | unit-225886 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-225889 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | linea | unit-225897 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | blast | unit-225903 | `0x10d8b8...92b610` | ⚠️ Unaudited |
| SponsoredCCTPDstPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 6 deployments: hyperliquid `0x1037a2...85d9b8`; hyperliquid `0x222034...a499d0`; hyperliquid `0x22a9aa...2fb95c`; hyperliquid `0x924323...3182e2`; hyperliquid `0xdcdde0...d9c2d6`; hyperliquid `0xf8706d...09c2af` | ⚠️ Unaudited |
| SponsoredCCTPSrcPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: hyperliquid `0xc611d7...dc3555`; hyperliquid `0xf4e32c...8ba1b4`; hyperliquid `0xf71cdf...64e95f`; linea `0x0188ef...079026`; linea `0x60eb88...a5005c`; linea `0xe3e889...d44e8c` | ⚠️ Unaudited |
| SponsoredOFTSrcPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x93e1e5...ca4b06`; hyperliquid `0xf74d94...5bca37` | ⚠️ Unaudited |
| Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x54f44e...4057bf`; ethereum `0xceaefc...e56210`; ethereum `0xe07533...b5d7ef`; blast `0x699952...59a874` | ⚠️ Unaudited |
| TokenizedDerivativeCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a734...974cc2` | ⚠️ Unaudited |
| Umip15Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18e2a...57e707` | ⚠️ Unaudited |
| Umip3Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730674...fc6e39` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | bsc | unit-225915 | 2 deployments: bsc `0x4e8e10...72d505`; bsc `0xe8ff2a...e7afaa` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76f3fe...b7646a`; bsc `0x791762...a147f3` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x04959c...67917f`; hyperliquid `0x9fe378...a3ee67` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x14e97b...5bff95`; hyperliquid `0x3b8a0c...5f377b` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2beb23...ff8322`; hyperliquid `0x89cb50...4ebbf0` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-225920 | 2 deployments: hyperliquid `0x35e63e...6b0e04`; hyperliquid `0x719f81...4fa2fd` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x45fa0a...b5c0a9`; hyperliquid `0xc63e56...e13e9b` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5658b5...088a08`; hyperliquid `0xb223a3...f61cda` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb4ca43...42342f`; hyperliquid `0xbf9949...3088ff` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xcf78e3...620a1f`; hyperliquid `0xf633b7...d35b6d` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x2271a5...2455f0`; plasma `0xd29c85...7d7978` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | plasma | unit-225919 | 2 deployments: plasma `0x50039f...39207a`; plasma `0xcdb25d...37f2b7` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x5d8349...07b2ea`; plasma `0x9552a0...1f83f8` | ⚠️ Unaudited |
| UniversalStorageProof_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb85155...bfc127` | ⚠️ Unaudited |
| UniversalSwapAndBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x523130...5be366`; blast `0x57ee47...366204` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1d847f...a52aad`; ethereum `0x3b9985...2e74ee`; ethereum `0x7492cd...0e95b0`; ethereum `0x992181...37a545`; ethereum `0xfe3c4f...086c5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | ethereum | unit-225874 | 8 deployments: ethereum `0x0f7ae2...c13a0e`; optimism `0x0f7ae2...c13a0e`; bsc `0x0f7ae2...c13a0e`; unichain `0x0f7ae2...c13a0e`; polygon `0x0f7ae2...c13a0e`; base `0x0f7ae2...c13a0e`; arbitrum `0x0f7ae2...c13a0e`; blast `0x0f7ae2...c13a0e` | ⚠️ Unaudited (bytecode match) |
| SP1Helios | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 63 deployments: bsc `0x011a76...638478`; bsc `0x0ad317...d8fa88`; bsc `0x19256d...2d1922`; bsc `0x1c8243...a32958`; bsc `0x1d82bf...94a72a`; bsc `0x2271a5...2455f0`; bsc `0x2cfccc...e98169`; bsc `0x2e3c81...4a33c0`; bsc `0x2e8986...66c385`; bsc `0x3bed21...4bad8b`; bsc `0x3db06d...73d40e`; bsc `0x45951e...17e480`; bsc `0x4eb585...663d48`; bsc `0x50e976...f1635d`; bsc `0x54e38a...511d26`; bsc `0x5d8349...07b2ea`; bsc `0x6185a8...0154a3`; bsc `0x647afb...e69178`; bsc `0x699952...59a874`; bsc `0x7245e9...02400c`; bsc `0x7bc354...223fa6`; bsc `0x858c09...2bfe38`; bsc `0x8ef424...5793e8`; bsc `0x9b4a30...074a84`; bsc `0x9c23ff...8963cc`; bsc `0x9c7cad...3d50bd`; bsc `0x9cd312...d811a9`; bsc `0xa05426...1d01a2`; bsc `0xaaf3f2...83a6b2`; bsc `0xae5658...d56636`; bsc `0xb04926...a58b29`; bsc `0xb0c6ed...bf5fc0`; bsc `0xb217e8...ba947c`; bsc `0xb3a7b9...7ad781`; bsc `0xb4fcc5...84cf36`; bsc `0xb59139...ec560f`; bsc `0xbfa3c3...6237ab`; bsc `0xc49226...2330d7`; bsc `0xcdb25d...37f2b7`; bsc `0xcdf08c...1ce12f`; bsc `0xd84aca...5e7726`; bsc `0xe20fcd...faa0ec`; bsc `0xe58480...29943d`; bsc `0xe77469...716b34`; hyperliquid `0x279e7f...35b527`; hyperliquid `0x587741...ab3fa9`; hyperliquid `0x67bb4a...24df18`; hyperliquid `0x791762...a147f3`; hyperliquid `0x7a4ba1...0bfb7f`; hyperliquid `0x8c12bc...664bfb`; hyperliquid `0x8ef727...03d0e4`; hyperliquid `0xac4d99...8a1481`; hyperliquid `0xb20e14...9239e2`; hyperliquid `0xbe4a70...9a2071`; hyperliquid `0xc19b7e...181ac0`; hyperliquid `0xd08baa...1ce8e5`; hyperliquid `0xe20713...95672f`; hyperliquid `0xef6160...af84e8`; plasma `0x09aea4...7bec64`; plasma `0x6f1cd5...712ccb`; plasma `0x7e63a5...b2ee75`; plasma `0xd62163...084a4a`; plasma `0xef684c...fb9dd4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (90)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c2fd4...278ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104a28...e51e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1139ba...d765e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1658d5...0cd36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed0d5...663037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x252248...fc4dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a739a...121558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4710...76955d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f64be...7d987c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x348fbf...b3d3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39646c...452d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db06d...73d40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x484211...470581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53b089...bf6089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53eb14...09c6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5644df...7bb9ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6051d6...64db72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628e89...8061d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6523ba...dba478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bebb6...4ed0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebbe6...5e7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74d367...9f075b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bdd67...74f851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c54bd...18bc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6adc...504d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815a16...687bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841416...8e2dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878cfe...7628bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7b50...7ef76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e1a24...2e689a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a437...265b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92804c...b78a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9552a0...1f83f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99081b...5a6198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df4a8...8dedf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3d03...66f549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb234ca...1ed045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb273f8...526c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f489...3b7e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc23c...0443b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5be39...b39613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5f8...4aa814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29c85...7d7978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ecb3...31a449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec41f7...2c4511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1bf1f...3e4c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd70be...ab53a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc128...0afbe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x117060...e314a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd000df...bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225882 | `0x5a148a...0f01a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225883 | `0x68d380...605dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225884 | `0xe0b015...9335ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0196d5...bac932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x026ed7...b358b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0c94c4...1aae0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1425e2...84c1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1450c4...901878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x30d528...7e0294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4365e1...1fccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x497aa5...0a7b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4ff378...4c9b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x622d59...e89a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x63a14f...2cc67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x692929...d1ac74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x700cb4...82dd40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x78d8cb...d873e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x904a91...a86719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb9747b...49b902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb99625...ef00c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcd3476...322db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd57b3b...267ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe59283...f714b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xecfe90...68d77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xed7847...b5e39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf697b1...e4cf32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1020ae...82cc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x38fac3...ba2968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3db06d...73d40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4e8e10...72d505` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225893 | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225895 | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225896 | `0xef684c...fb9dd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-225898 | `0xdf1c94...79cda2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x213310...e012e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x39e7ff...f684f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x544f99...a9d07f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225899 | `0x0f7ae2...c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225900 | `0x10d8b8...92b610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225901 | `0x13fdac...6d1d97` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/uma-audit-l2-bridges](https://www.openzeppelin.com/news/uma-audit-l2-bridges) | OpenZeppelin | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [www.openzeppelin.com/news/across-v3-and-oval-incremental-audit](https://www.openzeppelin.com/news/across-v3-and-oval-incremental-audit) | OpenZeppelin | Audit | 2024-07 | stale | Direct | n/a | matched | 1 | 1 | 0 | 15 | n/a |
| [blog.openzeppelin.com/across-v3-incremental-audit](https://blog.openzeppelin.com/across-v3-incremental-audit?hs_preview=lerUtAnm-157915368784) | OpenZeppelin | Audit | 2024-02 | stale | Direct | n/a | matched | 5 | 5 | 0 | 25 | n/a |
| [www.openzeppelin.com/news/across-token-and-token-distributor-audit](https://www.openzeppelin.com/news/across-token-and-token-distributor-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.openzeppelin.com/news/uma-across-v2-audit](https://www.openzeppelin.com/news/uma-across-v2-audit) | OpenZeppelin | Audit | 2022-05 | stale | Direct | n/a | matched | 4 | 4 | 0 | 12 | n/a |
| [www.openzeppelin.com/news/uma-audit-phase-6](https://www.openzeppelin.com/news/uma-audit-phase-6) | OpenZeppelin | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11500] www.openzeppelin.com/news/uma-audit-l2-bridges — no match: Scope explicitly lists contracts/insured-bridge/*, contracts-ovm/insured-bridge/implementation/*, AncillaryData.sol, SkinnyOptimisticOracle.sol, and PR3445 changes. Additional contracts (LongShortPair, etc.) are mentioned in findings but may be part of PR3445 scope.
- [11506] www.openzeppelin.com/news/across-v3-and-oval-incremental-audit — matched: No reason recorded
- [11507] blog.openzeppelin.com/across-v3-incremental-audit — matched: No reason recorded
- [11508] www.openzeppelin.com/news/across-token-and-token-distributor-audit — no match: Scope section lists AcceleratingDistributor.sol and AcrossToken.sol. Audit date is the end date of the timeline: To 2022-05-10.
- [11509] www.openzeppelin.com/news/uma-across-v2-audit — matched: No reason recorded
- [11510] www.openzeppelin.com/news/uma-audit-phase-6 — no match: Extracted contracts from scope listing and findings. Audit date from header: January 7, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/uma-audit-l2-bridges | BridgeDepositBox | unmatched — not counted | — | listed in scope: contracts/insured-bridge/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | AVM_BridgeDepositBox | unmatched — not counted | — | listed in scope: contracts-ovm/insured-bridge/implementation/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | OVM_BridgeDepositBox | unmatched — not counted | — | listed in scope: contracts-ovm/insured-bridge/implementation/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | BridgePool | unmatched — not counted | — | listed in scope: contracts/insured-bridge/* | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | AncillaryData | unmatched — not counted | — | listed in scope: contracts/common/implementation/AncillaryData.sol | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | SkinnyOptimisticOracle | unmatched — not counted | — | listed in scope: contracts/oracle/implementation/SkinnyOptimisticOracle.sol | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | LongShortPair | unmatched — not counted | — | mentioned in findings and PR3445 review | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | LongShortPairCreator | unmatched — not counted | — | mentioned in finding C01 | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | BridgeAdmin | unmatched — not counted | — | mentioned in privileged roles and findings | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | Arbitrum_Messenger | unmatched — not counted | — | mentioned in finding N08 | no |
| www.openzeppelin.com/news/uma-audit-l2-bridges | ExpandedERC20 | unmatched — not counted | — | mentioned in finding M06 | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | BaseFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | Blast_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | Blast_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2d5091...5cc6e1` — deployed 2024-07-03 01:12:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | CoinbaseOracle | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | CoinbaseSourceAdapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | ERC7683 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | ERC7683Across | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | ERC7683Depositor | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | MultiCallerUpgradeable | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | MutableUnlockersController | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | MutlicallHandler | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | PermissionProxy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardChainlinkFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardCoinbaseFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardCronicleFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | StandardPythFactory | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Arbitrum_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Arbitrum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xe35e98...7c5f2a` — deployed 2023-04-24 19:58:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Base_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Base_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CCTPInterfaces | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CircleCCTPAdapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CrossDomainEnabled | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Ethereum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5c7bcd...ed35c5` — deployed 2023-04-24 19:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Linea_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Linea_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7e63a5...b2ee75` — deployed 2024-03-06 19:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | MerkleLib | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Optimism_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Optimism_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6f26bf...3c0281` — deployed 2023-04-24 19:44:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Ovm_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2Depositor | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2Order | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2OrderLib | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | PolygonZkEVM_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | PolygonZkEVM_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Polygon_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Polygon_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9295ee...e7f096` — deployed 2023-04-24 19:57:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Scroll_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Scroll_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SpokePoolInterface | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SpokePoolVerifier | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Succinct_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | SwapAndBridge | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | V3SpokePoolInterface | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | ZkSync_SpokePool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/across-token-and-token-distributor-audit | AcceleratingDistributor | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/across-token-and-token-distributor-audit | AcrossToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Arbitrum_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Arbitrum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xe35e98...7c5f2a` — deployed 2023-04-24 19:58:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | Ethereum_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Ethereum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5c7bcd...ed35c5` — deployed 2023-04-24 19:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | HubPool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | HubPoolInterface | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | LPTokenFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Lockable | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | MerkleLib | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Optimism_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Optimism_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6f26bf...3c0281` — deployed 2023-04-24 19:44:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | PolygonTokenBridger | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Polygon_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Polygon_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9295ee...e7f096` — deployed 2023-04-24 19:57:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | SpokePool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | SpokePoolInterface | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Proposer | unmatched — not counted | — | listed in scope: oracle/implementation/Proposer.sol | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticRewarderBase | unmatched — not counted | — | listed in scope: financial-templates/optimistic-rewarder/* (excluding test contracts) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Optimism_ParentMessenger | unmatched — not counted | — | listed in scope: cross-chain-oracle/* (excluding test and Polygon contracts) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Arbitrum_ParentMessenger | unmatched — not counted | — | listed in scope: cross-chain-oracle/* (excluding test and Polygon contracts) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | ChildMessengerConsumerInterface | unmatched — not counted | — | mentioned in findings (L03, N03) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | GovernorSpoke | unmatched — not counted | — | mentioned in findings (L03, L08, N03) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OracleSpoke | unmatched — not counted | — | mentioned in findings (L04, L08) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | ChildMessengerInterface | unmatched — not counted | — | mentioned in findings (N02) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Admin_ChildMessenger | unmatched — not counted | — | mentioned in findings (N06) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticRewarderToken | unmatched — not counted | — | mentioned in findings (N07) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticRewarderCreator | unmatched — not counted | — | mentioned in findings (N07) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OptimisticStaker | unmatched — not counted | — | mentioned in findings (N07) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | GovernorHub | unmatched — not counted | — | mentioned in findings (N08) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Optimism_ChildMessenger | unmatched — not counted | — | mentioned in findings (N05, N06) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | Polygon_ChildMessenger | unmatched — not counted | — | mentioned in findings (N02) | no |
| www.openzeppelin.com/news/uma-audit-phase-6 | OracleHub | unmatched — not counted | — | mentioned in findings (N04, N05) | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | $0.10 | Verified native implementation with $0.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f7ae2...c13a0e` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e7840...829bba` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0f7ae2...c13a0e` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x10d8b8...92b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4e8e10...72d505` | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x35e63e...6b0e04` | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 130 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 81 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=10

Zero-match audit list:

- [11500] www.openzeppelin.com/news/uma-audit-l2-bridges
- [11508] www.openzeppelin.com/news/across-token-and-token-distributor-audit
- [11510] www.openzeppelin.com/news/uma-audit-phase-6

Fork inheritance lineage and inherited audits are included when available.
