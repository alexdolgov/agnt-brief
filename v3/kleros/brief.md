# Agentic Audit Brief: Kleros

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kleros (`kleros`)
- Website: [https://kleros.io](https://kleros.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, gnosis, polygon, sepolia
- Contract surface: 430 unique implementations (626 raw deployments)
- Coverage basis: 0/36 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,469,062.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kleros. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 43 contract row(s) across arbitrum, ethereum, gnosis, polygon, sepolia. Structural roles: 22 unclassified, 11 core, 10 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 43
- Structural roles: unclassified (22), core (11), supporting (10)
- Contract kinds: contract (42), unclassified (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x180eba...dfcb86`, chain 1)
- UnnamedContract (`0x2b562e...e1e940`, chain 1)
- UnnamedContract (`0x2b5950...7132e0`, chain 1)
- UnnamedContract (`0x2f0895...695f21`, chain 1)
- UnnamedContract (`0x7510c7...e1ed2b`, chain 1)
- UnnamedContract (`0x79d046...ea3d49`, chain 1)
- UnnamedContract (`0xa27bfe...8b208f`, chain 1)
- UnnamedContract (`0xcb4aae...3b125f`, chain 1)
- UnnamedContract (`0xcf1f07...8bece4`, chain 1)
- UnnamedContract (`0xd1a711...e46475`, chain 1)
- UnnamedContract (`0xd47f72...00a14d`, chain 1)
- UnnamedContract (`0x705335...92af60`, chain 100)
- UnnamedContract (`0xe04f57...91ea3e`, chain 100)
- UnnamedContract (`0x897d83...22cba3`, chain 42161)
- UnnamedContract (`0xfe34a7...e34d63`, chain 42161)
- AdminUpgradeabilityProxy (`0x9c1da9...5f9002`, chain 100)
- AdminUpgradeabilityProxy (`0xcb3231...223846`, chain 100)
- ArbitrableAddressList (`0x916dea...e5b4ab`, chain 1)
- ArbitrableProxy (`0x99489d...9ae0cf`, chain 1)
- ArbitrableTokenList (`0xebcf3b...f0e679`, chain 1)
- ClonableBeaconProxy (`0x330bd7...6dcae5`, chain 42161)
- DisputeKitShutter (`0xf3103b...783947`, chain 42161)
- DisputeKitShutterProxy (`0x9d3e3f...bbc768`, chain 42161)
- DisputeResolver (`0xb5526d...1f4323`, chain 42161)
- EvidenceModule (`0xa502a3...b192c8`, chain 42161)
- EvidenceModuleProxy (`0x48e052...981eb3`, chain 42161)
- KlerosCoreNeo (`0xc12104...50e54c`, chain 42161)
- KlerosCoreNeoProxy (`0x991d2d...4222ea`, chain 42161)
- KlerosGovernor (`0x327a29...eccfdf`, chain 1)
- KlerosGovernor (`0xe5bcea...0e5cf4`, chain 1)
- KlerosLiquid (`0x988b3a...e28069`, chain 1)
- LightGeneralizedTCR (`0x66260c...4c59f2`, chain 100)
- LightGeneralizedTCR (`0x957a53...52d6e1`, chain 100)
- MiniMeToken (`0x93ed3f...3bc04d`, chain 1)
- MultipleArbitrableTransaction (`0x0d6744...1e2522`, chain 1)
- PolicyRegistry (`0x9d4947...6c6d7e`, chain 100)
- ProofOfHumanity (`0xc5e9dd...7c9bdb`, chain 1)
- ProxyAdmin (`0xd1a711...e46475`, chain 100)
- RandomizerRNG (`0xf1a7cd...074a2e`, chain 42161)
- RandomizerRNGProxy (`0x044afe...2fa9d3`, chain 42161)
- Realitio_v2_1_ArbitratorWithAppeals (`0x728cba...15a596`, chain 1)
- Realitio_v2_1_ArbitratorWithAppeals (`0xf72cfd...30adca`, chain 1)
- RealitioForeignArbitrationProxyWithAppeals (`0x776e58...231e52`, chain 1)
- RealitioHomeArbitrationProxy (`0xe40dd8...a75ecd`, chain 100)
- RealitioHomeArbitrationProxy (`0x5afa42...86f90e`, chain 137)
- SortitionModuleNeo (`0x3f6d0d...c08eee`, chain 42161)
- SortitionModuleNeoProxy (`0x21a940...8dc03d`, chain 42161)
- SortitionSumTreeFactory (`0x7ae716...d561e9`, chain 100)
- TransactionBatcher (`0x82458d...9aa8cb`, chain 1)
- TransactionBatcher (`0x642680...794d46`, chain 100)
- TransactionBatcher (`0xbc5ef8...dea4ef`, chain 42161)
- TransparentUpgradeableProxy (`0xe0e1bc...86ea38`, chain 1)
- xKlerosLiquidExtraViews (`0xfa71f9...769e4b`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 43; live-surface rows included: 43 (43 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 50/77 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/36 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 50 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 373 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 85
- Confirmed-live implementations: 50 of 430 unique; 380 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/127
- Verified + Unaudited implementations: 127
- Verified by bytecode match: 0
- Unverified implementations: 303
- Unique implementations: 430
- Raw deployments: 626
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (127)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0f6408...49d763` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x10a635...ea8aff` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 11 | ethereum | n/a | 11 deployments: ethereum `0x13fc0a...3215db`; ethereum `0x34eaaa...5f5495`; ethereum `0x393df4...8ee923`; ethereum `0x47c776...5bf878`; ethereum `0x54fe8b...619718`; ethereum `0x5a3304...658d8d`; ethereum `0x93e680...19e2af`; ethereum `0xa08e76...52ff21`; ethereum `0xaa4447...e9cdeb`; ethereum `0xe89eef...033373`; ethereum `0xf237b1...881cc6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 19 | ethereum | n/a | 20 deployments: ethereum `0x222426...de46f8`; ethereum `0x33c2a5...c2d9d7`; ethereum `0x4ba719...b1a143`; ethereum `0x4ce287...4f9c86`; ethereum `0x50815e...5a83a0`; ethereum `0x516c58...a6095c`; ethereum `0x5990b8...440df8`; ethereum `0x63feb1...5023b2`; ethereum `0x713e11...2c9d24`; ethereum `0x7392b8...b908de`; ethereum `0x746d94...fee43e`; ethereum `0x7ec9ad...a1ff59`; ethereum `0x963d41...8030b6`; ethereum `0x975abc...d961c1`; ethereum `0xa9a464...931a5c`; ethereum `0xaf9667...cdbb8a`; ethereum `0xb12354...3c7985`; ethereum `0xba615f...5318b8`; ethereum `0xbae1ab...92157c`; ethereum `0xf3d394...1af505` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3b6c03...10d667` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: gnosis `0x282669...a114cc`; gnosis `0x2f0895...695f21`; gnosis `0x3ff09d...490840`; gnosis `0x4b850c...cf5070`; gnosis `0x79833a...77de48`; gnosis `0xd401c7...b7d50c`; gnosis `0xf29223...640f01`; gnosis `0xf32978...b04b0e` | ⚠️ Unaudited |
| AmbGreeterReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x800643...b7225e` | ⚠️ Unaudited |
| ArbitrableAddressList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x291b07...39d085` | ⚠️ Unaudited |
| ArbitrableAddressList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388394 | `0x916dea...e5b4ab` | ⚠️ Unaudited |
| ArbitrablePermissionList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7fadd...b5a7e6` | ⚠️ Unaudited |
| ArbitrableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4b89e7...c782a4`; ethereum `0xa3b02b...110ccc` | ⚠️ Unaudited |
| ArbitrableProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388397 | `0x99489d...9ae0cf` | ⚠️ Unaudited |
| ArbitrableTCRView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe22340...fee97a` | ⚠️ Unaudited |
| ArbitrableTCRViewV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d968...6da2ed` | ⚠️ Unaudited |
| ArbitrableTokenList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d942...2d708a` | ⚠️ Unaudited |
| ArbitrableTokenList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388410 | `0xebcf3b...f0e679` | ⚠️ Unaudited |
| BatchWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38aa21...066b4d` | ⚠️ Unaudited |
| BeaconRNG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388393 | `0x90992f...19c879` | ⚠️ Unaudited |
| BetNFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x43c9e4...7ed35c`; gnosis `0xd71285...2093be` | ⚠️ Unaudited |
| blockHashNotReturned | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92900a...4e4e0c` | ⚠️ Unaudited |
| BlockHashRNG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388440 | `0x39d123...f35b0b` | ⚠️ Unaudited |
| CurateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 9 deployments: gnosis `0x0f0797...e9b6d4`; gnosis `0x1b44e4...371a65`; gnosis `0x30f3cd...662283`; gnosis `0x45b011...14d37c`; gnosis `0x5a53e5...c0f5e2`; gnosis `0x5dab82...f94bec`; gnosis `0x6767bc...e386ec`; gnosis `0xc0aa0d...fa5a33`; gnosis `0xd3bccd...25327b` | ⚠️ Unaudited |
| CurateProxySVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: gnosis `0x3d03a8...25bc96`; gnosis `0x726584...e60f7d`; gnosis `0x8167f4...25ce5f`; gnosis `0xaee2f2...a184f4`; gnosis `0xda8623...283ba9` | ⚠️ Unaudited |
| DisputeKitClassic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x7f3c3c...2ef81d`; arbitrum `0xaf0325...e3e03a` | ⚠️ Unaudited |
| DisputeKitClassic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x86ac67...a2bde3`; arbitrum `0xb7c292...6374a9` | ⚠️ Unaudited |
| DisputeKitClassicNeoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x371aa4...d319bc`; arbitrum `0x70b464...a45421` | ⚠️ Unaudited |
| DisputeKitGated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xae1eed...d9a925`; arbitrum `0xd9ddce...3f9ff0` | ⚠️ Unaudited |
| DisputeKitGated | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xcc811d...6c3078`; arbitrum `0xea7863...b7790a` | ⚠️ Unaudited |
| DisputeKitGatedShutter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x788330...c2e47b`; arbitrum `0xb12eb4...d61b32` | ⚠️ Unaudited |
| DisputeKitShutter | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388454 | 2 deployments: arbitrum `0x9d3e3f...bbc768`; arbitrum `0xf3103b...783947` | ⚠️ Unaudited |
| DisputeResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3645f9...22c831`; arbitrum `0x95ece4...10d6eb` | ⚠️ Unaudited |
| DisputeResolver | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388442 | `0xb5526d...1f4323` | ⚠️ Unaudited |
| DisputeResolverRuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3a5fd...be6140` | ⚠️ Unaudited |
| DisputeTemplateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0cfbac...f2a5a2`; arbitrum `0x57efd4...ef5c87` | ⚠️ Unaudited |
| DisputeTemplateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4ce873...80cefb`; arbitrum `0x52c9f5...ff9e25` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x9378c3...a7166c`; gnosis `0x9b59ee...d1151a` | ⚠️ Unaudited |
| EscrowUniversal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5d64cb...3a2402`; arbitrum `0x79530e...1f2f6c`; arbitrum `0x7f1ffe...d3b132`; arbitrum `0xdf62a0...4a63d1` | ⚠️ Unaudited |
| EscrowView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3fed94...290459`; arbitrum `0x85ee33...8cf70d`; arbitrum `0xaf36da...77330d` | ⚠️ Unaudited |
| EvidenceModule | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388451 | 2 deployments: arbitrum `0x48e052...981eb3`; arbitrum `0xa502a3...b192c8` | ⚠️ Unaudited |
| EvidenceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x827411...8f378f`; arbitrum `0xe62b77...0db005` | ⚠️ Unaudited |
| EvidenceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe22500...8a4c5d` | ⚠️ Unaudited |
| FirstPriceAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdcdb82...ad7478` | ⚠️ Unaudited |
| ForeignProxyETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69a35...e0d7f6` | ⚠️ Unaudited |
| GeneralizedTCRView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f130...d7a524` | ⚠️ Unaudited |
| GnosisChainReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x0bd46d...28ad9b`; gnosis `0x348f27...d135dc`; gnosis `0x44aced...32e3ad` | ⚠️ Unaudited |
| GnosisChainReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x0db38f...391137`; gnosis `0x78fe89...3efaf2`; gnosis `0xc73f83...f7da4a`; gnosis `0xfd5300...d79901` | ⚠️ Unaudited |
| GnosisUBIBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x2700ed...c86bed`; gnosis `0x43e906...9485c3` | ⚠️ Unaudited |
| GTCRFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d2062...fd599a`; ethereum `0xe9dd52...7f9cd5` | ⚠️ Unaudited |
| Kleros | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x211f01...2ce82c`; ethereum `0xd6d298...bf0ef6` | ⚠️ Unaudited |
| KlerosCoreNeo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x17c39a...98ae89`; arbitrum `0xeb6d9e...330fab` | ⚠️ Unaudited |
| KlerosCoreNeo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4dd8b6...3dc284`; arbitrum `0xcd415c...4354f1` | ⚠️ Unaudited |
| KlerosCoreNeo | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388452 | 2 deployments: arbitrum `0x991d2d...4222ea`; arbitrum `0xc12104...50e54c` | ⚠️ Unaudited |
| KlerosCoreRuler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x85093b...08e324`; arbitrum `0xc0169e...6dfe13` | ⚠️ Unaudited |
| KlerosCoreSnapshotProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef719a...2fec95` | ⚠️ Unaudited |
| KlerosGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-388383 | `0x327a29...eccfdf` | ⚠️ Unaudited |
| KlerosGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59ccd7...f57aa8`; ethereum `0x8a0ede...da6e47` | ⚠️ Unaudited |
| KlerosGovernor | governance | project_anchor | own_supporting | 0 | ethereum | unit-388409 | `0xe5bcea...0e5cf4` | ⚠️ Unaudited |
| KlerosLiquidExtraViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda47f3...5ad943` | ⚠️ Unaudited |
| LevelWhitelistedIICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4330...6e0f67` | ⚠️ Unaudited |
| LightBatchWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6363...719e4a` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ce3f8...4eccc8` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388416 | `0x66260c...4c59f2` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388419 | `0x957a53...52d6e1` | ⚠️ Unaudited |
| LightGeneralizedTCRView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82a69...98ccc8` | ⚠️ Unaudited |
| LightGTCRFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9ddc8...ee0054` | ⚠️ Unaudited |
| LiquidityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x012791...83ab56`; gnosis `0x097b81...783850`; gnosis `0x5850ce...101b63` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 14 deployments: gnosis `0x23ac77...d782c8`; gnosis `0x49c53e...a4a56d`; gnosis `0x4af550...ccf996`; gnosis `0x4d20ac...3520b0`; gnosis `0x6d65f6...34cd59`; gnosis `0x77c608...bb737f`; gnosis `0x811463...e88ca6`; gnosis `0x96f3cc...6eea9d`; gnosis `0x9b8559...7808af`; gnosis `0xb4cd04...35eeca`; gnosis `0xbb19d8...e0e40a`; gnosis `0xc7021e...bb1445`; gnosis `0xeb4938...7b249a`; gnosis `0xf11d01...83841c` | ⚠️ Unaudited |
| MarketFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x67d367...7eb48b` | ⚠️ Unaudited |
| MiniMeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x395df4...2992ea`; ethereum `0x87c260...e2f520`; ethereum `0xadaac4...c0790a` | ⚠️ Unaudited |
| MiniMeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388395 | `0x93ed3f...3bc04d` | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01aeac...1cbddc` | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388378 | `0x0d6744...1e2522` | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5906db...6e9b5d` | ⚠️ Unaudited |
| MultiSigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a575...e5b1b4` | ⚠️ Unaudited |
| PolicyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x03a945...5295cc`; gnosis `0x640ebf...a5fba3`; gnosis `0xa1bff7...a1ebfa`; gnosis `0xd8eb9b...b01b49`; arbitrum `0x15e596...9bc454` | ⚠️ Unaudited |
| PolicyRegistry | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388420 | `0x9d4947...6c6d7e` | ⚠️ Unaudited |
| PolicyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x26c198...018547`; arbitrum `0x2ac2ed...b949da` | ⚠️ Unaudited |
| PolicyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x553dcb...403d3c`; arbitrum `0xf7ee0c...e96c28` | ⚠️ Unaudited |
| ProofOfHumanity | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388401 | `0xc5e9dd...7c9bdb` | ⚠️ Unaudited |
| ProofOfHumanityProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x134e1b...cf7d30` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: ethereum `0x631c82...e67eaa`; gnosis `0x02d68e...767171`; gnosis `0x514a62...ca67ea`; gnosis `0xb93e08...3d8ec7` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388421 | `0xd1a711...e46475` | ⚠️ Unaudited |
| RandomizerRNG | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388453 | 2 deployments: arbitrum `0x044afe...2fa9d3`; arbitrum `0xf1a7cd...074a2e` | ⚠️ Unaudited |
| RandomizerRNG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa995c1...cf4836`; arbitrum `0xc3db34...029fb4` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388387 | `0x728cba...15a596` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388411 | `0xf72cfd...30adca` | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 19 deployments: ethereum `0x1c2811...d5fc0d`; ethereum `0x201803...4f85ad`; ethereum `0x395ba2...b38940`; ethereum `0x783763...58d517`; ethereum `0xc45d8d...8d2992`; ethereum `0xff32ef...a3791a`; gnosis `0x0a03fa...f5ac3a`; gnosis `0x0c1ad2...4a9e97`; gnosis `0x163930...cdb265`; gnosis `0x1aba45...f9d1c9`; gnosis `0x2a2bab...dc4001`; gnosis `0x2e39b8...3cf805`; gnosis `0x3c3fb8...2c9925`; gnosis `0x855b3e...d5f5f9`; gnosis `0x95b66b...5d2c24`; gnosis `0x9850dd...26f1ba`; gnosis `0xb7ec1c...7d0f42`; gnosis `0xc72416...413549`; gnosis `0xe9b3b2...807daf` | ⚠️ Unaudited |
| RealitioArbitratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x126697...1e4e1e`; ethereum `0x15daed...12d2ac`; ethereum `0x8d2eba...d71f25` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x32bcdc...faaa3f`; ethereum `0x4a7e26...c43c00`; ethereum `0x68c4cc...bafe28`; ethereum `0x8453ba...552425`; ethereum `0xef2ae6...6b2f59`; ethereum `0xfe0eb5...c0aa68` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388389 | `0x776e58...231e52` | ⚠️ Unaudited |
| RealitioForeignProxyArbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fa89d...9779e9` | ⚠️ Unaudited |
| RealitioForeignProxyOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x46bf68...7f09bb`; ethereum `0x54811e...fe627f`; ethereum `0x890deb...d6770e`; ethereum `0xa353a7...11681a`; ethereum `0xd8b33e...0cd928`; ethereum `0xeafb9c...239a2d`; ethereum `0xf0b37f...9f2044` | ⚠️ Unaudited |
| RealitioForeignProxyPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x412c06...692ba7`; ethereum `0xbbb9a4...f60d36`; ethereum `0xd6bf90...0c6046` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388414 | `0x29f39d...fce222` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388423 | `0xe40dd8...a75ecd` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | project_anchor | own_supporting | 0 | polygon | unit-388439 | `0x5afa42...86f90e` | ⚠️ Unaudited |
| RealitioHomeArbitrationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: gnosis `0x6e30b4...6e4ea5`; gnosis `0x7761d3...c8069b`; gnosis `0x969206...30b69e`; gnosis `0xa0c7c6...be548e`; polygon `0x68154e...7491dc` | ⚠️ Unaudited |
| RealitioHomeProxyPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x6116e6...e58812`; polygon `0xb4fc64...82b2ef`; polygon `0xbc9664...080799`; polygon `0xe69a35...e0d7f6` | ⚠️ Unaudited |
| SBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x091ba2...2cb1bc`; arbitrum `0x0d41cb...e85e48`; arbitrum `0x2a2f1f...81850b`; arbitrum `0x424956...a5e9b4`; arbitrum `0x650ed9...cf7922`; arbitrum `0xb80fb6...6adf43`; arbitrum `0xbcf80c...2b59ed`; arbitrum `0xcf468c...c78b0b` | ⚠️ Unaudited |
| SortitionModuleNeo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x0cb362...3cf043`; arbitrum `0x7e13f2...fa0851` | ⚠️ Unaudited |
| SortitionModuleNeo | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388449 | 2 deployments: arbitrum `0x21a940...8dc03d`; arbitrum `0x3f6d0d...c08eee` | ⚠️ Unaudited |
| SortitionModuleNeo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x614498...fb050f`; arbitrum `0xf32720...074b95` | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388445 | 2 deployments: ethereum `0x180eba...dfcb86`; ethereum `0x988b3a...e28069` | ⚠️ Unaudited |
| SortitionSumTreeFactory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388418 | `0x7ae716...d561e9` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-388450 | `0x330bd7...6dcae5` | ⚠️ Unaudited |
| SVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0x65d546...e14298`; gnosis `0xe71ee4...80c994` | ⚠️ Unaudited |
| TokenDecimalsView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x591870...33dfe8` | ⚠️ Unaudited |
| TokensViewV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x08cc5a...ac4474`; ethereum `0x950722...e5eea6` | ⚠️ Unaudited |
| TransactionBatcher | periphery | project_anchor | own_supporting | 0 | ethereum | unit-388392 | `0x82458d...9aa8cb` | ⚠️ Unaudited |
| TransactionBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: gnosis `0x4340f7...012c1e`; gnosis `0xa73a87...a259d6`; gnosis `0xe0441e...9a61f3`; gnosis `0xedafae...b65ffb` | ⚠️ Unaudited |
| TransactionBatcher | periphery | project_anchor | own_supporting | 0 | gnosis | unit-388415 | `0x642680...794d46` | ⚠️ Unaudited |
| TransactionBatcher | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-388443 | `0xbc5ef8...dea4ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 18 | ethereum | n/a | 18 deployments: ethereum `0x0b3b0c...5100f0`; ethereum `0x0e7368...0a774c`; ethereum `0x0f8a8d...2ca13e`; ethereum `0x2b639a...7768cb`; ethereum `0x458418...051832`; ethereum `0x4f5871...be7bde`; ethereum `0x6b3d66...ed688a`; ethereum `0x71879e...759456`; ethereum `0x7f0519...01e824`; ethereum `0xadf06a...227462`; ethereum `0xb8ef0b...2f20fc`; ethereum `0xce56f1...8f8f11`; ethereum `0xd5ee4c...24bf77`; ethereum `0xdceae1...87c680`; ethereum `0xddde61...8e6202`; ethereum `0xde2849...f24d78`; ethereum `0xeccae8...ae99d3`; ethereum `0xf50771...dcba81` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x772fbe...c2857e`; ethereum `0xb0a54b...53dec7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388446 | `0xe0e1bc...86ea38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x09e111...40f5df`; gnosis `0xe8bf7b...d98763` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x0fc21f...42c97e`; gnosis `0x3828f7...4d85a3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x118b61...e5f5bf`; gnosis `0x16ebb3...5e425d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x35a331...3fff3f`; gnosis `0x3917d5...65a1ec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x561819...b8e5d6`; gnosis `0x6631f1...c05b53` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | gnosis | n/a | 4 deployments: gnosis `0x6de7bf...7dcf10`; gnosis `0x70a64a...fe467c`; gnosis `0xacc285...cc96a6`; gnosis `0xeaee25...e03ab0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0xb01e36...7bda8c`; gnosis `0xef2b2f...13191a` | ⚠️ Unaudited |
| TruthPost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87aade...a6b454` | ⚠️ Unaudited |
| WrappedPinakion | unknown | project_anchor | own_supporting | 1 | gnosis | unit-388448 | 2 deployments: gnosis `0xad1705...ae519b`; gnosis `0xcb3231...223846` | ⚠️ Unaudited |
| xKlerosLiquid | unknown | project_anchor | own_supporting | 1 | gnosis | unit-388447 | 2 deployments: gnosis `0x87e1bf...8f3cf2`; gnosis `0x9c1da9...5f9002` | ⚠️ Unaudited |
| xKlerosLiquidExtraViews | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x17ddcc...d1b6d0`; gnosis `0x1c0d5a...6ec5de`; gnosis `0xa60f46...2cfa78` | ⚠️ Unaudited |
| xKlerosLiquidExtraViews | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388424 | `0xfa71f9...769e4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (303)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07576f...430155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ff03...6cab15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a65b3...159bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b734b...f4f4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e7ee6...3ecfc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f581a...1b3e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109854...8d053f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1174da...2ab97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c028...f84c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14fd11...81d620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177523...94c9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19887e...7fdb06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a378b...dcefa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7fe2...713f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce072...1653a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2854...54f9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1facf9...af6cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ade9...5f2a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25054b...47a85d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26d5ad...2bd392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283f8c...b7caee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a03f...e12233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388380 | `0x2b562e...e1e940` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388381 | `0x2b5950...7132e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b76f7...c9f633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bf598...5db87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e69e8...042898` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388382 | `0x2f0895...695f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c45c...5a761f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35aa65...b386ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361be2...42efa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da44c...8704ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df1cf...6cfd5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec9d0...6e0658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c64f...254793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425160...f34b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4279d1...53716b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43649d...0f25e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46dd53...f4b7b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47e30d...0bd1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483964...bf7623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b306f...4ecba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c0d9e...ac6f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7094...d9f4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfbbb...bd3cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7628...793559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ed77...f8ab04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a381...7d31f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580962...796769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x585f3a...48eeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593ec8...bf1d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a67fe...d2ee73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0a07...f3e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e6a18...33e4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67126a...a77bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dba76...9f490a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dec89...b0ae92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707e47...b97af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7316ac...9b2de6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388388 | `0x7510c7...e1ed2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777c2f...a6ceec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7878f4...a9afea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789334...8157c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ab70...e3634c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388390 | `0x79d046...ea3d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa3c...87cec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5f03...fe9884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d5fb1...72dc32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d762a...6732ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e57a7...85ee46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb6f3...410bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f33df...a55269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe3a6...76eb1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820327...dc959d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829fe0...e73b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833470...5a901d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83774e...029f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b061...a9b4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840446...57a8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852976...716d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8655a8...65aff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fd22...6ef80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88257f...b7f979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae48d...f096bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f77d8...248cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x903b03...04fe21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90571e...0c7aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a502...a93293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9354a6...8394be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9463cf...dd7145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951e43...f412f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958eac...8e8cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x965aa0...759caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9725a9...ddb73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9740a7...af938f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f239...70e8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bab15...77024e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12621...3c0575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa17c89...0df95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20764...1c72f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388400 | `0xa27bfe...8b208f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa324cf...2e06b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4352b...453132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5215c...9c102e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c17d...73f8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa842a2...71954a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa593b...3d82aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfd1e...1584d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb781...1b2a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef591...d7735a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf3b9c...aa9767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c5bf...04b525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c821...39df4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb32bb3...153f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb452b9...5fa965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f272...d07acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb83dfa...7e9cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb84da7...77e689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb75a9...572ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf85f...079bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbecf19...6be129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbff7be...d311e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc04cc9...1d4f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17450...fbb238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2090b...f67922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2fb95...9a20c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a387...c179cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8a460...ebcd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a430...a61797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca063e...d2548c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388403 | `0xcb4aae...3b125f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbca78...510bef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388404 | `0xcf1f07...8bece4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04f24...6e605b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388405 | `0xd1a711...e46475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388406 | `0xd47f72...00a14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9137b...a80540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdadf4f...39d145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebea9...bb0ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe27768...b89bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ba04...0e7e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c0d9...ca031d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69338...91569f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9509a...ce2104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea09bd...fece05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec558b...40e88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb83f...30175f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec71d...4c668d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3d10...41c3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1188e...53911b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12705...ce99cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b2fd...5c9fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2dcbd...8be6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70b6a...f8f768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7fd92...589c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfde22b...cba43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe85e8...5730b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x006de5...55a23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00a854...c0a7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00af44...ecd89b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00fe08...2dc8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x03b827...c459bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x04be1c...e4df5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0767e7...4963b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x089c1d...29f6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x08d71c...2923a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09a830...ef9f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1078cf...c40e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x11f4cb...abfb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x13da11...2650eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x160ffa...f60185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x18a6a8...03e03d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x18ea9e...01157e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19060f...85abc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1909de...3dee88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x195756...c85b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x196489...686bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f73b7...de0c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x205a8e...d32096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x21981d...c6c37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x23c85d...3e53e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x24c93b...3dc15c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x25d1d2...7f4662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x28fc1b...92eb74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x298e71...ca6679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2b562e...e1e940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2cff97...3efa40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e17ea...43e530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x330111...eebb77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3d9be4...0ff03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3dd713...f32732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e80d3...b2c012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4163be...606362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x457df3...4cc693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x48b227...4b3ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4bef03...cbd177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4ea501...6d63a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x506dbe...dbf528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53fc70...7938d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5688fd...a2f694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x578833...288cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x59b5d0...daa282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5b584a...d604b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5bb6e3...0f4d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x604693...21410d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64ab34...3e7f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x67ec83...6e2ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x694481...0a3a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x69aa64...a5a801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6d1cfc...ab4517` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388417 | `0x705335...92af60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x727000...5840f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76c5c0...41c89b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x79107f...aeb4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x797844...928329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7b4921...9604c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7bfff6...d8e320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ec194...7cbfe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ff6ff...529bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x808c7b...1dd644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x82b16d...ec6476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x897dff...58d8d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8a7201...33111a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8c8fbb...f22f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x944424...d244a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x98d020...1c28cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9bc20a...641802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9c6ab5...1453de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9dfc84...7d1fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9ffdd4...dd01ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa24695...022b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2c538...2bf9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa2c572...26422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa353a7...11681a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa3954b...b3cf71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa52b59...dd42ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa5ec29...bcdc7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa8c431...81c444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xadad0f...06c7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xadfbb3...9068d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae1c53...acb2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb7cb5b...34e64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbbb4c0...fbddff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbc7241...fa7d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbca743...68027c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe7ada...55f7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe94dc...57ed63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc090e4...f0d4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc344f4...d0190c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc6a4f9...8b2be2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc9358c...7921b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc9672b...d4c85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xce4b27...d81491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd1c4a1...c22579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd2617f...33bde1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd55e91...b2260f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd5af61...b469a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7eb80...6fef5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd804e2...d4ea2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd8798d...d06f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd99a7d...95ab94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xddfe22...138cc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-388422 | `0xe04f57...91ea3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe0ed01...c64faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe14f79...642a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe3c7c8...f8dbe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe78256...8ef15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb6ab5...10f42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xee1352...e6036a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xee31c6...f19696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeebb80...4b3ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf02c42...901af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf1404d...389c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf811c2...35f146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf8a2d8...f843a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfaef9b...6a0360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb00ff...5086f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfcc7fe...459994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfdd698...1e4860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05b942...edff45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4163be...606362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bef03...cbd177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53fc70...7938d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5562ac...96cdf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56cf53...bf3665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x776e58...231e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88fb25...893aa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388441 | `0x897d83...22cba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90992f...19c879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1ee4d...a24bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2c538...2bf9e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa353a7...11681a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8798d...d06f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4066a...0095c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdd698...1e4860` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388444 | `0xfe34a7...e34d63` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388425 | `0x05b942...edff45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388429 | `0x5562ac...96cdf2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388430 | `0x56cf53...bf3665` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388431 | `0x776e58...231e52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388432 | `0x88fb25...893aa5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388433 | `0x90992f...19c879` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388434 | `0xa1ee4d...a24bfe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x916dea...e5b4ab` | ArbitrableAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99489d...9ae0cf` | ArbitrableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xebcf3b...f0e679` | ArbitrableTokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x90992f...19c879` | BeaconRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x39d123...f35b0b` | BlockHashRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9d3e3f...bbc768` | DisputeKitShutter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb5526d...1f4323` | DisputeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x48e052...981eb3` | EvidenceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x991d2d...4222ea` | KlerosCoreNeo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x327a29...eccfdf` | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5bcea...0e5cf4` | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x66260c...4c59f2` | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x957a53...52d6e1` | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93ed3f...3bc04d` | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d6744...1e2522` | MultipleArbitrableTransaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9d4947...6c6d7e` | PolicyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5e9dd...7c9bdb` | ProofOfHumanity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x044afe...2fa9d3` | RandomizerRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x728cba...15a596` | Realitio_v2_1_ArbitratorWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf72cfd...30adca` | Realitio_v2_1_ArbitratorWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x776e58...231e52` | RealitioForeignArbitrationProxyWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x29f39d...fce222` | RealitioHomeArbitrationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe40dd8...a75ecd` | RealitioHomeArbitrationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5afa42...86f90e` | RealitioHomeArbitrationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x21a940...8dc03d` | SortitionModuleNeo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x7ae716...d561e9` | SortitionSumTreeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x330bd7...6dcae5` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82458d...9aa8cb` | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x642680...794d46` | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc5ef8...dea4ef` | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xad1705...ae519b` | WrappedPinakion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x87e1bf...8f3cf2` | xKlerosLiquid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xfa71f9...769e4b` | xKlerosLiquidExtraViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 310 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
