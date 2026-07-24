# Agentic Audit Brief: Across

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 48.5% over 90 days

## Project Overview

- Project: Across (`across`)
- Website: [https://across.to](https://across.to)
- Lifecycle: unknown (Tier 0, 92.5% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, blast, bsc, ethereum, hyperliquid, ink, linea, mode, optimism, plasma, polygon, unichain, zksync-era, zora
- Contract surface: 246 unique implementations (588 raw deployments)
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

- UnnamedContract (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 130)
- UnnamedContract (`0x5a148a9260c1f670429361c34d40b477280f01a9`, chain 324)
- UnnamedContract (`0x68d3806e57148d6c6793c78ebddbc272fe605dbf`, chain 324)
- UnnamedContract (`0xe0b015e54d54fc84a6cb9b666099c46ade9335ff`, chain 324)
- UnnamedContract (`0x50039faefebef707cfd94d6d462fe6d10b39207a`, chain 9745)
- UnnamedContract (`0xdf1c940487574eefa79989a79a4936a0f979cda2`, chain 59144)
- ERC1967Proxy (`0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5`, chain 1)
- ERC1967Proxy (`0x6f26bf09b1c792e3228e5467807a900a503c0281`, chain 10)
- ERC1967Proxy (`0x09aea4b2242abc8bb4bb78d537a67a245a7bec64`, chain 130)
- ERC1967Proxy (`0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096`, chain 137)
- ERC1967Proxy (`0x09aea4b2242abc8bb4bb78d537a67a245a7bec64`, chain 8453)
- ERC1967Proxy (`0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96`, chain 34443)
- ERC1967Proxy (`0xe35e9842fceaca96570b734083f4a58e8f7c5f2a`, chain 42161)
- ERC1967Proxy (`0x2d509190ed0172ba588407d4c2df918f955cc6e1`, chain 81457)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 1)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 10)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 56)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 137)
- MulticallHandler (`0x5e7840e06faccb6d1c3b5f5e0d1d3d07f2829bba`, chain 999)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 8453)
- MulticallHandler (`0x5e7840e06faccb6d1c3b5f5e0d1d3d07f2829bba`, chain 9745)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 34443)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 42161)
- MulticallHandler (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 81457)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 1)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 10)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 56)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 130)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 137)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 999)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 8453)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 9745)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 34443)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 42161)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 59144)
- SpokePoolPeriphery (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 81457)
- UnnamedContract (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 57073)
- UnnamedContract (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 57073)
- UnnamedContract (`0xef684c38f94f48775959ecf2012d7e864ffb9dd4`, chain 57073)
- UnnamedContract (`0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`, chain 7777777)
- UnnamedContract (`0x10d8b8daa26d307489803e10477de69c0492b610`, chain 7777777)
- UnnamedContract (`0x13fdac9f9b4777705db45291bbff3c972c6d1d97`, chain 7777777)

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
- Outside the address book: 209 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 53
- Confirmed-live implementations: 37 of 246 unique; 209 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/127
- Verified + Unaudited implementations: 119
- Verified by bytecode match: 2
- Unverified implementations: 119
- Unique implementations: 246
- Raw deployments: 588
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
| Optimism_SpokePool | core_logic | project_anchor | own_supporting | 1 | optimism | unit-225911 | `0x6f26bf09b1c792e3228e5467807a900a503c0281` | ✅ Audited |
| Ethereum_SpokePool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-225910 | `0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5` | ✅ Audited |
| Blast_SpokePool | core_logic | project_anchor | own_supporting | 1 | blast | unit-225917 | `0x2d509190ed0172ba588407d4c2df918f955cc6e1` | ✅ Audited |
| Arbitrum_SpokePool | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-225914 | `0xe35e9842fceaca96570b734083f4a58e8f7c5f2a` | ✅ Audited |
| Linea_SpokePool | unknown | project_anchor | own_supporting | 1 | linea | unit-225916 | 2 deployments: linea `0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75`; linea `0x9187be534efeb258933ef7eff4b67fe80209afcd` | ✅ Audited |
| Polygon_SpokePool | core_logic | project_anchor | own_supporting | 1 | polygon | unit-225913 | `0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096` | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcrossToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44108f0223a3c3028f5fe7aec7f9bb2e66bef82f` | ⚠️ Unaudited |
| HubPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc186fa914353c44b2e33ebe05f21846f1048beda` | ⚠️ Unaudited |
| MiniMeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3472a5a71965499acd81997a54bba8d852c6e53d` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | project_anchor | own_supporting | 1 | unichain | unit-225912 | `0x09aea4b2242abc8bb4bb78d537a67a245a7bec64` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | project_anchor | own_supporting | 1 | base | unit-225918 | `0x09aea4b2242abc8bb4bb78d537a67a245a7bec64` | ⚠️ Unaudited |
| Universal_SpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 30 deployments: bsc `0x026ed73a36b37b871be7bfd25d1c62b9bfb358b5`; bsc `0x196767568f848ff7607145a7c1f3cde44bb4ce98`; bsc `0x20e2bf3422290cbadce3289ad3f317ae9e80636d`; bsc `0x5545092553cf5bf786e87a87192e902d50d8f022`; bsc `0x64a14b477d16f1e9d490b00218ada0c142c885dd`; bsc `0x64f4aee94e5b919b0c89fee2cf923ea219686fdd`; bsc `0x7e6d9618ba8a87421609352d6e711958a97e2512`; bsc `0xad285f02b6853a34660253c643d1c06aec4b1059`; bsc `0xc5c0475f8b2cae8931089459ca20259cf8f9164e`; bsc `0xc5c51b97cd9df7203ee7f6b688c7f3ca172af3ca`; bsc `0xcd23467a80df72b24363da84d07af2b1dfc4de03`; bsc `0xd85630e361cebbc4c7f13e6eed3587050fb81b86`; bsc `0xde7c02ad2b925587bd16724810f994a2948c4a38`; bsc `0xf962e0e485a5b9f8ada9a438ceecc35c0020b6e7`; bsc `0xff0ea019ed1504d34507d99dd54f2339e3b11592`; hyperliquid `0x129b61ce378b2b4b5ebeac648019e2427b74527e`; hyperliquid `0x5bee4302ad0498dc0dfa7669e5741fc85637ed68`; hyperliquid `0xbaca1ec2ebe2c93e13ed643f7559c36e476d0b33`; hyperliquid `0xbbc6009feffc27ce705322832cb2068f8c1e0a58`; hyperliquid `0xbeabc2300271986c672b24732f295bafb21d5316`; hyperliquid `0xd2aa779253c0ab194d8c3e6708e5eb4697f13941`; hyperliquid `0xefd7ee5fc0bc42e41d800c4d9db912bc42a4530f`; plasma `0x011a76d5ca7f537b4877d0fb6475065a90638478`; plasma `0x053dc4a08302f11d13d8d2b87d8f3c9c28cedeb4`; plasma `0x98a9703310d1fd0e268ab67917b0e581d295a086`; plasma `0xa0747016cbd78302a1d35f15640528edac1c203a`; plasma `0xb0b9f73b424ad8dc58156c2ae0d7a1115d1eccd1`; plasma `0xbeabc2300271986c672b24732f295bafb21d5316`; plasma `0xd8866e76441df243fc98b892362fc6264dc3ca80`; plasma `0xe0fe15cf22b9b52b6ae309c7384e03244a6dd985` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | bsc | unit-225891 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-225875 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | plasma | unit-225906 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| VotingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04fa0d235c4abf4bcf4787af4cf447de572ef828`; ethereum `0x33cabde4527fcb4bbb1ea9909bf93d41c98cfa3c`; ethereum `0xca13c064b7a5f3a8c763312a883499a10b2614cc` | ⚠️ Unaudited |
| AddressWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: ethereum `0xdbf90434df0b98219f87d112f37d74b1d90758c7`; blast `0xd85630e361cebbc4c7f13e6eed3587050fb81b86` | ⚠️ Unaudited |
| BOBA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bbfa2e77757c645eeaad1655e0911a7553efbc` | ⚠️ Unaudited |
| BondToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1dc6bcf1ee967a350e9ac6caaaa236109002ea` | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x02fbb64517e1c6ed69a6faa3abf37db0482f1152`; ethereum `0x256c8919ce1ab0e33974cf6aa9c71561ef3017b6`; ethereum `0x43298f9f91a4545df64748e78a2c777c580573d6`; ethereum `0x43f133fe6fdfa17c417695c476447dc2a449ba5b`; ethereum `0x4841572daa1f8e4ce0f62570877c2d0cc18c9535`; ethereum `0xdfe0ec39291e3b60aca122908f86809c9ee64e90` | ⚠️ Unaudited |
| BridgePoolProd | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7355efc63ae731f584380a9838292c7046c1e433` | ⚠️ Unaudited |
| CentralizedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0868781a6eae026d126516ac5ebca41201ed0146`; ethereum `0x18a9c80c598dd42ee682a4fd03bc7f725e78a7d1`; ethereum `0x70cc3386d0bec897507177700dad6d674032b1bd`; ethereum `0x8c9b504192c06cffa6e2cf67e1b656a3c870bb2c`; ethereum `0xcacbe94ffa7c5dd10799bd5ae1860abe8ff083bf`; ethereum `0xd5bd3da7228bfa951eccf86af1d1bfd9fe0ff31b` | ⚠️ Unaudited |
| CoreWithdrawTest | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4859fad52183fc75663c7719cc14aa7f2cd10bb3`; hyperliquid `0x4cc2d6f2d31cd28f9cf4e0adaa993ca28adeb3c5` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xa559568e255416df1f216b2f5d4e53b751021a1f`; linea `0xeff4c6c9348daab4633138a4c8662539bba53649` | ⚠️ Unaudited |
| CounterfactualBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: hyperliquid `0x8a5f5a624a806c79384e282d6d44dc2701c2daca`; hyperliquid `0xc186fa914353c44b2e33ebe05f21846f1048beda`; hyperliquid `0xfcb61e1e76189938344cdccc4f777119ea49ab70`; linea `0x18a4101bee53bf0dfda36faecea99b961417753a`; linea `0x5e531b547c03fad0996901d86fdda30048fbd873`; linea `0xd4b79aab2af8a316861aa04899a3d1085feea270` | ⚠️ Unaudited |
| DesignatedVotingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81eee5da165fa6863bbc82df66e62d18625d592` | ⚠️ Unaudited |
| DonationBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 65 deployments: hyperliquid `0x002e76dc036a1eff1488ee5435ee66c6abf32674`; hyperliquid `0x038f95ee9125b83c03b8696f954bc5fc206a3307`; hyperliquid `0x039d62c549f27ead0eb9b567d8776289e5020583`; hyperliquid `0x1635eb08fe35e8297ddd394abc6d53f39330a8fe`; hyperliquid `0x170b5b00b84ddb0c668e9ba394fdd4d6ffcf59a3`; hyperliquid `0x1d7c1398df7c823068e6a120d3921847929d428e`; hyperliquid `0x21331016f2020b77528b690986ca0b7c6be012e4`; hyperliquid `0x243a60c0afe618f01d744e6bc4d706b115f2dae7`; hyperliquid `0x2e8986eb686b945a25151273d6bad582d166c385`; hyperliquid `0x3077e1716852b81767b0e8c104b88ce84e4472e0`; hyperliquid `0x35b7d6e007f499c806f6d6742d7285d285e17f29`; hyperliquid `0x39a038a29c86a869f1181575fe2449b6984c86a7`; hyperliquid `0x3ba1de7186ac6af1024783393182dd3625edd77e`; hyperliquid `0x3c272b0a2a42002770c5fa1b86502108275a4f09`; hyperliquid `0x3d589d40312bf2d20f13cd0af26a11144a9ca844`; hyperliquid `0x445693e0cff9a0b85de60bbc8f1716a7f5c74b8d`; hyperliquid `0x4682ba723cc3f0f5a326094fdc72eed92ffb32f6`; hyperliquid `0x46fcbf700512bfb48e0ad189da33363fa2c80da7`; hyperliquid `0x56d0707d97d30d3d187b685adcad9b4fef5c46ff`; hyperliquid `0x5a973f8aec01511156b4fa61989067df49d3f9a6`; hyperliquid `0x604f676bc77f0e6ca462c739d4d786c3a8f2f433`; hyperliquid `0x64a0a69d16518e4544fab83c624e01339dc36945`; hyperliquid `0x67de29d1a34ff2ea2b8c390b326456f4cbbe628f`; hyperliquid `0x74da8d4fed0a0189a467aeb7a86f2e662991baa4`; hyperliquid `0x7a6122b88da543b5b62ef3453070d1929b035146`; hyperliquid `0x828eda34acaeabae3c0d9a56da5aad737d5972ca`; hyperliquid `0x880d041d67aab3b062995d11d4ad9c1018a3b02f`; hyperliquid `0x89c001f83f110c116559f371acc3b2a58f6cb517`; hyperliquid `0x90e2487764e5316a2e4109c2ed40a3b3ad423659`; hyperliquid `0x9565b669ff9cfb5803ff9cf1df6954cccb6badb1`; hyperliquid `0x963b6e71c6a54e2b43588e2971cafb2ed4d472b1`; hyperliquid `0x99ec530a761e68a377593888d9504002bd191717`; hyperliquid `0xa04c919bd0dfb5fd319230f6e255121df163d73c`; hyperliquid `0xa10648da824330d7c7670e26a234bef442e77f20`; hyperliquid `0xa5882216ff431c3594b62889007443ffe3cb6318`; hyperliquid `0xafe2899d538a510f6388884e8615dc9183ddc9b2`; hyperliquid `0xb2c00b6b127fafe97fa484a148a00ba6390faaa6`; hyperliquid `0xb334dc730fa8a0ab46dd37092fc1c421b257f33e`; hyperliquid `0xb4259fa0c6c086deab529302c4b0f73f62c64fa4`; hyperliquid `0xb52d4a58bc056166697037ea660edab88743d1e8`; hyperliquid `0xb84894d729f13a7f02f0ea4538c5d5f0171ccb40`; hyperliquid `0xbb73dc832cd6fe6eb4b8a76722bdf00990297c76`; hyperliquid `0xbbef6bba2335aaae3d6923d34fa6343f92025590`; hyperliquid `0xbc217096db9eb6d2782c1d9e725d462077a4d1f6`; hyperliquid `0xbf71e6c7e49f9dac3fdb76bb80777538cc1e1437`; hyperliquid `0xc010f9f6773a715a88381ac9bf3d3ac7f3ae7e46`; hyperliquid `0xc154fd5654ea7ff153d20ff9b8a874dd953a986f`; hyperliquid `0xc33c9e837f65fd8f7c18af29adbd1a1ac0f778c3`; hyperliquid `0xc97500909f31b99fdd62982efd2c17e7209022c9`; hyperliquid `0xcab3a8602bbadad5b4934a9c94b2670f3c78b715`; hyperliquid `0xd7dc3ae9da6839145180690cf2f4ab994a8b1c0b`; hyperliquid `0xdfdcc8a89ca177b04dcc0bcafa6cfdef08cd57c5`; hyperliquid `0xdffe8553c2260202520c88ebbd3fff08e20a3ace`; hyperliquid `0xe02b0ee27ffb88de38375e618552c6e9f1ffdaab`; hyperliquid `0xe3d0d1b6d3571edc9657db5076ac1be5f0bbfe60`; hyperliquid `0xe58480ca74f1a819fafd777beded4e2d5629943d`; hyperliquid `0xe9bd822eff7effc5d55f97c6fc265a0840955fd0`; hyperliquid `0xeb312773a845db2821030f2fe99766026fea731c`; hyperliquid `0xed7422d44045781f4492fa4b569063e5a1eb185b`; hyperliquid `0xf42bb7ec88d065df48d60cb672b88f8330f9f764`; hyperliquid `0xf6518c42663c51fa9371a67fb98ddff1a9f9bc6e`; hyperliquid `0xf6c5572743c177785f6a339bcaaa7d6d37a46a81`; hyperliquid `0xf945e5b2469e5c20e1028ef8e9088a3857f91250`; hyperliquid `0xf9a0c1c775f1b6e156ad3f1db784520461ddb19e`; linea `0x4060dba72344da74edaeeae51a71a57f7e96b6b4` | ⚠️ Unaudited |
| DstOFTHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 18 deployments: hyperliquid `0x105864d5c2298e703748358a6171a07c7605752d`; hyperliquid `0x1c8243198570658f818fc56538f2c837c2a32958`; hyperliquid `0x40ad479382ad2a5c3061487a5094a677b00f6cb0`; hyperliquid `0x532c44f1b7b376b77334c7a49cf442c9f1807695`; hyperliquid `0x5701bb2ee4975caeef5295fb6cd3e22625ee8dd9`; hyperliquid `0x653419399f47579664a6a6c03fa96c9e88a530a8`; hyperliquid `0x7d56da85237495ffe79cc8556fa26ee53f43b654`; hyperliquid `0x8cc7c6fccb69eebc01db8bc06f3db113018ec8ec`; hyperliquid `0x98285d11b9f7afec2d475805e5255f26b4490167`; hyperliquid `0xa738e39d3436e4ea0aecf255bceaa7b70cc0271f`; hyperliquid `0xa9f2ba6333b78375b967d39cfdb38fee28288f2c`; hyperliquid `0xb0c6ed64a77a3d8f61b21922b13f39525fbf5fc0`; hyperliquid `0xb4fcc53a940d8583c3b41c2b81617c371484cf36`; hyperliquid `0xc1373efbeea0c077e4fb8dc521b90836e163c51f`; hyperliquid `0xcbf361ee59cc74b9d6e7af947fe4136828faf2c5`; hyperliquid `0xdfa6ec7a77f90d9762459069edd1ea78b853c67c`; hyperliquid `0xec6e1527948a1d6bb3fdcd528d75844020b20a1d`; hyperliquid `0xf442a1da54442b1f2697ea159b4cd5bc6b3aec38` | ⚠️ Unaudited |
| DummySpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6999526e507cc3b03b180bbe05e1ff938259a874` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 9 deployments: bsc `0x3ca11702f7c0f28e0b4e03c31f7492969862c569`; mode `0x2271a5e74ea8a29764ab10523575b41aa52455f0`; mode `0x3ca11702f7c0f28e0b4e03c31f7492969862c569`; mode `0x6999526e507cc3b03b180bbe05e1ff938259a874`; mode `0x9b4a302a548c7e313c2b74c461db7b84d3074a84`; mode `0xd29c85f15df544ba632c9e25829fd29d767d7978`; mode `0xd2ecb3afe598b746f8123cae365a598da831a449`; mode `0xd85630e361cebbc4c7f13e6eed3587050fb81b86`; mode `0xef684c38f94f48775959ecf2012d7e864ffb9dd4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-225887 | `0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96` | ⚠️ Unaudited |
| ExpiringMultiPartyCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebb91ab3e473025bb8ce278c02361a3c4f13124` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | 2 deployments: unichain `0x078d782b760474a361dda0af3839290b0ef57ad6`; unichain `0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| FinancialContractsAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4e6ccb1da3c7844887f9a5af4e8450d9fd90317a`; ethereum `0x5dee86b9345a2b4631d087fac91e1609a1c9d9d7`; ethereum `0x7f4eef331348b99850f25dd4f2ab8336a7276311`; ethereum `0x84a3076031fcdf12e95514149408326e303a9f4f` | ⚠️ Unaudited |
| Finder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: ethereum `0x40f941e48a552bf496b154af6bf55725f18d77c3`; ethereum `0xc25096b54cd850ee8a849e8bdc964ec412175406`; blast `0x3bad7ad0728f9917d1bf08af5782dcbd516cdd96`; blast `0xef684c38f94f48775959ecf2012d7e864ffb9dd4` | ⚠️ Unaudited |
| Governor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408`; ethereum `0x592349f7dedb2b75f9d4f194d4b7c16d82e507dc` | ⚠️ Unaudited |
| GovernorSpoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9b4a302a548c7e313c2b74c461db7b84d3074a84` | ⚠️ Unaudited |
| HyperCoreDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6d9cfb26eaf9aa5c9d56c8b152e141be7a72cd68`; hyperliquid `0xf26b396ea65963e1f636490b65770162425aab34` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x02b8733763dd76f73b8573e668eca3343a7d65e7` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x05bc0022549f302926954ec938b4d0550a89c294` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x09500ffd743e01b4146a4ba795231ca7ca37819f` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x0ca8316a6fcc15c833a220c40d84550b08339438` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x1c709fd0db6a6b877ddb19ae3d485b7b4add879f` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x1cfe31ed57c2d2b4cb69c0298a1b586965b882d5` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x1fe11b217cd3e268d45e402ff7a74d789d6038e5` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x2bef20d17a17f6903017d27d1a35cc9dc72b0888` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x3380bfefe47b6c8a396f3b298bfc1838831098f3` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x40153ddfad90c49dbe3f5c9f96f2a5b25ec67461` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x478d451e101be484880a14cf3ccc293cd48e6140` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x52a0c0d440bae2e9e5603c752a886f6622513769` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x69b5c72837769ef1e7c164abc6515dcff217f920` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x74dfb6ab65419fd2022614fa8ba45e9f50a3ae59` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x7a64a0b796bdb99409803ee427186942c7b70c39` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x7b164050bbc8e7ef3253e7db0d74b713ba3f1c95` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x83e245941befbde29682df068bcda006a804eb0c` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xa32eb1da0129d849bd71bb52989bdaf59385ba95` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xae56583ec24102af3d265d3cea6341830ed56636` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb63c02e60c05f05975653edc83f876c334e07c6d` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb94b3c5db9dad3f5b0825465faf302b86ad68ede` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xc8786d517b4e224bb43985a38dbef8588d7354cd` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xd9f40794367a2ecb0b409ca8dbc55345c0db6e9f` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xeb8fee79b59d048162986b0432a187be46322284` | ⚠️ Unaudited |
| HyperCoreFlowExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x6bd167bff542ab595f0296333d70202ae09cc334` | ⚠️ Unaudited |
| HyperCoreLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe56dd9c3c2477edb4839edbce80fff6f26ad2459` | ⚠️ Unaudited |
| HyperliquidDepositHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 23 deployments: hyperliquid `0x0d137e83e3cc52731014a69ede21ea006a8a9859`; hyperliquid `0x3310c65b6e7be50d85dbbb44d8368b1196a3df3f`; hyperliquid `0x36ce11d53bfc7a90c9474e5d583f26c390d142f3`; hyperliquid `0x3a2a7038c45c3d696350fd01a6fba72849e402c3`; hyperliquid `0x41df96482cb91295551e46983a654d7ab308defc`; hyperliquid `0x420d76aa59a56953c920a1d1451b0b73147334f1`; hyperliquid `0x447116f48e215961b5f85bca215d9a48f5bd1843`; hyperliquid `0x464e81675bc593754c2398a59a7e68b19c53d0b0`; hyperliquid `0x73a815aedeb5d083c2aa87d0c1babb22c641cf09`; hyperliquid `0x841c3a9a9cdf75e76550cd6d2e9c9cb702638d9e`; hyperliquid `0x861e127036b28d32f3777b4676f6bbb9e007d195`; hyperliquid `0x8989fb8ab371c91b8f5e83667556f3ef22b76b20`; hyperliquid `0x8e7fa1b0c16855ff9da4f3c878ec5f0ce2c2c781`; hyperliquid `0x9071bb3a480cca3f71801da8a4ce2e47810d90a2`; hyperliquid `0xa15a90e7936a2f8b70e181e955760860d133e56b`; hyperliquid `0xb06c61fcc074efb8cf7fd707bc3bd8ab1aa5a4e9`; hyperliquid `0xb45dcaafba4e039766913cd64f39328d964a938a`; hyperliquid `0xb4aead497fcbeaa3c37919032d42c29682f46376`; hyperliquid `0xbfb53e9c8acce6d6ac54885a8e33a7aec95427d5`; hyperliquid `0xe15e8f3a5bda8f13162f6006a4a1ca3e383831ac`; hyperliquid `0xe1601d869f3c72fdf12b9f40ca18e8c6c5f5d860`; hyperliquid `0xf0b9c3d193dc5dbf597e6ab38999b0b5f0d471ed`; hyperliquid `0xf4055cad9d0636868627f7502f63287e466c4c69` | ⚠️ Unaudited |
| HyperliquidHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x700f45e64c4a1ec5fef2114b19f87ad1b9876bf0`; hyperliquid `0xe6596b00cbd69fd62ae48e7c2d02a52ef00fa4f7` | ⚠️ Unaudited |
| IdentifierWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e808507e1692876ae6bebc35da3e13801e63bfa`; ethereum `0xcf649d9da4d1362c4daea67573430bd6f945e570`; blast `0xd2ecb3afe598b746f8123cae365a598da831a449` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x038e789392f8b3f5df8e5974ea25575ba9d63730`; linea `0xfcdfac59ad1f6391698c2999da612b7454179874` | ⚠️ Unaudited |
| Linea_SpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 9 deployments: linea `0x09aea4b2242abc8bb4bb78d537a67a245a7bec64`; linea `0x18569278f3a7ef1d73e36c5ef30f37d366580c7d`; linea `0x477f34de55874729fd4f7e60b121338e7aa95145`; linea `0x4fba8542080ffb82a12e3b596125b1b02d213424`; linea `0x57825d1bf50ad918b39563a57070b0915464d1a8`; linea `0x861e127036b28d32f3777b4676f6bbb9e007d195`; linea `0x8eaeff0b5a55268e6a5076d65f160c517efd5795`; linea `0xd6fc66498ae366892bda974fd4ef903ca7202f76`; linea `0xef4998e4cda2232c5f1824eac8c5060f28bfaeec` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x39e7ffa77a4ac4d34021c6bbe4c8778d47f684f2`; linea `0xe8de4bce27f6214dce18d8a7629f233c66a97b84` | ⚠️ Unaudited |
| Linea_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x5be04e53b465c6fd89ecff3d36ddf666d198e31a`; linea `0xad7c5516b25661e0a204646b08024cd82ffe6c48` | ⚠️ Unaudited |
| Lisk_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x79950a8e152766f2282d315bdad889202c38fe8e` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x28a5da04a94f0501a6f77df8f8a9529d27b92744`; ethereum `0x43d0473a0bfb65f39142aef13a640d646e435991` | ⚠️ Unaudited |
| Mode_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 11 deployments: mode `0x031a7882ce3e8b4462b057ebb0c3f23cd731d234`; mode `0x20e2bf3422290cbadce3289ad3f317ae9e80636d`; mode `0x28077b47cd03326de7838926a63699849dd4fa87`; mode `0x2e8986eb686b945a25151273d6bad582d166c385`; mode `0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75`; mode `0xc49226858478de8757e425661b1b5297102330d7`; mode `0xcbf361ee59cc74b9d6e7af947fe4136828faf2c5`; mode `0xd62163972fd399ac1c910edef3107e27af084a4a`; mode `0xf2670e641745076a9a4e457fe3a3ffc05c8a3177`; mode `0xf2d5614bd8d6246aaca5a6841acfca210b0cbc19`; mode `0xff4ec014e3cbe8f64a95bb022f1623c6e456f7db` | ⚠️ Unaudited |
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-225909 | 2 deployments: hyperliquid `0x5e7840e06faccb6d1c3b5f5e0d1d3d07f2829bba`; plasma `0x5e7840e06faccb6d1c3b5f5e0d1d3d07f2829bba` | ⚠️ Unaudited |
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | mode | unit-225885 | `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e` | ⚠️ Unaudited |
| MulticallHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: hyperliquid `0xd2ecb3afe598b746f8123cae365a598da831a449`; mode `0xd90a27eaf88c81f50e30e0e0333036838814181e`; linea `0xa2dbffd8b25aed47435831254c4cd2f5a9dfe95a` | ⚠️ Unaudited |
| OP_SpokePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: mode `0xc7772ce23a3ed7f87fe51b87617c7c7d21f15d39`; blast `0x4f617cf2812006059bd9162624d3f9403331133e` | ⚠️ Unaudited |
| Optimism_ChildMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3db06da8f0a24a525f314eec954fc5c6a973d40e` | ⚠️ Unaudited |
| OptimisticOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ca11702f7c0f28e0b4e03c31f7492969862c569` | ⚠️ Unaudited |
| OptimisticOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e8e101924ede233c13e2d8622dc8aed2872d505` | ⚠️ Unaudited |
| OptimisticOracleV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa` | ⚠️ Unaudited |
| OracleSpoke | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 3 deployments: blast `0x09aea4b2242abc8bb4bb78d537a67a245a7bec64`; blast `0x38fac33bd20d4c4cce085c0f347153c06cba2968`; blast `0x64ed7d2359b34baee07dacfab429b4c526908768` | ⚠️ Unaudited |
| PermissionedMulticall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x38015ddb8b34c84934cff058f571349cc7d4139d`; bsc `0x9367cc85b16932b19ee160a7aa2b251c8606d5b4` | ⚠️ Unaudited |
| PermissionedMulticallHandler | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 33 deployments: hyperliquid `0x007ea3acb84ad5289a5d80c3f66e52d0f58e80bc`; hyperliquid `0x0980d0f6799ca06c71ffafdc0e423cf2b0f20502`; hyperliquid `0x1c5cc80b4ca2f3dc55eb54e9cf7f4e5a6c1fe79f`; hyperliquid `0x1e5224900b7508d10e28c4627dc4285e50535b1b`; hyperliquid `0x206f2364647523edcc0538892756547601bae680`; hyperliquid `0x240c4b8dbc6bc563ccc76728f26b6f21f911883a`; hyperliquid `0x2b20df3471e2751840a9c921696d62ea8bc4a391`; hyperliquid `0x3227b52ebf23589b51dd07ab2525f62931ee347f`; hyperliquid `0x4e1b236f9ef22bbc4f9acb1a9fa0412be5d83c66`; hyperliquid `0x54225259a16caea40646481f3dc930e014d41430`; hyperliquid `0x5e531b547c03fad0996901d86fdda30048fbd873`; hyperliquid `0x65e2ca8f82f190b0c3e4310e97a6c94639a1c31d`; hyperliquid `0x6b9620f022216862bcf7b3c0c01ae0f1e5635c7a`; hyperliquid `0x9493ba85fd9a1918b16087f261f990264c9ea861`; hyperliquid `0x9ee4300b6af03392be493fa769de33bb07242bfb`; hyperliquid `0xa17add35c87bf6b9d25770fe04236d605133f36a`; hyperliquid `0xaaf3f29521877d7a28c21e379bf7a5401883a6b2`; hyperliquid `0xab98a974e3f7edb28cdc4794c9f3dba45853dcfd`; hyperliquid `0xaccea2061bfbea0dbb4a7af1907b0dd9b2853cec`; hyperliquid `0xad285f02b6853a34660253c643d1c06aec4b1059`; hyperliquid `0xc49226858478de8757e425661b1b5297102330d7`; hyperliquid `0xca172b9b70f9e7f092bae930cf85edea411346dc`; hyperliquid `0xcd23467a80df72b24363da84d07af2b1dfc4de03`; hyperliquid `0xd39920cc29c2d0fa30f7f7cfe06947309c3e7943`; hyperliquid `0xd7b719ed2b02bfa0247600edd6bd8fb3957e95c8`; hyperliquid `0xe76ad9927b255ee54c66609c07cb28e833a5837f`; hyperliquid `0xeaa13e675fb95821b99d34b9c94c3d60fecadd4a`; hyperliquid `0xf1f4ec5e7850c880a7ed949a0eac7ac3c1ac3a31`; hyperliquid `0xf692e93f0915336ba0f9a2c7aed93d6dca493fda`; hyperliquid `0xfd0876712dd9003d014cdcd8e5140b4efac9bfcc`; hyperliquid `0xfd8729c837031990eaec8a55f9148fa250dfec54`; hyperliquid `0xff0ea019ed1504d34507d99dd54f2339e3b11592`; linea `0x57322327b4f532cf401a21eb87fa975641cba0e6` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x07d6a3b7a345576a22b63470c1cbdf133179257c`; ethereum `0x3e532e6222afe9bcf02dcb87216802c75d5113ae`; ethereum `0x46209e15a14f602897e6d72da858a6ad806403f1`; ethereum `0x633159bf4d33106697de4601a1870c973e74be02`; ethereum `0x9e39424eab9161cc3399d886b1428cba71586cb8`; blast `0x28077b47cd03326de7838926a63699849dd4fa87`; blast `0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75` | ⚠️ Unaudited |
| Sample | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x27e3c9fd88f15b8f512e58e231a45679cd8cf238` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd254915fc567865730f0516f8933bc0b96ec3527` | ⚠️ Unaudited |
| SP1MockVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xd29c85f15df544ba632c9e25829fd29d767d7978`; bsc `0xd2ecb3afe598b746f8123cae365a598da831a449` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | optimism | unit-225877 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99ec530a761e68a377593888d9504002bd191717` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | unichain | unit-225879 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | polygon | unit-225881 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | hyperliquid | unit-225908 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | base | unit-225905 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | mode | unit-225886 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-225889 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | linea | unit-225897 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SpokePoolPeriphery | core_logic | project_anchor | own_supporting | 0 | blast | unit-225903 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ⚠️ Unaudited |
| SponsoredCCTPDstPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 6 deployments: hyperliquid `0x1037a21a30aeff90c269b01c3933eb9a5285d9b8`; hyperliquid `0x222034851fa9c5ee4d6491a472e8368f71a499d0`; hyperliquid `0x22a9aaac9c3184f68c7b7c95b1300c4b1d2fb95c`; hyperliquid `0x924323251409b1a6f43838e75c5ac30b533182e2`; hyperliquid `0xdcdde0afaefc96a39c8c274998f533832ed9c2d6`; hyperliquid `0xf8706d6e862dcc34a637caf27876d308a009c2af` | ⚠️ Unaudited |
| SponsoredCCTPSrcPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: hyperliquid `0xc611d7c33d1c7915f13ef35f488eaee9d9dc3555`; hyperliquid `0xf4e32c4ac479f0b007bc005ec0f481a2c78ba1b4`; hyperliquid `0xf71cdf8a34c56933a8871354a2570a301364e95f`; linea `0x0188efd7eba935fb6fe452c13bb08b9959079026`; linea `0x60eb88a83434f13095b0a138cdcbf5078aa5005c`; linea `0xe3e88958d181ab43bf3902f8f00af57cf5d44e8c` | ⚠️ Unaudited |
| SponsoredOFTSrcPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x93e1e5e9d840e758cc016f8b13cdf5dbaeca4b06`; hyperliquid `0xf74d94dbb6df577820448a6e0908b601855bca37` | ⚠️ Unaudited |
| Store | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x54f44ea3d2e7aa0ac089c4d8f7c93c27844057bf`; ethereum `0xceaefc381e3268ba7f1ec92a7ad637857ee56210`; ethereum `0xe07533c961032a182fa46f9b8fa9a03dc9b5d7ef`; blast `0x6999526e507cc3b03b180bbe05e1ff938259a874` | ⚠️ Unaudited |
| TokenizedDerivativeCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a734a6c3e415fff3149f0cb5f4719554974cc2` | ⚠️ Unaudited |
| Umip15Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18e2a433664f9459cccbd4bee0057a7bc57e707` | ⚠️ Unaudited |
| Umip3Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730674363e2de4e30489dc37f0cd12abdcfc6e39` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | bsc | unit-225915 | 2 deployments: bsc `0x4e8e101924ede233c13e2d8622dc8aed2872d505`; bsc `0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76f3fe966f91602129cb278043239afbb7b7646a`; bsc `0x79176279493f58c805648a883056954acaa147f3` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x04959c99222450a7fbb8fd7b9f69e6e7ce67917f`; hyperliquid `0x9fe3788c73ebf505d07a4a4828d3c5055ea3ee67` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x14e97badf63bdcd669874656d32bf511345bff95`; hyperliquid `0x3b8a0cafcdd97e4c5ed3e96aded04db8cc5f377b` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2beb236d67ae544f48efa55960e06bde8aff8322`; hyperliquid `0x89cb50586e137a718973f45120954b005b4ebbf0` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-225920 | 2 deployments: hyperliquid `0x35e63ea3eb0fb7a3bc543c71fb66412e1f6b0e04`; hyperliquid `0x719f81838009655840660c7682b600981b4fa2fd` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x45fa0a76d08725c59936dfcf64ded56f82b5c0a9`; hyperliquid `0xc63e56fde7383442993b86b77d432ad350e13e9b` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5658b50c2f6426f490ec44355b94b8abe6088a08`; hyperliquid `0xb223a3a70d0e164047c6f0fa0ba57ed635f61cda` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb4ca4312311fb2902cd27870c9dfc499d142342f`; hyperliquid `0xbf9949b42a02a167dff350d3ba16b20be53088ff` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xcf78e38a7309fbecf3d670e8091c4e7e51620a1f`; hyperliquid `0xf633b72a4c2fb73b77a379bf72864a825ad35b6d` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x2271a5e74ea8a29764ab10523575b41aa52455f0`; plasma `0xd29c85f15df544ba632c9e25829fd29d767d7978` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | project_anchor | own_supporting | 1 | plasma | unit-225919 | 2 deployments: plasma `0x50039faefebef707cfd94d6d462fe6d10b39207a`; plasma `0xcdb25d0a6fffe639bc591a565f2d99507837f2b7` | ⚠️ Unaudited |
| Universal_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x5d834948e9aed31d9955346269a346baa007b2ea`; plasma `0x9552a0a6624a23b848060ae5901659cdda1f83f8` | ⚠️ Unaudited |
| UniversalStorageProof_SpokePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb851556fa82e7fd8e2233643ca878a081abfc127` | ⚠️ Unaudited |
| UniversalSwapAndBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x52313039f1b849b49dce4bdf6a43ac76995be366`; blast `0x57ee47829369e2ef62fbb423648bec70d0366204` | ⚠️ Unaudited |
| Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1d847fb6e04437151736a53f09b6e49713a52aad`; ethereum `0x3b99859be43d543960803c09a0247106e82e74ee`; ethereum `0x7492cdbc126ffc05c32249a470982173870e95b0`; ethereum `0x9921810c710e7c3f7a7c6831e30929f19537a545`; ethereum `0xfe3c4f1ec9f5df918d42ef7ed3fba81cc0086c5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MulticallHandler | periphery | project_anchor | own_supporting | 0 | ethereum | unit-225874 | 8 deployments: ethereum `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; optimism `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; bsc `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; unichain `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; polygon `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; base `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; arbitrum `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e`; blast `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e` | ⚠️ Unaudited (bytecode match) |
| SP1Helios | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 63 deployments: bsc `0x011a76d5ca7f537b4877d0fb6475065a90638478`; bsc `0x0ad3176133d9c693217b8f8ff32e03c38cd8fa88`; bsc `0x19256dcea4b63c56b3efc8708cd62f595b2d1922`; bsc `0x1c8243198570658f818fc56538f2c837c2a32958`; bsc `0x1d82bfdb412415b3ed2514d5eb33574a3c94a72a`; bsc `0x2271a5e74ea8a29764ab10523575b41aa52455f0`; bsc `0x2cfccc2a30e12841ac312f0d0eb14cbe47e98169`; bsc `0x2e3c81dfce8928a53f354a611d65ce990d4a33c0`; bsc `0x2e8986eb686b945a25151273d6bad582d166c385`; bsc `0x3bed21dae767e4df894b31b14ad32369ce4bad8b`; bsc `0x3db06da8f0a24a525f314eec954fc5c6a973d40e`; bsc `0x45951e5be46a2b466106cfcaa5724484ef17e480`; bsc `0x4eb585127348266c53b33b663a6bad3d71663d48`; bsc `0x50e976ce22072e2c393fa24f5a0f12a6c1f1635d`; bsc `0x54e38a62ed3dc88e2b80cba50deb940580511d26`; bsc `0x5d834948e9aed31d9955346269a346baa007b2ea`; bsc `0x6185a81ac9e74d15c9d50101308e4a35780154a3`; bsc `0x647afb7d935ff0aae4f0ddefe0499d13ade69178`; bsc `0x6999526e507cc3b03b180bbe05e1ff938259a874`; bsc `0x7245e9a6fd2e7494edd74a61e947fa26d202400c`; bsc `0x7bc354c01a576b85e1dabd7f8f2915b757223fa6`; bsc `0x858c099a5f3a07a7d237584526cc8f2c8e2bfe38`; bsc `0x8ef424f90c6bc1b98153a09c0cac5072545793e8`; bsc `0x9b4a302a548c7e313c2b74c461db7b84d3074a84`; bsc `0x9c23ffca05066e399e67a1a6a96636ae3a8963cc`; bsc `0x9c7cad4f858dd09cf38226699835565f353d50bd`; bsc `0x9cd3121751c48d27ad2c5c703c505a82bdd811a9`; bsc `0xa0542655d7de212386d9de26a7cb9bef621d01a2`; bsc `0xaaf3f29521877d7a28c21e379bf7a5401883a6b2`; bsc `0xae56583ec24102af3d265d3cea6341830ed56636`; bsc `0xb04926af663cb52899361b1f6313bcfea5a58b29`; bsc `0xb0c6ed64a77a3d8f61b21922b13f39525fbf5fc0`; bsc `0xb217e8f01b973e536cd8e27ff06278d8bbba947c`; bsc `0xb3a7b93cbe8a67ed26869e863c6fcf22037ad781`; bsc `0xb4fcc53a940d8583c3b41c2b81617c371484cf36`; bsc `0xb59139ea0e7ab2b502bea36be4a653a1a3ec560f`; bsc `0xbfa3c39bacf384099e681ab781ba5471486237ab`; bsc `0xc49226858478de8757e425661b1b5297102330d7`; bsc `0xcdb25d0a6fffe639bc591a565f2d99507837f2b7`; bsc `0xcdf08cb3d3436c3c21f277b6ad45e3d7ab1ce12f`; bsc `0xd84aca67d683af7702705141b3c7e57e4e5e7726`; bsc `0xe20fcda4981c8a58417c5a2ef6804b0835faa0ec`; bsc `0xe58480ca74f1a819fafd777beded4e2d5629943d`; bsc `0xe77469c52f56427b8125d399ecbb73ccb9716b34`; hyperliquid `0x279e7ff866e45f2354e58cec9e4071354635b527`; hyperliquid `0x5877418f6c909e72e491f54a29be8ec9f7ab3fa9`; hyperliquid `0x67bb4aefb87a334989b261ec8112c5d27b24df18`; hyperliquid `0x79176279493f58c805648a883056954acaa147f3`; hyperliquid `0x7a4ba159a34c1c49f712b5079a28121bba0bfb7f`; hyperliquid `0x8c12bc6de02c59498aa68b811ea1758f53664bfb`; hyperliquid `0x8ef727c85d430411f06f2a592f43ee56c303d0e4`; hyperliquid `0xac4d99a056944660ec94cbfeee71b18e808a1481`; hyperliquid `0xb20e14a8ff2e0db34c4533e0e9b12186349239e2`; hyperliquid `0xbe4a70d535878d547dcc0bad2da8707a119a2071`; hyperliquid `0xc19b7ef43a6ebd393446f401d1ecfac01b181ac0`; hyperliquid `0xd08baae74d6d2eab1f3320b2e1a53eeb391ce8e5`; hyperliquid `0xe207135adffd25baa8a84c39975f55e23695672f`; hyperliquid `0xef61606343ec2568c6ebc80c8b7c4da408af84e8`; plasma `0x09aea4b2242abc8bb4bb78d537a67a245a7bec64`; plasma `0x6f1cd5f317a7228269eab2b496313862de712ccb`; plasma `0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75`; plasma `0xd62163972fd399ac1c910edef3107e27af084a4a`; plasma `0xef684c38f94f48775959ecf2012d7e864ffb9dd4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (119)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c2fd45d89fb9693b0130f8a66be67827c278ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104a2817116aea9a5c5f7f7b3235c68a0ee51e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1139bad757ca06275042db7bdd1528261ed765e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1658d5b3737beea9f0f8b7da3c298579390cd36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ed0d59019a52870337b51dee8190486a8663037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25224867055e0e6a73effe61053a0a9fe1fc4dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a739a4accc66c69ff53a5ef99143fc256121558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d4710f04da90184255782d3715224a6c776955d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f64bec95f2cc0174b6b89bc9fb95c509e7d987c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x348fbf55680ab9162c5b09572b8f126402b3d3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39646c110c2806b5aeac72a7eea6e5af70452d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db06da8f0a24a525f314eec954fc5c6a973d40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4842116701cd2b92f1093ed854c9a74657470581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53b0892cb32d9377a2bf9d04f51a9a58a5bf6089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53eb14e1e7b75d10fc00fca16a717e398f09c6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5644dfbec6a9dbe50ad8613b55028b2a007bb9ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6051d63b9fef16f018ef1031438815d81d64db72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628e89bf678e0bf804469e8339f9f1b9fb8061d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6523baa2d53b24c96cf72867b2e8251b5ddba478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bebb6767ef6833d669b034cfb823a6aac4ed0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebbe6c144f20bb4e08413c23b70cff00d5e7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74d367e2207e52f05963479e8395cf44909f075b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bdd67230a942bd890c89417b5716b415874f851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c54bd4277a844d1fc5ce2ce19bf7ebc8a18bc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6adcbb51ea70c134d7b0b96aa9af50fe504d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815a168ad337f6e6edaa300e7b2cd3b0a3687bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841416642293f075d3a1708e7afeb258b18e2dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878cfedb234c226ddefd33657937af74c17628bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7b507f0fc33b25c363813069f976502c7ef76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e1a24fad5e8d55855228293950ce8aef12e689a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a437220c99a3634e10b20e4a7407a537265b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92804c77ed447f1439495756cfa17bbfd8b78a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9552a0a6624a23b848060ae5901659cdda1f83f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99081ba11dbdb83607952a1242d2a412a15a6198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df4a8166849c58aaad5b1347385732c938dedf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3d032f795ba5c8b4bf4437b0f0cbe52d66f549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb234ca484866c811d0e6d3318866f583781ed045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb273f8a0a5a445254c2eb905a24dd9bf24526c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f489e7ed5bd7e3c5cf8e11996849ba273b7e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc23c5c4271821009ca655e804b293c1a0443b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5be39ca419469b14396c56415a682e2b7b39613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5f806beaa77242da3a81c40d0f669124aa814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29c85f15df544ba632c9e25829fd29d767d7978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2ecb3afe598b746f8123cae365a598da831a449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec41f75c686e376ab2a4f18bde263ab5822c4511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1bf1ff551977e273fc2c20f6e187d588d3e4c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd70bef61ae4eaf2a00c9502d4308a226aab53a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc1285082deab9bf0eca5699e4930bb310afbe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bf1a44ae69869cf7aea7e0cba76624792fad4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x117060d37e8b48610f42d8079fc4cd569de314a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27ae7c77ce48d438e305b86b0989ae005ab7df7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f25b1647fa8eaea0e15edd413c7afcbe613b6f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b95974539ebc874595d3b2a08d5509263346d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd000dfe68362b9a9395af0df9788b1de05bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225882 | `0x5a148a9260c1f670429361c34d40b477280f01a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225883 | `0x68d3806e57148d6c6793c78ebddbc272fe605dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x6f26bf09b1c792e3228e5467807a900a503c0281` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-225884 | `0xe0b015e54d54fc84a6cb9b666099c46ade9335ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xffb14e4c6f5917586e8eaa509d3504f5722f678c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0196d57d3e4df6e6b2e8947cf540135d98bac932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x026ed73a36b37b871be7bfd25d1c62b9bfb358b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0c94c45c04879a0c2d613654ec99499f741aae0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1425e20d2ecb0bbdeed8fe1f8252724ed084c1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1450c4825c960809cc5b10a18eae755e01901878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x30d5283bd4da4fbace296424e713f4e0e47e0294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3e9508b70585c57daee22e9f4f15815e1fa11012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4365e1459759cbb9214b35876d41fe48ee1fccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x497aa582ab049af746ec4dc0b256b62b730a7b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4ff378dce84ea9c4575d060f9a481dea064c9b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x622d59f3dbd28fcfe746e0d2f83ebdc286e89a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x63a14ffc6d12e5a4922c2f8a2e73c4b3b82cc67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x692929c94fa1e865cea1fdbf7d7b175acad1ac74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x700cb4917e21178ce5b617d6caf976513682dd40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x78d8cb7284b14c123a2e81a3246494e8dad873e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x904a91f5d5202c8ade4bbd54f48fb183d4a86719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb9747b04641fe4017ab89884ee980cff2b49b902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb99625ef2980c312fe08df75a70f3a7a96ef00c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc844224f53edc61d33ded87f7c32778dfdf0d25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcd34761d49b2a209f9c3e569910442a4a1322db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd57b3b567107cbcaa7e833f92311a48399267ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe16ca2c407f9e015b42e71d45238821eb5208171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe59283f44c29c43c0c23e71c906077e49df714b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xecfe904d6ec0d57326515e3629252f650f68d77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xed7847bb4976a68900889fe4326310a8b7b5e39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeeb0e2d3f46553f2ee863c9f0886b664f050f80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf068caa9a45b71ddde0533c304cf3ca7d72879ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf697b1f4bf70a4f04741420fd5c6acd1f7e4cf32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x287a1ba52e030459f163f48b2ae468a085003a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2c7a3ccd1a8f4f96174c42e0638aab3bda6bc923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3d7fa3467baa0a46746145170b9d8379aa47577c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa46236268f63d8898897059aaec0918aff8a4e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd0c27170c13577f47796412356303834e10c056f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd4c8dddc5edee56b0174f1b10e29047539a6928a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe634ec56b73779ecffa78109a653fa0ae33d243f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf81c7cbc1196facb327bd5b7021f9c1c220d0328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xff0ea019ed1504d34507d99dd54f2339e3b11592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1020ae36548ab28bc0c41fd2a08d24132c82cc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x38fac33bd20d4c4cce085c0f347153c06cba2968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3db06da8f0a24a525f314eec954fc5c6a973d40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4e8e101924ede233c13e2d8622dc8aed2872d505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xd896f3a31d5524511783245d3b0816db71f1ab09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xdf82a2487771b85d4538348eb70500cf827dd03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225893 | `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225895 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-225896 | `0xef684c38f94f48775959ecf2012d7e864ffb9dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d57e22f1c4f0fead8d2d0abfeb1028c5c35bbff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4495c9f0c10d82823a2dc5658615874a5b48bfa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4da9c6f8888a6cdb571f8d07bfe089166eee58dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-225898 | `0xdf1c940487574eefa79989a79a4936a0f979cda2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeaca6b16d7bc9deb7ba9ce5a8d16c7d749da9036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf802fe1cbb39766670b4f192f44d3f45b7939b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x08783113ba3412c349e6329943f73c46385bbbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x21331016f2020b77528b690986ca0b7c6be012e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x39e7ffa77a4ac4d34021c6bbe4c8778d47f684f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x544f99ae965062b17fe3c3600aba055bdea9d07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa44a832b994f796452e4faf191a041f791ad8a0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225899 | `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225900 | `0x10d8b8daa26d307489803e10477de69c0492b610` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zora | unit-225901 | `0x13fdac9f9b4777705db45291bbff3c972c6d1d97` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 215
- Live contracts: 8
- Unknown liveness contracts: 207
- Source-verified contracts: 139
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate auto own=1, candidate review=97, exact address book overlap=1, source verified unclassified=40, unverified unclassified=75

Showing first 200 of 215 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| blast | candidate auto own | OptimisticOracle<br>`0x3ca11702f7c0f28e0b4e03c31f7492969862c569` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | AddressWhitelist<br>`0xd85630e361cebbc4c7f13e6eed3587050fb81b86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | Finder<br>`0xef684c38f94f48775959ecf2012d7e864ffb9dd4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | GovernorSpoke<br>`0x9b4a302a548c7e313c2b74c461db7b84d3074a84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | Optimism_ChildMessenger<br>`0x3db06da8f0a24a525f314eec954fc5c6a973d40e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | OracleSpoke<br>`0x09aea4b2242abc8bb4bb78d537a67a245a7bec64` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | OracleSpoke<br>`0x38fac33bd20d4c4cce085c0f347153c06cba2968` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | OracleSpoke<br>`0x64ed7d2359b34baee07dacfab429b4c526908768` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | Registry<br>`0x28077b47cd03326de7838926a63699849dd4fa87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | Registry<br>`0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | candidate review | UniversalStorageProof_SpokePool<br>`0xb851556fa82e7fd8e2233643ca878a081abfc127` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | source verified unclassified | IdentifierWhitelist<br>`0xd2ecb3afe598b746f8123cae365a598da831a449` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | source verified unclassified | Store<br>`0x6999526e507cc3b03b180bbe05e1ff938259a874` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | source verified unclassified | UniversalSwapAndBridge<br>`0x52313039f1b849b49dce4bdf6a43ac76995be366` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | source verified unclassified | UniversalSwapAndBridge<br>`0x57ee47829369e2ef62fbb423648bec70d0366204` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | unverified unclassified | UnnamedContract<br>`0x08783113ba3412c349e6329943f73c46385bbbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | unverified unclassified | UnnamedContract<br>`0x21331016f2020b77528b690986ca0b7c6be012e4` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | unverified unclassified | UnnamedContract<br>`0x544f99ae965062b17fe3c3600aba055bdea9d07f` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| blast | unverified unclassified | UnnamedContract<br>`0xa44a832b994f796452e4faf191a041f791ad8a0a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | ERC1967Proxy<br>`0x3ca11702f7c0f28e0b4e03c31f7492969862c569` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | ERC1967Proxy<br>`0x4e8e101924ede233c13e2d8622dc8aed2872d505` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | ERC1967Proxy<br>`0x79176279493f58c805648a883056954acaa147f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0x196767568f848ff7607145a7c1f3cde44bb4ce98` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0x20e2bf3422290cbadce3289ad3f317ae9e80636d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0x5545092553cf5bf786e87a87192e902d50d8f022` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0x76f3fe966f91602129cb278043239afbb7b7646a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0x7e6d9618ba8a87421609352d6e711958a97e2512` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0xd85630e361cebbc4c7f13e6eed3587050fb81b86` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0xe8ff2a3d5cc19ddcbd93328371e1dd8995e7afaa` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | candidate review | Universal_SpokePool<br>`0xf962e0e485a5b9f8ada9a438ceecc35c0020b6e7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | PermissionedMulticall3<br>`0x38015ddb8b34c84934cff058f571349cc7d4139d` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | PermissionedMulticall3<br>`0x9367cc85b16932b19ee160a7aa2b251c8606d5b4` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x011a76d5ca7f537b4877d0fb6475065a90638478` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x2271a5e74ea8a29764ab10523575b41aa52455f0` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x3bed21dae767e4df894b31b14ad32369ce4bad8b` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x3db06da8f0a24a525f314eec954fc5c6a973d40e` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x54e38a62ed3dc88e2b80cba50deb940580511d26` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x5d834948e9aed31d9955346269a346baa007b2ea` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x6999526e507cc3b03b180bbe05e1ff938259a874` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0x9b4a302a548c7e313c2b74c461db7b84d3074a84` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0xcdb25d0a6fffe639bc591a565f2d99507837f2b7` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1Helios<br>`0xcdf08cb3d3436c3c21f277b6ad45e3d7ab1ce12f` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1MockVerifier<br>`0xd29c85f15df544ba632c9e25829fd29d767d7978` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | source verified unclassified | SP1MockVerifier<br>`0xd2ecb3afe598b746f8123cae365a598da831a449` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0bf1a44ae69869cf7aea7e0cba76624792fad4de` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x27ae7c77ce48d438e305b86b0989ae005ab7df7e` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f25b1647fa8eaea0e15edd413c7afcbe613b6f4` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b95974539ebc874595d3b2a08d5509263346d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| ethereum | candidate review | AddressWhitelist<br>`0xdbf90434df0b98219f87d112f37d74b1d90758c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | ExpiringMultiPartyCreator<br>`0xdebb91ab3e473025bb8ce278c02361a3c4f13124` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Finder<br>`0x40f941e48a552bf496b154af6bf55725f18d77c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Finder<br>`0xc25096b54cd850ee8a849e8bdc964ec412175406` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Governor<br>`0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Governor<br>`0x592349f7dedb2b75f9d4f194d4b7c16d82e507dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Registry<br>`0x07d6a3b7a345576a22b63470c1cbdf133179257c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Registry<br>`0x3e532e6222afe9bcf02dcb87216802c75d5113ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Registry<br>`0x46209e15a14f602897e6d72da858a6ad806403f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Registry<br>`0x633159bf4d33106697de4601a1870c973e74be02` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Registry<br>`0x9e39424eab9161cc3399d886b1428cba71586cb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Umip15Upgrader<br>`0xd18e2a433664f9459cccbd4bee0057a7bc57e707` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Umip3Upgrader<br>`0x730674363e2de4e30489dc37f0cd12abdcfc6e39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Voting<br>`0x1d847fb6e04437151736a53f09b6e49713a52aad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Voting<br>`0x3b99859be43d543960803c09a0247106e82e74ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Voting<br>`0x7492cdbc126ffc05c32249a470982173870e95b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Voting<br>`0x9921810c710e7c3f7a7c6831e30929f19537a545` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | Voting<br>`0xfe3c4f1ec9f5df918d42ef7ed3fba81cc0086c5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | VotingToken<br>`0x33cabde4527fcb4bbb1ea9909bf93d41c98cfa3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | candidate review | VotingToken<br>`0xca13c064b7a5f3a8c763312a883499a10b2614cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | CentralizedOracle<br>`0x0868781a6eae026d126516ac5ebca41201ed0146` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | CentralizedOracle<br>`0x18a9c80c598dd42ee682a4fd03bc7f725e78a7d1` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | CentralizedOracle<br>`0x70cc3386d0bec897507177700dad6d674032b1bd` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | CentralizedOracle<br>`0x8c9b504192c06cffa6e2cf67e1b656a3c870bb2c` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | CentralizedOracle<br>`0xcacbe94ffa7c5dd10799bd5ae1860abe8ff083bf` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | CentralizedOracle<br>`0xd5bd3da7228bfa951eccf86af1d1bfd9fe0ff31b` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | DesignatedVotingFactory<br>`0xe81eee5da165fa6863bbc82df66e62d18625d592` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | FinancialContractsAdmin<br>`0x4e6ccb1da3c7844887f9a5af4e8450d9fd90317a` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | FinancialContractsAdmin<br>`0x5dee86b9345a2b4631d087fac91e1609a1c9d9d7` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | FinancialContractsAdmin<br>`0x7f4eef331348b99850f25dd4f2ab8336a7276311` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | FinancialContractsAdmin<br>`0x84a3076031fcdf12e95514149408326e303a9f4f` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | IdentifierWhitelist<br>`0x0e808507e1692876ae6bebc35da3e13801e63bfa` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | IdentifierWhitelist<br>`0xcf649d9da4d1362c4daea67573430bd6f945e570` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | Migrations<br>`0x28a5da04a94f0501a6f77df8f8a9529d27b92744` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | Migrations<br>`0x43d0473a0bfb65f39142aef13a640d646e435991` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | Store<br>`0x54f44ea3d2e7aa0ac089c4d8f7c93c27844057bf` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | Store<br>`0xceaefc381e3268ba7f1ec92a7ad637857ee56210` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | Store<br>`0xe07533c961032a182fa46f9b8fa9a03dc9b5d7ef` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | source verified unclassified | TokenizedDerivativeCreator<br>`0x04a734a6c3e415fff3149f0cb5f4719554974cc2` | non_address_book | unknown | unknown | verified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c2fd45d89fb9693b0130f8a66be67827c278ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x104a2817116aea9a5c5f7f7b3235c68a0ee51e3a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1139bad757ca06275042db7bdd1528261ed765e7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1658d5b3737beea9f0f8b7da3c298579390cd36e` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25224867055e0e6a73effe61053a0a9fe1fc4dde` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a739a4accc66c69ff53a5ef99143fc256121558` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f64bec95f2cc0174b6b89bc9fb95c509e7d987c` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x348fbf55680ab9162c5b09572b8f126402b3d3dd` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39646c110c2806b5aeac72a7eea6e5af70452d8a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4842116701cd2b92f1093ed854c9a74657470581` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53b0892cb32d9377a2bf9d04f51a9a58a5bf6089` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53eb14e1e7b75d10fc00fca16a717e398f09c6b3` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5644dfbec6a9dbe50ad8613b55028b2a007bb9ba` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6051d63b9fef16f018ef1031438815d81d64db72` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x628e89bf678e0bf804469e8339f9f1b9fb8061d7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6523baa2d53b24c96cf72867b2e8251b5ddba478` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bebb6767ef6833d669b034cfb823a6aac4ed0b7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ebbe6c144f20bb4e08413c23b70cff00d5e7db2` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74d367e2207e52f05963479e8395cf44909f075b` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bdd67230a942bd890c89417b5716b415874f851` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c54bd4277a844d1fc5ce2ce19bf7ebc8a18bc35` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x815a168ad337f6e6edaa300e7b2cd3b0a3687bee` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x841416642293f075d3a1708e7afeb258b18e2dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x878cfedb234c226ddefd33657937af74c17628bf` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b7b507f0fc33b25c363813069f976502c7ef76e` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e1a24fad5e8d55855228293950ce8aef12e689a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91a437220c99a3634e10b20e4a7407a537265b61` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92804c77ed447f1439495756cfa17bbfd8b78a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99081ba11dbdb83607952a1242d2a412a15a6198` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9df4a8166849c58aaad5b1347385732c938dedf8` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f3d032f795ba5c8b4bf4437b0f0cbe52d66f549` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb273f8a0a5a445254c2eb905a24dd9bf24526c32` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8f489e7ed5bd7e3c5cf8e11996849ba273b7e27` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfc23c5c4271821009ca655e804b293c1a0443b0` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5be39ca419469b14396c56415a682e2b7b39613` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfc5f806beaa77242da3a81c40d0f669124aa814` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1bf1ff551977e273fc2c20f6e187d588d3e4c11` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd70bef61ae4eaf2a00c9502d4308a226aab53a1` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x04959c99222450a7fbb8fd7b9f69e6e7ce67917f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x14e97badf63bdcd669874656d32bf511345bff95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x2beb236d67ae544f48efa55960e06bde8aff8322` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x35e63ea3eb0fb7a3bc543c71fb66412e1f6b0e04` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x5658b50c2f6426f490ec44355b94b8abe6088a08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xb4ca4312311fb2902cd27870c9dfc499d142342f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xc63e56fde7383442993b86b77d432ad350e13e9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xf633b72a4c2fb73b77a379bf72864a825ad35b6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0x3b8a0cafcdd97e4c5ed3e96aded04db8cc5f377b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0x45fa0a76d08725c59936dfcf64ded56f82b5c0a9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0x719f81838009655840660c7682b600981b4fa2fd` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0x89cb50586e137a718973f45120954b005b4ebbf0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0x9fe3788c73ebf505d07a4a4828d3c5055ea3ee67` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0xb223a3a70d0e164047c6f0fa0ba57ed635f61cda` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0xbf9949b42a02a167dff350d3ba16b20be53088ff` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | candidate review | Universal_SpokePool<br>`0xcf78e38a7309fbecf3d670e8091c4e7e51620a1f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x3e9508b70585c57daee22e9f4f15815e1fa11012` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xc844224f53edc61d33ded87f7c32778dfdf0d25a` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe16ca2c407f9e015b42e71d45238821eb5208171` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xeeb0e2d3f46553f2ee863c9f0886b664f050f80c` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf068caa9a45b71ddde0533c304cf3ca7d72879ab` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | currently scope matched | ERC1967Proxy<br>`0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | ERC1967Proxy<br>`0x038e789392f8b3f5df8e5974ea25575ba9d63730` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | ERC1967Proxy<br>`0xad7c5516b25661e0a204646b08024cd82ffe6c48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | ERC1967Proxy<br>`0xe8de4bce27f6214dce18d8a7629f233c66a97b84` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x18569278f3a7ef1d73e36c5ef30f37d366580c7d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x39e7ffa77a4ac4d34021c6bbe4c8778d47f684f2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x477f34de55874729fd4f7e60b121338e7aa95145` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x4fba8542080ffb82a12e3b596125b1b02d213424` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x57825d1bf50ad918b39563a57070b0915464d1a8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x5be04e53b465c6fd89ecff3d36ddf666d198e31a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x861e127036b28d32f3777b4676f6bbb9e007d195` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x8eaeff0b5a55268e6a5076d65f160c517efd5795` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0x9187be534efeb258933ef7eff4b67fe80209afcd` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0xd6fc66498ae366892bda974fd4ef903ca7202f76` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0xef4998e4cda2232c5f1824eac8c5060f28bfaeec` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | Linea_SpokePool<br>`0xfcdfac59ad1f6391698c2999da612b7454179874` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | candidate review | MulticallHandler<br>`0xa2dbffd8b25aed47435831254c4cd2f5a9dfe95a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | source verified unclassified | Counter<br>`0xa559568e255416df1f216b2f5d4e53b751021a1f` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | source verified unclassified | Counter<br>`0xeff4c6c9348daab4633138a4c8662539bba53649` | non_address_book | unknown | unknown | verified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | unverified unclassified | UnnamedContract<br>`0x3d57e22f1c4f0fead8d2d0abfeb1028c5c35bbff` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | unverified unclassified | UnnamedContract<br>`0x4495c9f0c10d82823a2dc5658615874a5b48bfa0` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | unverified unclassified | UnnamedContract<br>`0x4da9c6f8888a6cdb571f8d07bfe089166eee58dc` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | unverified unclassified | UnnamedContract<br>`0xeaca6b16d7bc9deb7ba9ce5a8d16c7d749da9036` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| linea | unverified unclassified | UnnamedContract<br>`0xf802fe1cbb39766670b4f192f44d3f45b7939b38` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0x2271a5e74ea8a29764ab10523575b41aa52455f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0x3ca11702f7c0f28e0b4e03c31f7492969862c569` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0x6999526e507cc3b03b180bbe05e1ff938259a874` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0x9b4a302a548c7e313c2b74c461db7b84d3074a84` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0xd29c85f15df544ba632c9e25829fd29d767d7978` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0xd2ecb3afe598b746f8123cae365a598da831a449` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0xd85630e361cebbc4c7f13e6eed3587050fb81b86` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | ERC1967Proxy<br>`0xef684c38f94f48775959ecf2012d7e864ffb9dd4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Lisk_SpokePool<br>`0x79950a8e152766f2282d315bdad889202c38fe8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0x031a7882ce3e8b4462b057ebb0c3f23cd731d234` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0x20e2bf3422290cbadce3289ad3f317ae9e80636d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0x28077b47cd03326de7838926a63699849dd4fa87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0xcbf361ee59cc74b9d6e7af947fe4136828faf2c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0xd62163972fd399ac1c910edef3107e27af084a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0xf2670e641745076a9a4e457fe3a3ffc05c8a3177` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0xf2d5614bd8d6246aaca5a6841acfca210b0cbc19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | Mode_SpokePool<br>`0xff4ec014e3cbe8f64a95bb022f1623c6e456f7db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | candidate review | MulticallHandler<br>`0xd90a27eaf88c81f50e30e0e0333036838814181e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | unverified unclassified | UnnamedContract<br>`0x1020ae36548ab28bc0c41fd2a08d24132c82cc55` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | unverified unclassified | UnnamedContract<br>`0x38fac33bd20d4c4cce085c0f347153c06cba2968` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | unverified unclassified | UnnamedContract<br>`0x3db06da8f0a24a525f314eec954fc5c6a973d40e` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | unverified unclassified | UnnamedContract<br>`0x4e8e101924ede233c13e2d8622dc8aed2872d505` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | unverified unclassified | UnnamedContract<br>`0xd896f3a31d5524511783245d3b0816db71f1ab09` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| mode | unverified unclassified | UnnamedContract<br>`0xdf82a2487771b85d4538348eb70500cf827dd03b` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| plasma | candidate review | Universal_SpokePool<br>`0x5d834948e9aed31d9955346269a346baa007b2ea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| plasma | candidate review | Universal_SpokePool<br>`0xcdb25d0a6fffe639bc591a565f2d99507837f2b7` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| plasma | candidate review | Universal_SpokePool<br>`0xd29c85f15df544ba632c9e25829fd29d767d7978` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| plasma | exact address book overlap | Universal_SpokePool<br>`0x50039faefebef707cfd94d6d462fe6d10b39207a` | project_anchor | unknown | live | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |
| plasma | unverified unclassified | Universal_SpokePool<br>`0x2271a5e74ea8a29764ab10523575b41aa52455f0` | non_address_book | unknown | unknown | unverified | n/a | `0x9a8f92a830a5cb89a3816e3d267cb7791c16b04d` |

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
| www.openzeppelin.com/news/across-v3-and-oval-incremental-audit | Blast_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x2d509190ed0172ba588407d4c2df918f955cc6e1` — deployed 2024-07-03 01:12:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| blog.openzeppelin.com/across-v3-incremental-audit | Arbitrum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xe35e9842fceaca96570b734083f4a58e8f7c5f2a` — deployed 2023-04-24 19:58:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Base_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Base_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CCTPInterfaces | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CircleCCTPAdapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | CrossDomainEnabled | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Ethereum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5` — deployed 2023-04-24 19:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Linea_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Linea_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7e63a5f1a8f0b4d0934b2f2327daed3f6bb2ee75` — deployed 2024-03-06 19:29:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | MerkleLib | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Optimism_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Optimism_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6f26bf09b1c792e3228e5467807a900a503c0281` — deployed 2023-04-24 19:44:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blog.openzeppelin.com/across-v3-incremental-audit | Ovm_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2Depositor | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2Order | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Permit2OrderLib | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | PolygonZkEVM_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | PolygonZkEVM_SpokePool | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Polygon_Adapter | unmatched — not counted | — | — | no |
| blog.openzeppelin.com/across-v3-incremental-audit | Polygon_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096` — deployed 2023-04-24 19:57:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| www.openzeppelin.com/news/uma-across-v2-audit | Arbitrum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xe35e9842fceaca96570b734083f4a58e8f7c5f2a` — deployed 2023-04-24 19:58:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | Ethereum_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Ethereum_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5c7bcd6e7de5423a257d81b442095a1a6ced35c5` — deployed 2023-04-24 19:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | HubPool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | HubPoolInterface | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | LPTokenFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Lockable | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | MerkleLib | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Optimism_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Optimism_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6f26bf09b1c792e3228e5467807a900a503c0281` — deployed 2023-04-24 19:44:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/uma-across-v2-audit | PolygonTokenBridger | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Polygon_Adapter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/uma-across-v2-audit | Polygon_SpokePool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9295ee1d8c5b022be115a2ad3c30c72e34e7f096` — deployed 2023-04-24 19:57:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| bsc | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | $0.10 | Verified native implementation with $0.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e7840e06faccb6d1c3b5f5e0d1d3d07f2829bba` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0f7ae28de1c8532170ad4ee566b5801485c13a0e` | MulticallHandler | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x10d8b8daa26d307489803e10477de69c0492b610` | SpokePoolPeriphery | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4e8e101924ede233c13e2d8622dc8aed2872d505` | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x35e63ea3eb0fb7a3bc543c71fb66412e1f6b0e04` | Universal_SpokePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 130 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 100 |

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
